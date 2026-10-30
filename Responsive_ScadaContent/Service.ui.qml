import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: service
    width: 26
    height: 26
    color: "#23b26a"
    radius: 6
    state: "state_size_small_status_ok"

    RowLayout {
        id: service_RowLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 8
        Tool {
            id: tool
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
            name: "state_size_small_status_warning"
            extend: "state_size_small_status_ok"

            PropertyChanges {
                target: service
                color: "#f3af3d"
            }
        },
        State {
            name: "state_size_small_status_error"
            extend: "state_size_small_status_ok"

            PropertyChanges {
                target: service
                color: "#ff4154"
            }
        },
        State {
            name: "state_size_big_status_ok"
            extend: "state_size_small_status_ok"

            PropertyChanges {
                target: service_RowLayout
                anchors.topMargin: 16
                anchors.rightMargin: 16
                anchors.leftMargin: 16
                anchors.bottomMargin: 16
            }

            PropertyChanges {
                target: service
                width: 80
                height: 80
                radius: 12
            }

            PropertyChanges {
                target: tool
                x: 16
                y: 16
                width: 48
                height: 48
                state: "state_size_48"
                Layout.preferredWidth: 48
                Layout.preferredHeight: 48
            }
        },
        State {
            name: "state_size_big_status_error"
            extend: "state_size_small_status_ok"

            PropertyChanges {
                target: service_RowLayout
                anchors.topMargin: 16
                anchors.rightMargin: 16
                anchors.leftMargin: 16
                anchors.bottomMargin: 16
            }

            PropertyChanges {
                target: service
                width: 80
                height: 80
                color: "#ff4154"
                radius: 12
            }

            PropertyChanges {
                target: tool
                x: 16
                y: 16
                width: 48
                height: 48
                state: "state_size_48"
                Layout.preferredWidth: 48
                Layout.preferredHeight: 48
            }
        },
        State {
            name: "state_size_big_status_warning"
            extend: "state_size_small_status_ok"

            PropertyChanges {
                target: service_RowLayout
                anchors.topMargin: 16
                anchors.rightMargin: 16
                anchors.leftMargin: 16
                anchors.bottomMargin: 16
            }

            PropertyChanges {
                target: service
                width: 80
                height: 80
                color: "#f3af3d"
                radius: 12
            }

            PropertyChanges {
                target: tool
                x: 16
                y: 16
                width: 48
                height: 48
                state: "state_size_48"
                Layout.preferredWidth: 48
                Layout.preferredHeight: 48
            }
        }
    ]
}



