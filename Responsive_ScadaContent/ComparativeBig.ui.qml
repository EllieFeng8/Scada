import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: comparativeBig
    width: 80
    height: 30
    color: "transparent"
    property alias elementText: element.text
    state: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

    RowLayout {
        id: comparativeBig_RowLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 4
        Arrow_circle_right {
            id: arrow_circle_right
            x: 0
            y: 3
            width: 24
            height: 24
            state: "state_direction_up_status_ok"
            Layout.preferredWidth: 24
            Layout.preferredHeight: 24
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
        }

        Text {
            id: element
            x: 28
            y: 0
            width: 53
            height: 30
            color: master.__font_C
            text: qsTr("00%")
            font.pixelSize: 24
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Hubot Sans"
            Layout.preferredWidth: 53
            Layout.preferredHeight: 30
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
        }

        Minus_circle {
            id: minus_circle
            x: 0
            y: 3
            width: 24
            height: 24
            Layout.preferredWidth: 24
            Layout.preferredHeight: 24
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
        }

        Arrow_circle_broken {
            id: arrow_circle_broken
            x: 0
            y: 3
            width: 24
            height: 24
            state: "state_direction_down"
            Layout.preferredWidth: 24
            Layout.preferredHeight: 24
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
        }
    }
    states: [
        State {
            name: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: minus_circle
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken
                visible: false
            }
        },
        State {
            name: "state_status_Warning_Orientation_Horizontal_Target_for_Incresing_Dot_F"
            extend: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: minus_circle
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_right
                state: "state_direction_down_status_warning"
            }
        },
        State {
            name: "state_status_Neutral_Orientation_Horizontal_Target_for_Incresing_Dot_F"
            extend: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: element
                color: "#5b5b5b"
            }

            PropertyChanges {
                target: minus_circle
                visible: true
            }

            PropertyChanges {
                target: arrow_circle_right
                visible: false
            }
        },
        State {
            name: "state_status_Alarming_Orientation_Horizontal_Target_for_Decreasing_Dot"
            extend: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: minus_circle
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_right
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken
                state: "state_direction_up"
            }
        },
        State {
            name: "state_status_OK_Orientation_Horizontal_Target_for_Decreasing_Dot_False"
            extend: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: minus_circle
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_right
                state: "state_direction_down_status_ok"
            }
        },
        State {
            name: "state_status_Neutral_Orientation_Horizontal_Target_for_Decreasing_Dot_"
            extend: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: element
                color: "#5b5b5b"
            }

            PropertyChanges {
                target: arrow_circle_right
                visible: false
            }
        },
        State {
            name: "state_status_Warning_Orientation_Horizontal_Target_for_Decreasing_Dot_"
            extend: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: minus_circle
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_right
                state: "state_direction_up_status_warning"
            }
        },
        State {
            name: "state_status_Alarming_Orientation_Horizontal_Target_for_Incresing_Dot_"
            extend: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: minus_circle
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_right
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken
                visible: true
            }
        }
    ]
}



