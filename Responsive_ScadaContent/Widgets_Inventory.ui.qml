import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15
import QtQuick.Studio.Components 1.0

Rectangle {
    id: widgets_Inventory
    width: 436
    height: 128
    color: "transparent"
    //    property alias element1Text: element1.text
    property alias this_is_the_titleText: this_is_the_title.text
    property alias label1Text: label1.text
    property alias label2Text: label2.text
    property alias labelText: label.text
    property alias this_is_a_subtitleText: this_is_a_subtitle.text
    property alias valueText: value.text
    state: "state_size_XS"
    property int statecontroller: 3

    //define value from 0 to 100
    property int chartValue1: 20
    property int chartValue2: 70
    property int chartValue3: 100

    Rectangle {
        id: header
        opacity: 0
        visible: false
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        ColumnLayout {
            id: header_ColumnLayout
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            spacing: 24
            Rectangle {
                id: container
                x: 24
                y: 24
                width: 388
                height: 80
                color: "transparent"
                RowLayout {
                    id: container_RowLayout
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    spacing: 8
                    Rectangle {
                        id: content
                        x: 0
                        y: 0
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
                                id: element
                                x: 0
                                y: 0
                                width: 388
                                height: 80
                                color: "transparent"
                                ColumnLayout {
                                    id: data_ColumnLayout
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
                                            Inventory {
                                                id: inventory
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
                                                id: this_is_the_title
                                                x: 34
                                                y: 0
                                                width: 355
                                                height: 26
                                                color: "#181818"
                                                text: qsTr("This is the title")
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
                                        id: value
                                        x: 0
                                        y: 34
                                        width: 389
                                        height: 25
                                        color: "#181818"
                                        text: qsTr("1,000 Value")
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
                                        font.weight: Font.DemiBold
                                        font.family: "Hubot Sans"
                                        Layout.preferredHeight: 13
                                        Layout.fillWidth: true
                                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                    }
                                }
                                Layout.preferredHeight: 80
                                Layout.fillWidth: true
                                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            }
                        }
                        Layout.preferredHeight: 80
                        Layout.fillWidth: true
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }
                }
                Layout.preferredHeight: 80
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
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
                            Inventory {
                                id: inventory1
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
                                id: this_is_the_title1
                                x: 34
                                y: 0
                                width: 355
                                height: 26
                                color: "#181818"
                                text: qsTr("This is the title")
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
                        id: value1
                        x: 0
                        y: 34
                        width: 389
                        height: 25
                        color: "#181818"
                        text: qsTr("1,000 Value")
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
                        font.weight: Font.DemiBold
                        font.family: "Hubot Sans"
                        Layout.preferredHeight: 13
                        Layout.fillWidth: true
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
        anchors.bottomMargin: 280
    }

    Rectangle {
        id: stream_chart
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        GridOnly {
            id: gridOnly
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 0
            anchors.rightMargin: 0
        }

        SvgPathItem {
            id: stream_3
            visible: false
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            strokeWidth: 1
            strokeColor: "transparent"
            path: "M 126.83132934570312 80.8371353149414 C 79.66265869140625 80.8371353149414 72.32530975341797 124.81103515625 0 124.81103515625 L 0 131.1437530517578 L 436 131.1437530517578 L 436 0 C 419.2289123535156 0 282.17352294921875 40 220.12049865722656 40 C 142.55422973632812 40 174 80.8371353149414 126.83132934570312 80.8371353149414 Z M 126.83132934570312 181.45028686523438 C 79.66265869140625 181.45028686523438 72.32530975341797 137.47637939453125 0 137.47637939453125 L 0 131.1437530517578 L 436 131.1437530517578 L 436 258.14453125 C 419.2289123535156 258.14453125 282.17352294921875 218.14453125 220.12049865722656 218.14453125 C 142.55422973632812 218.14453125 174 181.45028686523438 126.83132934570312 181.45028686523438 Z"
            fillColor: "#40181818"
            antialiasing: true
            anchors.topMargin: 48
            anchors.bottomMargin: 55
        }

        SvgPathItem {
            id: stream_1
            y: 69
            height: 82
            visible: false
            anchors.left: parent.left
            anchors.right: parent.right
            strokeWidth: 1
            strokeColor: "transparent"
            path: "M 126.10240173339844 18.76420021057129 C 79.20481872558594 18.76420021057129 71.90963745117188 38.969703674316406 0 38.969703674316406 L 0 41.8795166015625 L 436 41.8795166015625 L 436 0 L 218.85540771484375 0 C 141.73492431640625 0 172.99998474121094 18.76420021057129 126.10240173339844 18.76420021057129 Z M 126.10240173339844 64.99481964111328 C 79.20481872558594 64.99481964111328 71.90963745117188 44.7893180847168 0 44.7893180847168 L 0 41.8795166015625 L 436 41.8795166015625 L 436 81.85540771484375 L 218.85540771484375 81.85540771484375 C 141.73492431640625 81.85540771484375 172.99998474121094 64.99481964111328 126.10240173339844 64.99481964111328 Z"
            fillColor: "#2151c5"
            antialiasing: true
            anchors.rightMargin: -2
            anchors.leftMargin: 2
        }

        CurveChartGroup {
            id: curveChartGroup3
            x: -5
            y: -5
            visible: false
            anchors.fill: parent
            splineWidth: 244
            graphColor: "#a4d5d6d7"
            data3: chartValue3
            data2: chartValue2
            data1: chartValue1
        }

        CurveChartGroup {
            id: curveChartGroup4
            x: -8
            y: -8
            visible: false
            anchors.fill: parent
            splineWidth: 244
            graphColor: "#a4d5d6d7"
            data3: chartValue3
            data2: chartValue2
            data1: chartValue1
        }

        CurveChartGroup {
            id: curveChartGroup2
            visible: false
            anchors.fill: parent
            splineWidth: 244
            graphColor: "#d5d6d7"
            data3: chartValue3
            data2: chartValue2
            data1: chartValue1
        }

        CurveChartGroup {
            id: curveChartGroup
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: -436
            data3: chartValue3
            data2: chartValue2
            data1: chartValue1
            visible: true
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottomMargin: 197
            anchors.topMargin: -151
        }

        Rectangle {
            id: chip
            x: 77
            y: 99
            width: 43
            height: 24
            color: "transparent"
            radius: 2
            Rectangle {
                id: background_color1
                color: "#e0e0e0"
                radius: 2
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
            }

            Text {
                id: label
                x: 4
                y: 4
                width: 36
                height: 16
                color: "#181818"
                text: chartValue1
                font.pixelSize: 14
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.DemiBold
                font.family: "Hubot Sans"
            }
        }

        Rectangle {
            id: chip1
            y: 99
            width: 43
            height: 24
            color: "transparent"
            radius: 2
            Rectangle {
                id: background_color2
                color: "#e0e0e0"
                radius: 2
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
            }

            Text {
                id: label1
                x: 4
                y: 4
                width: 36
                height: 16
                color: "#181818"
                text: chartValue2
                font.pixelSize: 14
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.DemiBold
                font.family: "Hubot Sans"
            }
            anchors.horizontalCenterOffset: 9
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            id: chip2
            y: 99
            width: 43
            height: 24
            color: "transparent"
            radius: 2
            anchors.right: parent.right
            Rectangle {
                id: background_color3
                color: "#e0e0e0"
                radius: 2
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
            }

            Text {
                id: label2
                x: 4
                y: 4
                width: 36
                height: 16
                color: "#181818"
                text: chartValue3
                font.pixelSize: 14
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.DemiBold
                font.family: "Hubot Sans"
            }
            anchors.rightMargin: 60
        }

        clip: true
        anchors.topMargin: 120
        anchors.bottomMargin: 60
    }

    Rectangle {
        id: footer
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        RowLayout {
            id: footer_RowLayout
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            spacing: 24
            Gadget {
                id: gadget
                x: 24
                y: 24
                width: 72
                height: 12
                item_oneText: "Spare parts"
                Layout.preferredWidth: 72
                Layout.preferredHeight: 12
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            }

            Gadget {
                id: gadget2
                x: 220
                y: 24
                width: 76
                height: 14
                item_oneText: "Item two"
                Layout.preferredWidth: 76
                Layout.preferredHeight: 14
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            }

            Gadget {
                id: gadget1
                x: 120
                y: 24
                width: 76
                height: 14
                item_oneText: "Item three"
                Layout.preferredWidth: 76
                Layout.preferredHeight: 14
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            }
            anchors.topMargin: 24
            anchors.rightMargin: 24
            anchors.leftMargin: 24
            anchors.bottomMargin: 24
        }
        anchors.topMargin: 340
    }

    Rectangle {
        id: grabber
        visible: false
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
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
        anchors.topMargin: 376
        anchors.rightMargin: 8
        anchors.leftMargin: 412
        anchors.bottomMargin: 8
    }

    Rectangle {
        id: element1
        y: 24
        height: 80
        opacity: 0
        visible: false
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        ColumnLayout {
            id: data_ColumnLayout1
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            spacing: 8
            Text {
                id: this_is_the_title2
                x: 0
                y: 0
                width: 293
                height: 26
                color: "#181818"
                text: qsTr("This is the title")
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
                id: value2
                x: 0
                y: 34
                width: 292
                height: 46
                color: "transparent"
                Text {
                    id: element2
                    x: 0
                    y: 0
                    width: 123
                    height: 46
                    color: "#181818"
                    text: qsTr("1,000")
                    font.pixelSize: 48
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.NoWrap
                    font.weight: Font.DemiBold
                    font.family: "Hubot Sans"
                }

                ComparativeBig {
                    id: comparativeBig
                    y: 16
                    width: 80
                    height: 30
                    anchors.right: parent.right
                    state: "state_status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"
                }
                Layout.preferredHeight: 46
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            }
        }
        anchors.rightMargin: 24
        anchors.leftMargin: 120
    }

    Inventory {
        id: inventory2
        x: 24
        y: 24
        width: 80
        height: 80
        opacity: 0
        visible: false
        state: "state_size_big_status_ok"
    }
    states: [
        State {
            name: "state_size_M"
            when: statecontroller === 2

            PropertyChanges {
                target: stream_chart
                visible: true
            }

            PropertyChanges {
                target: gadget2
                visible: false
            }

            PropertyChanges {
                target: element1
                visible: false
            }

            PropertyChanges {
                target: content1
                visible: false
            }

            PropertyChanges {
                target: gadget1
                visible: false
            }

            PropertyChanges {
                target: stream_3
                visible: false
            }

            PropertyChanges {
                target: inventory2
                visible: false
            }

            PropertyChanges {
                target: gridOnly
                x: 0
                y: 0
                width: 436
                height: 203
                visible: true
            }

            PropertyChanges {
                target: curveChartGroup
                x: 0
                //y: -111
                width: 436
                anchors.leftMargin: -36
                //anchors.bottomMargin: 42
                //anchors.topMargin: 32
            }

            PropertyChanges {
                target: curveChartGroup2
                splineWidth: 244
                visible: true
                anchors.topMargin: 32
                anchors.rightMargin: -2
                anchors.leftMargin: -19
                anchors.bottomMargin: 16
            }
        },
        State {
            name: "state_size_L"
            when: statecontroller === 3
            extend: "state_size_M"

            PropertyChanges {
                target: chip1
                y: 166
            }

            PropertyChanges {
                target: gadget2
                visible: true
            }

            PropertyChanges {
                target: grabber
                anchors.topMargin: 520
                anchors.bottomMargin: 7
            }

            PropertyChanges {
                target: stream_1
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                path: "M 158.9036407470703 28.76420021057129 C 99.8072509765625 28.76420021057129 90.61447143554688 48.969703674316406 0 48.969703674316406 L 0 51.8795166015625 L 436.0000305175781 51.8795166015625 L 436.0000305175781 0 C 414.98797607421875 0 353.52777099609375 10 275.7831726074219 10 C 178.60244750976562 10 218.00003051757812 28.76420021057129 158.9036407470703 28.76420021057129 Z M 158.9036407470703 74.99480438232422 C 99.8072509765625 74.99480438232422 90.61447143554688 54.789302825927734 0 54.789302825927734 L 0 51.8795166015625 L 436.0000305175781 51.8795166015625 L 436.0000305175781 101.85539245605469 C 414.98797607421875 101.85539245605469 353.52777099609375 91.85539245605469 275.7831726074219 91.85539245605469 C 178.60244750976562 91.85539245605469 218.00003051757812 74.99480438232422 158.9036407470703 74.99480438232422 Z"
                anchors.topMargin: 125
                anchors.rightMargin: 0
                anchors.bottomMargin: 134
            }

            PropertyChanges {
                target: stream_chart
                visible: true
                anchors.bottomMargin: 62
            }

            PropertyChanges {
                target: chip2
                y: 166
            }

            PropertyChanges {
                target: widgets_Inventory
                height: 543
            }

            PropertyChanges {
                target: gadget1
                visible: true
            }

            PropertyChanges {
                target: footer
                anchors.topMargin: 481
            }

            PropertyChanges {
                target: stream_3
                visible: false
            }

            PropertyChanges {
                target: chip
                y: 166
            }

            PropertyChanges {
                target: header
                anchors.bottomMargin: 423
            }

            PropertyChanges {
                target: gridOnly
                visible: true
                statecontroler: 2
            }

            PropertyChanges {
                target: curveChartGroup
                x: 0
                y: -38
                visible: true
                anchors.bottomMargin: 119
                anchors.topMargin: 102
            }

            PropertyChanges {
                target: curveChartGroup2
                visible: true
                graphColor: "#f2f2f2"
                anchors.topMargin: 102
                anchors.rightMargin: -18
                anchors.leftMargin: -73
                anchors.bottomMargin: -96
            }

            PropertyChanges {
                target: curveChartGroup3
                visible: true
                anchors.rightMargin: 0
                anchors.bottomMargin: 50
                anchors.leftMargin: 0
                anchors.topMargin: 137
                splineWidth: 256
            }

            PropertyChanges {
                target: curveChartGroup4
                visible: true
                anchors.rightMargin: 0
                anchors.bottomMargin: -62
                anchors.leftMargin: 0
                anchors.topMargin: 62
            }
        },
        State {
            name: "state_size_S"
            when: statecontroller === 1
            extend: "state_size_M"

            PropertyChanges {
                target: header_ColumnLayout_SpacerRear
                visible: false
            }

            PropertyChanges {
                target: chip1
                y: 24
            }

            PropertyChanges {
                target: gadget2
                x: 224
                height: 12
                visible: false
                Layout.preferredHeight: 12
            }

            PropertyChanges {
                target: grabber
                anchors.topMargin: 232
            }

            PropertyChanges {
                target: stream_1
                y: 0
                height: 76
                path: "M 158.9036102294922 19.964340209960938 C 99.80722045898438 19.964340209960938 90.61446380615234 35.72962951660156 0 35.72962951660156 L 0 38 L 436 38 L 436 0 C 414.9879455566406 0 353.5277404785156 5.32362699508667 275.78314208984375 5.32362699508667 C 178.60243225097656 5.32362699508667 218 19.964340209960938 158.9036102294922 19.964340209960938 Z M 158.9036102294922 56.03565979003906 C 99.80722045898438 56.03565979003906 90.61446380615234 40.27037048339844 0 40.27037048339844 L 0 38 L 436 38 L 436 76 C 414.9879455566406 76 353.5277404785156 70.67637634277344 275.78314208984375 70.67637634277344 C 178.60243225097656 70.67637634277344 218 56.03565979003906 158.9036102294922 56.03565979003906 Z"
            }

            PropertyChanges {
                target: stream_chart
                visible: true
            }

            PropertyChanges {
                target: content1
                visible: true
            }

            PropertyChanges {
                target: chip2
                y: 24
            }

            PropertyChanges {
                target: widgets_Inventory
                height: 256
            }

            PropertyChanges {
                target: container
                visible: false
            }

            PropertyChanges {
                target: gadget1
                x: 124
                height: 12
                visible: false
                Layout.preferredHeight: 12
            }

            PropertyChanges {
                target: footer
                anchors.topMargin: 196
            }

            PropertyChanges {
                target: stream_3
                visible: false
            }

            PropertyChanges {
                target: chip
                y: 24
            }

            PropertyChanges {
                target: header
                anchors.bottomMargin: 136
            }

            PropertyChanges {
                target: gridOnly
                visible: false
            }

            PropertyChanges {
                target: curveChartGroup
                x: 0
                //y: -180
                visible: true
                anchors.bottomMargin: -40
                anchors.topMargin: -43
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
                target: stream_chart
                visible: false
            }

            PropertyChanges {
                target: element1
                visible: true
            }

            PropertyChanges {
                target: widgets_Inventory
                height: 128
            }

            PropertyChanges {
                target: footer
                visible: false
            }

            PropertyChanges {
                target: inventory2
                visible: true
            }

            PropertyChanges {
                target: header
                visible: false
            }

            PropertyChanges {
                target: gridOnly
                visible: false
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;uuid:"f70590d2-6067-582f-8d3c-1abe10dcf45c"}D{i:1;uuid:"e2cbc707-bfe8-57d2-af35-eb971b8da4c8"}
D{i:30;uuid:"92995fe6-f3d9-5ec7-9572-b54097f82a43"}D{i:31}
}
##^##*/

