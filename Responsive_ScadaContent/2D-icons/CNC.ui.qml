import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: cNC
    width: 45
    height: 48
    color: "transparent"
    state: "state_property_1_Default"

    ColumnLayout {
        id: cNC_ColumnLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 4
        Chip_new {
            id: chip_new
            x: 0
            y: 0
            width: 45
            height: 20
            state: "state_state_default"
            labelText: "CNC 1"
            Layout.preferredWidth: 45
            Layout.preferredHeight: 20
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Cube_02 {
            id: cube_02
            x: 11
            y: 24
            width: 24
            height: 24
            Layout.preferredWidth: 24
            Layout.preferredHeight: 24
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }
    }
    states: [
        State {
            name: "state_property_1_Default"
        },
        State {
            name: "state_property_1_Error"
            extend: "state_property_1_Default"

            PropertyChanges {
                target: chip_new
                state: "state_state_error"
            }
        },
        State {
            name: "state_property_1_Hover"
            extend: "state_property_1_Default"

            PropertyChanges {
                target: chip_new
                x: 1
                state: "state_state_hover"
            }

            PropertyChanges {
                target: cNC
                width: 46
            }
        },
        State {
            name: "state_property_1_Active"
            extend: "state_property_1_Default"

            PropertyChanges {
                target: chip_new
                state: "state_state_active"
            }
        },
        State {
            name: "state_property_1_Selected"
            extend: "state_property_1_Default"

            PropertyChanges {
                target: chip_new
                state: "state_state_selected"
            }
        },
        State {
            name: "state_property_1_OK"
            extend: "state_property_1_Default"

            PropertyChanges {
                target: chip_new
                state: "state_state_status_ok"
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#00000c";uuid:"b06482c0-e63f-567c-81d6-4fca3f93392b"}D{i:1;uuid:"b06482c0-e63f-567c-81d6-4fca3f93392b_VERTICAL"}
D{i:2;uuid:"af241832-5067-5520-9ecf-634faeb0d32f"}D{i:3;uuid:"d0157ce2-f627-5426-aae9-feeb35ff2da2"}
}
##^##*/

