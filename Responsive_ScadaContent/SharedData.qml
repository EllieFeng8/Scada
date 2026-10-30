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
