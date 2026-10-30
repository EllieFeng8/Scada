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
        id: belt_material
        baseColor: "#ffcccccc"
        roughness: 0.5
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: basicWhiteGlass_material
        baseColor: "#80141414"
        roughness: 0.018181830644607544
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Blend
    }

    // Nodes:
    Node {
        id: root
        Model {
            id: elecQA_Low_MainMachine
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/elecQA_Low_MainMachine.mesh"
            materials: [
                basicWhite_material,
                belt_material
            ]
        }
        Model {
            id: elecQA_Low_Window
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/cube_249.mesh"
            materials: basicWhiteGlass_material
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
            target: elecQA_Low_MainMachine
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(1, 0, 5.96046e-08, 0)
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
            target: elecQA_Low_Window
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(1, 0, 5.96046e-08, 0)
            }
        }
    }
}
