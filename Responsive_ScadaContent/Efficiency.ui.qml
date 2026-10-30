import QtQuick
import QtQuick.Layouts 1.15

Rectangle {
    id: financial
    width: 26
    height: 26
    color: "#23b26a"
    radius: 6
    state: "state_size_small_status_ok"

    RowLayout {
        id: financial_RowLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 8
        anchors.rightMargin: 5
        anchors.topMargin: 5
        anchors.leftMargin: 5
        anchors.bottomMargin: 5
    }

    Image {
        id: solid
        anchors.verticalCenter: parent.verticalCenter
        source: "assets/Solid.png"
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
        width: parent.width * 0.65
        height: parent.height*0.65
    }
    states: [
        State {
            name: "state_size_small_status_ok"
        },
        State {
            name: "state_size_big_status_error"
            extend: "state_size_small_status_ok"

            PropertyChanges {
                target: financial_RowLayout
                anchors.rightMargin: 16
                anchors.topMargin: 16
                anchors.leftMargin: 16
                anchors.bottomMargin: 16
            }

            PropertyChanges {
                target: financial
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
                target: financial
                color: "#f3af3d"
            }
        },
        State {
            name: "state_size_small_status_error"
            extend: "state_size_small_status_ok"

            PropertyChanges {
                target: financial
                color: "#ff4154"
            }
        },
        State {
            name: "state_size_big_status_ok"
            extend: "state_size_small_status_ok"

            PropertyChanges {
                target: financial_RowLayout
                anchors.rightMargin: 16
                anchors.topMargin: 16
                anchors.leftMargin: 16
                anchors.bottomMargin: 16
            }

            PropertyChanges {
                target: financial
                width: 80
                height: 80
                radius: 12
            }
        },
        State {
            name: "state_size_big_status_warning"
            extend: "state_size_small_status_ok"

            PropertyChanges {
                target: financial_RowLayout
                anchors.rightMargin: 16
                anchors.topMargin: 16
                anchors.leftMargin: 16
                anchors.bottomMargin: 16
            }

            PropertyChanges {
                target: financial
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
    D{i:0;uuid:"a021c5c7-c95a-5e6f-ace8-9ef8459cfcfb"}D{i:1;uuid:"a021c5c7-c95a-5e6f-ace8-9ef8459cfcfb_HORIZONTAL"}
}
##^##*/

