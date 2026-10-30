import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: mTBF
    width: 26
    height: 26
    color: "#23b26a"
    radius: 6
    state: "state_size_small_status_ok"

    RowLayout {
        id: mTBF_RowLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 8
        Activity {
            id: activity
            x: 5
            y: 5
            width: 16
            height: 16
            state: "state_size_16"
            Layout.preferredWidth: 16
            Layout.preferredHeight: 16
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        }
        anchors.topMargin: 5
        anchors.rightMargin: 5
        anchors.leftMargin: 5
        anchors.bottomMargin: 5
    }
    states: [
        State {
            name: "state_size_small_status_ok"
        },
        State {
            name: "state_size_big_status_error"
            extend: "state_size_small_status_ok"

            PropertyChanges {
                target: activity
                x: 16
                y: 16
                width: 48
                height: 48
                state: "state_size_48"
                Layout.preferredWidth: 48
                Layout.preferredHeight: 48
            }

            PropertyChanges {
                target: mTBF_RowLayout
                anchors.topMargin: 16
                anchors.rightMargin: 16
                anchors.leftMargin: 16
                anchors.bottomMargin: 16
            }

            PropertyChanges {
                target: mTBF
                width: 80
                height: 80
                color: "#ff4154"
                radius: 12
            }
        },
        State {
            name: "state_size_small_status_warning"
            extend: "state_size_small_status_ok"

            PropertyChanges {
                target: mTBF
                color: "#f3af3d"
            }
        },
        State {
            name: "state_size_big_status_ok"
            extend: "state_size_small_status_ok"

            PropertyChanges {
                target: activity
                x: 16
                y: 16
                width: 48
                height: 48
                state: "state_size_48"
                Layout.preferredWidth: 48
                Layout.preferredHeight: 48
            }

            PropertyChanges {
                target: mTBF_RowLayout
                anchors.topMargin: 16
                anchors.rightMargin: 16
                anchors.leftMargin: 16
                anchors.bottomMargin: 16
            }

            PropertyChanges {
                target: mTBF
                width: 80
                height: 80
                radius: 12
            }
        },
        State {
            name: "state_size_small_status_error"
            extend: "state_size_small_status_ok"

            PropertyChanges {
                target: mTBF
                color: "#ff4154"
            }
        },
        State {
            name: "state_size_big_status_warning"
            extend: "state_size_small_status_ok"

            PropertyChanges {
                target: activity
                x: 16
                y: 16
                width: 48
                height: 48
                state: "state_size_48"
                Layout.preferredWidth: 48
                Layout.preferredHeight: 48
            }

            PropertyChanges {
                target: mTBF_RowLayout
                anchors.topMargin: 16
                anchors.rightMargin: 16
                anchors.leftMargin: 16
                anchors.bottomMargin: 16
            }

            PropertyChanges {
                target: mTBF
                width: 80
                height: 80
                color: "#f3af3d"
                radius: 12
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;uuid:"cbd63f0e-5f4e-58b2-ba78-1ac1607790d6"}D{i:1;uuid:"cbd63f0e-5f4e-58b2-ba78-1ac1607790d6_HORIZONTAL"}
D{i:2;uuid:"555291cf-0de7-5a4c-976d-f483b8bb8c7f"}
}
##^##*/

