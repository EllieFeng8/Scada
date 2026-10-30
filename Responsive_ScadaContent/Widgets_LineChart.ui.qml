import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0
import QtGraphs

Rectangle {
    id: widgets_LineChart
    width: 436
    height: 400
    color: "transparent"
    property int statecontroller: 2
    property color textColor: master.__font_C
    property color secondaryTextColor: master.__fontS_C
    property color gridColor: master.__grids_C
    state: "size_M"

    Rectangle {
        id: line_chart
        height: 364
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 120
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        color: "transparent"

        GraphsView {
            id: lineChartView
            height: 364
            anchors.fill: parent
            marginLeft: 0
            theme: GraphsTheme {
                backgroundVisible: false
                plotAreaBackgroundColor: "transparent"
                grid.mainColor: gridColor
                grid.subColor: gridColor
                axisX.mainColor: gridColor
                axisY.mainColor: gridColor
                axisX.subColor: gridColor
                axisY.subColor: gridColor
                axisX.labelTextColor: secondaryTextColor
                axisY.labelTextColor: secondaryTextColor
            }
            axisX: ValueAxis {
                id: valueAxisX
                max: 80
                tickInterval: 10
            }
            axisY: ValueAxis {
                id: valueAxisY
                max: 150
                tickInterval: 30
            }
            SplineSeries {
                width: 4
                color: root.brandColor
                XYPoint {x: 0; y: 30}
                XYPoint {x: 10; y: 35}
                XYPoint {x: 20; y: 60}
                XYPoint {x: 30; y: 73}
                XYPoint {x: 40; y: 115}
                XYPoint {x: 50; y: 118}
                XYPoint {x: 60; y: 125}
                XYPoint {x: 70; y: 132}
            }
            SplineSeries {
                width: 4
                color: textColor
                XYPoint {x: 0; y: 20}
                XYPoint {x: 10; y: 28}
                XYPoint {x: 20; y: 45}
                XYPoint {x: 30; y: 55}
                XYPoint {x: 40; y: 80}
                XYPoint {x: 50; y: 85}
                XYPoint {x: 60; y: 90}
                XYPoint {x: 70; y: 95}
            }
        }
    }

    Rectangle {
        id: footer
        width: 436
        height: 62
        color: "transparent"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 484
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
                height: 14
                item_oneText: "SKU#322"
                Layout.preferredWidth: 76
                Layout.preferredHeight: 14
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            }

            Gadget {
                id: gadget1
                x: 124
                y: 24
                width: 76
                height: 14
                item_oneText: "SKU#333"
                fillColor: textColor
                Layout.preferredWidth: 76
                Layout.preferredHeight: 14
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            }

            Gadget {
                id: gadget2
                x: 224
                y: 24
                width: 76
                height: 14
                Layout.preferredWidth: 76
                Layout.preferredHeight: 14
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
        anchors.topMargin: 520
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
        id: element13
        height: 80
        visible: false
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.leftMargin: 120
        anchors.rightMargin: 24
        anchors.topMargin: 24
        ColumnLayout {
            id: data_layout
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            spacing: 8
            Text {
                id: this_is_the_title1
                x: 0
                y: 0
                width: 293
                height: 26
                color: "#181818"
                text: qsTr("This is the title")
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                lineHeight: 26
                lineHeightMode: Text.FixedHeight
                wrapMode: Text.Wrap
                font.weight: Font.DemiBold
                font.family: "Hubot Sans"
                Layout.preferredHeight: 26
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            }

            Rectangle {
                id: value1
                x: 0
                y: 34
                width: 292
                height: 46
                color: "transparent"
                Text {
                    id: element14
                    width: 123
                    height: 46
                    color: "#181818"
                    text: qsTr("1,000")
                    anchors.left: parent.left
                    anchors.top: parent.top
                    font.pixelSize: 48
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 46
                    lineHeightMode: Text.FixedHeight
                    wrapMode: Text.NoWrap
                    font.weight: Font.DemiBold
                    font.family: "Hubot Sans"
                }

                ComparativeBig {
                    id: comparativeBig
                    width: 80
                    height: 30
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.topMargin: 16
                    state: "status_OK_Orientation_Horizontal_Target_for_Incresing_Dot_False"
                }
                Layout.preferredHeight: 46
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            }
        }
    }

    states: [
        State {
            name: "size_L"
            when: statecontroller === 3

            PropertyChanges {
                target: gadget2
                x: 224
            }

            PropertyChanges {
                target: grabber
                anchors.topMargin: 520
            }

            PropertyChanges {
                target: element13
                visible: false
            }

            PropertyChanges {
                target: footer
                visible: true
                anchors.topMargin: 484
            }

            PropertyChanges {
                target: line_chart
                height: 364
                visible: true
                clip: true
            }

            PropertyChanges {
                target: widgets_LineChart
                height: 546
            }

        },
        State {
            name: "size_S"
            when: statecontroller === 1

            PropertyChanges {
                target: gadget2
                x: 216
                visible: false
            }

            PropertyChanges {
                target: grabber
                anchors.topMargin: 232
            }

            PropertyChanges {
                target: footer
                visible: true
                anchors.topMargin: 196
            }

            PropertyChanges {
                target: line_chart
                height: 76
                visible: true
                clip: false
            }

            PropertyChanges {
                target: widgets_LineChart
                height: 258
            }

            PropertyChanges {
                target: element13
                visible: false
            }

            PropertyChanges {
                target: lineChartView
                theme.gridVisible: false
                theme.labelsVisible: false
                theme.axisX.mainColor: "transparent"
                theme.axisY.mainColor: "transparent"
                theme.axisX.subColor: "transparent"
                theme.axisY.subColor: "transparent"
                theme.axisX.labelTextColor: "transparent"
                theme.axisY.labelTextColor: "transparent"

                /* target: widgets_LineChart */
                /* gridVisible: false */
            }
        },
        State {
            name: "size_M"
            when: statecontroller === 2

            PropertyChanges {
                target: gadget2
                x: 224
                visible: false
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
                target: line_chart
                height: 220
                visible: true
                clip: true
            }

            PropertyChanges {
                target: widgets_LineChart
                height: 402
            }

            PropertyChanges {
                target: element13
                visible: false
            }

        },
        State {
            name: "size_XS"
            when: statecontroller === 0

            PropertyChanges {
                target: grabber
                anchors.topMargin: 104
            }

            PropertyChanges {
                target: element13
                visible: false
            }

            PropertyChanges {
                target: footer
                visible: false
                anchors.topMargin: 484
            }

            PropertyChanges {
                target: line_chart
                height: 364
                visible: false
                clip: true
            }

            PropertyChanges {
                target: widgets_LineChart
                height: 128
            }

            PropertyChanges {
                target: widgets_LineChart
                height: 128
            }

            PropertyChanges {
                target: gadget2
                x: 224
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;uuid:"4811447e-2c64-537e-8b40-b7706e32eb0f"}D{i:1;uuid:"2b650314-9be5-5830-afef-28a340166408"}
D{i:2;uuid:"546a6849-d7f6-5385-b236-4950eacef442"}D{i:3;uuid:"e6b52775-0226-5a2a-8583-e15f258cbe9e"}
D{i:4;uuid:"e6b52775-0226-5a2a-8583-e15f258cbe9e_VERTICAL"}D{i:5;uuid:"b70a4910-c76b-5152-bce7-bcbb9a574af2"}
D{i:6;uuid:"b70a4910-c76b-5152-bce7-bcbb9a574af2_VERTICAL"}D{i:7;uuid:"2c0200f3-4873-5e0d-98c3-faea3f94e40d"}
D{i:8;uuid:"2c0200f3-4873-5e0d-98c3-faea3f94e40d_HORIZONTAL"}D{i:9;uuid:"48bfa782-4809-5fb7-b62b-8a01e931cd9f"}
D{i:10;uuid:"b38744ba-464b-5bd0-a3ca-e297c2f7761d"}D{i:11;uuid:"9a0c8d91-eb1d-5235-98c0-6211b41b9f00"}
D{i:12;uuid:"b551eb20-a7bd-58de-837c-d9e65d4f0f59"}D{i:36;uuid:"91636d04-bcc0-5cad-8cc3-182f6878ce1c"}
D{i:70;uuid:"111d86df-5ba7-5bcd-8e48-e100e5543c70"}D{i:76;uuid:"77d1495f-1c20-56d8-a817-d984d3e8de6d"}
}
##^##*/

