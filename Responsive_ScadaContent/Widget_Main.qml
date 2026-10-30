import QtQuick
import QtQuick.Controls
import QtQuick3D
//import Widget_Main
import QtQuick3D.Particles3D


import QtQuick.Studio.DesignEffects
Rectangle {
    id: widget

    property string title: "Title"
    property string subtitle: "Subtitle"
    property string value: "100"
    property string valueChange: "2%"
    property color textColor: "#bababa"
    property bool positiveStatus: true

    property color idleColor: "#00313131"
    property color overlapColor: "#ffffff"

    property string iconPath: "images/WidgetIcons/speedometer.png"

    state: "state_size_S"
    property int widgetType: 0

    property int minimumWidth: 400
    property int spacing: 32
    property int columns: root.mobileUI ? 1 : parent.width/(minimumWidth+spacing)

    width: Math.max(minimumWidth, (parent.width/columns)-spacing) // widgets.width / widgets.columns
    height: 128 //widget.gridSize
    color: root.mainColor
    radius: 8
    border.color: "#00000000"
    border.width: 2
    property int statecontroller: 0
    property real gridSize: 128
    property bool focused: false
    property real oldX: 0
    property real oldY: 0

    property int widgetIndex: Positioner.index

    property bool moving: false

    property bool overlapped: root.activeWidget != widget.widgetIndex
                              && (root.mousePosX > widget.x
                                  && root.mousePosX < widget.x + widget.width)
                              && (root.mousePosY > widget.y
                                  && root.mousePosY < widget.y + widget.height)

    Connections {
        target: widget
        onOverlappedChanged: root.targetPos
                             = widget.overlapped ? widget.widgetIndex : root.targetPos
    }

    Item {
        id: shared
        anchors.fill: parent

        Rectangle {
            id: icon
            x: 24
            y: 24
            width: 80
            height: 80
            color: "#23B26A"
            radius: 12

            Image {
                id: image
                anchors.fill: parent
                anchors.leftMargin: 11
                anchors.rightMargin: 11
                anchors.topMargin: 11
                anchors.bottomMargin: 11
                source: (widget.iconPath)
                sourceSize.height: 48
                sourceSize.width: 48
                fillMode: Image.PreserveAspectFit
            }
        }

        Text {
            id: title
            x: 121
            y: 21
            text: widget.title
            font.pixelSize: 18
            color: root.textColor
            font.family: "Hubot Sans"
            font.weight: 600
        }
        Text {
            id: subtitle
            color: "#5B5B5B"
            text: widget.subtitle
            font.pixelSize: 14
            font.weight: 600
        }
        Text {
            id: value
            x: 119
            y: 50
            color: root.textColor
            text: widget.value
            font.pixelSize: 48
            font.weight: 600
            font.family: "Hubot Sans"
        }

        Row {
            id: change
            y: 97
            height: 73
            anchors.right: parent.right
            anchors.rightMargin: 24

            Rectangle {
                id: changeicon
                width: 22
                height: 22
                color: positiveStatus ? "#23B26A" : "red"
                radius: 11

                Image {
                    id: changeimage
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/WidgetIcons/deltaArrow.png"
                    anchors.verticalCenterOffset: 0
                    anchors.horizontalCenterOffset: 1
                    anchors.horizontalCenter: parent.horizontalCenter
                    sourceSize.height: 16
                    sourceSize.width: 17
                    mirrorVertically: positiveStatus ? false : true
                    fillMode: Image.PreserveAspectFit
                }
            }

            Text {
                id: changevalue

                x: 29
                text: widget.valueChange
                font.pixelSize: 24
                bottomPadding: 6
                leftPadding: 8
                font.weight: 700
                font.family: "Hubot Sans"
                color: root.textColor
            }
        }
    }

    opacity: (root.movingWidget && widget.overlapped) ? 0.5 : 1.0

    Loader {
        id: content
        anchors.fill: parent
        onLoaded: {
            binderPerformance.target = content.item;
            binderEfficiency.target = content.item;
            binderRecycle.target = content.item;
            binderEnvironment.target = content.item;
        }
    }
    Component.onCompleted: {
        content.setSource(
            widget.widgetType === StateMaster.WTYPE.WTYPE_EFFICIENCY ? "Widget_Efficiency.qml"
                : widget.widgetType === StateMaster.WTYPE.WTYPE_WORKSHOP ? "Widget_WorkshopView.qml"
                : widget.widgetType === StateMaster.WTYPE.WTYPE_ENVIRONMENT ? "Widgets_Environmental_monitoring.qml"
                : widget.widgetType === StateMaster.WTYPE.WTYPE_FINANCIAL ? "Widgets_Financial.ui.qml"
                : widget.widgetType === StateMaster.WTYPE.WTYPE_INVENTORY ? "Widgets_Inventory.ui.qml"
                : widget.widgetType === StateMaster.WTYPE.WTYPE_MTBF ? "Widgets_MTBF.ui.qml"
                : widget.widgetType === StateMaster.WTYPE.WTYPE_PERFORMANCE ? "Widget_Performance.ui.qml"
                : widget.widgetType === StateMaster.WTYPE.WTYPE_RECYCLE ? "Widget_Recycling.ui.qml"
                : widget.widgetType === StateMaster.WTYPE.WTYPE_SERVICE ? "Widget_Service.ui.qml"
                : widget.widgetType === StateMaster.WTYPE.WTYPE_LINECHART ? "Widgets_LineChart.ui.qml"
                : "Widgets_BarChart.ui.qml",
            {"statecontroller": widget.statecontroller}
        )
    }
    Binding {
        id: binderPerformance
        when: widget.widgetType === StateMaster.WTYPE.WTYPE_PERFORMANCE
        property: "gauge1Value"
        value: SharedData.performance[2]
    }
    Binding {
        id: binderEfficiency
        when: widget.widgetType === StateMaster.WTYPE.WTYPE_EFFICIENCY
        property: "average"
        value: SharedData.assignment ? SharedData.assignment.oee : 0
    }
    Binding {
        id: binderRecycle
        when: widget.widgetType === StateMaster.WTYPE.WTYPE_RECYCLE
        property: "recycleSliderValue"
        value: SharedData.recycle[2]
    }
    Binding {
        id: binderEnvironment
        when: widget.widgetType === StateMaster.WTYPE.WTYPE_ENVIRONMENT
        property: "sliderValue"
        // The existing slider uses a 0..100 scale; keep the source ratio unrounded.
        value: Math.max(0, Math.min(1, SharedData.productionProgress)) * 100
    }

    MouseArea {
        id: mouseScaler
        anchors.fill: parent
        preventStealing: true
        drag.threshold: 1
        pressAndHoldInterval: 1

        property real oldX: 0
        property real oldY: 0

        property real oldWidth: 0
        property real oldHeight: 0

        Connections {
            target: mouseScaler
            onReleased: {
                widget.statecontroller = Math.min(
                    3, Math.round(widget.height / widget.gridSize) - 1)
                content.item.statecontroller = widget.statecontroller
            }
        }

        Connections {
            target: mouseScaler
            onMouseYChanged: widget.height = Math.max(
                                 mouseScaler.oldHeight - (mouseScaler.oldY - mouseScaler.mouseY),
                                 widget.gridSize)
        }

        Connections {
            target: mouseScaler
            onPressAndHold: mouseScaler.oldY = mouseScaler.mouseY
        }
        Connections {
            target: mouseScaler
            onPressAndHold: mouseScaler.oldHeight = widget.height
        }
    }


    /*
    Text {
        id: text1
        text: mouseScaler.height
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 36
        anchors.verticalCenterOffset: 1
        anchors.horizontalCenterOffset: -84
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: text2
        x: 3
        y: 3
        text: widget.statecontroller
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 36
        anchors.verticalCenterOffset: 1
        anchors.horizontalCenterOffset: 38
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: text3
        x: 4
        y: 4
        text: widget.widgetIndex
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 36
        anchors.verticalCenterOffset: 1
        anchors.horizontalCenterOffset: 109
        anchors.horizontalCenter: parent.horizontalCenter
    }*/
    MouseArea {
        id: mouseMover
        anchors.fill: parent
        drag.threshold: 1
        anchors.bottomMargin: 16
        drag.target: widget
        pressAndHoldInterval: 1

        property real oldX: 0
        property real oldY: 0

        property real oldWidth: 0
        property real oldHeight: 0

        Connections {
            target: mouseMover
            onPositionChanged: widgets.widgetpos.x = widget.x + mouseMover.mouseX
        }
        Connections {
            target: mouseMover
            onPositionChanged: widgets.widgetpos.y = widget.y + mouseMover.mouseY
        }
        Connections {
            target: mouseMover
            onPositionChanged: root.mousePosX = widget.x + mouseMover.mouseX
        }
        Connections {
            target: mouseMover
            onPositionChanged: root.mousePosY = widget.y + mouseMover.mouseY
        }
        Connections {
            target: mouseMover
            onPressed: root.activeWidget = widget.widgetIndex
        }
        Connections {
            target: mouseMover
            onPressed: root.targetPos = widget.widgetIndex
        }

        Connections {
            target: mouseMover
            onPressed: widget.oldX = widget.x
        }
        Connections {
            target: mouseMover
            onPressed: widget.oldY = widget.y
        }

        Connections {
            target: mouseMover
            onPressed: root.movingWidget = true
        }

        Connections {
            target: mouseMover
            onReleased: listmodel.move(widget.widgetIndex, root.targetPos, 1)
        }

        Connections {
            target: mouseMover
            onReleased: root.movingWidget = false
        }


    }

    Item {
        id: __materialLibrary__
    }

    /*DesignEffect {
        backgroundBlurRadius: 10
        backgroundLayer: widget
        effects: [
            DesignDropShadow {
                color: "#23000000"
                offsetX: 1
                spread: 2
            },
            DesignInnerShadow {
                color: "#0e000000"
                offsetX: 13
                offsetY: 14
                blur: 45
                spread: 6
            }
        ]
    }*/



    states: [
        State {
            name: "state_size_XS"
            when: widget.statecontroller === 0

            PropertyChanges {
                target: widget
                height: 128
            }

            PropertyChanges {
                target: subtitle
                visible: false
            }

            PropertyChanges {
                target: change
                x: 338
                y: 79
            }

            PropertyChanges {
                target: changeimage
                mipmap: true
            }
        },
        State {
            name: "state_size_S"
            when: widget.statecontroller === 1
            PropertyChanges {
                target: widget
                height: 256
            }

            PropertyChanges {
                target: icon
                x: 21
                y: 18
                width: 27
                height: 27
                radius: 6
            }

            PropertyChanges {
                target: image
                anchors.leftMargin: 4
                anchors.rightMargin: 4
                anchors.topMargin: 4
                anchors.bottomMargin: 4
            }

            PropertyChanges {
                target: title
                x: 56
            }

            PropertyChanges {
                target: value
                x: 23
                y: 52
                font.pixelSize: 26
            }

            PropertyChanges {
                target: subtitle
                x: 23
                y: 83
                font.pixelSize: 14
                font.weight: Font.Medium
                font.family: "Hubot Sans"
            }

            PropertyChanges {
                target: change
                x: 343
                y: 80
            }
        },
        State {
            name: "state_size_M"
            when: widget.statecontroller === 2
            extend: "state_size_S"
            PropertyChanges {
                target: widget
                height: 400
            }

            PropertyChanges {
                target: title
                x: 56
            }
        },
        State {
            name: "state_size_L"
            extend: "state_size_S"
            when: widget.statecontroller === 3

            PropertyChanges {
                target: widget
                height: 544
            }

            PropertyChanges {
                target: title
                x: 56
            }
        }
    ]
}
