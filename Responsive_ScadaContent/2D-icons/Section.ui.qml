import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: section
    width: 131
    height: 44
    color: "transparent"
    radius: 8
    state: "state_state_Default"

    Rectangle {
        id: background_border
        color: "transparent"
        radius: 8
        border.color: factory_2d.itemBGcolor
        border.width: 1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
    }

    Chip_new {
        id: chip_new
        x: 12
        y: 12
        width: 107
        height: 20
        state: "state_state_default"
        labelText: "Production line 1"
    }

    ColumnLayout {
        id: section_ColumnLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 8
        Item {
            id: section_ColumnLayout_SpacerRear
            x: 0
            y: 0
            width: 1
            height: 1
            Layout.fillHeight: true
        }
    }
    states: [
        State {
            name: "state_state_Default"

            PropertyChanges {
                target: section_ColumnLayout
                visible: false
            }
        },
        State {
            name: "state_state_OK"
            extend: "state_state_Default"

            PropertyChanges {
                target: chip_new
                state: "state_state_status_ok"
            }

            PropertyChanges {
                target: background_border
                border.color: "#23b26a"
            }
        },
        State {
            name: "state_state_Error"
            extend: "state_state_Default"

            PropertyChanges {
                target: chip_new
                state: "state_state_error"
            }

            PropertyChanges {
                target: background_border
                border.color: "#ff4154"
            }
        },
        State {
            name: "state_state_Active"
            extend: "state_state_Default"

            PropertyChanges {
                target: chip_new
                state: "state_state_active"
            }
        },
        State {
            name: "state_state_Hover"
            extend: "state_state_Default"

            PropertyChanges {
                target: chip_new
                state: "state_state_hover"
            }

            PropertyChanges {
                target: background_border
                border.color: "#e0e0e0"
            }

            PropertyChanges {
                target: section_ColumnLayout
                visible: true
            }
        },
        State {
            name: "state_state_Selected"
            extend: "state_state_Default"

            PropertyChanges {
                target: chip_new
                state: "state_state_selected"
            }

            PropertyChanges {
                target: background_border
                border.color: "#181818"
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#00000c";uuid:"549a72d1-1980-5e59-b5ae-b8419d1eaad3"}D{i:1;uuid:"dde6c1cf-98db-5825-bb86-0f47482a8879"}
D{i:2;uuid:"cd2e0cd6-fed9-53b3-814e-a93deaf34aeb"}
}
##^##*/

