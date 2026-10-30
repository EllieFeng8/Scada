import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components
import DataModel

GroupItem {
    id: header
    anchors.leftMargin: views.activeView == 0 || root.mobileUI ? (root.mobileUI ? 32 : 128) : parent.width - 468

    property bool notifications: false
    property bool connected: false

    Behavior on anchors.leftMargin {
        PropertyAnimation {
            easing.bezierCurve: [0.2,0.2,0.8,0.8,1,1]
            duration: 500
        }
    }
    Text {
        id: greeting
        text: qsTr("Hello, John Doe")

        visible: !header.notifications ? true : (views.activeView == 0 ? true : root.mobileUI ? true :false)

        color: root.textColor
        anchors.left: parent.left
        anchors.top: parent.top
        font.pixelSize: 24
        font.styleName: "SemiBold"
        font.family: "Hubot Sans"
        font.weight: Font.DemiBold
        anchors.topMargin: 0
        anchors.leftMargin: 0
    }

    RoundButton {
        id: roundButtonConnection
        width: 40
        text: "+"
        anchors.left: greeting.right
        icon.source: connected ? "images/check.png" : "images/alert.png"
        anchors.rightMargin: 40
        icon.color: master.__font_C
        display: AbstractButton.IconOnly

        background: Rectangle {
            color: "#00000000"
            border.width: 0
        }
        onClicked: {
            DataModel.toggleConnection()
        }
    }

    Item{
        visible: !header.notifications

        anchors.right: parent.right
        RoundButton {
            id: roundButton
            width: 40
            height: 40
            text: "+"
            anchors.right: parent.right
            icon.source: ""
            display: AbstractButton.IconOnly
            anchors.rightMargin: 0
            background: Rectangle {
                color: "#00000000"
            }

            Image {
                id: ellipse49
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                source: "images/Ellipse 49.png"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.rightMargin: 0
                fillMode: Image.PreserveAspectFit
            }
        }

        RoundButton {
            id: roundButton1
            width: 40
            text: "+"
            anchors.right: parent.right
            icon.source: "images/settings.png"
            anchors.rightMargin: 40
            icon.color: master.__font_C
            display: AbstractButton.IconOnly

            background: Rectangle {
                color: "#00000000"
                border.width: 0
            }
            onClicked: {
                SharedData.simulation = !SharedData.simulation
                console.log("QML: simulation changed: " + SharedData.simulation)
            }
        }

        RoundButton {
            id: roundButton2
            height: 40
            text: "+"
            anchors.right: parent.right
            icon.source: "images/bell.png"
            display: AbstractButton.IconOnly
            anchors.rightMargin: 80
            icon.color: master.__font_C
            background: Rectangle {
                color: "#00000000"
            }

            Connections {
                target: roundButton2
                onClicked: header.notifications = !header.notifications
            }

        }
    }
}
