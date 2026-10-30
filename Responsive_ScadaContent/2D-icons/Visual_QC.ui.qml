import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15
import QtQuick.Studio.Components 1.0

Rectangle {
    id: visual_QC
    width: 75
    height: 68
    color: "transparent"
    state: "state_property_1_Default"

    ColumnLayout {
        id: visual_QC_ColumnLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 4
        Chip_new {
            id: chip_new
            x: 0
            y: 0
            width: 75
            height: 20
            state: "state_state_default"
            labelText: "Visual QC 1"
            Layout.preferredWidth: 75
            Layout.preferredHeight: 20
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        SvgPathItem {
            id: subtract
            x: 16
            y: 24
            width: 44
            height: 44
            strokeWidth: 2
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 0 0 L 44 0 L 35.99999237060547 0.00018121507309842855 L 43.99997329711914 8.000020980834961 L 44 0 L 44 44 L 43.99997329711914 36.000186920166016 L 36.00001907348633 44 L 7.999980926513672 44 L 0.00002748314363998361 36.000186920166016 L 0 44 L 0 0 Z M 0 0 L 8.000007629394531 0.00018121507309842855 L 0.00002748314363998361 8.000020980834961 L 0 0 Z M 11 19 C 12.656852722167969 19 14 20.3431453704834 14 22 C 14 23.6568546295166 12.656852722167969 25 11 25 C 9.343147277832031 25 8 23.6568546295166 8 22 C 8 20.3431453704834 9.343147277832031 19 11 19 Z M 25 22 C 25 20.3431453704834 23.65685272216797 19 22 19 C 20.34314727783203 19 19 20.3431453704834 19 22 C 19 23.6568546295166 20.34314727783203 25 22 25 C 23.65685272216797 25 25 23.6568546295166 25 22 Z M 36 22 C 36 20.3431453704834 34.65685272216797 19 33 19 C 31.34314727783203 19 30 20.3431453704834 30 22 C 30 23.6568546295166 31.34314727783203 25 33 25 C 34.65685272216797 25 36 23.6568546295166 36 22 Z"
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
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#00000c";uuid:"a87d9014-0c4c-5caa-ba0f-fdd03ab7247e"}D{i:1;uuid:"a87d9014-0c4c-5caa-ba0f-fdd03ab7247e_VERTICAL"}
D{i:2;uuid:"ede9e6ad-9580-5f01-a5d2-44a79f1cadea"}D{i:3;uuid:"14c0bc76-c790-5b2e-85a2-a2ddceac6304"}
}
##^##*/

