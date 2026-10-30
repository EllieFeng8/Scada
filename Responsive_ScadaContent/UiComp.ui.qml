import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components

GroupItem {
    id: ui
    anchors.fill: parent

    NavBar {
        id: navBar
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.leftMargin: 24
        anchors.rightMargin: 24
        anchors.bottomMargin: 24
        anchors.topMargin: 24
        visible: widgets_flow.columns <= 2
    }

    NavBar {
        id: navBar_side
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        anchors.leftMargin: 24
        anchors.rightMargin: 24
        anchors.bottomMargin: 24
        anchors.topMargin: 128
        width: 80
        barPos: 1
        visible: widgets_flow.columns > 2
    }

    GroupItem {
        id: notice
        anchors.fill: parent

        Rectangle {
            id: rectangle
            height: 88
            color: "#3f56e59d"
            radius: 16
            border.color: "#23b26a"
            border.width: 4
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.leftMargin: 16
            anchors.rightMargin: 16
            anchors.topMargin: 16

            Rectangle {
                id: rectangle1
                width: 24
                height: 25
                color: "#23b26a"
                radius: 6
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 12
                anchors.topMargin: 12

                Image {
                    id: check
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/check.png"
                    mipmap: false
                    smooth: true
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }
            }

            Text {
                id: title
                text: qsTr("All systems operational")
                anchors.left: parent.left
                anchors.top: parent.top

                color: root.textColor
                font.pixelSize: 24
                font.weight: Font.DemiBold
                font.bold: false
                anchors.leftMargin: 44
                anchors.topMargin: 8
            }

            Text {
                id: title1
                x: 6
                y: 6
                color: root.textColor
                text: qsTr("Equipment is operating within parameters, and project is on schedule and on budget")
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 16
                font.weight: Font.DemiBold
                anchors.topMargin: 48
                anchors.leftMargin: 44
                font.bold: false
            }
        }
    }

    GroupItem {
        id: header
        anchors.fill: parent
        anchors.rightMargin: 32
        anchors.leftMargin: widgets_flow.columns > 2 ? 128 : 32
        anchors.topMargin: 128

        Text {
            id: text1
            text: qsTr("Hello, John Doe")

            color: root.textColor
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 24
            font.weight: Font.DemiBold
            anchors.topMargin: 0
            anchors.leftMargin: 0
        }

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
            display: AbstractButton.IconOnly

            background: Rectangle {
                color: "#00000000"
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
            background: Rectangle {
                color: "#00000000"
            }
        }
    }

    Button {
        id: button
        text: qsTr("Add")
        anchors.top: parent.top
        anchors.horizontalCenterOffset: 250
        anchors.topMargin: 21
        anchors.horizontalCenter: parent.horizontalCenter

        Connections {
            target: button
            onClicked: listmodel.append({
                                            "name": "widget"
                                        })
        }
    }

    Rectangle {
        id: notificationBox
        width: 413
        color: root.backgroundColor
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.topMargin: 104
        anchors.bottomMargin: widgets_flow.columns > 2 ? 0 : 104

        Text {
            id: text2
            color: root.textColor
            text: qsTr("Notifications")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 29
            anchors.topMargin: 40
            anchors.leftMargin: 40
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
            anchors.topMargin: 40
            anchors.rightMargin: 40
            background: Rectangle {
                color: root.backgroundColor
            }
            Connections {
                target: closeBtn
                onClicked: notificationBox.visible = false
            }
        }

        ListView {
            id: listView
            anchors.fill: parent
            anchors.rightMargin: 40
            anchors.leftMargin: 40
            anchors.bottomMargin: 0
            anchors.topMargin: 80
            delegate: Item {
                x: 5
                width: 80
                height: 40
                Row {
                    id: row1
                    spacing: 10
                    Rectangle {
                        width: 40
                        height: 40
                        color: colorCode
                    }

                    Text {
                        text: name
                        anchors.verticalCenter: parent.verticalCenter
                        font.bold: true
                    }
                }
            }
            model: ListModel {}
        }
    }

    Item {
        id: __materialLibrary__
    }
}
