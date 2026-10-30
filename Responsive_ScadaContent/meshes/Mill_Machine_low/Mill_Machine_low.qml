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

    // Nodes:
    Model {
        id: mill_Base_low
        x: -11.756457328796387
        z: -67.72415161132812
        rotation: Qt.quaternion(1, 0, 0, 0)
        scale.x: 55
        scale.y: 55
        scale.z: 55
        source: "meshes/cube_084.mesh"
        materials: basicWhite_material
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
            target: mill_Base_low
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-11.7565, 0, -67.7242)
            }
        }
    }
}
