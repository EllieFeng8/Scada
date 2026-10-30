import QtQuick
import QtQuick.Layouts
import QtQuick.Studio.Components


Rectangle {
    id: widgets_Financial
    width: 436 // Use parent's width to make it resizable
    /*height: parent.height*/ // Use parent's height to make it resizable
    property color fontColor: root.textColor
    property color rectangleColor: master.__background_C
    color: "transparent"
    //    property alias elementText: element.text
    property int statecontroller: 2
    property alias title1Text: title1.text
    property alias titleText: title.text
    property alias value2Text: value2.text
    property alias detailsText: details.text
    property alias value1Text: value1.text
    property alias details1Text: details1.text
    property alias valueText: value.text
    property alias labelText: label.text
    property alias label1Text: label1.text
    property alias label2Text: label2.text
    property alias value3Text: value3.text
    property alias amountText: amount.text
    property alias this_is_a_subtitleText: this_is_a_subtitle.text
    property alias amount1Text: amount1.text
    property alias this_is_the_titleText: this_is_the_title.text
    Rectangle {
        id: header
        opacity: 0
        visible: false
        color: "transparent"
        anchors.fill: parent
        anchors.bottomMargin: 280
        ColumnLayout {
            id: header_ColumnLayout
            anchors.fill: parent
            Rectangle {
                id: container
                x: 24
                y: 24
                width: 388
                height: 80
                color: "transparent"
                Layout.preferredHeight: 80
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
                        Layout.preferredHeight: 80
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
                                Layout.preferredHeight: 80
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
                                        Layout.preferredHeight: 26
                                        RowLayout {
                                            id: icon_title_RowLayout
                                            anchors.left: parent.left
                                            anchors.right: parent.right
                                            anchors.top: parent.top
                                            anchors.bottom: parent.bottom
                                            Financial {
                                                id: financial
                                                x: 0
                                                y: 0
                                                width: 26
                                                height: 26
                                                Layout.preferredHeight: 26
                                                state: "state_size_small_status_ok"
                                                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                                Layout.preferredWidth: 26
                                            }

                                            Text {
                                                id: this_is_the_title
                                                x: 34
                                                y: 0
                                                width: 355
                                                height: 26
                                                color: fontColor
                                                text: qsTr("Inventory Financial Information")
                                                font.pixelSize: 18
                                                horizontalAlignment: Text.AlignLeft
                                                verticalAlignment: Text.AlignTop
                                                wrapMode: Text.Wrap
                                                Layout.preferredHeight: 26
                                                font.weight: Font.DemiBold
                                                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                                Layout.fillWidth: true
                                                font.family: "Hubot-Sans"
                                            }
                                            spacing: 8
                                        }
                                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                        Layout.fillWidth: true
                                    }

                                    Text {
                                        id: value
                                        x: 0
                                        y: 34
                                        width: 389
                                        height: 25
                                        color: fontColor
                                        text: qsTr("1,095M")
                                        font.pixelSize: 26
                                        horizontalAlignment: Text.AlignLeft
                                        verticalAlignment: Text.AlignTop
                                        wrapMode: Text.Wrap
                                        Layout.preferredHeight: 25
                                        font.weight: Font.Bold
                                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                        Layout.fillWidth: true
                                        font.family: "Hubot-Sans"
                                    }

                                    Text {
                                        id: this_is_a_subtitle
                                        x: 0
                                        y: 67
                                        width: 389
                                        height: 13
                                        color: "#5b5b5b"
                                        text: qsTr("This is a subtitle")
                                        font.pixelSize: 14
                                        horizontalAlignment: Text.AlignLeft
                                        verticalAlignment: Text.AlignTop
                                        wrapMode: Text.Wrap
                                        Layout.preferredHeight: 13
                                        font.weight: Font.DemiBold
                                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                        Layout.fillWidth: true
                                        font.family: "Hubot-Sans"
                                    }
                                    spacing: 8
                                }
                                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                Layout.fillWidth: true
                            }
                            spacing: 8
                        }
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                        Layout.fillWidth: true
                    }
                    spacing: 8
                }
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillWidth: true
            }

            Item {
                id: header_ColumnLayout_SpacerRear
                x: 0
                y: 0
                width: 1
                height: 1
                Layout.fillHeight: true
            }

            Rectangle {
                id: content1
                x: 24
                y: 24
                width: 388
                height: 80
                color: "transparent"
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
                        Layout.preferredHeight: 26
                        RowLayout {
                            id: icon_title_RowLayout1
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            Financial {
                                id: financial1
                                x: 0
                                y: 0
                                width: 26
                                height: 26
                                Layout.preferredHeight: 26
                                state: "state_size_small_status_ok"
                                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                Layout.preferredWidth: 26
                            }

                            Text {
                                id: this_is_the_title1
                                x: 34
                                y: 0
                                width: 355
                                height: 26
                                color: fontColor
                                text: qsTr("Inventory Financial Information")
                                font.pixelSize: 18
                                horizontalAlignment: Text.AlignLeft
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                                Layout.preferredHeight: 26
                                font.weight: Font.DemiBold
                                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                Layout.fillWidth: true
                                font.family: "Hubot-Sans"
                            }
                            spacing: 8
                        }
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                        Layout.fillWidth: true
                    }

                    Text {
                        id: value4
                        x: 0
                        y: 34
                        width: 389
                        height: 25
                        color: fontColor
                        text: qsTr("1,095M")
                        font.pixelSize: 26
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                        Layout.preferredHeight: 25
                        font.weight: Font.Bold
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                        Layout.fillWidth: true
                        font.family: "Hubot-Sans"
                    }

                    Text {
                        id: this_is_a_subtitle1
                        x: 0
                        y: 67
                        width: 389
                        height: 13
                        color: "#5b5b5b"
                        text: qsTr("This is a subtitle")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                        Layout.preferredHeight: 13
                        font.weight: Font.DemiBold
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                        Layout.fillWidth: true
                        font.family: "Hubot-Sans"
                    }
                    spacing: 8
                }
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Rectangle {
                id: content2
                x: 24
                y: 24
                width: 388
                height: 80
                color: "transparent"
                ColumnLayout {
                    id: text_ColumnLayout2
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    Rectangle {
                        id: icon_title2
                        x: 0
                        y: 0
                        width: 388
                        height: 26
                        color: "transparent"
                        Layout.preferredHeight: 26
                        RowLayout {
                            id: icon_title_RowLayout2
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            Financial {
                                id: financial2
                                x: 0
                                y: 0
                                width: 26
                                height: 26
                                Layout.preferredHeight: 26
                                state: "state_size_small_status_ok"
                                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                Layout.preferredWidth: 26
                            }

                            Text {
                                id: this_is_the_title2
                                x: 34
                                y: 0
                                width: 355
                                height: 26
                                color: fontColor
                                text: qsTr("Inventory Financial Information")
                                font.pixelSize: 18
                                horizontalAlignment: Text.AlignLeft
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                                Layout.preferredHeight: 26
                                font.weight: Font.DemiBold
                                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                Layout.fillWidth: true
                                font.family: "Hubot-Sans"
                            }
                            spacing: 8
                        }
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                        Layout.fillWidth: true
                    }

                    Text {
                        id: value8
                        x: 0
                        y: 34
                        width: 389
                        height: 25
                        color: fontColor
                        text: qsTr("1,095M")
                        font.pixelSize: 26
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                        Layout.preferredHeight: 25
                        font.weight: Font.Bold
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                        Layout.fillWidth: true
                        font.family: "Hubot-Sans"
                    }

                    Text {
                        id: this_is_a_subtitle2
                        x: 0
                        y: 67
                        width: 389
                        height: 13
                        color: fontColor
                        text: qsTr("This is a subtitle")
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                        Layout.preferredHeight: 13
                        font.weight: Font.DemiBold
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                        Layout.fillWidth: true
                        font.family: "Hubot-Sans"
                    }
                    spacing: 8
                }
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
            spacing: 24
        }
    }

    Rectangle {
        id: data_sheet_01
        x: 24
        y: 24
        width: 388
        height: 80
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        Layout.fillHeight: true
        Layout.fillWidth: true
        anchors.topMargin: 120
        Rectangle {
            id: data2
            color: "transparent"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.topMargin: 22
            ColumnLayout {
                id: data_ColumnLayout1
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 24
                anchors.topMargin: 8
                Rectangle {
                    id: bid_data
                    x: 24
                    y: 8
                    width: 388
                    height: 91
                    color: "transparent"
                    Layout.preferredHeight: 91
                    RowLayout {
                        id: bid_data_RowLayout
                        x: 0
                        y: 0
                        width: 26
                        height: 26
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                        Layout.preferredHeight: 26
                        state: "state_size_small_status_ok"
                        Layout.preferredWidth: 26
                        Rectangle {
                            id: monthly
                            x: 0
                            y: 0
                            width: 194
                            height: 91
                            color: "transparent"
                            Layout.preferredHeight: 91
                            ColumnLayout {
                                id: monthly_ColumnLayout
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.top: parent.top
                                anchors.bottom: parent.bottom
                                Text {
                                    id: title
                                    x: 0
                                    y: 0
                                    width: 60
                                    height: 13
                                    color: fontColor
                                    text: qsTr("This is a subtitle")
                                    font.pixelSize: 14
                                    horizontalAlignment: Text.AlignLeft
                                    verticalAlignment: Text.AlignTop
                                    wrapMode: Text.NoWrap
                                    Layout.fillWidth: true
                                    Layout.preferredHeight: 13
                                    font.weight: Font.DemiBold
                                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                    Layout.preferredWidth: 60
                                    font.family: "Hubot-Sans"
                                }

                                Text {
                                    id: amount
                                    x: 0
                                    y: 21
                                    width: 195
                                    height: 32
                                    color: fontColor
                                    text: qsTr("€8,9M")
                                    font.pixelSize: 32
                                    horizontalAlignment: Text.AlignLeft
                                    verticalAlignment: Text.AlignTop
                                    wrapMode: Text.Wrap
                                    Layout.fillHeight: true
                                    Layout.preferredHeight: 32
                                    font.weight: Font.DemiBold
                                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                    Layout.fillWidth: true
                                    font.family: "Hubot-Sans"
                                }

                                Rectangle {
                                    id: data3
                                    x: 0
                                    y: 61
                                    width: 164
                                    height: 30
                                    color: "transparent"
                                    Layout.preferredHeight: 30
                                    RowLayout {
                                        id: data_RowLayout
                                        anchors.left: parent.left
                                        anchors.right: parent.right
                                        anchors.top: parent.top
                                        anchors.bottom: parent.bottom
                                        ComparativeBig {
                                            id: comparativeBig
                                            x: 0
                                            y: 0
                                            width: 80
                                            height: 30
                                            Layout.preferredHeight: 30
                                            state: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"
                                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                                            Layout.preferredWidth: 80
                                        }

                                        Text {
                                            id: details
                                            x: 84
                                            y: 1
                                            width: 81
                                            height: 29
                                            color: fontColor
                                            text: qsTr("€4.214")
                                            font.pixelSize: 24
                                            horizontalAlignment: Text.AlignLeft

                                            wrapMode: Text.NoWrap
                                            state: "state_size_small_status_ok"
                                            Layout.preferredHeight: 29
                                            font.weight: Font.DemiBold
                                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                            Layout.preferredWidth: 81
                                            font.family: "Hubot-Sans"

                                        }
                                        spacing: 4
                                    }
                                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                    Layout.preferredWidth: 164
                                }
                                spacing: 8
                            }
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.fillWidth: true
                        }

                        Rectangle {
                            id: monthly1
                            x: 194
                            y: 0
                            width: 194
                            height: 91
                            color: "transparent"
                            Layout.preferredHeight: 91
                            ColumnLayout {
                                id: monthly_ColumnLayout1
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.top: parent.top
                                anchors.bottom: parent.bottom
                                Text {
                                    id: title1
                                    x: 0
                                    y: 0
                                    width: 45
                                    height: 13
                                    color: fontColor
                                    text: qsTr("This is a subtitle")
                                    font.pixelSize: 14
                                    horizontalAlignment: Text.AlignLeft
                                    verticalAlignment: Text.AlignTop
                                    wrapMode: Text.NoWrap
                                    Layout.fillWidth: true
                                    Layout.preferredHeight: 13
                                    font.weight: Font.DemiBold
                                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                    Layout.preferredWidth: 45
                                    font.family: "Hubot-Sans"
                                }

                                Text {
                                    id: amount1
                                    x: 0
                                    y: 21
                                    width: 195
                                    height: 32
                                    color: fontColor
                                    text: qsTr("€8,9M")
                                    anchors.left: parent.left
                                    anchors.right: parent.right
                                    anchors.top: parent.top
                                    anchors.bottom: parent.bottom
                                    font.pixelSize: 32
                                    horizontalAlignment: Text.AlignLeft
                                    verticalAlignment: Text.AlignTop
                                    wrapMode: Text.Wrap
                                    Layout.fillHeight: true
                                    anchors.topMargin: 120
                                    Layout.preferredHeight: 32
                                    font.weight: Font.DemiBold
                                    Layout.fillWidth: true
                                    font.family: "Hubot-Sans"
                                }

                                Rectangle {
                                    id: data4
                                    x: 0
                                    y: 61
                                    width: 164
                                    height: 30
                                    color: "transparent"
                                    Layout.preferredHeight: 30
                                    RowLayout {
                                        id: data_RowLayout1
                                        anchors.left: parent.left
                                        anchors.right: parent.right
                                        anchors.top: parent.top
                                        anchors.bottom: parent.bottom
                                        ComparativeBig {
                                            id: comparativeBig1
                                            x: 0
                                            y: 0
                                            width: 80
                                            height: 30
                                            Layout.preferredHeight: 30
                                            state: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"
                                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                            Layout.preferredWidth: 80
                                        }

                                        Text {
                                            id: details1
                                            x: 84
                                            y: 1
                                            width: 81
                                            height: 29
                                            color: fontColor
                                            text: qsTr("€4.214")
                                            font.pixelSize: 24

                                            wrapMode: Text.NoWrap
                                            Layout.preferredHeight: 29
                                            font.weight: Font.DemiBold

                                            Layout.preferredWidth: 81
                                            font.family: "Hubot-Sans"
                                        }
                                        spacing: 4
                                    }
                                    Layout.preferredWidth: 164
                                }
                                spacing: 8
                            }
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.fillWidth: true
                        }
                        spacing: 0
                    }
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    Layout.fillWidth: true
                }

                Rectangle {
                    id: legend
                    x: 24
                    y: 131
                    width: 388
                    height: 93
                    color: "transparent"
                    Layout.preferredHeight: 93
                    ColumnLayout {
                        id: legend_ColumnLayout
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        Rectangle {
                            id: row
                            x: 0
                            y: 0
                            width: 388
                            height: 16
                            color: "transparent"
                            Layout.preferredHeight: 16
                            RowLayout {
                                id: row_RowLayout
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.top: parent.top
                                anchors.bottom: parent.bottom
                                Text {
                                    id: label
                                    x: 0
                                    y: 0
                                    width: 181
                                    height: 16
                                    color: fontColor
                                    text: qsTr("Line 01")
                                    font.pixelSize: 14
                                    horizontalAlignment: Text.AlignLeft
                                    verticalAlignment: Text.AlignTop
                                    wrapMode: Text.Wrap
                                    Layout.preferredWidth: 164
                                    Layout.preferredHeight: 16
                                    font.weight: Font.DemiBold
                                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                    Layout.fillWidth: true
                                    font.family: "Hubot-Sans"
                                }

                                Text {
                                    id: value1
                                    x: 208
                                    y: 0
                                    width: 181
                                    height: 16
                                    color: fontColor
                                    text: qsTr("201,192")
                                    font.pixelSize: 14
                                    horizontalAlignment: Text.AlignRight
                                    verticalAlignment: Text.AlignTop
                                    wrapMode: Text.Wrap
                                    Layout.preferredHeight: 16
                                    font.weight: Font.DemiBold
                                    Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
                                    Layout.fillWidth: true
                                    font.family: "Hubot-Sans"
                                }
                                spacing: 28
                            }
                            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                            Layout.fillWidth: true
                        }

                        SvgPathItem {
                            id: divider_Stroke_
                            x: 0
                            y: 27
                            width: 388
                            height: 1
                            state: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"
                            Layout.preferredWidth: 80
                            Layout.preferredHeight: 1
                            fillColor: "#e0e0e0"
                            strokeWidth: 1
                            path: "M 388 1 L 0 1 L 0 0 L 388 0 L 388 1 Z"
                            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                            strokeColor: "transparent"
                            antialiasing: true
                            Layout.fillWidth: true
                        }

                        Rectangle {
                            id: row1
                            x: 0
                            y: 39
                            width: 388
                            height: 16
                            color: "transparent"
                            Layout.preferredHeight: 16
                            RowLayout {
                                id: row_RowLayout1
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.top: parent.top
                                anchors.bottom: parent.bottom
                                Text {
                                    id: label1
                                    x: 0
                                    y: 0
                                    width: 191
                                    height: 16
                                    color: fontColor
                                    text: qsTr("Line 02")
                                    font.pixelSize: 14
                                    horizontalAlignment: Text.AlignLeft
                                    verticalAlignment: Text.AlignTop
                                    wrapMode: Text.Wrap
                                    Layout.preferredHeight: 16
                                    font.weight: Font.DemiBold
                                    Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
                                    Layout.fillWidth: true
                                    font.family: "Hubot-Sans"
                                }

                                Text {
                                    id: value2
                                    x: 198
                                    y: 0
                                    width: 191
                                    height: 16
                                    color: fontColor
                                    text: qsTr("192,055")
                                    font.pixelSize: 14
                                    horizontalAlignment: Text.AlignRight
                                    verticalAlignment: Text.AlignTop
                                    wrapMode: Text.Wrap
                                    Layout.preferredWidth: 45
                                    Layout.preferredHeight: 16
                                    font.weight: Font.DemiBold
                                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                    Layout.fillWidth: true
                                    font.family: "Hubot-Sans"
                                }
                                spacing: 8
                            }
                            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                            Layout.fillWidth: true
                        }

                        SvgPathItem {
                            id: divider_Stroke_1
                            x: 0
                            y: 65
                            width: 388
                            height: 1
                            Layout.preferredHeight: 1
                            fillColor: "#e0e0e0"
                            strokeWidth: 1
                            path: "M 388 1 L 0 1 L 0 0 L 388 0 L 388 1 Z"
                            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                            strokeColor: "transparent"
                            antialiasing: true
                            Layout.fillWidth: true
                        }

                        Rectangle {
                            id: row2
                            x: 0
                            y: 77
                            width: 388
                            height: 16
                            color: "transparent"
                            Layout.preferredWidth: 164
                            Layout.preferredHeight: 16
                            RowLayout {
                                id: row_RowLayout2
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.top: parent.top
                                anchors.bottom: parent.bottom
                                Text {
                                    id: label2
                                    x: 0
                                    y: 0
                                    width: 191
                                    height: 16
                                    color: fontColor
                                    text: qsTr("Line 03")
                                    font.pixelSize: 14
                                    horizontalAlignment: Text.AlignLeft
                                    verticalAlignment: Text.AlignTop
                                    wrapMode: Text.Wrap
                                    state: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"
                                    Layout.preferredWidth: 80
                                    Layout.preferredHeight: 16
                                    font.weight: Font.DemiBold
                                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                                    Layout.fillWidth: true
                                    font.family: "Hubot-Sans"
                                }

                                Text {
                                    id: value3
                                    x: 198
                                    y: 0
                                    width: 191
                                    height: 16
                                    color: fontColor
                                    text: qsTr("166,401")
                                    font.pixelSize: 14
                                    horizontalAlignment: Text.AlignRight
                                    verticalAlignment: Text.AlignTop
                                    wrapMode: Text.Wrap
                                    Layout.preferredWidth: 81
                                    Layout.preferredHeight: 16
                                    font.weight: Font.DemiBold
                                    Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
                                    Layout.fillWidth: true
                                    font.family: "Hubot-Sans"
                                }
                                spacing: 8
                            }
                            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                            Layout.fillWidth: true
                        }
                        spacing: 0
                        anchors.bottomMargin: 0
                    }
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    Layout.fillWidth: true
                }

                Item {
                    id: data_ColumnLayout_SpacerRear
                    x: 0
                    y: 0
                    width: 1
                    height: 1
                    Layout.fillHeight: true
                }
                anchors.rightMargin: 24
                spacing: 32
                anchors.bottomMargin: 24
            }
            anchors.bottomMargin: 19
        }

        Rectangle {
            id: monthly4
            y: 19
            height: 99
            color: "transparent"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 218
            ColumnLayout {
                id: monthly_ColumnLayout4
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                Text {
                    id: title4
                    x: 0
                    y: 0
                    width: 45
                    height: 13
                    color: "#5b5b5b"
                    text: qsTr("Yearly")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.NoWrap
                    Layout.preferredHeight: 13
                    font.weight: Font.DemiBold
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    Layout.preferredWidth: 45
                    font.family: "Hubot-Sans"
                }

                Text {
                    id: amount4
                    x: 0
                    y: 25
                    width: 195
                    height: 32
                    color: fontColor
                    text: qsTr("€107,6M")
                    font.pixelSize: 32
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    Layout.preferredHeight: 32
                    font.weight: Font.DemiBold
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    Layout.fillWidth: true
                    font.family: "Hubot-Sans"
                }

                Rectangle {
                    id: data8
                    x: 0
                    y: 69
                    width: 164
                    height: 30
                    color: "transparent"
                    Layout.preferredHeight: 30
                    RowLayout {
                        id: data_RowLayout4
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        ComparativeBig {
                            id: comparativeBig4
                            x: 0
                            y: 0
                            width: 80
                            height: 30
                            Layout.preferredHeight: 30
                            state: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                            Layout.preferredWidth: 80
                        }

                        Text {
                            id: details4
                            x: 84
                            y: 1
                            width: 81
                            height: 29
                            color: "#5b5b5b"
                            text: qsTr("€4.214")
                            font.pixelSize: 24
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                            wrapMode: Text.NoWrap
                            Layout.preferredHeight: 29
                            font.weight: Font.DemiBold
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                            Layout.preferredWidth: 81
                            font.family: "Hubot-Sans"
                        }
                        spacing: 4
                    }
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    Layout.preferredWidth: 164
                }
                spacing: 12
            }
            anchors.rightMargin: 0
        }

        Rectangle {
            id: monthly5
            x: 24
            y: 19
            width: 194
            height: 99
            color: "transparent"
            ColumnLayout {
                id: monthly_ColumnLayout5
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                Text {
                    id: title5
                    x: 0
                    y: 0
                    width: 60
                    height: 13
                    color: "#5b5b5b"
                    text: qsTr("Monthly")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.NoWrap
                    Layout.preferredHeight: 13
                    font.weight: Font.DemiBold
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    Layout.preferredWidth: 60
                    font.family: "Hubot-Sans"
                }

                Text {
                    id: amount5
                    x: 0
                    y: 25
                    width: 195
                    height: 32
                    color: fontColor
                    text: qsTr("€8,9M")
                    font.pixelSize: 32
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    Layout.preferredHeight: 32
                    font.weight: Font.DemiBold
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    Layout.fillWidth: true
                    font.family: "Hubot-Sans"
                }

                Rectangle {
                    id: data9
                    x: 0
                    y: 69
                    width: 164
                    height: 30
                    color: "transparent"
                    Layout.preferredHeight: 30
                    RowLayout {
                        id: data_RowLayout5
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        ComparativeBig {
                            id: comparativeBig5
                            x: 0
                            y: 0
                            width: 80
                            height: 30
                            Layout.preferredHeight: 30
                            state: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                            Layout.preferredWidth: 80
                        }

                        Text {
                            id: details5
                            x: 84
                            y: 1
                            width: 81
                            height: 29
                            color: "#5b5b5b"
                            text: qsTr("€4.214")
                            font.pixelSize: 24
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.NoWrap
                            Layout.preferredHeight: 29
                            font.weight: Font.DemiBold
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                            Layout.preferredWidth: 81
                            font.family: "Hubot-Sans"
                        }
                        spacing: 4
                    }
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    Layout.preferredWidth: 164
                }
                spacing: 12
            }
        }
    }

    Rectangle {
        id: grabber
        visible: false
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 412
        anchors.topMargin: 376
        SvgPathItem {
            id: line_120
            width: 23
            height: 0
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            fillColor: "transparent"
            rotation: 135
            strokeWidth: 1
            path: "M 0 0.0000019073486328125 L 22.627416610717773 -0.0000019073486328125"
            anchors.rightMargin: -3
            strokeColor: "#9f9f9f"
            antialiasing: true
            anchors.bottomMargin: 8
        }

        SvgPathItem {
            id: line_121
            width: 11
            height: 0
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            fillColor: "transparent"
            rotation: 135
            strokeWidth: 1
            path: "M 0 0 L 11.313708305358887 0"
            anchors.rightMargin: -2
            strokeColor: "#9f9f9f"
            antialiasing: true
            anchors.bottomMargin: 4
        }
        anchors.rightMargin: 8
        anchors.bottomMargin: 8
    }

    Rectangle {
        id: data5
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 120
        Rectangle {
            id: bid_data1
            y: 12
            height: 105
            color: "transparent"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 24
            RowLayout {
                id: bid_data_RowLayout1
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                Rectangle {
                    id: monthly2
                    x: 0
                    y: 0
                    width: 194
                    height: 105
                    color: "transparent"
                    Layout.preferredHeight: 105
                    ColumnLayout {
                        id: monthly_ColumnLayout2
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        Text {
                            id: title2
                            x: 0
                            y: 0
                            width: 60
                            height: 13
                            color: "#5b5b5b"
                            text: qsTr("Revenue per 24h")
                            font.pixelSize: 14
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.NoWrap
                            Layout.preferredHeight: 13
                            font.weight: Font.DemiBold
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.preferredWidth: 60
                            font.family: "Hubot-Sans"
                        }

                        Text {
                            id: amount2
                            x: 0
                            y: 21
                            width: 195
                            height: 46
                            color: fontColor
                            text: qsTr("€8,9M")
                            font.pixelSize: 48
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.Wrap
                            Layout.preferredHeight: 46
                            font.weight: Font.DemiBold
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.fillWidth: true
                            font.family: "Hubot-Sans"
                        }

                        Rectangle {
                            id: data6
                            x: 0
                            y: 75
                            width: 152
                            height: 30
                            color: "transparent"
                            Layout.preferredHeight: 30
                            RowLayout {
                                id: data_RowLayout2
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.top: parent.top
                                anchors.bottom: parent.bottom
                                ComparativeBig {
                                    id: comparativeBig2
                                    x: 0
                                    y: 0
                                    width: 80
                                    height: 30
                                    Layout.preferredHeight: 30
                                    state: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"
                                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                                    Layout.preferredWidth: 80
                                }

                                Text {
                                    id: details2
                                    x: 84
                                    y: 1
                                    width: 69
                                    height: 29
                                    color: "#5b5b5b"
                                    text: qsTr("€4.2k")
                                    font.pixelSize: 24
                                    horizontalAlignment: Text.AlignLeft
                                    verticalAlignment: Text.AlignTop
                                    wrapMode: Text.NoWrap
                                    Layout.preferredHeight: 29
                                    font.weight: Font.DemiBold
                                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                                    Layout.preferredWidth: 69
                                    font.family: "Hubot-Sans"
                                }
                                spacing: 4
                            }
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.preferredWidth: 152
                        }
                        spacing: 8
                    }
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    Layout.fillWidth: true
                }

                Rectangle {
                    id: monthly3
                    x: 194
                    y: 0

                    anchors.right: parent.right
                    color: "transparent"
                    Layout.preferredHeight: 105
                    ColumnLayout {
                        id: monthly_ColumnLayout3
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: -146
                        Text {
                            id: title3
                            x: 0
                            y: 0
                            width: 45
                            height: 13
                            color: "#5b5b5b"
                            text: qsTr("Revenue per 12kk")
                            font.pixelSize: 14
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.NoWrap
                            Layout.preferredHeight: 13
                            font.weight: Font.DemiBold
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.preferredWidth: 45
                            font.family: "Hubot-Sans"
                        }

                        Text {
                            id: amount3
                            x: 0
                            y: 21
                            width: 195
                            height: 45
                            color: fontColor
                            text: qsTr("€9,0M")
                            font.pixelSize: 48
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.Wrap
                            Layout.preferredHeight: 46
                            font.weight: Font.DemiBold
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.fillWidth: true
                            font.family: "Hubot-Sans"
                        }

                        Rectangle {
                            id: data7
                            x: 0
                            y: 75
                            width: 152
                            height: 30
                            color: "transparent"
                            Layout.preferredHeight: 30
                            RowLayout {
                                id: data_RowLayout3
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.top: parent.top
                                anchors.bottom: parent.bottom
                                ComparativeBig {
                                    id: comparativeBig3
                                    x: 0
                                    y: 0
                                    width: 80
                                    height: 30
                                    Layout.preferredHeight: 30
                                    state: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"
                                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                                    Layout.preferredWidth: 80
                                }

                                Text {
                                    id: details3
                                    x: 84
                                    y: 1
                                    width: 69
                                    height: 29
                                    color: "#5b5b5b"
                                    text: qsTr("€4.2k")
                                    font.pixelSize: 24
                                    horizontalAlignment: Text.AlignLeft
                                    verticalAlignment: Text.AlignTop
                                    wrapMode: Text.NoWrap
                                    Layout.preferredHeight: 29
                                    font.weight: Font.DemiBold
                                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                                    Layout.preferredWidth: 69
                                    font.family: "Hubot-Sans"
                                }
                                spacing: 4
                            }
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.preferredWidth: 152
                        }
                        spacing: 8
                    }
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    Layout.fillWidth: true
                }
                spacing: 0
            }
            anchors.rightMargin: 24
        }

        Rectangle {
            id: legend1
            y: 153
            height: 121
            color: "transparent"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 24
            ColumnLayout {
                id: legend_ColumnLayout1
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                Rectangle {
                    id: row3
                    x: 0
                    y: 0
                    width: 388
                    height: 29
                    color: "transparent"
                    Layout.preferredHeight: 29
                    RowLayout {
                        id: row_RowLayout3
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        Text {
                            id: label3
                            x: 0
                            y: 0
                            width: 181
                            height: 29
                            color: fontColor
                            text: qsTr("Line 01")
                            font.pixelSize: 24
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.Wrap
                            Layout.preferredHeight: 29
                            font.weight: Font.DemiBold
                            Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
                            Layout.fillWidth: true
                            font.family: "Hubot-Sans"
                        }

                        Text {
                            id: value5
                            x: 208
                            y: 0
                            width: 181
                            height: 29
                            color: fontColor
                            text: qsTr("201,192")
                            font.pixelSize: 24
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.Wrap
                            Layout.preferredHeight: 29
                            font.weight: Font.DemiBold
                            Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
                            Layout.fillWidth: true
                            font.family: "Hubot-Sans"
                        }
                        spacing: 28
                    }
                    Layout.alignment: Qt.AlignRight | Qt.AlignTop
                    Layout.fillWidth: true
                }

                SvgPathItem {
                    id: divider_Stroke_2
                    x: 0
                    y: 37
                    width: 388
                    height: 1
                    Layout.preferredHeight: 1
                    fillColor: "#e0e0e0"
                    strokeWidth: 1
                    path: "M 388 1 L 0 1 L 0 0 L 388 0 L 388 1 Z"
                    Layout.alignment: Qt.AlignRight | Qt.AlignTop
                    strokeColor: "transparent"
                    antialiasing: true
                    Layout.fillWidth: true
                }

                Rectangle {
                    id: row4
                    x: 0
                    y: 46
                    width: 388
                    height: 29
                    color: "transparent"
                    Layout.preferredHeight: 29
                    RowLayout {
                        id: row_RowLayout4
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        Text {
                            id: label4
                            x: 0
                            y: 0
                            width: 191
                            height: 29
                            color: fontColor
                            text: qsTr("Line 02")
                            font.pixelSize: 24
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.Wrap
                            Layout.preferredHeight: 29
                            font.weight: Font.DemiBold
                            Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
                            Layout.fillWidth: true
                            font.family: "Hubot-Sans"
                        }

                        Text {
                            id: value6
                            x: 198
                            y: 0
                            width: 191
                            height: 29
                            color: fontColor
                            text: qsTr("192,054")
                            font.pixelSize: 24
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.Wrap
                            Layout.preferredHeight: 29
                            font.weight: Font.DemiBold
                            Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
                            Layout.fillWidth: true
                            font.family: "Hubot-Sans"
                        }
                        spacing: 8
                    }
                    Layout.alignment: Qt.AlignRight | Qt.AlignTop
                    Layout.fillWidth: true
                }

                SvgPathItem {
                    id: divider_Stroke_3
                    x: 0
                    y: 83
                    width: 388
                    height: 1
                    Layout.preferredHeight: 1
                    fillColor: "#e0e0e0"
                    strokeWidth: 1
                    path: "M 388 1 L 0 1 L 0 0 L 388 0 L 388 1 Z"
                    Layout.alignment: Qt.AlignRight | Qt.AlignTop
                    strokeColor: "transparent"
                    antialiasing: true
                    Layout.fillWidth: true
                }

                Rectangle {
                    id: row5
                    x: 0
                    y: 92
                    width: 388
                    height: 29
                    color: "transparent"
                    Layout.preferredHeight: 29
                    RowLayout {
                        id: row_RowLayout5
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        Text {
                            id: label5
                            x: 0
                            y: 0
                            width: 191
                            height: 29
                            color: fontColor
                            text: qsTr("Line 03")
                            font.pixelSize: 24
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.Wrap
                            Layout.preferredHeight: 29
                            font.weight: Font.DemiBold
                            Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
                            Layout.fillWidth: true
                            font.family: "Hubot-Sans"
                        }

                        Text {
                            id: value7
                            x: 198
                            y: 0
                            width: 191
                            height: 29
                            color: fontColor
                            text: qsTr("166,401")
                            font.pixelSize: 24
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.Wrap
                            Layout.preferredHeight: 29
                            font.weight: Font.DemiBold
                            Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
                            Layout.fillWidth: true
                            font.family: "Hubot-Sans"
                        }
                        spacing: 8
                    }
                    Layout.alignment: Qt.AlignRight | Qt.AlignTop
                    Layout.fillWidth: true
                }
                spacing: 8
                anchors.bottomMargin: 0
            }
            anchors.rightMargin: 24
        }

        Rectangle {
            id: footer_data
            color: "transparent"
            anchors.fill: parent

            FinanQtChart {
                id: qtChart
                x: -24
                y: -310
                width: 500
                height: 156
                opacity: 1
                visible: true
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top*50
                anchors.bottom: parent.bottom

                values1: [35, 35, 40, 25, 25, 25]
                values2: [55, 40, 45, 60, 70, 60]
                values3: [30, 15, 15, 30, 20, 15]


            }
        }
    }

    Financial {
        id: financial3
        x: 24
        y: 24
        width: 80
        height: 80
        opacity: 0
        visible: false
        state: "state_size_big_status_ok"
    }

    Rectangle {
        id: data10
        y: 24
        height: 80
        opacity: 0
        visible: false
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: 120
        ColumnLayout {
            id: data_ColumnLayout2
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            Text {
                id: this_is_the_title3
                x: 0
                y: 0
                width: 293
                height: 26
                color: fontColor
                text: qsTr("Inventory Financial Information")
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                Layout.preferredHeight: 26
                font.weight: Font.DemiBold
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillWidth: true
                font.family: "Hubot-Sans"
            }

            Rectangle {
                id: value9
                x: 0
                y: 34
                width: 292
                height: 46
                color: "transparent"
                Layout.preferredHeight: 46
                Text {
                    id: element7
                    x: 0
                    y: 0
                    width: 123
                    height: 46
                    color: fontColor
                    text: qsTr("1,095M")
                    font.pixelSize: 48
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.NoWrap
                    font.weight: Font.DemiBold
                    font.family: "Hubot-Sans"
                }

                ComparativeBig {
                    id: comparativeBig6
                    y: 16
                    width: 80
                    height: 30
                    anchors.right: parent.right
                    state: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"
                }
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillWidth: true
            }
            spacing: 8
        }
        anchors.rightMargin: 24
    }

    Item {
        id: __materialLibrary__
    }

    states: [
        State {
            name: "state_size_M"
            when: statecontroller === 2

            PropertyChanges {
                target: footer_data
                visible: false
            }

            PropertyChanges {
                target: legend1
                visible: true
            }

            PropertyChanges {
                target: grabber
                anchors.topMargin: 520
            }

            PropertyChanges {
                target: content1
                height: 113
                visible: true
                Layout.topMargin: 4
            }

            PropertyChanges {
                target: data_sheet_01
                visible: false
            }

            PropertyChanges {
                target: container
                visible: false
            }

            PropertyChanges {
                target: header_ColumnLayout_SpacerRear
                visible: false
            }

            PropertyChanges {
                target: widgets_Financial
                height: 544
            }

            PropertyChanges {
                target: data5
                visible: true
            }

            PropertyChanges {
                target: header
                anchors.bottomMargin: 424
            }

            PropertyChanges {
                target: text_ColumnLayout1
                anchors.leftMargin: 24
            }

            PropertyChanges {
                target: details3
                verticalAlignment: Text.AlignVCenter
                Layout.topMargin: 9
            }

            PropertyChanges {
                target: data7
                Layout.preferredWidth: 170
            }

            PropertyChanges {
                target: details2
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                Layout.topMargin: 9
            }

            PropertyChanges {
                target: icon_title_RowLayout1
                anchors.bottomMargin: -17
                anchors.topMargin: 17
                anchors.rightMargin: 0
                anchors.leftMargin: 0
            }

            PropertyChanges {
                target: this_is_the_title1
                verticalAlignment: Text.AlignVCenter
            }

            PropertyChanges {
                target: this_is_a_subtitle1
                Layout.bottomMargin: 7
                Layout.fillHeight: false
            }

            PropertyChanges {
                target: value4
                Layout.topMargin: 8
            }
        },
        State {
            name: "state_size_L"
            when: statecontroller === 3
            extend: "state_size_M"

            PropertyChanges {
                target: grabber
                anchors.topMargin: 520
            }

            PropertyChanges {
                target: legend1
                visible: true
            }

            PropertyChanges {
                target: footer_data
                visible: true
            }

            PropertyChanges {
                target: content1
                height: 113
                visible: true
                Layout.topMargin: 4
            }

            PropertyChanges {
                target: data_sheet_01
                visible: false
            }

            PropertyChanges {
                target: container
                visible: false
            }

            PropertyChanges {
                target: header_ColumnLayout_SpacerRear
                visible: false
            }

            PropertyChanges {
                target: widgets_Financial
                height: 544
            }

            PropertyChanges {
                target: data5
                visible: true
            }

            PropertyChanges {
                target: header
                anchors.bottomMargin: 424
            }

            PropertyChanges {
                target: text_ColumnLayout1
                anchors.leftMargin: 24
            }

            PropertyChanges {
                target: details3
                verticalAlignment: Text.AlignVCenter
                Layout.topMargin: 9
            }

            PropertyChanges {
                target: data7
                Layout.preferredWidth: 170
            }

            PropertyChanges {
                target: details2
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                Layout.topMargin: 9
            }

            PropertyChanges {
                target: icon_title_RowLayout1
                anchors.bottomMargin: -17
                anchors.topMargin: 17
                anchors.rightMargin: 0
                anchors.leftMargin: 0
            }

            PropertyChanges {
                target: this_is_the_title1
                verticalAlignment: Text.AlignVCenter
            }

            PropertyChanges {
                target: this_is_a_subtitle1
                Layout.bottomMargin: 7
                Layout.fillHeight: false
            }

            PropertyChanges {
                target: value4
                Layout.topMargin: 8
            }
        },
        State {
            name: "state_size_S"
            when: statecontroller === 1
            extend: "state_size_M"

            PropertyChanges {
                target: data2
                visible: false
            }

            PropertyChanges {
                target: grabber
                x: 412
                y: 232
                width: 16
                height: 16
            }

            PropertyChanges {
                target: content1
                visible: false
            }

            PropertyChanges {
                target: monthly5
                visible: true
            }

            PropertyChanges {
                target: container
                visible: false
            }

            PropertyChanges {
                target: header_ColumnLayout_SpacerRear
                visible: false
            }

            PropertyChanges {
                target: widgets_Financial
                height: 256
            }

            PropertyChanges {
                target: monthly4
                visible: true
            }

            PropertyChanges {
                target: content2
                visible: true
                Layout.fillWidth: true
                Layout.fillHeight: false
            }

            PropertyChanges {
                target: data5
                visible: true
            }

            PropertyChanges {
                target: footer_data
                visible: false
            }

            PropertyChanges {
                target: legend1
                visible: false
            }

            PropertyChanges {
                target: header
                y: 0
                height: 120
            }

            PropertyChanges {
                target: details4
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            PropertyChanges {
                target: details5
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            PropertyChanges {
                target: text_ColumnLayout2
                anchors.rightMargin: 0
                anchors.bottomMargin: -19
                anchors.topMargin: 19
                anchors.leftMargin: 22
            }
        },
        State {
            name: "state_size_XS"
            when: statecontroller === 0
            extend: "state_size_M"

            PropertyChanges {
                target: grabber
                x: 412
                y: 104
                width: 16
                height: 16
            }

            PropertyChanges {
                target: data_sheet_01
                visible: false
            }

            PropertyChanges {
                target: financial3
                visible: true
            }

            PropertyChanges {
                target: data10
                visible: true
            }

            PropertyChanges {
                target: widgets_Financial
                height: 128
            }

            PropertyChanges {
                target: data5
                visible: false
            }

            PropertyChanges {
                target: header
                visible: false
            }
        }
    ]
}


