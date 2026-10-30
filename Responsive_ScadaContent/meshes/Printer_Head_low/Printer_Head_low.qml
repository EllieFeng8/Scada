import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    property alias printerHead3DMaterials: node3DPrinter_PrintHead_low.materials
    id: node

    // Resources
    Skin {
        id: skin
        joints: [
            injector,
            crossBar,
            sideBar
        ]
        inverseBindPoses: [
            Qt.matrix4x4(-0.0181818, 0, 1.02593e-08, -0.281774, 0, 0.0181818, 0, -0.535823, -1.02593e-08, 0, -0.0181818, 0.156915, 0, 0, 0, 1),
            Qt.matrix4x4(4.53704e-16, 0.0181818, 5.70757e-09, -0.61191, 0.0181818, -1.44202e-10, -1.4453e-09, 0.746206, -1.4453e-09, 5.70757e-09, -0.0181818, 0.156916, 0, 0, 0, 1),
            Qt.matrix4x4(0.0181818, 5.65686e-15, -2.16744e-08, -0.15763, 2.16116e-15, 0.0181818, 6.55823e-09, -0.571098, 2.16744e-08, -6.53028e-09, 0.0181818, -0.156915, 0, 0, 0, 1)
        ]
    }

    // Nodes:
    Node {
        id: node3DPrinter_Armature
        rotation: Qt.quaternion(-1.62921e-07, 0, 1, 0)
        scale.x: 55
        scale.y: 55
        scale.z: 55
        Model {
            id: node3DPrinter_PrintHead_low
            source: "meshes/cube_099.mesh"
            skin: skin
        }
        Node {
            id: injector
            x: 0.28177395462989807
            y: 0.5358226299285889
            z: -0.1569155603647232
            rotation: Qt.quaternion(1, 0, 1.19209e-07, 0)
            scale.x: 1
            scale.y: 1
            scale.z: 1
        }
        Node {
            id: crossBar
            x: 0.7462061047554016
            y: 0.6119098663330078
            z: -0.156915545463562
            rotation: Qt.quaternion(0.707107, -1.98084e-07, 2.38884e-08, 0.707107)
            scale.x: 1
            scale.y: 1
            scale.z: 1
        }
        Node {
            id: sideBar
            x: -0.15763047337532043
            y: 0.571098268032074
            z: -0.15691553056240082
            rotation: Qt.quaternion(-4.33126e-07, 7.77819e-14, 1, -1.79967e-07)
            scale.x: 1
            scale.y: 1
            scale.z: 1
        }
    }

    // Animations:
    Timeline {
        startFrame: 0
        endFrame: 12500
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 12500
            from: 0
            to: 12500
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: injector
            property: "position"
            keyframeSource: "animations/injector_position_0.qad"
        }
        KeyframeGroup {
            target: crossBar
            property: "position"
            keyframeSource: "animations/crossBar_position_0.qad"
        }
        KeyframeGroup {
            target: sideBar
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-0.15763, 0.470081, -0.156916)
            }
        }
        KeyframeGroup {
            target: sideBar
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(4.33126e-07, -7.77818e-14, -1, 1.79967e-07)
            }
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: basicWhite_material
            objectName: "basicWhite_material"
            baseColor: "#ffa9a9a9"
            roughness: 0.5
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
    }
}
