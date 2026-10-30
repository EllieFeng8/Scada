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
    Model {
        id: welding_med
        z: -25
        rotation: Qt.quaternion(0.707107, 0, 0.707107, 0)
        scale.x: 1
        scale.y: 1
        scale.z: 1
        source: "meshes/welding_med.mesh"
        materials: [
            basicWhite_material,
            belt_material,
            basicWhiteGlass_material
        ]
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
            target: welding_med
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0, -25)
            }
        }
    }
}
