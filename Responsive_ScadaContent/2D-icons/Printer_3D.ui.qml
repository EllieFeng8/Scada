import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15
import QtQuick.Studio.Components 1.0

Rectangle {
    id: printer_3D
    width: 47
    height: 48
    color: "transparent"
    state: "state_property_1_Default"

    ColumnLayout {
        id: printer_3D_ColumnLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 4
        Chip_new {
            id: chip_new
            x: 0
            y: 0
            width: 47
            height: 20
            state: "state_state_default"
            labelText: "Print 1"
            Layout.preferredWidth: 47
            Layout.preferredHeight: 20
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        SvgPathItem {
            id: subtract
            x: 12
            y: 0
            width: 24
            height: 24
            strokeWidth: 2
            strokeStyle: 1
            strokeColor: "transparent"
            rotation: 180
            path: "M 0 24 L 0 0 L 24 0 L 24 24 L 0 24 Z M 6.691608082164417 9.272727272727272 L 12 16.909090909090907 L 17.454545454545453 9.272727272727272 L 6.691608082164417 9.272727272727272 Z"
            joinStyle: 0
            fillColor: factory_2d.itemBGcolor
            antialiasing: true
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
            name: "state_property_1_Hover"
            extend: "state_property_1_Default"

            PropertyChanges {
                target: chip_new
                x: -1
                state: "state_state_hover"
            }

            PropertyChanges {
                target: printer_3D
                width: 46
            }

            PropertyChanges {
                target: subtract
                x: 11
                y: 24
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
                y: 24
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

            PropertyChanges {
                target: subtract
                y: 24
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
                y: 24
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
                y: 24
                fillColor: "#23b26a"
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#00000c";uuid:"a4d49874-7cc3-5c87-a86d-977a8717ff1c"}D{i:1;uuid:"a4d49874-7cc3-5c87-a86d-977a8717ff1c_VERTICAL"}
D{i:2;uuid:"5f30bd79-37b0-5665-9786-8115bed329b5"}D{i:3;uuid:"4954cb79-1180-535f-81d5-771a98a05b21"}
}
##^##*/

