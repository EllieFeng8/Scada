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
        Notification {
            title: "3 active equipment alarms · Demo"
            message: "Select a marked device in the 3D factory to inspect its alarm."
            severity: 3
            sizeState: 2
            iconState: 2
            width: notificationBox.notificationWidth
        }

        Notification {
            title: SharedData.equipmentAlarms[0].title
            message: SharedData.equipmentAlarms[0].message
            severity: 4
            sizeState: 2
            iconState: 3
        }

        Notification {
            title: "Line 01: Shift Quota Met"
            message: "The planned quota for the concluding shift has been met."
            severity: 1
            sizeState: 1
            iconState: 1
        }
        Notification {
            title: "Machinery malfunction SP-L15"
            message: "Machinery malfunction detected and device taken ofline. Operation ceased, and technical support investigating."
            severity: 2
            sizeState: 2
        }

        Notification {
            title: SharedData.equipmentAlarms[1].title
            message: SharedData.equipmentAlarms[1].message
            severity: 3
            sizeState: 1
            iconState: 2
        }

        Notification {
            title: "Restricted Access Cleared"
            message: "This is to inform you that the person who entered the restricted area has now left."
            severity: 1
            sizeState: 1
            iconState: 1
        }

        Notification {
            title: SharedData.equipmentAlarms[2].title
            message: SharedData.equipmentAlarms[2].message
            severity: 3
            sizeState: 2
            iconState: 2
        }

        Notification {
            title: "Planned Maintenance Activity"
            message: "Personel detected in a restricted area that is dangerous and not safe for human presence. Please inform any on-site personal of this issue."
            severity: 0
        }

        Notification {
            severity: 0
        }

        Notification {
            severity: 0
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#00000c"}
}
##^##*/
