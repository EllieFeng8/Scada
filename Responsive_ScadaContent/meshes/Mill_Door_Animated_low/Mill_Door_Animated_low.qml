import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: basicWhiteGlass_material
        baseColor: "#80141414"
        roughness: 0.018181830644607544
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Blend
    }
    PrincipledMaterial {
        id: basicWhite_material
        baseColor: "#ffa9a9a9"
        roughness: 0.5
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }

    // Nodes:
    Node {
        id: root
        Model {
            id: mill_door_right_low
            x: 1.9035959243774414
            y: 41.36726379394531
            z: -9.539806365966797
            rotation: Qt.quaternion(1, 0, 0, 0)
            scale.x: 55
            scale.y: 55
            scale.z: 55
            source: "meshes/mill_door_right_low.mesh"
            materials: [
                basicWhiteGlass_material,
                basicWhite_material
            ]
        }
        Model {
            id: mill_door_left_low
            x: 1.9035959243774414
            y: 41.36726379394531
            z: -9.539806365966797
            rotation: Qt.quaternion(1, 0, 0, 0)
            scale.x: 55
            scale.y: 55
            scale.z: 55
            source: "meshes/mill_door_left_low.mesh"
            materials: [
                basicWhiteGlass_material,
                basicWhite_material
            ]
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
            target: mill_door_right_low
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.9036, 41.3673, -9.53981)
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
            target: mill_door_left_low
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.9036, 41.3673, -9.53981)
            }
        }
    }
}
