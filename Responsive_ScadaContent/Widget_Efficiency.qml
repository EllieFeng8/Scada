import QtQuick
import QtQuick.Layouts 1.15
import QtQuick.Studio.Components 1.0
import QtQuick3D 6.5


Rectangle {
    id: widgets_Efficiency

    property color fontColor: root.textColor
    color: "transparent"
    //    property alias elementText: element.text
    property int statecontroller: 1
    state: "state_size_XS"

    property int value: 2893
    property real average: 0
    property int maxVal: 100
    property int minVal: 0
    property real normalizedVal: Math.max(0, Math.min(1, (average - minVal)/(maxVal - minVal)))

    Rectangle {
        id: data_sheet_01
        height: parent.height
        width: parent.width
        anchors.fill: parent
        color: "transparent"
        anchors.margins: 24
        //visible: false

        Rectangle {
            id: data2
            visible: false
            color: "transparent"
            anchors.fill: parent
            anchors.margins: 0

            Text {
                id: data5value1
                color: root.textColor
                text: widgets_Efficiency.average.toLocaleString(Qt.locale("en_US"), 'g', 4) + "%"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 64
                font.pixelSize: 32
                font.weight: 600
            }

            Text {
                id: data5body1
                color: root.textColor
                text: qsTr("OEE")
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 48
                font.pixelSize: 14
                font.weight: 600
            }

            GaugeArc {
                id: gaugearc
                value: widgets_Efficiency.normalizedVal
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: data3
            visible: false
            color: "#00000000"
            anchors.fill: parent
            anchors.margins: 0

            Text {
                id: data5value2
                color: root.textColor
                text: widgets_Efficiency.average.toLocaleString(Qt.locale("en_US"), 'g', 4) + "%"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 64
                font.pixelSize: 56
                font.weight: 600
            }

            Text {
                id: data5body2
                color: root.textColor
                text: qsTr("OEE")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 56
                font.pixelSize: 14
                font.weight: 600
            }

            Rectangle {
                visible: true
                color: "#00000000"
                anchors.fill: parent
                anchors.margins: 0

                GaugeArc {
                    id: gaugearc1
                    value: widgets_Efficiency.normalizedVal
                    //anchors.horizontalCenterOffset: -142
                    anchors.centerIn: parent
                    width: 86
                    height: 86
                    arcWidth: 12
                }
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
        visible: false
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 80
        anchors.topMargin: 0


        GaugeArc {
            id: gaugearc2
            value: widgets_Efficiency.normalizedVal
            width: 280
            height: 280
        }

        Text {
            id: data5value
            text: widgets_Efficiency.average.toLocaleString(Qt.locale("en_US"), 'g', 4) + "%"

            color: root.textColor
            anchors.bottom: parent.bottom
            font.pixelSize: 48
            font.weight: 600
            anchors.bottomMargin: 64
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: data5body
            text: qsTr("OEE")
            anchors.bottom: parent.bottom
            color: root.textColor
            font.pixelSize: 18
            font.weight: 600
            anchors.bottomMargin: 48
            anchors.horizontalCenter: parent.horizontalCenter
        }

        RowLayout {
            id: rowLayout
            height: 64
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            spacing: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 40
            anchors.rightMargin: 0

            Rectangle {
                id: rectangle
                width: 24
                height: 100
                color: "#00ffffff"
                Layout.topMargin: 32

                Text {
                    id: jan
                    text: qsTr("Jan")
                    anchors.verticalCenter: parent.verticalCenter
                    font.weight: 600
                    font.pixelSize: 14
                    color: root.textColor
                    anchors.verticalCenterOffset: 12
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: janval
                    color: root.textColor
                    text: qsTr("1,7M")
                    anchors.verticalCenter: parent.verticalCenter
                    font.weight: 600
                    font.pixelSize: 24
                    anchors.verticalCenterOffset: -12
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }

            Rectangle {
                id: rectangle1
                width: 24
                height: 100
                color: "#00ffffff"
                Text {
                    id: jan1
                    text: qsTr("Feb")
                    color: root.textColor
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 14
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenterOffset: 12
                    font.weight: 600
                }

                Text {
                    id: janval1
                    color: root.textColor
                    text: qsTr("1,0M")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 24
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenterOffset: -12
                    font.weight: 600
                }
                Layout.topMargin: 32
            }

            Rectangle {
                id: rectangle2
                width: 24
                height: 100
                color: "#00ffffff"
                Text {
                    id: jan2
                    color: root.textColor
                    text: qsTr("Mar")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 14
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenterOffset: 12
                    font.weight: 600
                }

                Text {
                    id: janval2
                    color: root.textColor
                    text: qsTr("0,9M")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 24
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenterOffset: -12
                    font.weight: 600
                }
                Layout.topMargin: 32
            }

            Rectangle {
                id: rectangle3
                width: 24
                height: 100
                color: "#00ffffff"
                Text {
                    id: jan3
                    text: qsTr("Apr")
                    color: root.textColor
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 14
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenterOffset: 12
                    font.weight: 600
                }

                Text {
                    id: janval3
                    color: root.textColor
                    text: qsTr("1,5M")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 24
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenterOffset: -12
                    font.weight: 600
                }
                Layout.topMargin: 32
            }

            Rectangle {
                id: rectangle4
                width: 24
                height: 100
                color: "#00ffffff"
                Text {
                    id: jan4
                    text: qsTr("May")
                    color: root.textColor
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 14
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenterOffset: 12
                    font.weight: 600
                }

                Text {
                    id: janval4
                    color: root.textColor
                    text: qsTr("1,2M")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 24
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenterOffset: -12
                    font.weight: 600
                }
                Layout.topMargin: 32
            }

            Rectangle {
                id: rectangle5
                width: 24
                height: 100
                color: "#00ffffff"
                Text {
                    id: jan5
                    text: qsTr("Jun")
                    color: root.textColor
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 14
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenterOffset: 12
                    font.weight: 600
                }

                Text {
                    id: janval5
                    color: root.textColor
                    text: qsTr("2,2M")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 24
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenterOffset: -12
                    font.weight: 600
                }
                Layout.topMargin: 32
            }
        }
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
                color: root.textColor
                text: "Efficiency"
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
                    color: root.textColor
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
                target: efficiency3
                visible: false
            }

            PropertyChanges {
                target: data10
                visible: false
            }

            PropertyChanges {
                target: data2
                visible: true
            }

            PropertyChanges {
                target: data5
                visible: false
            }

            PropertyChanges {
                target: widgets_Efficiency

            }

            PropertyChanges {
                target: fillArc
                anchors.verticalCenterOffset: 0
                anchors.horizontalCenterOffset: 0
            }

            PropertyChanges {
                target: gaugearc
                width: 220
                height: 220
                visible: true
                rotation: 0
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
                target: data_sheet_01
                visible: true
            }

            PropertyChanges {
                target: widgets_Efficiency
                height: 544
            }


            PropertyChanges {
                target: data2
                visible: false
            }

            PropertyChanges {
                target: data5
                visible: true
            }

            PropertyChanges {
                target: gaugearc
                visible: false
            }

            PropertyChanges {
                target: gaugearc2
                visible: true
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
                target: widgets_Efficiency
                height: 256
            }

            PropertyChanges {
                target: data5
                visible: false
            }

            PropertyChanges {
                target: data3
                visible: true
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
                target: efficiency3
                visible: true
            }

            PropertyChanges {
                target: data10
                visible: true
            }

            PropertyChanges {
                target: widgets_Efficiency
                height: 128
            }

            PropertyChanges {
                target: data5
                visible: false
            }
        }
    ]
}



/*##^##
Designer {
    D{i:0;formeditorColor:"#00000c"}
}
##^##*/
