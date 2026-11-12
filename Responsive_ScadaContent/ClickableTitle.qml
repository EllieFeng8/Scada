import QtQuick 6.5
import QtQuick.Studio.Effects

Item {
    id: clickableTitle
    property string name: "Line 1"
    property bool visibility: true
    property string stateName: "Line1CamState"
    readonly property var alarm: SharedData.alarmForState(stateName)
    readonly property bool hasAlarm: alarm !== null
    readonly property color statusColor: hasAlarm ? (alarm.severity === 4 ? "#ff4154" : "#f3af3d") : "#23b26a"
    // 對應 MES 機台時：顯示人機名稱 + 即時產量（非機台站點 mesInfo 為 null，維持原本行為）
    readonly property var mesInfo: SharedData.machineInfoForState(stateName)
    readonly property string displayName: (mesInfo && mesInfo.machineName) ? mesInfo.machineName : name
    readonly property string detailText: {
        if (!mesInfo) return ""
        if (mesInfo.targetQuantity > 0) return "產量 " + Math.round(mesInfo.currentQuantity) + "/" + Math.round(mesInfo.targetQuantity)
        if (mesInfo.currentQuantity > 0) return "產量 " + Math.round(mesInfo.currentQuantity)
        return ""
    }
    property vector3d trackedWorldPosition: line1Pos.scenePosition
    property int visiblityDistance: 5000
    property bool maximized: false
    property real distance: 500
    width: nameText.implicitWidth+65
    //scale: distance > visiblityDistance? 1 : distance / visiblityDistance
    onDistanceChanged: scale = hasAlarm || maximized ? 1 : Math.max(0.35, 1- (1-0)/(3000-1)*(clickableTitle.distance-clickableTitle.visiblityDistance-1))
    onVisibilityChanged: visibility? opacityOff.running = true : opacityOn.running = true


    PropertyAnimation {
        id: opacityOff
        target: clickableTitle
        property: "opacity"
        running: false
        from: 1
        to: 0
        duration: 500
    }
    PropertyAnimation {
        id: opacityOn
        target: clickableTitle
        property: "opacity"
        running: false
        from: 0
        to: 1
        duration: 500
    }

    function updateState() {

        const scenePosition = sceneCamera.mapToViewport(trackedWorldPosition)
        clickableTitle.x = scenePosition.x * factory.width
        clickableTitle.y = scenePosition.y * factory.height
        clickableTitle.z = hasAlarm ? 20 : 1
        clickableTitle.visible = scenePosition.z > 0
        clickableTitle.maximized = hasAlarm || scenePosition.z <= visiblityDistance
        clickableTitle.distance = scenePosition.z

    }

    Component.onCompleted: updateState()


    Connections {
        target: sceneCamera
        function onSceneTransformChanged() { clickableTitle.updateState() }
    }
    Rectangle {
        id: rectangle
        width: nameText.implicitWidth+65
        height: 40
        color: master.__panelBackground_C
        //color: "white"
        radius: 15
        border.width: clickableTitle.hasAlarm ? 2 : 0
        border.color: clickableTitle.statusColor
    }

    Connections {
        target: factory
        function onWidthChanged() { clickableTitle.updateState() }
        function onHeightChanged() { clickableTitle.updateState() }
    }
    //onPressed: factory.state = "Line1CamState"


    height: 40

    layer.enabled: true
    layer.effect: DropShadowEffect {
        id: dropShadow
        radius: 5
        spread: 0
        verticalOffset: 0
        horizontalOffset: 0
    }


    Text {
        id: nameText
        x: 45
        y: 3
        width: implicitWidth
        height: 34
        color: master.__font_C
        //color: "black"
        text: {
            var s = clickableTitle.displayName
            if (clickableTitle.detailText !== "") s += "  ·  " + clickableTitle.detailText
            if (clickableTitle.hasAlarm) s += (clickableTitle.alarm.severity === 4 ? "  ·  嚴重" : "  ·  警告")
            return s
        }
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.family: "Hubot-Sans SemiBold"
        font.bold: false
        fontSizeMode: Text.HorizontalFit
        font.pointSize: 12
    }
    Rectangle {
        id: rectangle1
        x: 8
        y: 8
        width: 24
        height: 24
        color: clickableTitle.statusColor
        radius: 6
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        enabled: clickableTitle.opacity
        cursorShape: Qt.PointingHandCursor
        onClicked: {
            // 浮窗顯示在這個 icon/標籤旁邊
            factory.popupX = clickableTitle.x
            factory.popupY = clickableTitle.y + clickableTitle.height + 8
            factory.focusEquipment(clickableTitle.stateName)
        }
        onEntered:clickableTitle.z+=3
        onExited: clickableTitle.z-=3
    }

    Image {
        id: icon_size_24
        x: 13
        y: 12
        source: "GearIcon/assets/icon_size_16.svg"
        visible: !clickableTitle.hasAlarm
        fillMode: Image.PreserveAspectFit
    }

    Text {
        x: 8
        y: 8
        width: 24
        height: 24
        text: "!"
        visible: clickableTitle.hasAlarm
        color: "#181818"
        font.bold: true
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    states: [
        State {
            name: "maximized"
            when: clickableTitle.maximized

            PropertyChanges {
                target: mouseArea
                enabled: true
            }
        },
        State {
            name: "minimized"
            when: !clickableTitle.maximized


            PropertyChanges {
                target: nameText
                opacity: 0
            }

            PropertyChanges {
                target: mouseArea
                enabled: true   // 縮成 icon 時仍可點擊，點 icon 也會飛到目標
            }

            PropertyChanges {
                target: clickableTitle
                width: 40

            }

            PropertyChanges {
                target: rectangle
                width: 40
            }


        }
    ]
    transitions: [
        Transition {
            id: transition
            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 50
                    }

                    PropertyAnimation {
                        target: rectangle
                        property: "width"
                        duration: 500
                    }
                }
            }

            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 50
                    }

                    PropertyAnimation {
                        target: clickableTitle
                        property: "width"
                        duration: 500
                    }
                }
            }

            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 50
                    }

                    PropertyAnimation {
                        target: nameText
                        property: "opacity"
                        duration: 500
                    }
                }
            }
            to: "*"
            from: "*"
        }
    ]





}





/*##^##
Designer {
    D{i:0}D{i:18;transitionDuration:2000}
}
##^##*/
