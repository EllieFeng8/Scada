import QtQuick
import QtQuick3D 6.5
import QtQuick.Controls

Rectangle {
    id: widget_lineView
    width: 436
    height: 400
    visible: true
    property int statecontroller: 0
    color: "transparent"

    Component.onCompleted: WorkshopInstance.workshopCameraView = workshopCameraView

    Item {
        id: cameraBox
        y: 120
        height: 280
        visible: true
        anchors.left: parent.left
        anchors.right: parent.right
        View3D {
            id: workshopCameraView
            anchors.fill: parent
            anchors.margins: 5
            visible: true
            renderMode: View3D.Offscreen
            camera: WorkshopInstance.workshopCamera
            importScene: WorkshopInstance.workshopImportScene
            environment: WorkshopInstance.workshopEnvironment
        }
    }

    Item {
        id: __materialLibrary__
    }

    states: [
        State {
            name: "state_size_M"
            when: statecontroller === 2

            PropertyChanges {
                target: widget_lineView
                height: 544
            }

            PropertyChanges {
                target: cameraBox
                height: 280
                visible: true
                rotation: 0
            }
        },
        State {
            name: "state_size_L"
            when: statecontroller === 3
            extend: "state_size_M"

            PropertyChanges {
                target: widget_lineView
                height: 544
            }


        },
        State {
            name: "state_size_S"
            when: statecontroller === 1
            extend: "state_size_M"

            PropertyChanges {
                target: widget_lineView
                height: 256
            }

        },
        State {
            name: "state_size_XS"
            when: statecontroller === 0
            extend: "state_size_M"

            PropertyChanges {
                target: widget_lineView
                height: 128
            }
            PropertyChanges {
                target: cameraBox
                visible: false
            }
        }
    ]
}
