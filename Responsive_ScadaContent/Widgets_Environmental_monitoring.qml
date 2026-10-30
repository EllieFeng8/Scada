import QtQuick
import QtQuick.Layouts
import QtQuick.Studio.Components

Rectangle {
    id: widgets_Environmental_monitoring
    width: 436
    height: 400
    color: "transparent"
    property color primaryColor: root.textColor
    property color secondaryColor: master.__fontS_C
    property alias titleText: title.text
    property alias month9Text: month9.text
    property alias month13Text: month13.text
    property alias month10Text: month10.text
    property alias month14Text: month14.text
    property alias title2Text: title2.text
    property alias title1Text: title1.text
    property alias month15Text: month15.text
    property alias title3Text: title3.text
    property alias month11Text: month11.text
    property alias k1Text: k1.text
    property alias febText: feb.text
    property alias junText: jun.text
    property alias month4Text: month4.text
    property alias month8Text: month8.text
    property alias month6Text: month6.text
    property alias environment1Text: environment1.text
    property alias janText: jan.text
    property alias kText: k.text
    property alias marText: mar.text
    property alias monthText: month.text
    property alias k3Text: k3.text
    property alias aprText: apr.text
    property alias k2Text: k2.text
    property alias k4Text: k4.text
    property alias elementText: element.text
    property alias month2Text: month2.text
    property alias month7Text: month7.text
    property alias month1Text: month1.text
    property alias k5Text: k5.text
    property alias air_quality_is_goodText: air_quality_is_good.text
    property alias month3Text: month3.text
    property alias mayText: may.text
    property alias month5Text: month5.text
    property int statecontroller: 3
    property alias sliderValue: envSliderCustom.currentValue
    state: "state_size_XS"



    Rectangle {
        id: header
        opacity: 0
        visible: false
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 0
        anchors.bottomMargin: 280
        ColumnLayout {
            id: header_ColumnLayout
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            Rectangle {
                id: container
                x: 24
                y: 24
                width: 388
                height: 80
                color: "transparent"
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                RowLayout {
                    id: container_RowLayout
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    Rectangle {
                        id: content
                        x: 0
                        y: 0
                        width: 388
                        height: 80
                        color: "transparent"
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                        ColumnLayout {
                            id: text_ColumnLayout
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            Rectangle {
                                id: data1
                                x: 0
                                y: 0
                                width: 388
                                height: 80
                                color: "transparent"
                                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                ColumnLayout {
                                    id: data_ColumnLayout
                                    anchors.left: parent.left
                                    anchors.right: parent.right
                                    anchors.top: parent.top
                                    anchors.bottom: parent.bottom
                                    Rectangle {
                                        id: icon_title
                                        x: 0
                                        y: 0
                                        width: 388
                                        height: 26
                                        color: "transparent"
                                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                        RowLayout {
                                            id: icon_title_RowLayout
                                            anchors.left: parent.left
                                            anchors.right: parent.right
                                            anchors.top: parent.top
                                            anchors.bottom: parent.bottom

                                            Environment {
                                                id: environment7
                                                width: 26
                                                height: 26
                                                state: "state_size_small_status_ok"
                                                Layout.preferredWidth: 26
                                                Layout.preferredHeight: 26
                                                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                            }

                                            Text {
                                                id: environment1
                                                x: 34
                                                y: 0
                                                width: 355
                                                height: 26
                                                color:  primaryColor
                                                text: qsTr("Environmental Monitoring")
                                                font.pixelSize: 18
                                                horizontalAlignment: Text.AlignLeft
                                                verticalAlignment: Text.AlignTop
                                                wrapMode: Text.Wrap
                                                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                                font.family: "Hubot-Sans"
                                                font.weight: Font.DemiBold
                                                Layout.fillWidth: true
                                                Layout.preferredHeight: 26
                                            }

                                            spacing: 8
                                        }
                                        Layout.fillWidth: true
                                        Layout.preferredHeight: 26
                                    }

                                    Text {
                                        id: element
                                        x: 0
                                        y: 34
                                        width: 389
                                        height: 25
                                        color:  primaryColor
                                        text: qsTr("87%")
                                        font.pixelSize: 26
                                        horizontalAlignment: Text.AlignLeft
                                        verticalAlignment: Text.AlignTop
                                        wrapMode: Text.NoWrap
                                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                        font.family: "Hubot-Sans"
                                        font.weight: Font.Bold
                                        Layout.fillWidth: true
                                        Layout.preferredHeight: 25
                                    }

                                    Text {
                                        id: air_quality_is_good
                                        x: 0
                                        y: 67
                                        width: 389
                                        height: 13
                                        color: secondaryColor
                                        text: qsTr("Air quality is good")
                                        font.pixelSize: 14
                                        horizontalAlignment: Text.AlignLeft
                                        verticalAlignment: Text.AlignTop
                                        wrapMode: Text.Wrap
                                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                        font.family: "Hubot-Sans"
                                        font.weight: Font.DemiBold
                                        Layout.fillWidth: true
                                        Layout.preferredHeight: 13
                                    }
                                    spacing: 8
                                }
                                Layout.fillWidth: true
                                Layout.preferredHeight: 80
                            }
                            spacing: 8
                        }

                        ComparativeBig {
                            id: comparativeBig
                            y: 52
                            width: 75
                            height: 30
                            anchors.right: parent.right
                            state: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"
                            elementText: "12%"
                        }
                        Layout.fillWidth: true
                        Layout.preferredHeight: 80
                    }
                    spacing: 8
                }

                ComparativeBig {
                    id: comparativeBig1
                    y: 52
                    width: 75
                    height: 30
                    anchors.right: parent.right
                    state: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"
                    elementText: "12%"
                }
                Layout.fillWidth: true
                Layout.preferredHeight: 80
            }

            Rectangle {
                id: content1
                x: 24
                y: 24
                width: 388
                height: 80
                color: "transparent"
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillHeight: true
                ColumnLayout {
                    id: text_ColumnLayout1
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    Rectangle {
                        id: icon_title1
                        x: 0
                        y: 0
                        width: 388
                        height: 26
                        color: "transparent"
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                        RowLayout {
                            id: icon_title_RowLayout1
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            Environment {
                                id: environment2
                                x: 0
                                y: 0
                                width: 26
                                height: 26
                                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                state: "state_size_small_status_ok"
                                Layout.preferredHeight: 26
                                Layout.preferredWidth: 26
                            }

                            Text {
                                id: environment3
                                x: 34
                                y: 0
                                width: 355
                                height: 26
                                color:  primaryColor
                                text: qsTr("Environmental Monitoring")
                                font.pixelSize: 18
                                horizontalAlignment: Text.AlignLeft
                                verticalAlignment: Text.AlignVCenter
                                wrapMode: Text.Wrap
                                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                font.family: "Hubot-Sans"
                                font.weight: Font.DemiBold
                                Layout.fillWidth: true
                                Layout.preferredHeight: 26
                            }
                            spacing: 8
                        }
                        Layout.fillWidth: true
                        Layout.preferredHeight: 26
                    }

                    Text {
                        id: element1
                        x: 0
                        y: 34
                        width: 389
                        height: 25
                        color:  primaryColor
                        text: qsTr("87%")
                        font.pixelSize: 26
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                        font.family: "Hubot-Sans"
                        font.weight: Font.Bold
                        Layout.fillWidth: true
                        Layout.preferredHeight: 25
                    }

                    Text {
                        id: air_quality_is_good1
                        x: 0
                        y: 67
                        width: 389
                        height: 13
                        color: secondaryColor
                        text: qsTr("Air quality is good")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                        font.family: "Hubot-Sans"
                        font.weight: Font.DemiBold
                        Layout.fillWidth: true
                        Layout.preferredHeight: 13
                    }
                    spacing: 8
                }

                ComparativeBig {
                    id: comparativeBig2
                    y: 52
                    width: 75
                    height: 30
                    anchors.right: parent.right
                    state: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"
                    elementText: "12%"
                }
                Layout.fillWidth: true
            }
            anchors.bottomMargin: 16
            anchors.rightMargin: 24
            anchors.topMargin: 24
            spacing: 24
            anchors.leftMargin: 24
        }
    }

    Rectangle {
        id: level_graph_1
        x: 0
        width: 436
        opacity: 0.8
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom

        anchors.topMargin: 120
        anchors.bottomMargin: 128
        Rectangle {
            id: year
            x: 24
            y: 32
            width: parent.width - 48
            height: 16
            color: "transparent"

            RowLayout {
                id: year_RowLayout
                anchors.fill: parent
                anchors.leftMargin: -4
                anchors.rightMargin: -4
                Text {
                    id: month
                    x: 0
                    y: 0
                    width: 33
                    height: 14
                    color:  primaryColor
                    text: qsTr("0%")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    font.family: "Hubot-Sans"
                    font.weight: Font.DemiBold
                    Layout.preferredHeight: 14
                    Layout.preferredWidth: 33
                }

                Text {
                    id: month1
                    x: 70
                    y: 0
                    width: 33
                    height: 14
                    color:  primaryColor
                    text: qsTr("20%")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    font.family: "Hubot-Sans"
                    font.weight: Font.DemiBold
                    Layout.preferredHeight: 14
                    Layout.preferredWidth: 33
                }

                Text {
                    id: month2
                    x: 139
                    y: 0
                    width: 33
                    height: 14
                    color:  primaryColor
                    text: qsTr("40%")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    font.family: "Hubot-Sans"
                    font.weight: Font.DemiBold
                    Layout.preferredHeight: 14
                    Layout.preferredWidth: 33
                }

                Text {
                    id: month3
                    x: 209
                    y: 0
                    width: 33
                    height: 14
                    color:  primaryColor
                    text: qsTr("60%")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    font.family: "Hubot-Sans"
                    font.weight: Font.DemiBold
                    Layout.preferredHeight: 14
                    Layout.preferredWidth: 33
                }

                Text {
                    id: month4
                    x: 278
                    y: 0
                    width: 33
                    height: 14
                    color:  primaryColor
                    text: qsTr("80%")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    font.family: "Hubot-Sans"
                    font.weight: Font.DemiBold
                    Layout.preferredHeight: 14
                    Layout.preferredWidth: 33
                }

                Text {
                    id: month5
                    x: 348
                    y: 0
                    width: 41
                    height: 14
                    color:  primaryColor
                    text: qsTr("100%")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    font.family: "Hubot-Sans"
                    font.weight: Font.DemiBold
                    Layout.preferredHeight: 14
                    Layout.preferredWidth: 41
                }
                spacing: 38
            }
        }

        Rectangle {
            id: bar
            visible: false
            color: "transparent"
            radius: 8
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 64
            anchors.rightMargin: 24
            anchors.topMargin: 64
            anchors.leftMargin: 24
        }

        EnvSliderCustom {
            id: envSliderCustom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            envSliderWarning: master.warning
            envSliderGood: master.good
            envSliderError: master.error
            anchors.rightMargin: 25
            anchors.leftMargin: 25
        }

        Rectangle {
            id: year1
            y: 104
            height: 16
            color: "transparent"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 24
            anchors.rightMargin: 24

            Row {
                id: row
                anchors.leftMargin: -4
                anchors.rightMargin: -4
                spacing: 10
                anchors.fill: parent

                Text {
                    id: month6
                    width: 81
                    height: 13
                    color:  primaryColor
                    text: qsTr("Hazardous")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    font.family: "Hubot-Sans"
                    font.weight: Font.DemiBold
                    anchors.horizontalCenterOffset: -87
                }

                Text {
                    id: month7
                    width: 81
                    height: 13
                    color:  primaryColor
                    text: qsTr("Acceptable")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Hubot-Sans"
                    font.weight: Font.DemiBold
                    anchors.horizontalCenterOffset: 53
                }

                Text {
                    id: month8
                    width: 39
                    height: 13
                    color:  primaryColor
                    text: qsTr("Good")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Hubot-Sans"
                    font.weight: Font.DemiBold
                    anchors.horizontalCenterOffset: 151
                }
            }
        }

    }

    Rectangle {
        id: footer_data
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 272
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.rightMargin: 0

        GridLayout {
          id: dataGrid
          anchors.fill: parent


            Rectangle {
                id: data2
                width:  50
                height: 49
                color: "transparent"
                ColumnLayout {
                    id: data_ColumnLayout1
                    anchors.fill: parent
                    Text {
                        id: k
                        x: 0
                        y: 0
                        width: 51
                        height: 29
                        color: master.warning
                        text: qsTr("76%")
                        font.pixelSize: 24
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                        font.family: "Hubot-Sans"
                        font.weight: Font.DemiBold
                        Layout.preferredHeight: 29
                        Layout.preferredWidth: 51
                    }

                    Text {
                        id: jan
                        x: 13
                        y: 33
                        width: 25
                        height: 16
                        color: master.warning
                        text: qsTr("Jan")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                        font.family: "Hubot-Sans"
                        font.weight: Font.DemiBold
                        Layout.preferredHeight: 16
                        Layout.preferredWidth: 25
                    }
                    spacing: 4
                }
            }

            Rectangle {
                id: data3
                width: 50
                height: 49
                color: "transparent"
                ColumnLayout {
                    id: data_ColumnLayout2
                    anchors.fill: parent
                    Text {
                        id: k1
                        x: 0
                        y: 0
                        width: 51
                        height: 29
                        color: master.warning
                        text: qsTr("77%")
                        font.pixelSize: 24
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                        font.family: "Hubot-Sans"
                        font.weight: Font.DemiBold
                        Layout.preferredHeight: 29
                        Layout.preferredWidth: 51
                    }

                    Text {
                        id: feb
                        x: 12
                        y: 33
                        width: 27
                        height: 16
                        color: master.warning
                        text: qsTr("Feb")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                        font.family: "Hubot-Sans"
                        font.weight: Font.DemiBold
                        Layout.preferredHeight: 16
                        Layout.preferredWidth: 27
                    }
                    spacing: 4
                }
            }

            Rectangle {
                id: data4
                width: 51
                height: 49
                color: "transparent"
                ColumnLayout {
                    id: data_ColumnLayout3
                    anchors.fill: parent
                    Text {
                        id: k2
                        x: 0
                        y: 0
                        width: 52
                        height: 29
                        color: master.good
                        text: qsTr("80%")
                        font.pixelSize: 24
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                        font.family: "Hubot-Sans"
                        font.weight: Font.DemiBold
                        Layout.preferredHeight: 29
                        Layout.preferredWidth: 52
                    }

                    Text {
                        id: mar
                        x: 11
                        y: 33
                        width: 30
                        height: 16
                        color: master.good
                        text: qsTr("Mar")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                        font.family: "Hubot-Sans"
                        font.weight: Font.DemiBold
                        Layout.preferredHeight: 16
                        Layout.preferredWidth: 30
                    }
                    spacing: 4
                }
            }

            Rectangle {
                id: data5
                width: 50
                height: 49
                color: "transparent"
                ColumnLayout {
                    id: data_ColumnLayout4
                    anchors.fill: parent
                    Text {
                        id: k3
                        x: 0
                        y: 0
                        width: 51
                        height: 29
                        color: master.good
                        text: qsTr("87%")
                        font.pixelSize: 24
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                        font.family: "Hubot-Sans"
                        font.weight: Font.DemiBold
                        Layout.preferredHeight: 29
                        Layout.preferredWidth: 51
                    }

                    Text {
                        id: apr
                        x: 13
                        y: 33
                        width: 26
                        height: 16
                        color: master.good
                        text: qsTr("Apr")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                        font.family: "Hubot-Sans"
                        font.weight: Font.DemiBold
                        Layout.preferredHeight: 16
                        Layout.preferredWidth: 26
                    }
                    spacing: 4
                }
            }

            Rectangle {
                id: data6
                width: 51
                height: 49
                color: "transparent"
                ColumnLayout {
                    id: data_ColumnLayout5
                    anchors.fill: parent
                    Text {
                        id: k4
                        x: 0
                        y: 0
                        width: 52
                        height: 29
                        color: master.good
                        text: qsTr("85%")
                        font.pixelSize: 24
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                        font.family: "Hubot-Sans"
                        font.weight: Font.DemiBold
                        Layout.preferredHeight: 29
                        Layout.preferredWidth: 52
                    }

                    Text {
                        id: may
                        x: 10
                        y: 33
                        width: 32
                        height: 16
                        color: master.good
                        text: qsTr("May")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                        font.family: "Hubot-Sans"
                        font.weight: Font.DemiBold
                        Layout.preferredHeight: 16
                        Layout.preferredWidth: 32
                    }
                    spacing: 4
                }
            }

            Rectangle {
                id: data7
                width: 51
                height: 49
                color: "transparent"
                ColumnLayout {
                    id: data_ColumnLayout6
                    anchors.fill: parent
                    Text {
                        id: k5
                        x: 0
                        y: 0
                        width: 52
                        height: 29
                        color: master.good
                        text: qsTr("88%")
                        font.pixelSize: 24
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                        font.family: "Hubot-Sans"
                        font.weight: Font.DemiBold
                        Layout.preferredHeight: 29
                        Layout.preferredWidth: 52
                    }

                    Text {
                        id: jun
                        x: 13
                        y: 33
                        width: 26
                        height: 16
                        color: master.good
                        text: qsTr("Jun")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                        font.family: "Hubot-Sans"
                        font.weight: Font.DemiBold
                        Layout.preferredHeight: 16
                        Layout.preferredWidth: 26
                    }
                    spacing: 4
                }
            }
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
            path: "M 0 0.0000019073486328125 L 22.627416610717773 -0.0000019073486328125"
            antialiasing: true
            fillColor: "transparent"
            anchors.bottomMargin: 8
            anchors.rightMargin: -3
            rotation: 135
            strokeWidth: 1
            strokeColor: "#9f9f9f"
        }

        SvgPathItem {
            id: line_121
            width: 11
            height: 0
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            path: "M 0 0 L 11.313708305358887 0"
            antialiasing: true
            fillColor: "transparent"
            anchors.bottomMargin: 4
            anchors.rightMargin: -2
            rotation: 135
            strokeWidth: 1
            strokeColor: "#9f9f9f"
        }
    }

    Rectangle {
        id: level_graph_2
        opacity: 0.8
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        Rectangle {
            id: temperature
            color: "transparent"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            Text {
                id: title
                x: 0
                y: 0
                width: 91
                height: 13
                color: secondaryColor
                text: qsTr("Temperature")
                font.pixelSize: 14
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.family: "Hubot-Sans"
                font.weight: Font.DemiBold
            }

            Rectangle {
                id: year2
                color: "transparent"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                Text {
                    id: month9
                    x: 0
                    y: 0
                    width: 33
                    height: 13
                    color:  primaryColor
                    text: qsTr("0°C")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Hubot-Sans"
                    font.weight: Font.DemiBold
                }

                Text {
                    id: month10
                    y: 0
                    width: 45
                    height: 13
                    color:  primaryColor
                    text: qsTr("20°C")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Hubot-Sans"
                    font.weight: Font.DemiBold
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.horizontalCenterOffset: -4
                }

                Text {
                    id: month11
                    y: 0
                    width: 41
                    height: 13
                    color:  primaryColor
                    text: qsTr("30°C")
                    anchors.right: parent.right
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Hubot-Sans"
                    font.weight: Font.DemiBold
                    anchors.rightMargin: -1
                }
                anchors.bottomMargin: 56
                anchors.rightMargin: 1
                anchors.topMargin: 29
            }


            Rectangle {
                id: bar1
                color: "transparent"
                radius: 2.77916
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom

                EnvSliderCustom {
                    id: envSliderCustom1
                    visible: false
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.leftMargin: 0
                    anchors.rightMargin: -1
                    stateController: 3
                    envSliderWarning: master.warning
                    envSliderGood: master.good
                    envSliderError: master.error
                }
                anchors.bottomMargin: 24
                anchors.rightMargin: 1
                anchors.topMargin: 69
            }
            anchors.bottomMargin: 24
            anchors.rightMargin: 232
            anchors.topMargin: 24
            anchors.leftMargin: 24
        }

        Rectangle {
            id: moisture
            color: "transparent"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            Text {
                id: title1
                x: 0
                y: 0
                width: 64
                height: 13
                color: secondaryColor
                text: qsTr("Moisture")
                font.pixelSize: 14
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.family: "Hubot-Sans"
                font.weight: Font.DemiBold
            }

            Rectangle {
                id: year4
                color: "transparent"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                Text {
                    id: month13
                    x: 0
                    y: 0
                    width: 33
                    height: 13
                    color:  primaryColor
                    text: qsTr("0%")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Hubot-Sans"
                    font.weight: Font.DemiBold
                }

                Text {
                    id: month14
                    y: 0
                    width: 45
                    height: 13
                    color:  primaryColor
                    text: qsTr("50%")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Hubot-Sans"
                    font.weight: Font.DemiBold
                    anchors.horizontalCenterOffset: -4
                }

                Text {
                    id: month15
                    y: 0
                    width: 41
                    height: 13
                    color:  primaryColor
                    text: qsTr("100%")
                    anchors.right: parent.right
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Hubot-Sans"
                    font.weight: Font.DemiBold
                    anchors.rightMargin: -1
                }
                anchors.bottomMargin: 56
                anchors.rightMargin: 1
                anchors.topMargin: 29
            }

            Rectangle {
                id: bar2
                color: "transparent"
                radius: 2.77916
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom

                Rectangle {
                    id: background_color3
                    color: "#e0e0e0"
                    radius: 4
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0
                }

                SvgPathItem {
                    id: line_84_Stroke_2
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    path: "M 10 11.547005653381348 L 0 5.773502826690674 L 10 0 L 10 4.773502826690674 L 32 4.773502826690674 L 32 6.773502826690674 L 10 6.773502826690674 L 10 11.547005653381348 Z"
                    antialiasing: true
                    //                    fillcolor:  "#181818"
                    anchors.bottomMargin: 0
                    anchors.rightMargin: 65
                    anchors.topMargin: -4
                    rotation: 90
                    strokeWidth: 2
                    anchors.leftMargin: 84
                    strokeColor: "transparent"
                }

                EnvSliderCustom {
                    id: envSliderCustom2
                    visible: false
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.leftMargin: 0
                    anchors.rightMargin: -1
                    envSliderWarning: master.warning
                    envSliderGood: master.good
                    envSliderError: master.error
                }
                anchors.bottomMargin: 24
                anchors.rightMargin: 1
                anchors.topMargin: 69
            }
            anchors.bottomMargin: 24
            anchors.rightMargin: 24
            anchors.topMargin: 24
            anchors.leftMargin: 232
        }

        Row {
            id: row1
            anchors.fill: parent
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 120
            anchors.bottomMargin: 0
        }
        anchors.bottomMargin: 275
        anchors.topMargin: 120
    }

    Rectangle {
        id: level_graph_3
        opacity: 0.8
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        Rectangle {
            id: co2
            color: "transparent"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 25
            anchors.rightMargin: 232
            anchors.topMargin: 25
            anchors.leftMargin: 24
            Text {
                id: title2
                x: 0
                y: 0
                width: 32
                height: 13
                color: secondaryColor
                text: qsTr("CO2")
                font.pixelSize: 14
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.family: "Hubot-Sans"
                font.weight: Font.DemiBold
            }

            Rectangle {
                id: year6
                color: "transparent"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                Text {
                    id: month17
                    x: 0
                    y: 0
                    width: 33
                    height: 13
                    color:  primaryColor
                    text: qsTr("0%")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Hubot-Sans"
                    font.weight: Font.DemiBold
                }

                Text {
                    id: month18
                    y: 0
                    width: 41
                    height: 13
                    color:  primaryColor
                    text: qsTr("1,5%")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Hubot-Sans"
                    font.weight: Font.DemiBold
                    anchors.horizontalCenterOffset: -4
                }

                Text {
                    id: month19
                    y: 0
                    width: 41
                    height: 13
                    color:  primaryColor
                    text: qsTr("4%")
                    anchors.right: parent.right
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Hubot-Sans"
                    font.weight: Font.DemiBold
                    anchors.rightMargin: -1
                }
                anchors.bottomMargin: 56
                anchors.rightMargin: 1
                anchors.topMargin: 29
            }

            Rectangle {
                id: bar3
                color: "transparent"
                radius: 2.77916
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 24
                anchors.rightMargin: 1
                anchors.topMargin: 69

                EnvSliderCustom {
                    id: envSliderCustom3
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.leftMargin: 0
                    anchors.rightMargin: -1
                }
            }
        }

        Rectangle {
            id: particles
            color: "transparent"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 25
            anchors.rightMargin: 24
            anchors.topMargin: 25
            anchors.leftMargin: 232
            Text {
                id: title3
                x: 0
                y: 0
                width: 63
                height: 13
                color: secondaryColor
                text: qsTr("Particles")
                font.pixelSize: 14
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.family: "Hubot-Sans"
                font.weight: Font.DemiBold
            }

            Rectangle {
                id: year8
                color: "transparent"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                Text {
                    id: month21
                    x: 0
                    y: 0
                    width: 33
                    height: 13
                    color:  primaryColor
                    text: qsTr("0")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Hubot-Sans"
                    font.weight: Font.DemiBold
                }

                Text {
                    id: month22
                    y: 0
                    width: 33
                    height: 13
                    color:  primaryColor
                    text: qsTr("150")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Hubot-Sans"
                    font.weight: Font.DemiBold
                    anchors.horizontalCenterOffset: 0
                }

                Text {
                    id: month23
                    y: 0
                    width: 33
                    height: 13
                    color:  primaryColor
                    text: qsTr("500")
                    anchors.right: parent.right
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Hubot-Sans"
                    font.weight: Font.DemiBold
                    anchors.rightMargin: -1
                }
                anchors.bottomMargin: 56
                anchors.rightMargin: 1
                anchors.topMargin: 29
            }

            Rectangle {
                id: bar4
                color: "transparent"
                radius: 2.77916
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 24
                anchors.rightMargin: 1
                anchors.topMargin: 69

                EnvSliderCustom {
                    id: envSliderCustom4
                    visible: false
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.leftMargin: 0
                    anchors.rightMargin: -1
                    stateController: 5
                    envSliderWarning: master.warning
                    envSliderGood: master.good
                    envSliderError: master.error
                }
            }
        }
        anchors.bottomMargin: 124
        anchors.topMargin: 269
    }

    Rectangle {
        id: data8
        y: 24
        height: 80
        opacity: 0
        visible: false
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        ColumnLayout {
            id: data_ColumnLayout7
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            Text {
                id: environment4
                x: 0
                y: 0
                width: 293
                height: 26
                color:  primaryColor
                text: qsTr("Environmental Monitoring")
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                font.family: "Hubot-Sans"
                font.weight: Font.DemiBold
                Layout.fillWidth: true
                Layout.preferredHeight: 26
            }

            Rectangle {
                id: value
                x: 0
                y: 34
                width: 292
                height: 46
                color: "transparent"
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop

                ComparativeBig {
                    id: comparativeBig3
                    y: 16
                    width: 75
                    height: 30
                    anchors.right: parent.right
                    state: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"
                    elementText: "12%"
                }

                Text {
                    id: environment6
                    x: -5
                    y: -6
                    width: 75
                    height: 36
                    opacity: 0
                    visible: false
                    color: primaryColor
                    text: qsTr("87%")
                    font.pixelSize: 50
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.NoWrap
                    font.weight: Font.DemiBold
                    font.family: "Hubot-Sans"
                    Layout.preferredHeight: 26
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                }
                Layout.fillWidth: true
                Layout.preferredHeight: 46
            }
            spacing: 8
        }
        anchors.rightMargin: 24
        anchors.leftMargin: 120
    }

    Environment {
        id: environment5
        x: 24
        y: 24
        width: 80
        height: 80
        opacity: 0
        visible: false
        state: "state_size_big_status_ok"
    }

    Item {
        id: __materialLibrary__
    }


    states: [
        State {
            name: "state_size_M"
            when: statecontroller === 2

            PropertyChanges {
                target: level_graph_2
                visible: false
            }

            PropertyChanges {
                target: data8
                visible: false
            }

            PropertyChanges {
                target: environment5
                visible: false
            }

            PropertyChanges {
                target: level_graph_3
                visible: false
            }

            PropertyChanges {
                target: comparativeBig1
                visible: false
            }

            PropertyChanges {
                target: content1
                visible: false
            }

            PropertyChanges {
                target: envSliderCustom
                x: 24
                y: 64
                ratioError: 8
                stateController: 2
                valueLabelVisible: false
                // currentValue: 31
                ratioGood: 5
                ratioWarning: 6
            }

            PropertyChanges {
                target: environment1
                verticalAlignment: Text.AlignVCenter
            }

            PropertyChanges {
                target: month6
                anchors.horizontalCenterOffset: -135
            }

            PropertyChanges {
                target: month7
                anchors.horizontalCenterOffset: 19
            }
        },
        State {
            name: "state_size_XS"
            when: statecontroller === 0
            extend: "state_size_M"

            PropertyChanges {
                target: widgets_Environmental_monitoring
                height: 128
            }

            PropertyChanges {
                target: grabber
                y: 104
            }

            PropertyChanges {
                target: level_graph_2
                visible: false
            }

            PropertyChanges {
                target: data8
                visible: true
            }

            PropertyChanges {
                target: environment5
                visible: true
            }

            PropertyChanges {
                target: level_graph_3
                visible: false
            }

            PropertyChanges {
                target: header
                visible: false
            }

            PropertyChanges {
                target: level_graph_1
                visible: false
            }

            PropertyChanges {
                target: footer_data
                visible: false
            }

            PropertyChanges {
                target: environment4
                verticalAlignment: Text.AlignVCenter
            }

            PropertyChanges {
                target: data_ColumnLayout7
                anchors.topMargin: 5
            }
        },
        State {
            name: "state_size_S"
            when: statecontroller === 1
            extend: "state_size_M"

            PropertyChanges {
                target: widgets_Environmental_monitoring
                height: 256
            }

            PropertyChanges {
                target: month
                height: 13
                Layout.preferredHeight: 13
            }

            PropertyChanges {
                target: grabber
                y: 232
            }

            PropertyChanges {
                target: level_graph_2
                visible: false
            }

            PropertyChanges {
                target: month1
                height: 13
                Layout.preferredHeight: 13
            }

            PropertyChanges {
                target: bar
                visible: false
                anchors.bottomMargin: 56
                anchors.topMargin: 56
            }

            PropertyChanges {
                target: month4
                height: 13
                Layout.preferredHeight: 13
            }

            PropertyChanges {
                target: level_graph_3
                visible: false
                color: "#00000000"
            }

            PropertyChanges {
                target: container
                visible: false
            }

            PropertyChanges {
                target: month2
                height: 13
                Layout.preferredHeight: 13
            }

            PropertyChanges {
                target: level_graph_1
                height: 136
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 120
                anchors.bottomMargin: 127
            }

            PropertyChanges {
                target: year1
                y: 96
            }

            PropertyChanges {
                target: month3
                height: 13
                Layout.preferredHeight: 13
            }

            PropertyChanges {
                target: content1
                visible: true
            }

            PropertyChanges {
                target: year
                y: 24
            }

            PropertyChanges {
                target: month5
                height: 13
                Layout.preferredHeight: 13
            }

            PropertyChanges {
                target: footer_data
                visible: false
            }

            PropertyChanges {
                target: envSliderCustom
                anchors.rightMargin: 24
                anchors.bottomMargin: -61
                anchors.leftMargin: 26
                anchors.topMargin: 68
                // currentValue: 89
                ratioGood: 5
                ratioWarning: 6
                ratioError: 8
            }

            PropertyChanges {
                target: environment2
                visible: true
            }
        },
        State {
            name: "state_size_L"
            when: statecontroller === 3
            extend: "state_size_M"

            PropertyChanges {
                target: widgets_Environmental_monitoring
                height: 544
            }

            PropertyChanges {
                target: grabber
                y: 520
            }

            PropertyChanges {
                target: level_graph_2
                visible: true
            }

            PropertyChanges {
                target: data3
                y: 38
            }

            PropertyChanges {
                target: data4
                y: 38
            }

            PropertyChanges {
                target: data6
                y: 38
            }

            PropertyChanges {
                target: level_graph_3
                visible: true
            }

            PropertyChanges {
                target: data5
                y: 38
            }

            PropertyChanges {
                target: level_graph_1
                visible: false
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
                target: data2
                y: 38
            }

            PropertyChanges {
                target: footer_data
                y: 420
                height: 124
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.topMargin: 417
            }

            PropertyChanges {
                target: data7
                y: 38
            }

            PropertyChanges {
                target: envSliderCustom1
                height: 8
                visible: true
                maxValue: 30
                currentValue: 30
                ratioError: 11
                ratioGood: 9
                ratioWarning: 7
                state: "small_1"
            }

            PropertyChanges {
                target: background_color3
                visible: false
            }

            PropertyChanges {
                target: envSliderCustom2
                visible: true
                ratioGood: 70
                ratioWarning: 12
                ratioError: 20
                currentValue: 72
                stateController: 3
                state: "small_2"
            }

            PropertyChanges {
                target: line_84_Stroke_2
                visible: false
            }

            PropertyChanges {
                target: environment2
                visible: false
            }

            PropertyChanges {
                target: environment1
                verticalAlignment: Text.AlignVCenter
            }

            PropertyChanges {
                target: envSliderCustom3
                currentValueR: 1.7
                maxValue: 4
                stateController: 4
            }

            PropertyChanges {
                target: envSliderCustom4
                visible: true
                currentValue: 35
                maxValue: 500
            }
        }
    ]
}



