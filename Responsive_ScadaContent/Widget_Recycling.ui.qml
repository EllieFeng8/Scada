import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0

Rectangle {
    id: widgets_Recycle_rate
    width: 436
    height: 400
    color: "transparent"
    state: "state_size_XS"
    property int qtChartValue1: 50
    property int qtChartValue2: 298
    property real qtChartValue3: 0
    property real qtChartValue4: 150
    property real qtChartValue5: 5
    property real qtChartValue6: 250

    //change this to control slider value, but to change min and max value  go to the component- RecycleSlider
    property int recycleSliderValue: 50

    property int statecontroller: 3

    property alias k1Text: k1.text
    property alias marText: mar.text
    property alias k2Text: k2.text
    property alias junText: jun.text
    property alias aprText: apr.text
    property alias febText: feb.text
    property alias mayText: may.text
    property alias kText: k.text
    property alias janText: jan.text
    //    property alias element2Text: element2.text
    property alias recycle_rateText: recycle_rate.text
    property alias plastic_35_metal_48_other_17_Text: plastic_35_metal_48_other_17_.text
    property alias kgText: kg.text

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
                            Recycle {
                                id: recycle
                                x: 0
                                y: 0
                                width: 26
                                height: 26
                                state: "state_size_small_status_ok"
                                Layout.preferredWidth: 26
                                Layout.preferredHeight: 26
                                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            }

                            Text {
                                id: recycle_rate
                                x: 34
                                y: 0
                                width: 355
                                height: 26
                                color: root.textColor
                                text: qsTr("Recycle rate")
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
                        id: kg
                        x: 0
                        y: 34
                        width: 389
                        height: 25
                        color: root.textColor
                        text: qsTr("877 kg")
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
                        id: plastic_35_metal_48_other_17_
                        x: 0
                        y: 67
                        width: 389
                        height: 13
                        color: master.__fontS_C
                        text: qsTr("Plastic 35%, metal 48%, other 17%")
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

                ColumnLayout {
                    id: text_RowLayout
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    spacing: 8
                    Rectangle {
                        id: icon_title1
                        x: 0
                        y: 0
                        width: 388
                        height: 26
                        color: "transparent"
                        RowLayout {
                            id: icon_title_RowLayout1
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            spacing: 8
                            Recycle {
                                id: recycle1
                                x: 0
                                y: 0
                                width: 26
                                height: 26
                                state: "state_size_small_status_ok"
                                Layout.preferredWidth: 26
                                Layout.preferredHeight: 26
                                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            }

                            Text {
                                id: recycle_rate1
                                x: 34
                                y: 0
                                width: 355
                                height: 26
                                color: root.textColor
                                text: qsTr("Recycle rate")
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
                        Layout.preferredWidth: 388
                        Layout.preferredHeight: 26
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }

                    Text {
                        id: kg1
                        x: 0
                        y: 34
                        width: 389
                        height: 25
                        color: root.textColor
                        text: qsTr("877 kg")
                        font.pixelSize: 26
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                        font.weight: Font.Bold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 389
                        Layout.preferredHeight: 25
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }

                    Text {
                        id: plastic_35_metal_48_other_17_1
                        x: 0
                        y: 67
                        width: 389
                        height: 13
                        color: master.__fontS_C
                        text: qsTr("Plastic 35%, metal 48%, other 17%")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredWidth: 389
                        Layout.preferredHeight: 13
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }
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
    }

    Rectangle {
        id: donut_chart_m
        y: 120
        height: 280
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        RowLayout {
            id: donut_chart_m_RowLayout
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            spacing: 8

            Rectangle {
                id: wheel
                x: 110
                y: 32
                width: 216
                height: 216
                color: "transparent"

                Rectangle {
                    id: element
                    width: 85
                    height: 76
                    color: "transparent"
                    ColumnLayout {
                        id: data_ColumnLayout
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        spacing: 0

                        Text {
                            id: text1
                            text: recycleSliderValue + "%"
                            font.pixelSize: 48
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.weight: Font.Bold
                            Layout.fillHeight: false
                            Layout.fillWidth: false
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            font.family: "hubot Sans"
                            color: root.textColor
                        }

                        ComparativeBig {
                            id: comparativeBig
                            x: 3
                            y: 46
                            width: 79
                            height: 30
                            state: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"
                            elementText: "02%"
                            Layout.preferredWidth: 79
                            Layout.preferredHeight: 30
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                        }
                    }
                    anchors.verticalCenterOffset: 2
                    anchors.horizontalCenterOffset: -1
                    anchors.centerIn: parent
                }

                RecycleSlider {
                    id: recycleSlider
                    anchors.fill: parent
                    value: recycleSliderValue
                }
                Layout.preferredWidth: 216
                Layout.preferredHeight: 216
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            }
            anchors.topMargin: 32
            anchors.rightMargin: 24
            anchors.leftMargin: 24
            anchors.bottomMargin: 32
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

    Rectangle {
        id: donut_chart
        y: 120
        height: 424
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        ColumnLayout {
            id: donut_chart_ColumnLayout
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            spacing: 34
            Rectangle {
                id: wheel_l
                x: 95
                y: 24
                width: 246
                height: 246
                color: "transparent"

                RecycleSlider {
                    id: recycleSlider1
                    anchors.fill: parent
                    value: recycleSliderValue
                }

                Rectangle {
                    id: element2
                    width: 99
                    height: 96
                    color: "transparent"
                    ColumnLayout {
                        id: data_ColumnLayout1
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        spacing: 12

                        Text {
                            id: text2
                            text: recycleSliderValue + "%"
                            font.pixelSize: 48
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.weight: Font.Bold
                            font.family: "hubot Sans"
                            Layout.fillWidth: false
                            color: root.textColor
                            Layout.fillHeight: false
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        ComparativeBig {
                            id: comparativeBig1
                            x: 10
                            y: 58
                            width: 79
                            height: 30
                            state: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"
                            elementText: "02%"
                            Layout.preferredWidth: 79
                            Layout.preferredHeight: 30
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                        }
                    }
                    anchors.horizontalCenterOffset: -1
                    anchors.centerIn: parent
                }

                Layout.preferredWidth: 246
                Layout.preferredHeight: 246
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            }

            Rectangle {
                id: footer_data
                x: 24
                y: 304
                width: 388
                height: 87
                color: "transparent"
                ColumnLayout {
                    id: footer_data_ColumnLayout
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    spacing: 8
                    Rectangle {
                        id: grid
                        x: 0
                        y: 0
                        width: 388
                        height: 63
                        color: "transparent"
                        ColumnLayout {
                            id: grid_ColumnLayout
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            anchors.topMargin: -10
                            spacing: 4

                            SvgPathItem {
                                id: line04
                                x: 32
                                y: 0
                                width: parent.width
                                height: 2
                                visible: true
                                strokeWidth: 1
                                strokeColor: "transparent"
                                path: "M 356 1 L 0 1 L 0 0 L 356 0 L 356 1 Z"
                                fillColor: "#e0e0e0"
                                antialiasing: true
                                Layout.preferredHeight: 1
                                Layout.fillWidth: true
                                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                                transform: Scale {
                                    origin.x: 0
                                    origin.y: 0
                                    xScale: parent.width / 356
                                    yScale: 1
                                }
                            }

                            SvgPathItem {
                                id: line03
                                x: 32
                                y: 21
                                width: parent.width
                                height: 2
                                strokeWidth: 1
                                strokeColor: "transparent"
                                path: "M 356 1 L 0 1 L 0 0 L 356 0 L 356 1 Z"
                                fillColor: "#e0e0e0"
                                antialiasing: true
                                Layout.preferredHeight: 1
                                Layout.fillWidth: true
                                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                                transform: Scale {
                                    origin.x: 0
                                    origin.y: 0
                                    xScale: parent.width / 356
                                    yScale: 1
                                }
                            }

                            SvgPathItem {
                                id: line02
                                x: 32
                                y: 41
                                width: parent.width
                                height: 2
                                strokeWidth: 1
                                strokeColor: "transparent"
                                path: "M 356 1 L 0 1 L 0 0 L 356 0 L 356 1 Z"
                                fillColor: "#e0e0e0"
                                antialiasing: true
                                Layout.preferredHeight: 1
                                Layout.fillWidth: true
                                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                                transform: Scale {
                                    origin.x: 0
                                    origin.y: 0
                                    xScale: parent.width / 356
                                    yScale: 1
                                }
                            }

                            SvgPathItem {
                                id: line01
                                x: 32
                                y: 62
                                width: parent.width
                                height: 2
                                strokeWidth: 1
                                strokeColor: "transparent"
                                path: "M 356 1 L 0 1 L 0 0 L 356 0 L 356 1 Z"
                                fillColor: "#e0e0e0"
                                antialiasing: true
                                Layout.preferredHeight: 1
                                Layout.fillWidth: true
                                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                                transform: Scale {
                                    origin.x: 0
                                    origin.y: 0
                                    xScale: parent.width / 356
                                    yScale: 1
                                }
                            }
                            anchors.leftMargin: 32
                        }


                        QtChart {
                            id: qtChart
                            anchors.left: parent.left
                            anchors.right: parent.right
                            value6: qtChartValue6
                            value5: qtChartValue5
                            value4: qtChartValue4
                            value3: qtChartValue3
                            value2: qtChartValue2
                            value1: qtChartValue1
                        }

                        ColumnLayout {
                            id: values_ColumnLayout
                            x: 0
                            y: -9

                            spacing: 4
                            Text {
                                id: k
                                x: 0
                                y: 0
                                width: 23
                                height: 12
                                color: master.__fontS_C
                                text: qsTr("300")
                                font.pixelSize: 12
                                horizontalAlignment: Text.AlignRight
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.NoWrap
                                font.weight: Font.Medium
                                font.family: "Hubot Sans"
                                Layout.preferredWidth: 23
                                Layout.preferredHeight: 12
                                Layout.alignment: Qt.AlignRight | Qt.AlignTop
                            }

                            Text {
                                id: k1
                                x: 0
                                y: 20
                                width: 23
                                height: 12
                                color: master.__fontS_C
                                text: qsTr("200")
                                font.pixelSize: 12
                                horizontalAlignment: Text.AlignRight
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.NoWrap
                                font.weight: Font.Medium
                                font.family: "Hubot Sans"
                                Layout.preferredWidth: 23
                                Layout.preferredHeight: 12
                                Layout.alignment: Qt.AlignRight | Qt.AlignTop
                            }

                            Text {
                                id: k2
                                x: 1
                                y: 40
                                width: 22
                                height: 12
                                color: master.__fontS_C
                                text: qsTr("100")
                                font.pixelSize: 12
                                horizontalAlignment: Text.AlignRight
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.NoWrap
                                font.weight: Font.Medium
                                font.family: "Hubot Sans"
                                Layout.preferredWidth: 22
                                Layout.preferredHeight: 12
                                Layout.alignment: Qt.AlignRight | Qt.AlignTop
                            }

                            Text {
                                id: element4
                                x: 14
                                y: 60
                                width: 9
                                height: 12
                                color: master.__fontS_C
                                text: qsTr("0")
                                font.pixelSize: 12
                                horizontalAlignment: Text.AlignRight
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.NoWrap
                                font.weight: Font.Medium
                                font.family: "Hubot Sans"
                                Layout.preferredWidth: 9
                                Layout.preferredHeight: 12
                                Layout.alignment: Qt.AlignRight | Qt.AlignTop
                            }
                        }

                        //                        QtChart {
                        //                            id: qtChart
                        //                        }
                        Layout.preferredHeight: 63
                        Layout.fillWidth: true
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }

                    Rectangle {
                        id: months
                        x: 0
                        y: 71
                        width: 388
                        height: 16
                        color: "transparent"
                        RowLayout {
                            id: months_RowLayout
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            spacing: 27
                            Text {
                                id: jan
                                x: 34
                                y: 0
                                width: 25
                                height: 16
                                color: root.textColor
                                text: qsTr("Jan")
                                font.pixelSize: 14
                                horizontalAlignment: Text.AlignLeft
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.NoWrap
                                font.weight: Font.DemiBold
                                font.family: "Hubot Sans"
                                Layout.preferredWidth: 25
                                Layout.preferredHeight: 16
                                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                            }

                            Text {
                                id: feb
                                x: 96
                                y: 0
                                width: 27
                                height: 16
                                color: root.textColor
                                text: qsTr("Feb")
                                font.pixelSize: 14
                                horizontalAlignment: Text.AlignLeft
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.NoWrap
                                font.weight: Font.DemiBold
                                font.family: "Hubot Sans"
                                Layout.preferredWidth: 27
                                Layout.preferredHeight: 16
                                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                            }

                            Text {
                                id: mar
                                x: 161
                                y: 0
                                width: 30
                                height: 16
                                color: root.textColor
                                text: qsTr("Mar")
                                font.pixelSize: 14
                                horizontalAlignment: Text.AlignLeft
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.NoWrap
                                font.weight: Font.DemiBold
                                font.family: "Hubot Sans"
                                Layout.preferredWidth: 30
                                Layout.preferredHeight: 16
                                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                            }

                            Text {
                                id: apr
                                x: 228
                                y: 0
                                width: 26
                                height: 16
                                color: root.textColor
                                text: qsTr("Apr")
                                font.pixelSize: 14
                                horizontalAlignment: Text.AlignLeft
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.NoWrap
                                font.weight: Font.DemiBold
                                font.family: "Hubot Sans"
                                Layout.preferredWidth: 26
                                Layout.preferredHeight: 16
                                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                            }

                            Text {
                                id: may
                                x: 292
                                y: 0
                                width: 32
                                height: 16
                                color: root.textColor
                                text: qsTr("May")
                                font.pixelSize: 14
                                horizontalAlignment: Text.AlignLeft
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.NoWrap
                                font.weight: Font.DemiBold
                                font.family: "Hubot Sans"
                                Layout.preferredWidth: 32
                                Layout.preferredHeight: 16
                                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                            }

                            Text {
                                id: jun
                                x: 361
                                y: 0
                                width: 26
                                height: 16
                                color: root.textColor
                                text: qsTr("Jun")
                                font.pixelSize: 14
                                horizontalAlignment: Text.AlignLeft
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.NoWrap
                                font.weight: Font.DemiBold
                                font.family: "Hubot Sans"
                                Layout.preferredWidth: 26
                                Layout.preferredHeight: 16
                                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                            }
                            anchors.rightMargin: 2
                            anchors.leftMargin: 34
                        }
                        Layout.preferredHeight: 16
                        Layout.fillWidth: true
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }
                }

                Rectangle {
                    id: values
                    x: 0
                    y: -2
                    width: 22
                    height: 72
                    color: "transparent"
                }
                Layout.preferredHeight: 87
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            }
            anchors.topMargin: 24
            anchors.rightMargin: 24
            anchors.leftMargin: 24
            anchors.bottomMargin: 24
        }
    }

    Rectangle {
        id: element5
        y: 120
        height: 136
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        RowLayout {
            id: data_RowLayout
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            spacing: 16
            Rectangle {
                id: wheel_s
                x: 24
                y: 40
                width: 56
                height: 56
                color: "transparent"

                RecycleSlider {
                    id: recycleSlider2
                    anchors.fill: parent
                    value: recycleSliderValue
                    trackWidth: 10
                    progressWidth: 10
                }
                Layout.preferredWidth: 56
                Layout.preferredHeight: 56
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            }

            Rectangle {
                id: element6
                x: 96
                y: 35
                width: 316
                height: 67
                color: "transparent"

                Text {
                    id: text3
                    x: 73
                    y: 175
                    color: root.textColor
                    text: recycleSliderValue + "%"
                    font.pixelSize: 48
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.weight: Font.Bold
                    font.family: "hubot Sans"
                    Layout.fillWidth: false
                    Layout.fillHeight: false
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                ComparativeBig {
                    id: comparativeBig2
                    y: 37
                    width: 79
                    height: 30
                    anchors.right: parent.right
                    state: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"
                    elementText: "02%"
                }

                Layout.preferredHeight: 67
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            }
            anchors.topMargin: 24
            anchors.rightMargin: 24
            anchors.leftMargin: 24
            anchors.bottomMargin: 24
        }
    }

    Recycle {
        id: recycle2
        x: 24
        y: 24
        width: 80
        height: 80
        opacity: 0
        visible: false
        state: "state_size_big_status_ok"
    }

    Rectangle {
        id: element8
        y: 24
        height: 80
        opacity: 0
        visible: false
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        ColumnLayout {
            id: data_ColumnLayout2
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            spacing: 8
            Text {
                id: recycle_rate2
                x: 0
                y: 0
                width: 293
                height: 26
                color: root.textColor
                text: qsTr("Recycle rate")
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
                    id: kg2
                    x: 0
                    y: 0
                    source: "assets/kg_state_size_XS.png"
                }*/
                ComparativeBig {
                    id: comparativeBig3
                    y: 16
                    width: 79
                    height: 30
                    anchors.right: parent.right
                    state: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"
                    elementText: "02%"
                }

                Text {
                    id: kg2
                    x: 0
                    y: -1
                    width: 389
                    height: 25
                    color: root.textColor
                    text: qsTr("877 kg")
                    font.pixelSize: 38
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    font.weight: Font.DemiBold
                    font.family: "Hubot Sans"
                    Layout.preferredWidth: 389
                    Layout.preferredHeight: 25
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

    Item {
        id: __materialLibrary__
    }

    states: [
        State {
            name: "state_size_M"
            when: statecontroller === 2

            PropertyChanges {
                target: recycle2
                visible: false
            }

            PropertyChanges {
                target: text_RowLayout
                visible: false
            }

            PropertyChanges {
                target: element8
                visible: false
            }

            PropertyChanges {
                target: donut_chart
                visible: false
            }

            PropertyChanges {
                target: element5
                visible: false
            }

            PropertyChanges {
                target: text2
                font.weight: Font.Bold
            }

            PropertyChanges {
                target: text1
                font.weight: Font.Medium
            }
        },
        State {
            name: "state_size_XS"
            when: statecontroller === 0
            extend: "state_size_M"

            PropertyChanges {
                target: recycle2
                visible: true
            }

            PropertyChanges {
                target: header
                visible: false
            }

            PropertyChanges {
                target: element8
                visible: true
            }

            PropertyChanges {
                target: donut_chart
                visible: false
            }

            PropertyChanges {
                target: widgets_Recycle_rate
                height: 128
                clip: true
            }

            PropertyChanges {
                target: donut_chart_m
                visible: false
            }

            PropertyChanges {
                target: grabber
                y: 104
            }

            PropertyChanges {
                target: element5
                visible: false
            }
        },
        State {
            name: "state_size_L"
            when: statecontroller === 3
            extend: "state_size_M"

            PropertyChanges {
                target: text_ColumnLayout
                visible: false
            }

            PropertyChanges {
                target: text_RowLayout
                visible: true
                spacing: 3
            }

            PropertyChanges {
                target: donut_chart
                visible: true
            }

            PropertyChanges {
                target: widgets_Recycle_rate
                height: 544
            }

            PropertyChanges {
                target: content
                Layout.preferredHeight: 80
            }

            PropertyChanges {
                target: donut_chart_m
                visible: false
            }

            PropertyChanges {
                target: grabber
                y: 520
            }

            PropertyChanges {
                target: text3
                visible: true
            }

            PropertyChanges {
                target: grid_ColumnLayout
                visible: true
                anchors.bottomMargin: -8
                antialiasing: true
                spacing: 4
                anchors.topMargin: -14
            }

            PropertyChanges {
                target: qtChart
                x: 11
                y: -46
                width: 399
                height: 149
                visible: true
                anchors.verticalCenterOffset: 6
                anchors.rightMargin: -16
                anchors.bottomMargin: -13
                anchors.leftMargin: 16
                anchors.topMargin: 0
                backgroundColor: "#00000000"
            }

            PropertyChanges {
                target: line04
                height: 3
                fillColor: master.__lines_C
            }

            PropertyChanges {
                target: line03
                height: 3
                fillColor: master.__lines_C
            }

            PropertyChanges {
                target: line02
                height: 3
                fillColor: master.__lines_C
            }

            PropertyChanges {
                target: line01
                height: 3
                fillColor: master.__lines_C
            }

            PropertyChanges {
                target: grid
                height: 92
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            PropertyChanges {
                target: values_ColumnLayout
                y: -13
                height: 88
            }

            PropertyChanges {
                target: text2
                font.weight: Font.Medium
            }
        },
        State {
            name: "state_size_S"
            when: statecontroller === 1
            extend: "state_size_M"

            PropertyChanges {
                target: text_RowLayout
                visible: false
            }

            PropertyChanges {
                target: donut_chart
                visible: false
            }

            PropertyChanges {
                target: widgets_Recycle_rate
                height: 256
            }

            PropertyChanges {
                target: content
                Layout.preferredHeight: 80
            }

            PropertyChanges {
                target: donut_chart_m
                visible: false
            }

            PropertyChanges {
                target: grabber
                y: 232
            }

            PropertyChanges {
                target: element5
                visible: true
            }

            PropertyChanges {
                target: text3
                x: 0
                y: 5
                visible: true
                font.weight: Font.Medium
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;uuid:"ed879ee3-7c09-5569-877f-b10014e5fed1"}D{i:1;uuid:"52791c78-bedd-5d30-b910-dca00c2d6186"}
D{i:2;uuid:"52791c78-bedd-5d30-b910-dca00c2d6186_VERTICAL"}D{i:3;uuid:"1c02eee4-ef4b-52b1-a48c-2ad18da34359"}
D{i:4;uuid:"1c02eee4-ef4b-52b1-a48c-2ad18da34359_VERTICAL"}D{i:5;uuid:"2c561ca1-fb3a-5a2c-bfd2-39c2aa688e5e"}
D{i:6;uuid:"2c561ca1-fb3a-5a2c-bfd2-39c2aa688e5e_HORIZONTAL"}D{i:7;uuid:"f452c5af-ae27-5439-9eb3-e0ae6c63c6a9"}
D{i:8;uuid:"625975e0-932d-5850-a148-a572b3de9d26"}D{i:9;uuid:"20282dc9-a76c-522c-8394-e01670889dda"}
D{i:10;uuid:"01835543-cd3b-5a1f-bddb-8b0829f71dc3"}D{i:18;uuid:"aacf732b-1c8f-5fa8-8c28-332bc0c9bcaa"}
D{i:19;uuid:"4faa9a3c-2bc5-513e-9f94-228a7bd0f87d"}D{i:20;uuid:"7fcf79f2-183a-5da1-9984-025d0ce44171"}
}
##^##*/

