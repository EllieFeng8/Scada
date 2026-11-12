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

    // 站點 stateName ↔ MES 機台 的對應。所有可點擊站點全接上人機。
    // stage: "head" 打頭機(A01-A14=id1-14) / "thread" 搓牙機(T01-T11=id1-11)。
    // 預設照 3D 場景順序：前 14 站→A01~A14，後 10 站→T01~T10。要換對應改這裡的 stage/machineId 即可。
    readonly property var machineStateMap: [
        { stateName: "Line1CamState",        equipment: "Line 1",           stage: "head",   machineId: 3 },
        { stateName: "Line1QA_state",        equipment: "Line 1 QA",        stage: "head",   machineId: 2 },
        { stateName: "Line1Printers_state",  equipment: "Line 1 Printers",  stage: "head",   machineId: 1 },
        { stateName: "line1endZoom",         equipment: "Line 1 End",       stage: "head",   machineId: 7 },
        { stateName: "line2View",            equipment: "Line 2",           stage: "head",   machineId: 5 },
        { stateName: "Discardpile1",         equipment: "Discard 1",        stage: "head",   machineId: 6 },
        { stateName: "line2Mill",            equipment: "Line 2 Mill",      stage: "head",   machineId: 4 },
        { stateName: "line2QA",              equipment: "Line 2 QA",        stage: "thread", machineId: 6 },
        { stateName: "Line 2 Container",     equipment: "Line 2 Container", stage: "head",   machineId: 9 },
        { stateName: "Line 2 End",           equipment: "Line 2 End",       stage: "head",   machineId: 10 },
        { stateName: "discardPile2",         equipment: "Discard 2",        stage: "head",   machineId: 11 },
        { stateName: "Line3",                equipment: "Line 3",           stage: "head",   machineId: 12 },
        { stateName: "Line 3 Soldering",     equipment: "Line 3 Soldering", stage: "thread", machineId: 9 },
        { stateName: "line3EQA",             equipment: "Line 3 e-QA",      stage: "head",   machineId: 14 },
        { stateName: "Line3Container",       equipment: "Line 3 Container", stage: "thread", machineId: 1 },
        { stateName: "Line3Arms",            equipment: "Line 3 Arms",      stage: "thread", machineId: 2 },
        { stateName: "MainLineWelding",      equipment: "Welding",          stage: "thread", machineId: 10 },
        { stateName: "Line4",                equipment: "Line 4",           stage: "thread", machineId: 4 },
        { stateName: "Line4Containers",      equipment: "Line 4 Containers",stage: "thread", machineId: 5 },
        { stateName: "Line4Welding",         equipment: "Line 4 Welding",   stage: "head",   machineId: 8 },
        { stateName: "Line4End",             equipment: "Line 4 End",       stage: "thread", machineId: 7 },
        { stateName: "MainLineQA",           equipment: "Main QA",          stage: "thread", machineId: 8 },
        { stateName: "MainLineArms",         equipment: "Main Arms",        stage: "head",   machineId: 13 },
        { stateName: "MainLineEnd",          equipment: "Main End",         stage: "thread", machineId: 3 }
    ]

    // 由 MES 即時狀態填入；初始為「連線中」(視為正常，避免誤報)。每次輪詢整包重設。
    property var equipmentAlarms: machineStateMap.map(function(m) {
        return { equipment: m.equipment, stateName: m.stateName, machineId: m.machineId,
                 stage: m.stage, state: -1, severity: 2, stateText: "連線中",
                 machineName: "", currentQuantity: 0, targetQuantity: 0, productionStatus: "",
                 title: m.equipment + " · 連線中…", message: "尚未取得機台即時狀態。" }
    })

    // MES state：0 斷線 / 1 異常紅燈 / 2 運行綠燈 / 3 待機黃燈。
    // severity 對應現有 3D 著色：4=紅、3=黃、2=綠(視為無告警)。
    function stateMeta(state) {
        switch (state) {
        case 1:  return { severity: 4, stateText: "異常" }
        case 0:  return { severity: 4, stateText: "斷線" }
        case 3:  return { severity: 3, stateText: "待機" }
        case 2:  return { severity: 2, stateText: "運行中" }
        default: return { severity: 2, stateText: "無資料" }
        }
    }

    // 查某 stateName 對應機台的完整即時資訊（名稱/產量/狀態）；非對應機台回 null。
    function machineInfoForState(stateName) {
        for (var i = 0; i < equipmentAlarms.length; ++i)
            if (equipmentAlarms[i].stateName === stateName) return equipmentAlarms[i]
        return null
    }

    // 只有異常(黃/紅)才回傳告警物件；運行綠燈回傳 null → 3D 顯示綠色。
    function alarmForState(stateName) {
        var a = machineInfoForState(stateName)
        return (a && a.severity >= 3) ? a : null
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

    // ── 即時機台狀態輪詢（MES REST，每 5 秒）：批次抓取，撐得住多台 ──────
    // 每輪只打 4 支整包 API（歷程/派工 各 head+thread），client 端分組，與機台數無關。
    property bool machinePollBusy: false
    property var machineNameCache: ({})   // key "stage:id" -> 機台名稱
    property bool machineNamesLoaded: false

    function getJson(url, cb) {
        var xhr = new XMLHttpRequest()
        xhr.onreadystatechange = function() {
            if (xhr.readyState !== XMLHttpRequest.DONE) return
            if (xhr.status === 200) { try { cb(JSON.parse(xhr.responseText)) } catch (e) { cb(null) } }
            else cb(null)
        }
        xhr.open("GET", url); xhr.setRequestHeader("Accept", "application/json"); xhr.send()
    }
    // 整包歷程 → { machineId: 最新 state }
    function latestStateByMachine(rows) {
        var out = {}, tmap = {}
        if (!Array.isArray(rows)) return out
        for (var k = 0; k < rows.length; ++k) {
            var r = rows[k]; var id = r.machineId
            if (id === undefined || id === null) continue
            var t = Date.parse(r.time); if (isNaN(t)) t = k
            if (!(id in tmap) || t >= tmap[id]) {
                tmap[id] = t
                out[id] = (typeof r.state === "number") ? r.state : -1
            }
        }
        return out
    }
    // 整包派工 → { machineId: 進行中(未結單)最新派工 }
    function openAssignmentByMachine(rows) {
        var out = {}, tmap = {}
        if (!Array.isArray(rows)) return out
        for (var k = 0; k < rows.length; ++k) {
            var r = rows[k]; var id = r.machineId
            if (id === undefined || id === null) continue
            if (!(r.orderClosed === 0 || r.orderClosed === null)) continue
            var t = Date.parse(r.startedAt); if (isNaN(t)) t = k
            if (!(id in tmap) || t >= tmap[id]) { tmap[id] = t; out[id] = r }
        }
        return out
    }
    function loadMachineNames(done) {
        var b = workOrderBaseUrl.replace(/\/+$/, "")
        var pending = 2
        function one() { if (--pending === 0) { shareddata.machineNamesLoaded = true; done() } }
        getJson(b + "/headMachine/getMachines", function(list) {
            if (Array.isArray(list)) for (var i = 0; i < list.length; ++i)
                shareddata.machineNameCache["head:" + list[i].id] = list[i].headMachineName || ""
            one()
        })
        getJson(b + "/threadMachine/getMachines", function(list) {
            if (Array.isArray(list)) for (var i = 0; i < list.length; ++i)
                shareddata.machineNameCache["thread:" + list[i].id] = list[i].threadRollingMachineName || ""
            one()
        })
    }
    function assembleMachineStates(headState, threadState, headWO, threadWO) {
        var map = machineStateMap
        var out = []
        for (var i = 0; i < map.length; ++i) {
            var m = map[i]
            var st = (m.stage === "thread" ? threadState : headState)[m.machineId]
            if (st === undefined) st = -1
            var wo = (m.stage === "thread" ? threadWO : headWO)[m.machineId]
            var meta = shareddata.stateMeta(st)
            var name = shareddata.machineNameCache[m.stage + ":" + m.machineId] || ""
            var cur = wo ? (wo.currentQuantity || 0) : 0
            var tgt = wo ? (wo.targetQuantity || 0) : 0
            var ps  = wo ? (wo.productionStatus || "") : ""
            var nm = name || ("#" + m.machineId)
            var q = tgt > 0 ? ("產量 " + Math.round(cur) + " / " + Math.round(tgt))
                            : (cur > 0 ? ("產量 " + Math.round(cur)) : "產量 —")
            out.push({ equipment: m.equipment, stateName: m.stateName, machineId: m.machineId,
                       stage: m.stage, state: st, severity: meta.severity, stateText: meta.stateText,
                       machineName: name, currentQuantity: cur, targetQuantity: tgt, productionStatus: ps,
                       title: nm + " · " + meta.stateText,
                       message: (ps ? ("工序：" + ps + " · ") : "") + q })
        }
        shareddata.equipmentAlarms = out
    }
    function doPoll() {
        var b = workOrderBaseUrl.replace(/\/+$/, "")
        var headState = null, threadState = null, headWO = null, threadWO = null
        var pending = 4
        function one() {
            if (--pending > 0) return
            machineStateTimeout.stop()
            shareddata.machinePollBusy = false
            shareddata.assembleMachineStates(headState || {}, threadState || {}, headWO || {}, threadWO || {})
        }
        getJson(b + "/headMachineHistoryLog/getHeadMachineHistoryLog", function(d){ headState = shareddata.latestStateByMachine(d); one() })
        getJson(b + "/threadMachineHistoryLog/getThreadMachineHistoryLog", function(d){ threadState = shareddata.latestStateByMachine(d); one() })
        getJson(b + "/workOrderHeadingMachine/getWorkOrderHeadingMachine", function(d){ headWO = shareddata.openAssignmentByMachine(d); one() })
        getJson(b + "/workOrderThreadingMachine/getWorkOrderThreadingMachine", function(d){ threadWO = shareddata.openAssignmentByMachine(d); one() })
    }
    function refreshMachineStates() {
        if (machinePollBusy) return
        machinePollBusy = true
        machineStateTimeout.restart()
        if (!machineNamesLoaded) shareddata.loadMachineNames(function(){ shareddata.doPoll() })
        else shareddata.doPoll()
    }
    property Timer machineStateTimeout: Timer {
        interval: 12000
        running: false
        onTriggered: shareddata.machinePollBusy = false   // 防止請求卡住導致不再輪詢
    }
    property Timer machineStateRefresh: Timer {
        interval: 1000   // 每 1 秒輪詢一次
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
