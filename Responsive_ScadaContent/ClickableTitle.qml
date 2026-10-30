import QtQuick 6.5
import QtQuick.Studio.Effects

Item {
    id: clickableTitle
    property string name: "Line 1"
    property bool visibility: true
    property string stateName: "Line1CamState"
    property vector3d trackedWorldPosition: line1Pos.scenePosition
    property int visiblityDistance: 5000
    property bool maximized: false
    property real distance: 500
    width: nameText.implicitWidth+65
    //scale: distance > visiblityDistance? 1 : distance / visiblityDistance
    onDistanceChanged: maximized? scale = 1 : scale = 1- (1-0)/(3000-1)*(clickableTitle.distance-clickableTitle.visiblityDistance-1)+0
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
        clickableTitle.z = scenePosition.z
        clickableTitle.maximized = scenePosition.z > visiblityDistance? false : true
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
        text: parent.name
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
        color: "#23b26a"
        radius: 6
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        enabled: clickableTitle.opacity
        onClicked: factory.state = clickableTitle.stateName
        onEntered:clickableTitle.z+=3
        onExited: clickableTitle.z-=3
    }

    Image {
        id: icon_size_24
        x: 13
        y: 12
        source: "GearIcon/assets/icon_size_16.svg"
        fillMode: Image.PreserveAspectFit
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
                enabled: false
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
