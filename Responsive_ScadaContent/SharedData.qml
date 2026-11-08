pragma Singleton
import QtQuick
import DataModel

QtObject {
    id: shareddata
    property bool simulation: false
    property int num: 0
    property int percent: 0
    property int animationduration: 4000
    property int performanceValue;
    property list<int> performance: [DataModel.performanceValue, DataModel.performanceValueChange, DataModel.performanceGaugeValue]
    property list<int> efficiency: [DataModel.efficiencyValue, DataModel.efficiencyValueChange, DataModel.efficiencyGaugeValue]
    property list<int> recycle: [DataModel.recycleValue, DataModel.recycleValueChange, DataModel.recycleGaugeValue]
    property list<int> environment: [DataModel.environmentValue, DataModel.environmentValueChange, DataModel.environmentSlider]
    property bool connected: DataModel.connected

    // 機台 state 名稱 ↔ MES 機台 的對應。只接現有 3D 物件，不新增機台。
    // stage: "head" 打頭機 / "thread" 搓牙機；machineId 為 MES 機台 id。
    // 要換成別台機台，改這裡的 machineId / stage 即可。
    readonly property var machineStateMap: [
        { stateName: "Line1Printers_state", equipment: "Line 1 Printers", stage: "head", machineId: 1 },
        { stateName: "line2Mill",           equipment: "Line 2 Mill",     stage: "head", machineId: 4 },
        { stateName: "Line4Welding",        equipment: "Line 4 Welding",  stage: "head", machineId: 9 }
    ]

    // 由 MES 即時狀態填入；初始為「連線中」(視為正常，避免誤報)。每次輪詢整包重設。
    property var equipmentAlarms: machineStateMap.map(function(m) {
        return { equipment: m.equipment, stateName: m.stateName, machineId: m.machineId,
                 stage: m.stage, state: -1, severity: 2,
                 title: m.equipment + " · 連線中…", message: "尚未取得機台即時狀態。" }
    })

    // MES state：0 斷線 / 1 異常紅燈 / 2 運行綠燈 / 3 待機黃燈。
    // severity 對應現有 3D 著色：4=紅、3=黃、2=綠(視為無告警)。
    function stateMeta(equipment, state) {
        switch (state) {
        case 1:  return { severity: 4, title: equipment + " · 異常", message: "機台異常紅燈，請派員檢查處理。" }
        case 0:  return { severity: 4, title: equipment + " · 斷線", message: "機台離線（斷線），未取得即時狀態。" }
        case 3:  return { severity: 3, title: equipment + " · 待機", message: "機台待機中（黃燈）。" }
        case 2:  return { severity: 2, title: equipment + " · 運行中", message: "機台自動運行中（綠燈）。" }
        default: return { severity: 2, title: equipment + " · 無資料", message: "查無機台即時狀態資料。" }
        }
    }

    // 只有異常(黃/紅)才回傳告警物件；運行綠燈回傳 null → 3D 顯示綠色。
    function alarmForState(stateName) {
        for (var i = 0; i < equipmentAlarms.length; ++i) {
            var a = equipmentAlarms[i]
            if (a.stateName === stateName)
                return a.severity >= 3 ? a : null
        }
        return null
    }

    // 目前異常(黃/紅)機台數，給告警列數字用。
    readonly property int activeAlarmCount: {
        var n = 0
        for (var i = 0; i < equipmentAlarms.length; ++i)
            if (equipmentAlarms[i].severity >= 3) ++n
        return n
    }

    property string workOrderBaseUrl: "http://localhost:8080/api"
    property int assignmentId: 1
    property var assignment: null
    property string assignmentError: ""
    property var assignmentRequest: null
    readonly property real productionProgress: assignment && assignment.targetQuantity > 0
                                               ? assignment.currentQuantity / assignment.targetQuantity : 0

    function refreshAssignment() {
        if (assignmentRequest) return
        var xhr = new XMLHttpRequest()
        assignmentRequest = xhr
        xhr.onreadystatechange = function() {
            if (xhr.readyState !== XMLHttpRequest.DONE || assignmentRequest !== xhr) return
            assignmentTimeout.stop()
            assignmentRequest = null
            if (xhr.status !== 200) {
                assignmentError = "API 讀取失敗" + (xhr.status ? "（HTTP " + xhr.status + "）" : "，請確認連線")
                return
            }
            try {
                var data = JSON.parse(xhr.responseText)
                if (!data || Array.isArray(data) || data.id !== assignmentId)
                    throw new Error("派工資料不符")
                var fields = ["oee", "currentQuantity", "targetQuantity"]
                for (var i = 0; i < fields.length; ++i) {
                    var value = data[fields[i]]
                    if (typeof value !== "number" || !isFinite(value) || value < 0)
                        throw new Error(fields[i] + " 無效")
                }
                assignment = data
                assignmentError = ""
            } catch (error) {
                assignmentError = "API 資料錯誤：" + error.message
            }
        }
        xhr.open("GET", workOrderBaseUrl.replace(/\/+$/, "")
                 + "/workOrderHeadingMachine/getWorkOrderHeadingMachine/" + assignmentId)
        xhr.setRequestHeader("Accept", "application/json")
        assignmentTimeout.start()
        xhr.send()
    }
    property Timer assignmentTimeout: Timer {
        interval: 10000
        onTriggered: {
            var xhr = shareddata.assignmentRequest
            shareddata.assignmentRequest = null
            if (xhr) xhr.abort()
            shareddata.assignmentError = "API 連線逾時"
        }
    }
    property Timer assignmentRefresh: Timer {
        interval: 10000
        running: true
        repeat: true
        triggeredOnStart: true
        onTriggered: shareddata.refreshAssignment()
    }

    // ── 即時機台狀態輪詢（MES REST，每 5 秒）────────────────────────
    property bool machinePollBusy: false
    function machineEndpoint(stage, machineId) {
        var b = workOrderBaseUrl.replace(/\/+$/, "")
        if (stage === "thread")
            return b + "/threadMachineHistoryLog/getThreadMachineHistoryLogByMachine?machineId=" + machineId
        return b + "/headMachineHistoryLog/getHeadMachineHistoryLogByMachine?machineId=" + machineId
    }
    function refreshMachineStates() {
        if (machinePollBusy) return
        machinePollBusy = true
        machineStateTimeout.restart()
        var map = machineStateMap
        var results = new Array(map.length)
        var remaining = map.length
        function done() {
            if (--remaining > 0) return
            machineStateTimeout.stop()
            machinePollBusy = false
            var out = []
            for (var j = 0; j < map.length; ++j) out.push(results[j])
            shareddata.equipmentAlarms = out
        }
        for (var i = 0; i < map.length; ++i) {
            (function(idx) {
                var m = map[idx]
                var xhr = new XMLHttpRequest()
                xhr.onreadystatechange = function() {
                    if (xhr.readyState !== XMLHttpRequest.DONE) return
                    var state = -1
                    if (xhr.status === 200) {
                        try {
                            var rows = JSON.parse(xhr.responseText)
                            if (Array.isArray(rows) && rows.length > 0) {
                                var latest = null, latestT = -Infinity
                                for (var k = 0; k < rows.length; ++k) {
                                    var t = Date.parse(rows[k].time)
                                    if (isNaN(t)) t = k
                                    if (t >= latestT) { latestT = t; latest = rows[k] }
                                }
                                if (latest && typeof latest.state === "number") state = latest.state
                            }
                        } catch (e) { state = -1 }
                    }
                    var meta = shareddata.stateMeta(m.equipment, state)
                    results[idx] = { equipment: m.equipment, stateName: m.stateName,
                                     machineId: m.machineId, stage: m.stage, state: state,
                                     severity: meta.severity, title: meta.title, message: meta.message }
                    done()
                }
                xhr.open("GET", shareddata.machineEndpoint(m.stage, m.machineId))
                xhr.setRequestHeader("Accept", "application/json")
                xhr.send()
            })(i)
        }
    }
    property Timer machineStateTimeout: Timer {
        interval: 8000
        running: false
        onTriggered: shareddata.machinePollBusy = false   // 防止請求卡住導致不再輪詢
    }
    property Timer machineStateRefresh: Timer {
        interval: 5000
        running: true
        repeat: true
        triggeredOnStart: true
        onTriggered: shareddata.refreshMachineStates()
    }

    SequentialAnimation on num {
        loops: Animation.Infinite
        running: simulation
        NumberAnimation {
            to: 3999
            duration: 10000
        }
        NumberAnimation {
            to: 0
            duration: 10000
        }
    }
    SequentialAnimation on percent {
        loops: Animation.Infinite
        running: simulation
        NumberAnimation {
            to: 100
            duration: 10000
        }
        NumberAnimation {
            to: 0
            duration: 10000
        }
    }

    onNumChanged: {
        performance[0] = num
        efficiency[0] = num
        efficiency[2] = num * 1.875
        recycle[0] = num / 4
    }
    onPercentChanged: {
        performance[1] = percent
        performance[2] = percent * 2
        efficiency[1] = percent
        recycle[1] = percent
        recycle[2] = percent
        environment[0] = percent
        environment[1] = percent
        environment[2] = percent
    }
}
