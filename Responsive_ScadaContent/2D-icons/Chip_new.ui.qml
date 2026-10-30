import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: chip_new
    width: 90
    height: 20
    color: factory_2d.itemBGcolor
    radius: 2
    property alias labelText: label.text
    state: "state_state_default"

    RowLayout {
        id: chip_new_RowLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 8
        Text {
            id: label
            x: 4
            y: 4
            width: 83
            height: 12
            color: master.__font_C
            text: qsTr("Robotic arm 1")
            font.pixelSize: 12
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Hubot Sans"
            Layout.preferredWidth: 83
            Layout.preferredHeight: 12
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }
        anchors.topMargin: 4
        anchors.rightMargin: 4
        anchors.leftMargin: 4
        anchors.bottomMargin: 4
    }
    states: [
        State {
            name: "state_state_default"
        },
        State {
            name: "state_state_status_ok"
            extend: "state_state_default"

            PropertyChanges {
                target: chip_new
                color: "#23b26a"
            }

            PropertyChanges {
                target: label
                color: "#efefef"
            }
        },
        State {
            name: "state_state_error"
            extend: "state_state_default"

            PropertyChanges {
                target: chip_new
                color: "#ff4154"
            }

            PropertyChanges {
                target: label
                color: "#efefef"
            }
        },
        State {
            name: "state_state_hover"
            extend: "state_state_default"

            PropertyChanges {
                target: chip_new
                color: "#e0e0e0"
            }
        },
        State {
            name: "state_state_selected"
            extend: "state_state_default"

            PropertyChanges {
                target: chip_new
                color: "#181818"
            }

            PropertyChanges {
                target: label
                color: "#efefef"
            }
        },
        State {
            name: "state_state_active"
            extend: "state_state_default"
        },
        State {
            name: "state_state_disabled"
            extend: "state_state_default"

            PropertyChanges {
                target: chip_new
                color: "#e0e0e0"
            }

            PropertyChanges {
                target: label
                color: "#9f9f9f"
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#00000c";uuid:"fbb07d66-14dd-5110-8796-7ecad673096c"}D{i:1;uuid:"fbb07d66-14dd-5110-8796-7ecad673096c_HORIZONTAL"}
D{i:2;uuid:"db8e8bd8-cd44-5570-9f41-2923a6555540"}
}
##^##*/

