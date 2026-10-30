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
            id: mill_Door_right_Med
            x: 1.8353272676467896
            y: 39.93320846557617
            z: -9.98517894744873
            rotation: Qt.quaternion(1, 0, 0, 0)
            scale.x: 55
            scale.y: 55
            scale.z: 55
            source: "meshes/mill_Door_right_Med.mesh"
            materials: [
                basicWhiteGlass_material,
                basicWhite_material
            ]
        }
        Model {
            id: mill_Door_left_Med
            x: 1.8353272676467896
            y: 39.93320846557617
            z: -9.98517894744873
            rotation: Qt.quaternion(1, 0, 0, 0)
            scale.x: 55
            scale.y: 55
            scale.z: 55
            source: "meshes/mill_Door_left_Med.mesh"
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
            target: mill_Door_right_Med
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.83533, 39.9332, -9.98518)
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
            target: mill_Door_left_Med
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.83533, 39.9332, -9.98518)
            }
        }
    }
}
