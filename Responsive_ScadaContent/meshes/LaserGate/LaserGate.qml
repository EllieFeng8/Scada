import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: basicWhite_material
        baseColor: "#ffa9a9a9"
        roughness: 0.5
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: redLine_material
        baseColor: "#ffcccccc"
        roughness: 0.5
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }

    // Nodes:
    Node {
        id: root
        Model {
            id: lightScreenGate
            y: -0.007625579833984375
            z: 59.1333122253418
            source: "meshes/lightScreenGate.mesh"
            materials: basicWhite_material
        }
        Model {
            id: lightScreenLaser
            y: -0.007625579833984375
            z: 59.1333122253418
            source: "meshes/lightScreenLaser.mesh"
            materials: redLine_material
        }
    }

    // Animations:
    Timeline {
        startFrame: 0
        endFrame: 0
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 0
            from: 0
            to: 0
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: lightScreenGate
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, -0.00762558, 59.1333)
            }
        }
    }
    Timeline {
        startFrame: 0
        endFrame: 0
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 0
            from: 0
            to: 0
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: lightScreenLaser
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, -0.00762558, 59.1333)
            }
        }
    }
}
