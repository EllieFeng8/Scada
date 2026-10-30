import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0
import QtGraphs

Rectangle {
    id: widgets_Production_schedule_attainment
    width: 436
    height: 400
    color: "transparent"
    property int statecontroller: 2
    property color textColor: master.__font_C
    property color secondaryTextColor: master.__fontS_C
    property color gridColor: master.__grids_C

    property alias monthText: month.text
    property alias month1Text: month1.text
    property alias last_IssuesText: last_Issues.text
    property alias robotic_arm_failureText: robotic_arm_failure.text
    property alias supply_chain_disruptionText: supply_chain_disruption.text
    property alias durationText: duration.text
    property alias occurrenceText: occurrence.text
    property alias hydraulics_system_failureText: hydraulics_system_failure.text
    state: "size_M"

    Rectangle {
        id: pareto_Chart
        height: 220
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 120
        GraphsView {
            anchors.fill: parent
            anchors.margins: 16
            marginLeft: 0
            marginBottom: 0
            axisX: BarCategoryAxis {
                categories: ["Minor", "Reportable", "Loss Time", "Severe"]
                gridVisible: false
                subGridVisible: false
            }
            axisY: ValueAxis {
                min: 0
                max: 100
                tickInterval: 20
            }
            theme: GraphsTheme {
                backgroundVisible: false
                plotAreaBackgroundColor: "transparent"
                colorScheme: GraphsTheme.ColorScheme.Dark
                grid.mainColor: gridColor
                grid.subColor: gridColor
                axisX.mainColor: gridColor
                axisY.mainColor: gridColor
                axisX.subColor: gridColor
                axisY.subColor: gridColor
                axisX.labelTextColor: secondaryTextColor
                axisY.labelTextColor: secondaryTextColor
            }
            BarSeries {
                barWidth: 0.34
                BarSet {
                    values: [75, 55, 30, 4]
                    borderWidth: 0
                    color: "#FF4154"
                }
            }
            // component Marker : Rectangle {
            //     width: 14
            //     height: 14
            //     color: root.brandColor
            //     radius: 25
            // }
            // LineSeries {
            //     width: 4
            //     color: root.brandColor
            //     pointDelegate: Marker{}
            //     XYPoint {x: 0.5; y: 50}
            //     XYPoint {x: 1.5; y: 80}
            //     XYPoint {x: 2.5; y: 75}
            //     XYPoint {x: 3.5; y: 99.9}
            // }
        }
    }

    Rectangle {
        id: footer
        width: 436
        height: 60
        color: "transparent"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 340
        RowLayout {
            id: footer_layout
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 24
            anchors.rightMargin: 24
            anchors.topMargin: 24
            anchors.bottomMargin: 24
            spacing: 24
            Gadget {
                id: gadget
                x: 24
                y: 24
                width: 76
                height: 12
                Layout.preferredWidth: 76
                Layout.preferredHeight: 12
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            }

            Gadget {
                id: gadget1
                x: 124
                y: 24
                width: 76
                height: 12
                Layout.preferredWidth: 76
                Layout.preferredHeight: 12
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            }

            Gadget {
                id: gadget2
                x: 224
                y: 24
                width: 76
                height: 12
                visible: false
                Layout.preferredWidth: 76
                Layout.preferredHeight: 12
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            }

            Item {
                id: footer_QtQuick_Layouts_RowLayout_SpacerRear
                x: 0
                y: 0
                width: 1
                height: 1
                Layout.fillWidth: true
            }
        }
    }

    Rectangle {
        id: grabber
        width: 16
        height: 16
        visible: false
        color: "transparent"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 412
        anchors.topMargin: 376
        SvgPathItem {
            id: line_120
            width: 23
            height: 0
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: -3
            anchors.bottomMargin: 8
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "#9f9f9f"
            rotation: 45
            path: "M 0 0.0000019073486328125 L 22.627416610717773 -0.0000019073486328125"
            joinStyle: 0
            fillColor: "transparent"
            antialiasing: true
        }

        SvgPathItem {
            id: line_121_Stroke_
            width: 12
            height: 1
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: -2
            anchors.bottomMargin: 4
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            rotation: 135
            path: "M 0 0.5 C 0 0.22385761141777039 0.22385761141777039 0 0.5 0 L 11.813708305358887 0 C 12.089850425720215 0 12.313708305358887 0.22385761141777039 12.313708305358887 0.5 C 12.313708305358887 0.7761423885822296 12.089850425720215 1 11.813708305358887 1 L 0.5 1 C 0.22385761141777039 1 0 0.7761423885822296 0 0.5 Z"
            joinStyle: 0
            fillColor: "#9f9f9f"
            antialiasing: true
        }
    }

    Rectangle {
        id: footer_data
        height: 144
        visible: false
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 340
        RowLayout {
            id: footer_data_layout
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 24
            anchors.rightMargin: 24
            anchors.topMargin: 24
            anchors.bottomMargin: 24
            spacing: 8
            Rectangle {
                id: c1
                x: 24
                y: 24
                width: 178
                height: 96
                color: "transparent"
                ColumnLayout {
                    id: c1_layout
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    spacing: 12
                    Text {
                        id: last_Issues
                        x: 0
                        y: 0
                        width: 68
                        height: 12
                        color: textColor
                        text: qsTr("Last Issues")
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        lineHeight: 12
                        lineHeightMode: Text.FixedHeight
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
                        color: textColor
                        text: qsTr("Robotic arm failure")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        lineHeight: 16
                        lineHeightMode: Text.FixedHeight
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
                        color: textColor
                        text: qsTr("Hydraulics system failure")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        lineHeight: 16
                        lineHeightMode: Text.FixedHeight
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
                        color: textColor
                        text: qsTr("Supply chain disruption")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        lineHeight: 16
                        lineHeightMode: Text.FixedHeight
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
                y: 24
                width: 69
                height: 96
                color: "transparent"
                ColumnLayout {
                    id: c2_layout
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
                        color: textColor
                        text: qsTr("Occurrence ")
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        lineHeight: 12
                        lineHeightMode: Text.FixedHeight
                        wrapMode: Text.NoWrap
                        font.weight: Font.Medium
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 70
                        Layout.preferredHeight: 12
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }

                    Text {
                        id: element25
                        x: 0
                        y: 24
                        width: 17
                        height: 16
                        color: textColor
                        text: qsTr("01")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        lineHeight: 16
                        lineHeightMode: Text.FixedHeight
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 17
                        Layout.preferredHeight: 16
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }

                    Text {
                        id: element26
                        x: 0
                        y: 52
                        width: 17
                        height: 16
                        color: textColor
                        text: qsTr("01")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        lineHeight: 16
                        lineHeightMode: Text.FixedHeight
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 17
                        Layout.preferredHeight: 16
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }

                    Text {
                        id: element27
                        x: 0
                        y: 80
                        width: 18
                        height: 16
                        color: textColor
                        text: qsTr("02")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        lineHeight: 16
                        lineHeightMode: Text.FixedHeight
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
                y: 24
                width: 58
                height: 96
                color: "transparent"
                ColumnLayout {
                    id: c3_layout
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
                        color: textColor
                        text: qsTr("Duration")
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        lineHeight: 12
                        lineHeightMode: Text.FixedHeight
                        wrapMode: Text.NoWrap
                        font.weight: Font.Medium
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 54
                        Layout.preferredHeight: 12
                        Layout.alignment: Qt.AlignRight | Qt.AlignTop
                    }

                    Text {
                        id: element28
                        x: 0
                        y: 24
                        width: 59
                        height: 16
                        color: textColor
                        text: qsTr("00:03:01")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        lineHeight: 16
                        lineHeightMode: Text.FixedHeight
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 59
                        Layout.preferredHeight: 16
                        Layout.alignment: Qt.AlignRight | Qt.AlignTop
                    }

                    Text {
                        id: element29
                        x: 1
                        y: 52
                        width: 58
                        height: 16
                        color: textColor
                        text: qsTr("00:08:11")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        lineHeight: 16
                        lineHeightMode: Text.FixedHeight
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 16
                        Layout.alignment: Qt.AlignRight | Qt.AlignTop
                    }

                    Text {
                        id: element30
                        x: 0
                        y: 80
                        width: 59
                        height: 16
                        color: textColor
                        text: qsTr("00:07:13")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        lineHeight: 16
                        lineHeightMode: Text.FixedHeight
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
        }
    }

    Rectangle {
        id: chart1
        height: 136
        visible: false
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 120
        Rectangle {
            id: uptime
            width: 162
            height: 53
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 24
            anchors.topMargin: 46
            ColumnLayout {
                id: uptime_layout
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                spacing: 8
                Text {
                    id: month
                    x: 0
                    y: 0
                    width: 53
                    height: 13
                    color: textColor
                    text: qsTr("Uptime")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 13
                    lineHeightMode: Text.FixedHeight
                    wrapMode: Text.NoWrap
                    font.weight: Font.DemiBold
                    font.family: "Hubot Sans"
                    Layout.preferredWidth: 53
                    Layout.preferredHeight: 13
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                }

                Rectangle {
                    id: element32
                    x: 0
                    y: 21
                    width: 153
                    height: 32
                    color: "transparent"
                    RowLayout {
                        id: element_layout
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        spacing: 8
                        SvgPathItem {
                            id: polygon_30
                            x: 0
                            y: 0
                            width: 35
                            height: 32
                            strokeWidth: 1
                            strokeStyle: 1
                            strokeColor: "transparent"
                            path: "M 13.191403271338132 2.6050700765404224 C 15.202335627664366 -0.868358766804751 20.217189518820014 -0.8683556548678357 22.228121875146247 2.6050731884773377 L 34.709112282921424 24.163147027116096 C 36.724218835759324 27.643785605906956 34.21262702948043 32 30.190749246693134 32 L 5.2287740326291265 32 C 1.2068962498418312 32 -1.3046933780812608 27.643783116357422 0.7104131747566371 24.163144537566563 L 13.191403271338132 2.6050700765404224 Z"
                            joinStyle: 0
                            fillColor: "#23b26a"
                            antialiasing: true
                            Layout.preferredWidth: 35
                            Layout.preferredHeight: 32
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                        }

                        Text {
                            id: uptimePercentage
                            x: 45
                            y: 4
                            width: 107
                            height: 29
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                            text: "99.99%"
                            color: textColor
                            font.weight: Font.DemiBold
                            font.family: "Hubot Sans"
                            font.pixelSize: 26
                        }
                    }
                    Layout.preferredWidth: 153
                    Layout.preferredHeight: 32
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                }
            }
        }

        Rectangle {
            id: uptime1
            width: 162
            height: 53
            color: "transparent"
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 24
            anchors.topMargin: 46
            ColumnLayout {
                id: uptime_layout1
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                spacing: 8
                Text {
                    id: month1
                    x: 0
                    y: 0
                    width: 72
                    height: 13
                    color: textColor
                    text: qsTr("Downtime")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 13
                    lineHeightMode: Text.FixedHeight
                    wrapMode: Text.NoWrap
                    font.weight: Font.DemiBold
                    font.family: "Hubot Sans"
                    Layout.preferredWidth: 72
                    Layout.preferredHeight: 13
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                }

                Rectangle {
                    id: element34
                    x: 0
                    y: 21
                    width: 157
                    height: 32
                    color: "transparent"
                    RowLayout {
                        id: element_layout1
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        spacing: 8
                        SvgPathItem {
                            id: polygon_31
                            x: 0
                            y: 0
                            width: 35
                            height: 32
                            strokeWidth: 1
                            strokeStyle: 1
                            strokeColor: "transparent"
                            path: "M 13.191403271338132 2.6050700765404224 C 15.202335627664366 -0.868358766804751 20.217189518820014 -0.8683556548678357 22.228121875146247 2.6050731884773377 L 34.709112282921424 24.163147027116096 C 36.724218835759324 27.643785605906956 34.21262702948043 32 30.190749246693134 32 L 5.2287740326291265 32 C 1.2068962498418312 32 -1.3046933780812608 27.643783116357422 0.7104131747566371 24.163144537566563 L 13.191403271338132 2.6050700765404224 Z"
                            joinStyle: 0
                            fillColor: "#ff4154"
                            antialiasing: true
                            Layout.preferredWidth: 35
                            Layout.preferredHeight: 32
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                        }

                        Text {
                            id: uptimeValue
                            x: 46
                            y: 4
                            width: 110
                            height: 24
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                            text: "18m25s"
                            color: textColor
                            font.weight: Font.DemiBold
                            font.family: "Hubot Sans"
                            font.pixelSize: 26
                        }
                    }
                    Layout.preferredWidth: 157
                    Layout.preferredHeight: 32
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                }
            }
        }
    }

    states: [
        State {
            name: "size_S"
            when: statecontroller === 1

            PropertyChanges {
                target: widgets_Production_schedule_attainment
                height: 256
            }

            PropertyChanges {
                target: grabber
                anchors.topMargin: 232
            }

            PropertyChanges {
                target: footer
                visible: false
                anchors.topMargin: 340
            }

            PropertyChanges {
                target: footer_data
                visible: false
            }

            PropertyChanges {
                target: chart1
                visible: true
            }

            PropertyChanges {
                target: pareto_Chart
                visible: false
            }

        },
        State {
            name: "size_M"
            when: statecontroller === 2

            PropertyChanges {
                target: widgets_Production_schedule_attainment
                height: 400
            }

            PropertyChanges {
                target: grabber
                anchors.topMargin: 376
            }

            PropertyChanges {
                target: footer
                visible: true
                anchors.topMargin: 340
            }

            PropertyChanges {
                target: footer_data
                visible: false
            }

            PropertyChanges {
                target: chart1
                visible: false
            }

            PropertyChanges {
                target: pareto_Chart
                visible: true
            }
        },
        State {
            name: "size_L"
            when: statecontroller === 3

            PropertyChanges {
                target: widgets_Production_schedule_attainment
                height: 544
            }

            PropertyChanges {
                target: grabber
                anchors.topMargin: 520
            }

            PropertyChanges {
                target: footer
                visible: true
                anchors.topMargin: 484
            }

            PropertyChanges {
                target: footer_data
                visible: true
            }

            PropertyChanges {
                target: chart1
                visible: false
            }

            PropertyChanges {
                target: pareto_Chart
                visible: true
            }
        },
        State {
            name: "size_XS"
            when: statecontroller === 0

            PropertyChanges {
                target: widgets_Production_schedule_attainment
                height: 128
            }

            PropertyChanges {
                target: grabber
                anchors.topMargin: 104
            }

            PropertyChanges {
                target: footer
                visible: false
                anchors.topMargin: 340
            }

            PropertyChanges {
                target: footer_data
                visible: false
            }

            PropertyChanges {
                target: chart1
                visible: false
            }

            PropertyChanges {
                target: pareto_Chart
                visible: false
            }

        }
    ]
}

