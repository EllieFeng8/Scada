import QtQuick
import QtQuick.Layouts 1.15

Rectangle {
    id: inventory
    width: 26
    height: 26
    color: stateMaster.good
    radius: 6
    state: "state_size_small_status_ok"

    RowLayout {
        id: inventory_RowLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 5
        Container {
            id: container
            x: 5
            y: 5
            width: 16
            height: 16
            Layout.preferredWidth: 16
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            state: "state_size_16"
            Layout.preferredHeight: 16
        }
        anchors.bottomMargin: 5
        anchors.leftMargin: 5
        spacing: 8
        anchors.topMargin: 5
    }

    StateMaster {
        id: stateMaster
    }




    states: [
        State {
            name: "state_size_small_status_ok"
        },
        State {
            name: "state_size_big_status_error"
            extend: "state_size_small_status_ok"

            PropertyChanges {
                target: container
                x: 16
                y: 16
                width: 48
                height: 48
                Layout.preferredWidth: 48
                state: "state_size_48"
                Layout.preferredHeight: 48
            }

            PropertyChanges {
                target: inventory
                width: 80
                height: 80
                color: stateMaster.error
                radius: 12
            }

            PropertyChanges {
                target: inventory_RowLayout
                anchors.rightMargin: 16
                anchors.bottomMargin: 16
                anchors.leftMargin: 16
                anchors.topMargin: 16
            }
        },
        State {
            name: "state_size_small_status_warning"
            extend: "state_size_small_status_ok"

            PropertyChanges {
                target: inventory
                color: stateMaster.warning
            }
        },
        State {
            name: "state_size_big_status_ok"
            extend: "state_size_small_status_ok"

            PropertyChanges {
                target: container
                x: 16
                y: 16
                width: 48
                height: 48
                Layout.preferredWidth: 48
                state: "state_size_48"
                Layout.preferredHeight: 48
            }

            PropertyChanges {
                target: inventory
                width: 80
                height: 80
                radius: 12
            }

            PropertyChanges {
                target: inventory_RowLayout
                anchors.rightMargin: 16
                anchors.bottomMargin: 16
                anchors.leftMargin: 16
                anchors.topMargin: 16
            }
        },
        State {
            name: "state_size_small_status_error"
            extend: "state_size_small_status_ok"

            PropertyChanges {
                target: inventory
                color: stateMaster.error
            }
        },
        State {
            name: "state_size_big_status_warning"
            extend: "state_size_small_status_ok"

            PropertyChanges {
                target: container
                x: 16
                y: 16
                width: 48
                height: 48
                Layout.preferredWidth: 48
                state: "state_size_48"
                Layout.preferredHeight: 48
            }

            PropertyChanges {
                target: inventory
                width: 80
                height: 80
                color: stateMaster.warning
                radius: 12
            }

            PropertyChanges {
                target: inventory_RowLayout
                anchors.rightMargin: 16
                anchors.bottomMargin: 16
                anchors.leftMargin: 16
                anchors.topMargin: 16
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;uuid:"333b8321-17c0-526f-a47d-934f4e33826b"}D{i:1;uuid:"333b8321-17c0-526f-a47d-934f4e33826b_HORIZONTAL"}
}
##^##*/

