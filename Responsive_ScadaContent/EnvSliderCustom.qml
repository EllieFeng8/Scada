import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Studio.Components
import QtQuick.Studio.Effects


Item {
    id: mainItem
    visible: true

    property bool valueLabelVisible: true

    property int stateController: 1

    width: 180
    height: 8

    property real minValue: 0
    property real maxValue: 100
    property real currentValue: 100
    property real currentValueR: 10.0

    property int ratioError: 10
    property int ratioWarning: 2
    property int ratioGood: 25

    property color envSliderWarning: master.warning
    property color envSliderError: master.error
    property color envSliderGood: master.good

    Item {
        id: environmentSlider
        width: parent.width
        height: 24
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter



        Row {
            id: colorRow
            anchors.fill: parent
            clip: false

            RectangleItem {
                id: colorRect
                width: parent ? parent.width * ratioError / (ratioError + ratioWarning + ratioGood) : 0
                height: 24
                bottomRightRadius: 0
                topRightRadius: 0
                strokeColor: "#00ff0000"
                strokeWidth: 0
                fillColor: envSliderError
            }

//width: parent ? parent.width * ratioError / (ratioError + ratioWarning + ratioGood) : 0

            RectangleItem {
                id: mainRect
                width: parent ? parent.width * ratioWarning / (ratioError + ratioWarning + ratioGood) : 0
                height: 24
                radius: 0
                clip: false
                strokeColor: "#00ff0000"
                strokeWidth: 0
                fillColor: envSliderWarning
            }


            RectangleItem {
                id: subRect
                width: parent ? parent.width * ratioGood / (ratioError + ratioWarning + ratioGood) : 0
                height: 24
                bottomLeftRadius: 0
                topLeftRadius: 0
                strokeColor: "#00ff0000"
                strokeWidth: 0
                fillColor: envSliderGood
            }








        }

        Item {
            id: rulerItem
            visible: true
            anchors.fill: parent
            anchors.rightMargin: 8
            anchors.leftMargin: 8

            Repeater {
                id: rulerRepeater
                anchors.fill: parent
                model: 14

                Rectangle {
                    x: colorRow.width / 14 * index
                    width: index % 3 == 0 ? 2 : 1
                    height: index % 3 == 0 ? 10 : 5
                    color: "#5b5b5b"
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }

        // Handle



        SvgPathItem {
            id: handle
            width: 44
            height: 12
            path: "M 10 11.547005653381348 L 0 5.773502826690674 L 10 0 L 10 4.773502826690674 L 44 4.773502826690674 L 44 6.773502826690674 L 10 6.773502826690674 L 10 11.547005653381348 Z" // Replace this with the desired SVG path data for the handle

            antialiasing: true
            fillColor: master.__font_C
            rotation: -90
            strokeWidth: 2
            strokeColor: "transparent"
            anchors.horizontalCenterOffset: 141
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 3
            property real handleX: (currentValue - minValue) / (maxValue - minValue) * (colorRow.width - handle.width)
            x: 0

            Binding {
                target: handle
                property: "x"
                value: handle.handleX
            }
        }

        // Percentage Label



        Text {
            id: valueLabel
            visible: valueLabelVisible
            color: master.__font_C
            text: Math.round(currentValue).toString()
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 14
            font.family: "Hubot-sans"
            anchors.verticalCenterOffset: 35
            anchors.horizontalCenter: handle.horizontalCenter
            font.weight: Font.Medium

        }

        RectangleItem {
            id: rectangle
            x: 143
            y: 0
            width: 11
            height: 24
            visible: false
            radius: 0
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            fillColor: "#f3af3d"
            anchors.rightMargin: -1
            strokeWidth: -1
            strokeColor: "#00ff0000"
            adjustBorderRadius: true
        }

        RectangleItem {
            id: rectangle1
            x: 41
            y: 0
            width: 11
            height: 24
            visible: false
            radius: 0
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            fillColor: "#f3af3d"
            anchors.leftMargin: -12
            adjustBorderRadius: true
            strokeWidth: -1
            strokeColor: "#00ff0000"
        }



    }

    states: [
        State {
            name: "small_1"
            when: mainItem.stateController === 1

            PropertyChanges {
                target: mainItem
                maxValue: 30
                currentValue: 0
            }

            PropertyChanges {
                target: colorRect
                height: 8
            }

            PropertyChanges {
                target: mainRect
                height: 8
                fillColor: envSliderGood
            }

            PropertyChanges {
                target: subRect
                height: 8
                fillColor: envSliderError
            }

            PropertyChanges {
                target: rectangle
                width: 7
                height: 8
                visible: true
                clip: true
                fillColor: envSliderWarning
                z: 100
                anchors.rightMargin: 54
            }

            PropertyChanges {
                target: rectangle1
                width: 7
                height: 8
                visible: true
                fillColor: envSliderWarning
                clip: true
                z: 100
                anchors.leftMargin: 69
            }

            PropertyChanges {
                target: environmentSlider
                width: parent.width
                height: 8
            }

            PropertyChanges {
                target: rulerItem
                visible: false
            }

            PropertyChanges {
                target: handle
                scale: 0.8
            }

            PropertyChanges {
                target: valueLabel
                text: Math.round(currentValue).toString()+"°C"
            }
        },
        State {
            name: "big"
            when: mainItem.stateController === 2

            PropertyChanges {
                target: mainItem
                width: 388
                height: 24
            }

            PropertyChanges {
                target: rectangle
                visible: false
            }

            PropertyChanges {
                target: rectangle1
                visible: false
            }
        },
        State {
            name: "small_2"
            when: mainItem.stateController === 3

            PropertyChanges {
                target: environmentSlider
                width: parent.width
                height: 8
            }

            PropertyChanges {
                target: colorRect
                width: parent ? parent.width * ratioGood / (ratioError + ratioWarning + ratioGood) : 0
                height: 8
                fillColor: envSliderGood
            }

            PropertyChanges {
                target: mainRect
                height: 8
            }

            PropertyChanges {
                target: rectangle
                height: 8
                visible: false
            }

            PropertyChanges {
                target: rectangle1
                height: 8
                visible: false
            }

            PropertyChanges {
                target: subRect
                width: parent ? parent.width * ratioError / (ratioError + ratioWarning + ratioGood) : 0
                height: 8
                fillColor: envSliderError
            }

            PropertyChanges {
                target: rulerItem
                visible: false
            }

            PropertyChanges {
                target: handle
                scale: 0.8
            }

            PropertyChanges {
                target: valueLabel
                text: Math.round(currentValue).toString() +"%"
            }
        },

        State {
            name: "small_3"
            when: mainItem.stateController === 5

            PropertyChanges {
                target: environmentSlider
                width: parent.width
                height: 8
            }

            PropertyChanges {
                target: colorRect
                width: parent ? parent.width * ratioGood / (ratioError + ratioWarning + ratioGood) : 0
                height: 8
                fillColor: envSliderGood
            }

            PropertyChanges {
                target: mainRect
                height: 8
            }

            PropertyChanges {
                target: rectangle
                height: 8
                visible: false
            }

            PropertyChanges {
                target: rectangle1
                height: 8
                visible: false
            }

            PropertyChanges {
                target: subRect
                width: parent ? parent.width * ratioError / (ratioError + ratioWarning + ratioGood) : 0
                height: 8
                fillColor: envSliderError
            }

            PropertyChanges {
                target: rulerItem
                visible: false
            }

            PropertyChanges {
                target: handle
                scale: 0.8
            }

            PropertyChanges {
                target: valueLabel
                text: Math.round(currentValue).toString()
            }
        },
        State {
            name: "realValue"
            when: mainItem.stateController === 4

            PropertyChanges {
                target: environmentSlider
                width: parent.width
                height: 8
            }

            PropertyChanges {
                target: colorRect
                width: parent ? parent.width * ratioGood / (ratioError + ratioWarning + ratioGood) : 0
                height: 8
                fillColor: envSliderGood
            }

            PropertyChanges {
                target: mainRect
                height: 8
            }

            PropertyChanges {
                target: rectangle
                height: 8
                visible: false
            }

            PropertyChanges {
                target: rectangle1
                height: 8
                visible: false
            }

            PropertyChanges {
                target: subRect
                width: parent ? parent.width * ratioError / (ratioError + ratioWarning + ratioGood) : 0
                height: 8
                fillColor: envSliderError
            }

            PropertyChanges {
                target: rulerItem
                visible: false
            }


            PropertyChanges {
                target: handle
                scale: 0.8
                handleX: (currentValueR - minValue) / (maxValue - minValue) * (colorRow.width - handle.width)
            }

            PropertyChanges {
                target: valueLabel
                text: {

    if (currentValueR % 1 === 0) {
        return Math.round(currentValueR).toString()+ "%";
    } else {

        return currentValueR.toFixed(2)+ "%";
    }
                }
            }

            PropertyChanges {
                target: mainItem
                currentValueR: 1
                maxValue: 4
            }
        }
    ]
}



