import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Studio.Components
import QtQuick.Studio.Effects
import QtQuick.Effects
import QtQuick3D.Effects
import QtQuick3D

Rectangle {
    id: widgets_MTBF
    width: 436
    height: 400
    color: "transparent"
    radius: 24
    state: "state_size_XS"
    property int calendar_viewYear: 2023
    property int calendar_viewMonth: 11
    //    property alias element5Text: element5.text
    property alias month1Text: month1.text
    property alias hText: h.text
    property alias element6Text: element6.text
    property alias element9Text: element9.text
    property alias monthText: month.text
    property alias unplanned_downtimeText: unplanned_downtime.text
    property alias month2Text: month2.text
    property alias month4Text: month4.text
    property alias month5Text: month5.text
    property alias element11Text: element11.text
    property alias element10Text: element10.text
    property alias element7Text: element7.text
    property alias average_mean_time_between_failuresText: average_mean_time_between_failures.text
    property alias month3Text: month3.text
    property alias element8Text: element8.text
    property int statecontroller: 2

    property var monthlyEvent: {
        "2023-10-05": "Event Description",
        "2023-10-10": "Meeting with Client",
        "2023-10-18": "Team Lunch",
        "2023-10-25": "Project Review",
        "2023-11-02": "shit",
        "2023-11-10": "Meeting with Client",
        "2023-11-18": "Team Lunch",
        "2023-12-02": "shit",
        "2023-12-10": "Meeting with Client"
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
                            MTBF {
                                id: mTBF
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
                                id: unplanned_downtime
                                x: 34
                                y: 0
                                width: 355
                                height: 26
                                color: root.textColor
                                text: qsTr("Unplanned downtime ")
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
                        text: qsTr("256h")
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
                        id: average_mean_time_between_failures
                        x: 0
                        y: 67
                        width: 389
                        height: 13
                        color: master.__fontS_C
                        text: qsTr("Average mean time between failures")
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

                    Item {
                        id: text_ColumnLayout_SpacerRear
                        x: 0
                        y: 0
                        width: 1
                        height: 1
                        Layout.fillHeight: true
                    }
                }

                ComparativeBig {
                    id: comparativeBig
                    y: 55
                    width: 80
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
            width: 80
            height: 30
            anchors.right: parent.right
            state: "state_status_Warning_Orientation_Horizontal_Target_for_Incresing_Dot_F"
            elementText: "12%"
            anchors.rightMargin: 20
        }
    }

    Rectangle {
        id: calendar_minimised
        height: 23
        color: "transparent"
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.verticalCenterOffset: -65
        anchors.rightMargin: 150
        anchors.leftMargin: 24
        clip: true

        Text {
            id: text1
            text: qsTr("Failures during ")
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Bold
            font.family: "Hubot Sans"
            color: root.textColor

            Text {
                id: text2

                text: calendar_viewMonth === 1 ? "January" : calendar_viewMonth === 2 ? "February" : calendar_viewMonth === 3 ? "March" : calendar_viewMonth === 4 ? "April" : calendar_viewMonth === 5 ? "May" : calendar_viewMonth === 6 ? "June" : calendar_viewMonth === 7 ? "July" : calendar_viewMonth === 8 ? "August" : calendar_viewMonth === 9 ? "September" : calendar_viewMonth === 10 ? "October" : calendar_viewMonth === 11 ? "November" : calendar_viewMonth === 12 ? "December" : ""
                color: root.textColor
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                font.pixelSize: 14
                verticalAlignment: Text.AlignVCenter
                font.weight: Font.Bold
                anchors.leftMargin: 111
                font.family: "Hubot Sans"

                Text {
                    id: text3
                    x: 83
                    text: qsTr("2023")
                    color: root.textColor
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    font.pixelSize: 14
                    verticalAlignment: Text.AlignVCenter
                    font.weight: Font.Bold
                    anchors.leftMargin: 80
                    font.family: "Hubot Sans"
                }
            }
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            font.pixelSize: 14
        }
    }

    Rectangle {
        id: footer_data
        y: 270
        height: 128
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        Rectangle {
            id: line_chart
            color: "transparent"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            Rectangle {
                id: element5
                y: 16
                height: 14
                color: "transparent"
                anchors.left: parent.left
                anchors.right: parent.right
                RowLayout {
                    id: data_RowLayout
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    spacing: 38
                    Text {
                        id: element6
                        x: 0
                        y: 0
                        width: 33
                        height: 14
                        color: root.textColor
                        text: qsTr("2")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.Bold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 14
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Text {
                        id: element7
                        x: 71
                        y: 0
                        width: 33
                        height: 14
                        color: root.textColor
                        text: qsTr("3")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.Bold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 14
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Text {
                        id: element8
                        x: 142
                        y: 0
                        width: 33
                        height: 14
                        color: root.textColor
                        text: qsTr("3")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.Bold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 14
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Text {
                        id: element9
                        x: 214
                        y: 0
                        width: 33
                        height: 14
                        color: root.textColor
                        text: qsTr("6")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.Bold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 14
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Text {
                        id: element10
                        x: 285
                        y: 0
                        width: 33
                        height: 14
                        color: root.textColor
                        text: qsTr("4")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.Bold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 14
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Text {
                        id: element11
                        x: 356
                        y: 0
                        width: 33
                        height: 14
                        color: root.textColor
                        text: qsTr("5")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.Bold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 14
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }
                }
            }

            MyDotsLines {
                id: dotsLines
                visible: true
                anchors.fill: parent
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.topMargin: 26
                anchors.bottomMargin: 36
            }

            Rectangle {
                id: year
                y: 94
                height: 16
                visible: true
                color: "transparent"
                anchors.left: parent.left
                anchors.right: parent.right
                RowLayout {
                    id: year_RowLayout
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    spacing: 38
                    Text {
                        id: month
                        x: 0
                        y: 0
                        width: 33
                        height: 16
                        color: root.textColor
                        text: qsTr("Jan")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 16
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Text {
                        id: month1
                        x: 71
                        y: 0
                        width: 33
                        height: 16
                        color: root.textColor
                        text: qsTr("Feb")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 16
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Text {
                        id: month2
                        x: 142
                        y: 0
                        width: 33
                        height: 16
                        color: root.textColor
                        text: qsTr("Mar")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 16
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Text {
                        id: month3
                        x: 214
                        y: 0
                        width: 33
                        height: 16
                        color: root.textColor
                        text: qsTr("Apr")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 16
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Text {
                        id: month4
                        x: 285
                        y: 0
                        width: 33
                        height: 16
                        color: root.textColor
                        text: qsTr("May")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 16
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Text {
                        id: month5
                        x: 356
                        y: 0
                        width: 33
                        height: 16
                        color: root.textColor
                        text: qsTr("Jun")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 16
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }
                }
            }

            Rectangle {
                id: element12
                y: 16
                height: 14
                color: "transparent"
                anchors.left: parent.left
                anchors.right: parent.right
                RowLayout {
                    id: data_RowLayout1
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    spacing: 38
                    Text {
                        id: element13
                        x: 0
                        y: 0
                        width: 33
                        height: 14
                        color: root.textColor
                        text: qsTr("2")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.Bold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 14
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Text {
                        id: element14
                        x: 71
                        y: 0
                        width: 33
                        height: 14
                        color: root.textColor
                        text: qsTr("3")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.Bold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 14
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Text {
                        id: element15
                        x: 142
                        y: 0
                        width: 33
                        height: 14
                        color: root.textColor
                        text: qsTr("3")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.Bold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 14
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Text {
                        id: element16
                        x: 214
                        y: 0
                        width: 33
                        height: 14
                        color: root.textColor
                        text: qsTr("6")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.Bold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 14
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Text {
                        id: element17
                        x: 285
                        y: 0
                        width: 33
                        height: 14
                        color: root.textColor
                        text: qsTr("4")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.Bold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 14
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Text {
                        id: element18
                        x: 356
                        y: 0
                        width: 33
                        height: 14
                        color: root.textColor
                        text: qsTr("5")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.Bold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 14
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }
                }
            }

            Rectangle {
                id: element19
                color: "transparent"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 98
                anchors.topMargin: 16
                RowLayout {
                    id: data_RowLayout2
                    visible: true
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    spacing: 38
                    Text {
                        id: element20
                        x: 0
                        y: 0
                        width: 33
                        height: 14
                        color: root.textColor
                        text: qsTr("2")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.Bold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 14
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Text {
                        id: element21
                        x: 71
                        y: 0
                        width: 33
                        height: 14
                        color: root.textColor
                        text: qsTr("3")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.Bold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 14
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Text {
                        id: element22
                        x: 142
                        y: 0
                        width: 33
                        height: 14
                        color: root.textColor
                        text: qsTr("3")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.Bold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 14
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Text {
                        id: element23
                        x: 214
                        y: 0
                        width: 33
                        height: 14
                        color: root.textColor
                        text: qsTr("6")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.Bold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 14
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Text {
                        id: element24
                        x: 285
                        y: 0
                        width: 33
                        height: 14
                        color: root.textColor
                        text: qsTr("4")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.Bold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 14
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Text {
                        id: element25
                        x: 356
                        y: 0
                        width: 33
                        height: 14
                        color: root.textColor
                        text: qsTr("5")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.Bold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 33
                        Layout.preferredHeight: 14
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }
                }
            }


            anchors.rightMargin: 24
            anchors.leftMargin: 24
        }
    }

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

    Calendar_view {
        id: calendar_view1
        visible: true
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        currentYear: calendar_viewYear
        currentMonth: calendar_viewMonth
        statecontroller: 1
        anchors.topMargin: 52
        anchors.bottomMargin: 52
        anchors.horizontalCenter: parent.horizontalCenter
        eventDates: monthlyEvent
    }

    Calendar_view {
        id: calendar_view
        visible: true
        width: parent.width
        height: parent.height
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: 163
        anchors.bottomMargin: 0
        eventMonth: calendar_viewMonth
        currentYear: calendar_viewYear
        // currentMonth: calendar_viewMonth
        eventDates: monthlyEvent
    }



    Image {
        id: divider
        x: 24
        y: 268
        anchors.left: parent.left
        anchors.right: parent.right
        source: "assets/divider_state_size_M.png"
        anchors.rightMargin: 24
        anchors.leftMargin: 24
    }

    Rectangle {
        id: element26
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
                id: unplanned_downtime1
                x: 0
                y: 0
                width: 293
                height: 26
                color: root.textColor
                text: qsTr("Unplanned downtime ")
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
                    width: 80
                    height: 30
                    anchors.right: parent.right
                    state: "state_status_Warning_Orientation_Horizontal_Target_for_Incresing_Dot_F"
                    elementText: "12%"
                    anchors.rightMargin: -4
                }

                Text {
                    id: h1
                    x: 0
                    y: -5
                    width: 389
                    height: 25
                    color: root.textColor
                    text: qsTr("256h")
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

    Rectangle {
        id: icon_xs
        x: 24
        y: 24
        width: 80
        height: 80
        opacity: 0
        visible: false
        color: "#f3af3d"
        radius: 12
        RowLayout {
            id: icon_xs_RowLayout
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            spacing: 8
            Rectangle {
                id: activity
                x: 16
                y: 16
                width: 48
                height: 48
                color: "transparent"
                SvgPathItem {
                    id: solid
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    strokeWidth: 2
                    strokeColor: "transparent"
                    path: "M 16 0 C 16.86086082458496 0 17.625137329101562 0.5508601069450378 17.89736557006836 1.367544412612915 L 28 31.675443649291992 L 32.102630615234375 19.367544174194336 C 32.37485885620117 18.550859451293945 33.13913917541504 18 34 18 L 42 18 C 43.10456848144531 18 44 18.895429611206055 44 20 C 44 21.104570388793945 43.10456848144531 22 42 22 L 35.4415168762207 22 L 29.897367477416992 38.63245391845703 C 29.625139236450195 39.44913864135742 28.86086082458496 40 28 40 C 27.13913917541504 40 26.374860763549805 39.44913864135742 26.102632522583008 38.63245391845703 L 16 8.324555397033691 L 11.897366523742676 20.632455825805664 C 11.625138282775879 21.449140548706055 10.860860824584961 22 10 22 L 2 22 C 0.8954304456710815 22 0 21.104570388793945 0 20 C 0 18.895429611206055 0.8954304456710815 18 2 18 L 8.558481216430664 18 L 14.102633476257324 1.367544412612915 C 14.374861717224121 0.5508601069450378 15.139139175415039 0 16 0 Z"
                    fillColor: "#181818"
                    antialiasing: true
                    anchors.topMargin: 4
                    anchors.rightMargin: 2
                    anchors.leftMargin: 2
                    anchors.bottomMargin: 4
                }
                Layout.preferredWidth: 48
                Layout.preferredHeight: 48
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            }
            anchors.topMargin: 16
            anchors.rightMargin: 16
            anchors.leftMargin: 16
            anchors.bottomMargin: 16
        }
    }

    Item {
        id: __materialLibrary__
    }

    states: [
        State {
            name: "state_size_M"
            when: statecontroller === 2

            PropertyChanges {
                target: element19
                visible: false
            }

            PropertyChanges {
                target: element12
                visible: false
            }

            PropertyChanges {
                target: comparativeBig1
                visible: false
            }

            PropertyChanges {
                target: icon_xs
                visible: false
            }

            PropertyChanges {
                target: element26
                visible: false
            }

            PropertyChanges {
                target: calendar_view1
                visible: false
            }

            PropertyChanges {
                target: calendar_view
                opacity: 1
                visible: true
                statecontroller: 2
            }

            PropertyChanges {
                target: text1
                anchors.verticalCenterOffset: -46
            }

            PropertyChanges {
                target: text2
                horizontalAlignment: Text.AlignLeft
            }

            PropertyChanges {
                target: text3
                anchors.verticalCenterOffset: 0
            }

            PropertyChanges {
                target: calendar_minimised
                y: 120
            }
        },
        State {
            name: "state_size_L"
            when: statecontroller === 3
            extend: "state_size_M"

            PropertyChanges {
                target: text_ColumnLayout_SpacerRear
                visible: false
            }

            PropertyChanges {
                target: comparativeBig
                visible: false
            }

            PropertyChanges {
                target: calendar_minimised
                visible: false
            }

            PropertyChanges {
                target: grabber
                y: 520
            }

            PropertyChanges {
                target: element12
                visible: true
            }

            PropertyChanges {
                target: comparativeBig1
                visible: true
            }

            PropertyChanges {
                target: element5
                visible: false
            }

            PropertyChanges {
                target: footer_data
                y: 416
            }

            PropertyChanges {
                target: widgets_MTBF
                height: 544
            }

            PropertyChanges {
                target: divider
                y: 416
                visible: true
                anchors.rightMargin: 24
                anchors.leftMargin: 24
            }

            PropertyChanges {
                target: calendar_view1
                width: 436
                visible: true
                anchors.bottomMargin: 100
                anchors.topMargin: 118
            }

            PropertyChanges {
                target: calendar_view
                visible: false
            }
        },
        State {
            name: "state_size_S"
            when: statecontroller === 1
            extend: "state_size_M"

            PropertyChanges {
                target: text_ColumnLayout_SpacerRear
                visible: false
            }

            PropertyChanges {
                target: comparativeBig
                anchors.rightMargin: -4
            }

            PropertyChanges {
                target: calendar_minimised
                opacity: 1
                visible: false
            }

            PropertyChanges {
                target: element19
                visible: true
            }

            PropertyChanges {
                target: grabber
                y: 232
            }

            PropertyChanges {
                target: element12
                visible: false
            }

            PropertyChanges {
                target: comparativeBig1
                visible: false
            }

            PropertyChanges {
                target: element5
                visible: false
            }

            PropertyChanges {
                target: content
                Layout.preferredHeight: 80
            }

            PropertyChanges {
                target: footer_data
                y: 120
            }

            PropertyChanges {
                target: widgets_MTBF
                height: 256
                statecontroller: 2
            }

            PropertyChanges {
                target: calendar_view1
                visible: false
            }

            PropertyChanges {
                target: calendar_view
                visible: false
            }

            PropertyChanges {
                target: divider
                visible: false
            }
        },
        State {
            name: "state_size_XS"
            when: statecontroller === 0
            extend: "state_size_M"

            PropertyChanges {
                target: calendar_minimised
                visible: false
            }

            PropertyChanges {
                target: grabber
                y: 104
            }

            PropertyChanges {
                target: header
                visible: false
            }

            PropertyChanges {
                target: icon_xs
                visible: true
            }

            PropertyChanges {
                target: element26
                visible: true
            }

            PropertyChanges {
                target: footer_data
                visible: false
            }

            PropertyChanges {
                target: widgets_MTBF
                height: 128
            }

            PropertyChanges {
                target: divider
                visible: false
            }

            PropertyChanges {
                target: calendar_view1
                visible: false
            }

            PropertyChanges {
                target: calendar_view
                visible: false
            }

            PropertyChanges {
                target: h1
                visible: true
            }
        }
    ]
}
