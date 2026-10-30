import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Studio.Components
import QtQuick3D.Effects
import QtQuick.Studio.Effects

Rectangle {
    id: widgets_Service_program
    width: 436
    height: 400
    color: "transparent"
    property alias monthText: month.text
    property alias occurrenceText: occurrence.text
    property alias element3Text: element3.text
    property alias robotic_arm_failureText: robotic_arm_failure.text
    property alias durationText: duration.text
    property alias hydraulics_system_failureText: hydraulics_system_failure.text
    property alias element4Text: element4.text
    property alias supply_chain_disruptionText: supply_chain_disruption.text
    property alias element2Text: element2.text
    property alias element1Text: element1.text
    property alias elementText: element.text
    property alias last_IssuesText: last_Issues.text
    property alias element5Text: element5.text
    property alias next_serviceText: next_service.text
    property alias planned_maintenance_programText: planned_maintenance_program.text
    property alias hText: h.text
    property int statecontroller: 0

    //add more events here
    property var monthlyEvent: {
        "2023-10-05": "Event Description",
        "2023-11-14": "Meeting with Client",
        "2023-11-28": "error machine "
        //        "2023-10-31": "more "
    }

    Rectangle {
        id: header
        y: 0
        height: 120
        opacity: 0
        visible: false
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        ColumnLayout {
            id: header_ColumnLayout
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            spacing: 24
            Rectangle {
                id: content
                x: 24
                y: 24
                width: 388
                height: 80
                color: "transparent"
                ColumnLayout {
                    id: text_ColumnLayout
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    spacing: 8
                    Rectangle {
                        id: icon_title
                        x: 0
                        y: 0
                        width: 388
                        height: 26
                        color: "transparent"
                        RowLayout {
                            id: icon_title_RowLayout
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            spacing: 8
                            Service {
                                id: service
                                x: 0
                                y: 0
                                width: 26
                                height: 26
                                state: "state_size_small_status_warning"
                                Layout.preferredWidth: 26
                                Layout.preferredHeight: 26
                                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            }

                            Text {
                                id: next_service
                                x: 34
                                y: 0
                                width: 355
                                height: 26
                                color: root.textColor
                                text: qsTr("Next service")
                                font.pixelSize: 18
                                horizontalAlignment: Text.AlignLeft
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                                font.weight: Font.DemiBold
                                font.family: "Hubot Sans"
                                Layout.preferredHeight: 26
                                Layout.fillWidth: true
                                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            }
                        }
                        Layout.preferredHeight: 26
                        Layout.fillWidth: true
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }

                    Text {
                        id: h
                        x: 0
                        y: 34
                        width: 389
                        height: 25
                        color: root.textColor
                        text: qsTr("154h")
                        font.pixelSize: 26
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                        font.weight: Font.Bold
                        font.family: "Hubot Sans"
                        Layout.preferredHeight: 25
                        Layout.fillWidth: true
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }

                    Text {
                        id: planned_maintenance_program
                        x: 0
                        y: 67
                        width: 389
                        height: 13
                        color: master.__fontS_C
                        text: qsTr("Planned maintenance program")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredHeight: 13
                        Layout.fillWidth: true
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }
                }

                ComparativeBig {
                    id: comparativeBig
                    y: 55
                    width: 76
                    height: 30
                    anchors.right: parent.right
                    state: "state_status_Warning_Orientation_Horizontal_Target_for_Incresing_Dot_F"
                    elementText: "12%"
                }
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            }
            anchors.topMargin: 24
            anchors.rightMargin: 24
            anchors.leftMargin: 24
            anchors.bottomMargin: 16
        }

        ComparativeBig {
            id: comparativeBig1
            y: 79
            width: 76
            height: 30
            anchors.right: parent.right
            state: "state_status_Warning_Orientation_Horizontal_Target_for_Incresing_Dot_F"
            elementText: "12%"
            anchors.rightMargin: 24
        }
    }

    //    CalendarTest {
    //        id: calendarTest
    //        width: parent.width
    //        height: parent.height
    //        opacity: 1
    //        visible: false
    //        eventDates: monthlyEvent
    //    }
    Rectangle {
        id: grabber
        x: 412
        y: 376
        width: 16
        height: 16
        visible: false
        color: "transparent"
        SvgPathItem {
            id: line_120
            width: 23
            height: 0
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            strokeWidth: 1
            strokeColor: "#9f9f9f"
            rotation: 135
            path: "M 0 0.0000019073486328125 L 22.627416610717773 -0.0000019073486328125"
            fillColor: "transparent"
            antialiasing: true
            anchors.rightMargin: -3
            anchors.bottomMargin: 8
        }

        SvgPathItem {
            id: line_121
            width: 11
            height: 0
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            strokeWidth: 1
            strokeColor: "#9f9f9f"
            rotation: 135
            path: "M 0 0 L 11.313708305358887 0"
            fillColor: "transparent"
            antialiasing: true
            anchors.rightMargin: -2
            anchors.bottomMargin: 4
        }
    }

    Rectangle {
        id: footer_data
        y: 416
        height: 128
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        RowLayout {
            id: footer_data_RowLayout
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            spacing: 8
            Rectangle {
                id: c1
                x: 24
                y: 16
                anchors.left: parent.left
                anchors.right: parent.right
                color: "transparent"
                ColumnLayout {
                    id: c1_ColumnLayout
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    spacing: 12
                    Text {
                        id: last_Issues
                        x: 0
                        y: 0
                        width: 68
                        height: 12
                        color: root.textColor
                        text: qsTr("Last Issues")
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.Medium
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 68
                        Layout.preferredHeight: 12
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }

                    Text {
                        id: robotic_arm_failure
                        x: 0
                        y: 24
                        width: 135
                        height: 16
                        color: root.textColor
                        text: qsTr("Robotic arm failure")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 135
                        Layout.preferredHeight: 16
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }

                    Text {
                        id: hydraulics_system_failure
                        x: 0
                        y: 52
                        width: 179
                        height: 16
                        color: root.textColor
                        text: qsTr("Hydraulics system failure")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 179
                        Layout.preferredHeight: 16
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }

                    Text {
                        id: supply_chain_disruption
                        x: 0
                        y: 80
                        width: 166
                        height: 16
                        color: root.textColor
                        text: qsTr("Supply chain disruption")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 166
                        Layout.preferredHeight: 16
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }
                }
                Layout.preferredWidth: 178
                Layout.preferredHeight: 96
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            }

            Rectangle {
                id: c2
                x: 244
                y: 16
                width: 69
                height: 96
                color: "transparent"
                ColumnLayout {
                    id: c2_ColumnLayout
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    spacing: 12
                    Text {
                        id: occurrence
                        x: 0
                        y: 0
                        width: 70
                        height: 12
                        color: root.textColor
                        text: qsTr("Occurrence ")
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.Medium
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 70
                        Layout.preferredHeight: 12
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }

                    Text {
                        id: element
                        x: 0
                        y: 24
                        width: 17
                        height: 16
                        color: root.textColor
                        text: qsTr("01")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 17
                        Layout.preferredHeight: 16
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }

                    Text {
                        id: element1
                        x: 0
                        y: 52
                        width: 17
                        height: 16
                        color: root.textColor
                        text: qsTr("01")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 17
                        Layout.preferredHeight: 16
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }

                    Text {
                        id: element2
                        x: 0
                        y: 80
                        width: 18
                        height: 16
                        color: root.textColor
                        text: qsTr("02")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 18
                        Layout.preferredHeight: 16
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }
                }
                Layout.preferredWidth: 69
                Layout.preferredHeight: 96
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            }

            Rectangle {
                id: c3
                x: 354
                y: 16
                width: 58
                height: 96
                color: "transparent"
                ColumnLayout {
                    id: c3_ColumnLayout
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    spacing: 12
                    Text {
                        id: duration
                        x: 5
                        y: 0
                        width: 54
                        height: 12
                        color: root.textColor
                        text: qsTr("Duration")
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.Medium
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 54
                        Layout.preferredHeight: 12
                        Layout.alignment: Qt.AlignRight | Qt.AlignTop
                    }

                    Text {
                        id: element3
                        x: 0
                        y: 24
                        width: 59
                        height: 16
                        color: root.textColor
                        text: qsTr("00:03:01")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 59
                        Layout.preferredHeight: 16
                        Layout.alignment: Qt.AlignRight | Qt.AlignTop
                    }

                    Text {
                        id: element4
                        x: 1
                        y: 52
                        width: 58
                        height: 16
                        color: root.textColor
                        text: qsTr("00:08:11")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 16
                        Layout.alignment: Qt.AlignRight | Qt.AlignTop
                    }

                    Text {
                        id: element5
                        x: 0
                        y: 80
                        width: 59
                        height: 16
                        color: root.textColor
                        text: qsTr("00:07:13")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 59
                        Layout.preferredHeight: 16
                        Layout.alignment: Qt.AlignRight | Qt.AlignTop
                    }
                }
                Layout.preferredWidth: 58
                Layout.preferredHeight: 96
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            }

            anchors.topMargin: 16
            anchors.rightMargin: 24
            anchors.leftMargin: 24
            anchors.bottomMargin: 16
        }
    }

    Calendar_view {
        id: calendar_view_l
        y: 120
        height: 296
        visible: false
        anchors.left: parent.left
        anchors.right: parent.right
        clip: true
    }

    CalendarTest {
        id: calendarTest1
        y: -6
        width: parent.width
        height: 296
        visible: false
        anchors.horizontalCenter: parent.horizontalCenter
        eventDates: monthlyEvent
    }

    Rectangle {
        id: calendar_Next_event
        y: 150
        height: 136
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        ColumnLayout {
            id: calendar_Next_event_ColumnLayout
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            spacing: 100
            Rectangle {
                id: uptime
                x: 24
                y: 16
                width: 320
                height: 78
                color: "transparent"
                ColumnLayout {
                    id: uptime_ColumnLayout
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    spacing: 20
                    Text {
                        id: month
                        x: 0
                        y: 0
                        width: 78
                        height: 14
                        color: root.textColor
                        text: "Next Event"
                        font.pixelSize: 14

                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        anchors.bottom: month1.top
                        Layout.bottomMargin: 10
                    }

                    Text {
                        id: month1
                        x: 0
                        y: 0
                        width: 78
                        height: 14
                        color: root.textColor
                        text: calendarTest1.nexEvnText + " 2:00pm"
                        font.pixelSize: 32

                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 29
                        wrapMode: Text.NoWrap
                        Layout.bottomMargin: 33
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 78
                        Layout.preferredHeight: 14
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }
                }
                Layout.preferredWidth: 320
                Layout.preferredHeight: 78
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            }
            anchors.topMargin: 16
            anchors.rightMargin: 24
            anchors.leftMargin: 24
            anchors.bottomMargin: 16
        }
        clip: true
    }

    Rectangle {
        id: element6
        y: 24
        height: 80
        opacity: 0
        visible: false
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        ColumnLayout {
            id: data_ColumnLayout
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            spacing: 8
            Text {
                id: next_service1
                x: 0
                y: 0
                width: 293
                height: 26
                color: root.textColor
                text: qsTr("Next service")
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.DemiBold
                font.family: "Hubot Sans"
                Layout.preferredHeight: 26
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            }

            Rectangle {
                id: value
                x: 0
                y: 34
                width: 292
                height: 46
                color: "transparent"


                /*Image {
                    id: h1
                    x: 0
                    y: 0
                    source: "assets/h_state_size_XS.png"
                }*/
                ComparativeBig {
                    id: comparativeBig2
                    y: 16
                    width: 76
                    height: 30
                    anchors.right: parent.right
                    state: "state_status_Warning_Orientation_Horizontal_Target_for_Incresing_Dot_F"
                    elementText: "12%"
                }

                Text {
                    id: h1
                    x: 0
                    y: -6
                    width: 389
                    height: 25
                    color: root.textColor
                    text: qsTr("154h")
                    font.pixelSize: 42
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    font.weight: Font.Bold
                    font.family: "Hubot Sans"
                    Layout.preferredHeight: 25
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                }
                Layout.preferredHeight: 46
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            }
        }
        anchors.rightMargin: 24
        anchors.leftMargin: 120
    }

    Service {
        id: service1
        x: 24
        y: 24
        width: 80
        height: 80
        opacity: 0
        visible: false
        state: "state_size_big_status_warning"
    }

    states: [
        State {
            name: "state_size_M"
            when: statecontroller === 2

            PropertyChanges {
                target: element6
                visible: false
            }

            PropertyChanges {
                target: footer_data
                visible: false
            }

            PropertyChanges {
                target: service1
                visible: false
            }

            PropertyChanges {
                target: calendar_Next_event
                visible: false
            }

            PropertyChanges {
                target: comparativeBig1
                visible: false
            }

            PropertyChanges {
                target: calendarTest1
                y: 101
                visible: true
            }
        },
        State {
            name: "state_size_S"
            when: statecontroller === 1
            extend: "state_size_M"

            PropertyChanges {
                target: content
                width: 386
            }

            PropertyChanges {
                target: widgets_Service_program
                width: 434
                height: 256
            }

            PropertyChanges {
                target: icon_title
                width: 386
            }

            PropertyChanges {
                target: h
                width: 387
            }

            PropertyChanges {
                target: footer_data
                visible: false
            }

            PropertyChanges {
                target: grabber
                y: 232
            }

            PropertyChanges {
                target: calendar_Next_event
                visible: true
            }

            PropertyChanges {
                target: comparativeBig1
                visible: false
            }

            PropertyChanges {
                target: next_service
                width: 353
            }

            PropertyChanges {
                target: comparativeBig
                y: 52
                width: 75
            }

            PropertyChanges {
                target: planned_maintenance_program
                width: 387
            }

            PropertyChanges {
                target: uptime_ColumnLayout
                y: 77
                spacing: 30
            }

            PropertyChanges {
                target: calendarTest1
                visible: false
            }

            PropertyChanges {
                target: month1
                visible: true
            }
        },
        State {
            name: "state_size_L"
            when: statecontroller === 3
            extend: "state_size_M"

            PropertyChanges {
                target: widgets_Service_program
                height: 544
            }

            PropertyChanges {
                target: footer_data
                visible: true
            }

            PropertyChanges {
                target: grabber
                y: 520
            }

            PropertyChanges {
                target: comparativeBig1
                visible: true
            }

            PropertyChanges {
                target: comparativeBig
                visible: false
            }

            PropertyChanges {
                target: calendarTest1
                visible: true
            }
        },
        State {
            name: "state_size_XS"
            when: statecontroller === 0
            extend: "state_size_M"

            PropertyChanges {
                target: widgets_Service_program
                height: 128
            }

            PropertyChanges {
                target: element6
                visible: true
            }

            PropertyChanges {
                target: footer_data
                visible: false
            }

            PropertyChanges {
                target: grabber
                y: 104
            }

            PropertyChanges {
                target: service1
                visible: true
            }

            PropertyChanges {
                target: calendar_Next_event
                visible: false
            }

            PropertyChanges {
                target: header
                visible: false
            }

            PropertyChanges {
                target: calendarTest1
                visible: false
            }
        }
    ]
}
