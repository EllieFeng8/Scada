import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0

Rectangle {
    id: comparative
    width: 80
    height: 30
    color: "transparent"
    property alias elementText: element.text
    state: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

    RowLayout {
        id: comparative_RowLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 4
        Arrow_circle_up_right {
            id: arrow_circle_up_right
            x: 0
            y: 3
            width: 24
            height: 24
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
            color: "#23b26a"
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

        Arrow_circle_down_right {
            id: arrow_circle_down_right
            x: 0
            y: 3
            width: 24
            height: 24
            Layout.preferredWidth: 24
            Layout.preferredHeight: 24
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
        }

        Arrow_circle_broken_down {
            id: arrow_circle_broken_down
            x: 0
            y: 3
            width: 24
            height: 24
            Layout.preferredWidth: 24
            Layout.preferredHeight: 24
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
        }

        Arrow_circle_broken_up {
            id: arrow_circle_broken_up
            x: 0
            y: 3
            width: 24
            height: 24
            Layout.preferredWidth: 24
            Layout.preferredHeight: 24
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
        }
    }

    ColumnLayout {
        id: comparative_ColumnLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 4
        Arrow_circle_broken_down {
            id: arrow_circle_broken_down1
            x: 3
            y: 0
            width: 24
            height: 24
            Layout.preferredWidth: 24
            Layout.preferredHeight: 24
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Text {
            id: element1
            x: 0
            y: 28
            width: 31
            height: 16
            color: "#ff4154"
            text: qsTr("00%")
            font.pixelSize: 14
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.DemiBold
            font.family: "Hubot Sans"
            Layout.preferredWidth: 31
            Layout.preferredHeight: 16
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Arrow_circle_broken_up {
            id: arrow_circle_broken_up1
            x: 3
            y: 0
            width: 24
            height: 24
            Layout.preferredWidth: 24
            Layout.preferredHeight: 24
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Text {
            id: element2
            x: 0
            y: 28
            width: 31
            height: 16
            color: "#ff4154"
            text: qsTr("00%")
            font.pixelSize: 14
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.DemiBold
            font.family: "Hubot Sans"
            Layout.preferredWidth: 31
            Layout.preferredHeight: 16
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Arrow_circle_up_right {
            id: arrow_circle_up_right1
            x: 3
            y: 0
            width: 24
            height: 24
            Layout.preferredWidth: 24
            Layout.preferredHeight: 24
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Text {
            id: element3
            x: 0
            y: 28
            width: 31
            height: 16
            color: "#23b26a"
            text: qsTr("00%")
            font.pixelSize: 14
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.DemiBold
            font.family: "Hubot Sans"
            Layout.preferredWidth: 31
            Layout.preferredHeight: 16
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Arrow_circle_down_right {
            id: arrow_circle_down_right1
            x: 3
            y: 0
            width: 24
            height: 24
            Layout.preferredWidth: 24
            Layout.preferredHeight: 24
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Text {
            id: element4
            x: 0
            y: 28
            width: 31
            height: 16
            color: "#23b26a"
            text: qsTr("00%")
            font.pixelSize: 14
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.DemiBold
            font.family: "Hubot Sans"
            Layout.preferredWidth: 31
            Layout.preferredHeight: 16
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Arrow_circle_down_right {
            id: arrow_circle_down_right2
            x: 3
            y: 0
            width: 24
            height: 24
            Layout.preferredWidth: 24
            Layout.preferredHeight: 24
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Text {
            id: element5
            x: 0
            y: 28
            width: 31
            height: 16
            color: "#f3af3d"
            text: qsTr("00%")
            font.pixelSize: 14
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.DemiBold
            font.family: "Hubot Sans"
            Layout.preferredWidth: 31
            Layout.preferredHeight: 16
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Minus_circle {
            id: minus_circle1
            x: 3
            y: 0
            width: 24
            height: 24
            Layout.preferredWidth: 24
            Layout.preferredHeight: 24
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Text {
            id: element6
            x: 0
            y: 28
            width: 31
            height: 16
            color: "#5b5b5b"
            text: qsTr("00%")
            font.pixelSize: 14
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.DemiBold
            font.family: "Hubot Sans"
            Layout.preferredWidth: 31
            Layout.preferredHeight: 16
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        ArcItem {
            id: ellipse_595
            x: 0
            y: 0
            width: 8
            height: 8
            strokeWidth: 0
            strokeColor: "transparent"
            outlineArc: true
            fillColor: "#23b26a"
            end: 450.00001
            begin: 90
            arcWidth: 4
            antialiasing: true
            Layout.preferredWidth: 8
            Layout.preferredHeight: 8
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Minus_circle {
            id: minus_circle2
            x: 3
            y: 0
            width: 24
            height: 24
            Layout.preferredWidth: 24
            Layout.preferredHeight: 24
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Text {
            id: element7
            x: 0
            y: 28
            width: 31
            height: 16
            color: "#5b5b5b"
            text: qsTr("00%")
            font.pixelSize: 14
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.DemiBold
            font.family: "Hubot Sans"
            Layout.preferredWidth: 31
            Layout.preferredHeight: 16
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Arrow_circle_up_right {
            id: arrow_circle_up_right2
            x: 3
            y: 0
            width: 24
            height: 24
            Layout.preferredWidth: 24
            Layout.preferredHeight: 24
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Text {
            id: element8
            x: 0
            y: 28
            width: 31
            height: 16
            color: "#f3af3d"
            text: qsTr("00%")
            font.pixelSize: 14
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.DemiBold
            font.family: "Hubot Sans"
            Layout.preferredWidth: 31
            Layout.preferredHeight: 16
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }
    }
    states: [
        State {
            name: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: ellipse_595
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken_up1
                visible: false
            }

            PropertyChanges {
                target: element6
                visible: false
            }

            PropertyChanges {
                target: minus_circle2
                visible: false
            }

            PropertyChanges {
                target: element7
                visible: false
            }

            PropertyChanges {
                target: minus_circle1
                visible: false
            }

            PropertyChanges {
                target: comparative_ColumnLayout
                visible: false
            }

            PropertyChanges {
                target: minus_circle
                visible: false
            }

            PropertyChanges {
                target: element8
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_up_right1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken_up
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_down_right
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_down_right2
                visible: false
            }

            PropertyChanges {
                target: element4
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_down_right1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken_down
                visible: false
            }

            PropertyChanges {
                target: element5
                visible: false
            }

            PropertyChanges {
                target: element2
                visible: false
            }

            PropertyChanges {
                target: element3
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_up_right2
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
                target: arrow_circle_down_right
                visible: false
            }

            PropertyChanges {
                target: element
                color: "#f3af3d"
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
                target: arrow_circle_up_right
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_down_right
                visible: false
            }

            PropertyChanges {
                target: element
                color: "#ff4154"
            }

            PropertyChanges {
                target: arrow_circle_broken_down
                visible: true
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
                target: arrow_circle_up_right
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_down_right
                visible: true
            }
        },
        State {
            name: "state_status_Neutral_Orientation_Horizontal_Target_for_Incresing_Dot_F"
            extend: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: minus_circle
                visible: true
            }

            PropertyChanges {
                target: arrow_circle_up_right
                visible: false
            }

            PropertyChanges {
                target: element
                color: "#5b5b5b"
            }
        },
        State {
            name: "state_status_Neutral_Orientation_Horizontal_Target_for_Decreasing_Dot_"
            extend: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: arrow_circle_up_right
                visible: false
            }

            PropertyChanges {
                target: element
                color: "#5b5b5b"
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
                target: arrow_circle_up_right
                visible: false
            }

            PropertyChanges {
                target: element
                color: "#f3af3d"
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
                target: arrow_circle_up_right
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken_up
                visible: true
            }

            PropertyChanges {
                target: arrow_circle_down_right
                visible: false
            }

            PropertyChanges {
                target: element
                color: "#ff4154"
            }

            PropertyChanges {
                target: arrow_circle_broken_down
                visible: false
            }
        },
        State {
            name: "state_status_Alarming_Orientation_Vertical_Target_for_Incresing_Dot_Fa"
            extend: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: comparative_RowLayout
                visible: false
            }

            PropertyChanges {
                target: comparative_ColumnLayout
                visible: true
            }

            PropertyChanges {
                target: comparative
                width: 30
                height: 44
            }
        },
        State {
            name: "state_status_Alarming_Orientation_Vertical_Target_for_Decreasing_Dot_F"
            extend: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: element1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken_up1
                visible: true
            }

            PropertyChanges {
                target: comparative_RowLayout
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken_down1
                visible: false
            }

            PropertyChanges {
                target: element2
                visible: true
            }

            PropertyChanges {
                target: comparative
                width: 30
                height: 44
            }
        },
        State {
            name: "state_status_OK_Orientation_Vertical_Target_for_Incresing_Dot_False"
            extend: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: element1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken_up1
                visible: false
            }

            PropertyChanges {
                target: comparative_RowLayout
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken_down1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_up_right1
                visible: true
            }

            PropertyChanges {
                target: element2
                visible: false
            }

            PropertyChanges {
                target: element3
                visible: true
            }

            PropertyChanges {
                target: comparative
                width: 30
                height: 44
            }
        },
        State {
            name: "state_status_OK_Orientation_Vertical_Target_for_Decreasing_Dot_False"
            extend: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: element1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken_up1
                visible: false
            }

            PropertyChanges {
                target: comparative_RowLayout
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken_down1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_up_right1
                visible: false
            }

            PropertyChanges {
                target: element4
                visible: true
            }

            PropertyChanges {
                target: arrow_circle_down_right1
                visible: true
            }

            PropertyChanges {
                target: element2
                visible: false
            }

            PropertyChanges {
                target: element3
                visible: false
            }

            PropertyChanges {
                target: comparative
                width: 30
                height: 44
            }
        },
        State {
            name: "state_status_Warning_Orientation_Vertical_Target_for_Incresing_Dot_Fal"
            extend: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: element1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken_up1
                visible: false
            }

            PropertyChanges {
                target: comparative_RowLayout
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken_down1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_up_right1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_down_right2
                visible: true
            }

            PropertyChanges {
                target: element4
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_down_right1
                visible: false
            }

            PropertyChanges {
                target: element5
                visible: true
            }

            PropertyChanges {
                target: element2
                visible: false
            }

            PropertyChanges {
                target: element3
                visible: false
            }

            PropertyChanges {
                target: comparative
                width: 30
                height: 44
            }
        },
        State {
            name: "state_status_Neutral_Orientation_Vertical_Target_for_Incresing_Dot_Fal"
            extend: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: element1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken_up1
                visible: false
            }

            PropertyChanges {
                target: element6
                visible: true
            }

            PropertyChanges {
                target: comparative_RowLayout
                visible: false
            }

            PropertyChanges {
                target: minus_circle1
                visible: true
            }

            PropertyChanges {
                target: arrow_circle_broken_down1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_up_right1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_down_right2
                visible: false
            }

            PropertyChanges {
                target: element4
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_down_right1
                visible: false
            }

            PropertyChanges {
                target: element5
                visible: false
            }

            PropertyChanges {
                target: element2
                visible: false
            }

            PropertyChanges {
                target: element3
                visible: false
            }

            PropertyChanges {
                target: comparative
                width: 30
                height: 44
            }
        },
        State {
            name: "state_status_Alarming_Orientation_Vertical_Target_for_Incresing_Dot_Tr"
            extend: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: element1
                visible: false
            }

            PropertyChanges {
                target: ellipse_595
                fillColor: "#ff4154"
            }

            PropertyChanges {
                target: arrow_circle_broken_up1
                visible: false
            }

            PropertyChanges {
                target: element6
                visible: false
            }

            PropertyChanges {
                target: comparative_RowLayout
                visible: false
            }

            PropertyChanges {
                target: minus_circle1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken_down1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_up_right1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_down_right2
                visible: false
            }

            PropertyChanges {
                target: element4
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_down_right1
                visible: false
            }

            PropertyChanges {
                target: element5
                visible: false
            }

            PropertyChanges {
                target: element2
                visible: false
            }

            PropertyChanges {
                target: element3
                visible: false
            }

            PropertyChanges {
                target: comparative
                width: 8
                height: 8
            }
        },
        State {
            name: "state_status_OK_Orientation_Vertical_Target_for_Incresing_Dot_True"
            extend: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: element1
                visible: false
            }

            PropertyChanges {
                target: ellipse_595
                visible: true
            }

            PropertyChanges {
                target: arrow_circle_broken_up1
                visible: false
            }

            PropertyChanges {
                target: element6
                visible: false
            }

            PropertyChanges {
                target: comparative_RowLayout
                visible: false
            }

            PropertyChanges {
                target: minus_circle1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken_down1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_up_right1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_down_right2
                visible: false
            }

            PropertyChanges {
                target: element4
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_down_right1
                visible: false
            }

            PropertyChanges {
                target: element5
                visible: false
            }

            PropertyChanges {
                target: element2
                visible: false
            }

            PropertyChanges {
                target: element3
                visible: false
            }

            PropertyChanges {
                target: comparative
                width: 8
                height: 8
            }
        },
        State {
            name: "state_status_Warning_Orientation_Vertical_Target_for_Incresing_Dot_Tru"
            extend: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: element1
                visible: false
            }

            PropertyChanges {
                target: ellipse_595
                fillColor: "#f3af3d"
            }

            PropertyChanges {
                target: arrow_circle_broken_up1
                visible: false
            }

            PropertyChanges {
                target: element6
                visible: false
            }

            PropertyChanges {
                target: comparative_RowLayout
                visible: false
            }

            PropertyChanges {
                target: minus_circle1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken_down1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_up_right1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_down_right2
                visible: false
            }

            PropertyChanges {
                target: element4
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_down_right1
                visible: false
            }

            PropertyChanges {
                target: element5
                visible: false
            }

            PropertyChanges {
                target: element2
                visible: false
            }

            PropertyChanges {
                target: element3
                visible: false
            }

            PropertyChanges {
                target: comparative
                width: 8
                height: 8
            }
        },
        State {
            name: "state_status_Neutral_Orientation_Vertical_Target_for_Incresing_Dot_Tru"
            extend: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: element1
                visible: false
            }

            PropertyChanges {
                target: ellipse_595
                fillColor: "#5b5b5b"
            }

            PropertyChanges {
                target: arrow_circle_broken_up1
                visible: false
            }

            PropertyChanges {
                target: element6
                visible: false
            }

            PropertyChanges {
                target: comparative_RowLayout
                visible: false
            }

            PropertyChanges {
                target: minus_circle1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken_down1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_up_right1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_down_right2
                visible: false
            }

            PropertyChanges {
                target: element4
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_down_right1
                visible: false
            }

            PropertyChanges {
                target: element5
                visible: false
            }

            PropertyChanges {
                target: element2
                visible: false
            }

            PropertyChanges {
                target: element3
                visible: false
            }

            PropertyChanges {
                target: comparative
                width: 8
                height: 8
            }
        },
        State {
            name: "state_status_Neutral_Orientation_Vertical_Target_for_Decreasing_Dot_Fa"
            extend: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: element1
                visible: false
            }

            PropertyChanges {
                target: ellipse_595
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken_up1
                visible: false
            }

            PropertyChanges {
                target: element6
                visible: false
            }

            PropertyChanges {
                target: minus_circle2
                visible: true
            }

            PropertyChanges {
                target: comparative_RowLayout
                visible: false
            }

            PropertyChanges {
                target: element7
                visible: true
            }

            PropertyChanges {
                target: minus_circle1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken_down1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_up_right1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_down_right2
                visible: false
            }

            PropertyChanges {
                target: element4
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_down_right1
                visible: false
            }

            PropertyChanges {
                target: element5
                visible: false
            }

            PropertyChanges {
                target: element2
                visible: false
            }

            PropertyChanges {
                target: element3
                visible: false
            }

            PropertyChanges {
                target: comparative
                width: 30
                height: 44
            }
        },
        State {
            name: "state_status_Warning_Orientation_Vertical_Target_for_Decreasing_Dot_Fa"
            extend: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"

            PropertyChanges {
                target: element1
                visible: false
            }

            PropertyChanges {
                target: ellipse_595
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_broken_up1
                visible: false
            }

            PropertyChanges {
                target: element6
                visible: false
            }

            PropertyChanges {
                target: minus_circle2
                visible: false
            }

            PropertyChanges {
                target: comparative_RowLayout
                visible: false
            }

            PropertyChanges {
                target: element7
                visible: false
            }

            PropertyChanges {
                target: minus_circle1
                visible: false
            }

            PropertyChanges {
                target: element8
                visible: true
            }

            PropertyChanges {
                target: arrow_circle_broken_down1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_up_right1
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_down_right2
                visible: false
            }

            PropertyChanges {
                target: element4
                visible: false
            }

            PropertyChanges {
                target: arrow_circle_down_right1
                visible: false
            }

            PropertyChanges {
                target: element5
                visible: false
            }

            PropertyChanges {
                target: element2
                visible: false
            }

            PropertyChanges {
                target: element3
                visible: false
            }

            PropertyChanges {
                target: comparative
                width: 30
                height: 44
            }

            PropertyChanges {
                target: arrow_circle_up_right2
                visible: true
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;uuid:"448cc4c3-28a4-50f4-8540-3b860d3f6191"}D{i:1;uuid:"448cc4c3-28a4-50f4-8540-3b860d3f6191_HORIZONTAL"}
D{i:2;uuid:"ccc73c28-056f-5483-b9c7-95f7b7c48114"}D{i:3;uuid:"c751fd9c-2344-51ba-9abd-92ea5f52d6b5"}
}
##^##*/

