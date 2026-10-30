import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15
import QtQuick.Studio.Components 1.0

Rectangle {
    id: weld_Bolt
    width: 65
    height: 68
    color: "transparent"
    state: "state_property_1_Default"

    ColumnLayout {
        id: weld_Bolt_ColumnLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 4
        Chip_new {
            id: chip_new
            x: 0
            y: 0
            width: 65
            height: 20
            state: "state_state_default"
            labelText: "Welding 1"
            Layout.preferredWidth: 65
            Layout.preferredHeight: 20
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        SvgPathItem {
            id: subtract
            x: 11
            y: 24
            width: 44
            height: 44
            strokeWidth: 2
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 0 44 L 0 0 L 44 0 L 44 44 L 0 44 Z M 29 15 L 22 19.041452407836914 L 15 15 L 15 20.928203582763672 L 6 20.928203582763672 L 6 22.928203582763672 L 14.999999046325684 22.928203582763672 L 14.999999046325684 28.856407165527344 L 22 24.814956665039062 L 29 28.856407165527344 L 29 22.928203582763672 L 38 22.928203582763672 L 38 20.928203582763672 L 29 20.928203582763672 L 29 15 Z"
            joinStyle: 0
            fillColor: factory_2d.itemBGcolor
            antialiasing: true
            Layout.preferredWidth: 44
            Layout.preferredHeight: 44
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }
    }
    states: [
        State {
            name: "state_property_1_Default"
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
            name: "state_property_1_Hover"
            extend: "state_property_1_Default"

            PropertyChanges {
                target: chip_new
                state: "state_state_hover"
            }

            PropertyChanges {
                target: subtract
                fillColor: "#e0e0e0"
            }
        },
        State {
            name: "state_property_1_Selected"
            extend: "state_property_1_Default"

            PropertyChanges {
                target: chip_new
                state: "state_state_selected"
            }

            PropertyChanges {
                target: subtract
                fillColor: "#181818"
            }
        },
        State {
            name: "state_property_1_OK"
            extend: "state_property_1_Default"

            PropertyChanges {
                target: chip_new
                state: "state_state_status_ok"
            }

            PropertyChanges {
                target: subtract
                fillColor: "#23b26a"
            }
        },
        State {
            name: "state_property_1_Error"
            extend: "state_property_1_Default"

            PropertyChanges {
                target: chip_new
                state: "state_state_error"
            }

            PropertyChanges {
                target: subtract
                fillColor: "#ff4154"
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#00000c";uuid:"0abc4018-b64a-5abc-9b5c-bc4d3fc8b144"}D{i:1;uuid:"0abc4018-b64a-5abc-9b5c-bc4d3fc8b144_VERTICAL"}
D{i:2;uuid:"af5755ec-c0dd-5109-bb99-848af1c58d54"}D{i:3;uuid:"5f91b951-321d-5791-992b-1bbdf776891f"}
}
##^##*/

