import QtQuick
import QtQuick.Controls

Rectangle {
    id: notificationBox
    property bool showTitle: navBar.visible
    color: views.activeView != 2 ? root.backgroundColor : "#00000000"
    //opacity: views.activeView != 2 ? 1.0 : 0.5
    anchors.bottomMargin: widgets_flow.columns > 2 ? 0 : 104

    property int minimumWidth: 394
    property int spacing: 32
    property int columns: Math.max(1,widgets.width / (minimumWidth + spacing))
    property int notificationWidth: widgets.singleColumn ? 468 : (widgets.width / columns) - spacing //Math.max(minimumWidth, (widgets.width / columns) - spacing)
    width: notificationWidth + 96

    // layer.effect: ShaderEffect{
    //     property real fade: 64
    //     blending: true
    //     vertexShader: "shaders/notificationBox.vert.qsb"
    //     fragmentShader: "shaders/notificationBox.frag.qsb"
    // }

    Text {
        id: text2
        color: root.textColor
        text: qsTr("Notifications")
        anchors.left: parent.left
        anchors.top: parent.top
        font.pixelSize: 29
        anchors.topMargin: 152
        anchors.leftMargin: 72
        font.weight: Font.DemiBold
    }

    RoundButton {
        id: closeBtn
        width: 40
        text: "+"
        anchors.right: parent.right
        anchors.top: parent.top
        icon.source: "images/Solid.png"
        icon.color: root.textColor
        display: AbstractButton.IconOnly
        anchors.topMargin: 152
        anchors.rightMargin: 40
        background: Rectangle {
            color: "#00000000"
        }
        Connections {
            target: closeBtn
            onClicked: header.notifications = false
        }
    }

    Column {
        id: listView
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 32
        anchors.topMargin: 224
        spacing: 32

        // 即時機台狀態總覽（跟著 MES 輪詢更新）
        Notification {
            width: notificationBox.notificationWidth
            title: SharedData.activeAlarmCount > 0
                   ? (SharedData.activeAlarmCount + " 項設備異常 · 即時機台狀態")
                   : "全部機台運行正常 · 即時機台狀態"
            message: "點 3D 設備或下方項目查看機台即時狀態（每 5 秒更新）。"
            severity: SharedData.activeAlarmCount > 0 ? 3 : 1
            sizeState: 2
            iconState: 2
        }

        // 每台對應機台一筆。model 綁「固定不變」的 machineStateMap，delegate 只建一次、不重建；
        // 內容讀即時 equipmentAlarms[index]（每次輪詢自動更新）。
        // 這樣避免 equipmentAlarms 每秒整包重設、導致 Repeater 重建 delegate 觸發
        // QQmlDelegateModel 的 objectRef>0 斷言崩潰（debug build）。
        Repeater {
            model: SharedData.machineStateMap
            Notification {
                width: notificationBox.notificationWidth
                readonly property var info: SharedData.equipmentAlarms[index]
                title: info ? ((info.machineName ? info.machineName : info.equipment)
                              + "（" + info.equipment + "） · " + info.stateText) : ""
                message: info ? info.message : ""
                severity: info ? (info.severity === 4 ? 4 : (info.severity === 3 ? 3 : 1)) : 0
                sizeState: 2
                iconState: (info && info.severity === 4) ? 3 : 2
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#00000c"}
}
##^##*/
