import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node
property alias millArmMedMaterials: mill_ArmCeiling_Med.materials
    property bool isPaused
    // Resources
    Skin {
        id: skin
        joints: [
            base,
            armBase,
            arm1,
            arm2,
            arm3,
            armIK
        ]
        inverseBindPoses: [
            Qt.matrix4x4(-0.0181818, 0, 7.08026e-09, -0.293342, 0, 0.0181818, 0, -1.13155, -7.08026e-09, 0, -0.0181818, -1.22361, 0, 0, 0, 1),
            Qt.matrix4x4(9.12973e-10, 0.00590776, 0.0171953, 0.855838, -1.17182e-08, -0.0171953, 0.00590776, 1.27478, 0.0181818, 1.85454e-09, -1.68238e-09, 0.293341, 0, 0, 0, 1),
            Qt.matrix4x4(5.20799e-10, -0.0148207, 0.010532, 1.30209, -9.66584e-09, -0.010532, -0.0148207, -0.508154, 0.0181818, 8.05906e-09, -1.28072e-08, 0.29334, 0, 0, 0, 1),
            Qt.matrix4x4(2.47686e-09, 0.00798831, 0.016333, 0.930639, -1.08098e-08, -0.016333, 0.00798831, 1.16658, 0.0181818, 2.43475e-09, -2.10214e-09, 0.293341, 0, 0, 0, 1),
            Qt.matrix4x4(-2.48022e-09, 0.0179644, 0.00280317, -0.256881, 3.84107e-10, -0.00280316, 0.0179644, 1.31457, 0.0181818, 1.57434e-08, -4.62365e-09, 0.293341, 0, 0, 0, 1),
            Qt.matrix4x4(6.57453e-09, 0.0079883, 0.016333, 0.930639, 0.0181818, 3.58706e-10, -6.58535e-09, 0.293342, -3.21555e-09, 0.016333, -0.0079883, -0.963322, 0, 0, 0, 1)
        ]
    }

    // Nodes:
    Node {
        id: root
        Model {
            id: mill_ArmCeiling_Med
            source: "meshes/cube_032.mesh"

            receivesReflections: true
            skin: skin
            opacity: 1
        }
        Node {
            id: millArmature_Med
            x: -16.133825302124023
            y: 51.01365280151367
            z: -67.2984848022461
            rotation: Qt.quaternion(1, 0, 0, 0)
            scale.x: 55
            scale.y: 55
            scale.z: 55
            Node {
                id: base
                x: 2.9802322387695312e-08
                y: 0.20402628183364868
                z: 1.1920928955078125e-07
                rotation: Qt.quaternion(-1.94707e-07, 0, 1, 0)
                scale.x: 1
                scale.y: 1
                scale.z: 1
                Node {
                    id: armBase
                    x: -2.945603227999527e-08
                    y: -0.20402628183364868
                    z: -1.241868829993109e-07
                    rotation: Qt.quaternion(-0.116469, 0.697449, 0.11647, -0.697449)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    Node {
                        id: arm1
                        x: 1.507258140520662e-08
                        y: 0.16969265043735504
                        z: -2.225905149089158e-08
                        rotation: Qt.quaternion(0.800928, 6.88135e-08, -3.43472e-07, 0.598761)
                        scale.x: 1
                        scale.y: 1
                        scale.z: 1
                        Node {
                            id: arm2
                            x: 5.120216073351003e-08
                            y: 0.2209148406982422
                            z: 1.1285322898402228e-08
                            rotation: Qt.quaternion(0.762306, -7.73359e-08, 3.2343e-07, -0.647217)
                            scale.x: 1
                            scale.y: 1
                            scale.z: 1
                            Node {
                                id: arm3
                                x: 4.944567422171531e-08
                                y: 0.2032545506954193
                                z: -1.896943047086097e-09
                                rotation: Qt.quaternion(0.886736, 2.7301e-07, 2.53418e-07, -0.462277)
                                scale.x: 1
                                scale.y: 1
                                scale.z: 1
                            }
                        }
                    }
                }
            }
            Node {
                id: armIK
                x: 2.9802322387695312e-08
                y: -0.47103869915008545
                z: -0.035637855529785156
                rotation: Qt.quaternion(-0.374381, 0.599866, 0.599866, 0.37438)
                scale.x: 1
                scale.y: 1
                scale.z: 1
            }
        }
    }

    // Animations:
    Timeline {
        startFrame: 0
        endFrame: 12500
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            paused: node.isPaused
            duration: 12500
            from: 0
            to: 12500
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: base
            property: "position"
            keyframeSource: "animations/base_position_0.qad"
        }
        KeyframeGroup {
            target: base
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(1.94707e-07, 0, -1, 0)
            }
        }
        KeyframeGroup {
            target: armBase
            property: "position"
            keyframeSource: "animations/armBase_position_0.qad"
        }
        KeyframeGroup {
            target: armBase
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.116469, -0.697449, -0.11647, 0.697449)
            }
        }
        KeyframeGroup {
            target: arm1
            property: "position"
            keyframeSource: "animations/arm1_position_0.qad"
        }
        KeyframeGroup {
            target: arm1
            property: "rotation"
            keyframeSource: "animations/arm1_rotation_0.qad"
        }
        KeyframeGroup {
            target: arm2
            property: "position"
            keyframeSource: "animations/arm2_position_0.qad"
        }
        KeyframeGroup {
            target: arm2
            property: "rotation"
            keyframeSource: "animations/arm2_rotation_0.qad"
        }
        KeyframeGroup {
            target: arm3
            property: "position"
            keyframeSource: "animations/arm3_position_0.qad"
        }
        KeyframeGroup {
            target: arm3
            property: "rotation"
            keyframeSource: "animations/arm3_rotation_0.qad"
        }
        KeyframeGroup {
            target: armIK
            property: "position"
            keyframeSource: "animations/armIK_position_0.qad"
        }
        KeyframeGroup {
            target: armIK
            property: "rotation"
            keyframeSource: "animations/armIK_rotation_0.qad"
        }
    }
    Timeline {
        startFrame: 0
        endFrame: 12500
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            paused: node.isPaused
            duration: 12500
            from: 0
            to: 12500
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: base
            property: "position"
            keyframeSource: "animations/base_position_1.qad"
        }
        KeyframeGroup {
            target: base
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(1.94707e-07, 0, -1, 0)
            }
        }
        KeyframeGroup {
            target: armBase
            property: "position"
            keyframeSource: "animations/armBase_position_1.qad"
        }
        KeyframeGroup {
            target: armBase
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.116469, -0.697449, -0.11647, 0.697449)
            }
        }
        KeyframeGroup {
            target: arm1
            property: "position"
            keyframeSource: "animations/arm1_position_1.qad"
        }
        KeyframeGroup {
            target: arm1
            property: "rotation"
            keyframeSource: "animations/arm1_rotation_1.qad"
        }
        KeyframeGroup {
            target: arm2
            property: "position"
            keyframeSource: "animations/arm2_position_1.qad"
        }
        KeyframeGroup {
            target: arm2
            property: "rotation"
            keyframeSource: "animations/arm2_rotation_1.qad"
        }
        KeyframeGroup {
            target: arm3
            property: "position"
            keyframeSource: "animations/arm3_position_1.qad"
        }
        KeyframeGroup {
            target: arm3
            property: "rotation"
            keyframeSource: "animations/arm3_rotation_1.qad"
        }
        KeyframeGroup {
            target: armIK
            property: "position"
            keyframeSource: "animations/armIK_position_1.qad"
        }
        KeyframeGroup {
            target: armIK
            property: "rotation"
            keyframeSource: "animations/armIK_rotation_1.qad"
        }
    }
    Timeline {
        startFrame: 0
        endFrame: 12500
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            paused: node.isPaused
            duration: 12500
            from: 0
            to: 12500
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: base
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0.204026, 0)
            }
        }
        KeyframeGroup {
            target: base
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(1.94707e-07, 0, -1, 0)
            }
        }
        KeyframeGroup {
            target: armBase
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, -0.204026, 4.84179e-09)
            }
        }
        KeyframeGroup {
            target: armBase
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.116469, -0.697449, -0.11647, 0.697449)
            }
        }
        KeyframeGroup {
            target: arm1
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-5.27072e-09, 0.169693, -6.89806e-15)
            }
        }
        KeyframeGroup {
            target: arm1
            property: "rotation"
            keyframeSource: "animations/arm1_rotation_2.qad"
        }
        KeyframeGroup {
            target: arm2
            property: "position"
            keyframeSource: "animations/arm2_position_2.qad"
        }
        KeyframeGroup {
            target: arm2
            property: "rotation"
            keyframeSource: "animations/arm2_rotation_2.qad"
        }
        KeyframeGroup {
            target: arm3
            property: "position"
            keyframeSource: "animations/arm3_position_2.qad"
        }
        KeyframeGroup {
            target: arm3
            property: "rotation"
            keyframeSource: "animations/arm3_rotation_2.qad"
        }
        KeyframeGroup {
            target: armIK
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(2.98023e-08, -0.471039, -0.0356379)
            }
        }
        KeyframeGroup {
            target: armIK
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.374381, -0.599866, -0.599866, -0.37438)
            }
        }
    }
    Timeline {
        startFrame: 0
        endFrame: 12500
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            paused: node.isPaused
            duration: 12500
            from: 0
            to: 12500
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: base
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0.204026, 0)
            }
        }
        KeyframeGroup {
            target: base
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(1.94707e-07, 0, -1, 0)
            }
        }
        KeyframeGroup {
            target: armBase
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, -0.204026, 4.84179e-09)
            }
        }
        KeyframeGroup {
            target: armBase
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.116469, -0.697449, -0.11647, 0.697449)
            }
        }
        KeyframeGroup {
            target: arm1
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-5.27072e-09, 0.169693, -6.89806e-15)
            }
        }
        KeyframeGroup {
            target: arm1
            property: "rotation"
            keyframeSource: "animations/arm1_rotation_3.qad"
        }
        KeyframeGroup {
            target: arm2
            property: "position"
            keyframeSource: "animations/arm2_position_3.qad"
        }
        KeyframeGroup {
            target: arm2
            property: "rotation"
            keyframeSource: "animations/arm2_rotation_3.qad"
        }
        KeyframeGroup {
            target: arm3
            property: "position"
            keyframeSource: "animations/arm3_position_3.qad"
        }
        KeyframeGroup {
            target: arm3
            property: "rotation"
            keyframeSource: "animations/arm3_rotation_3.qad"
        }
        KeyframeGroup {
            target: armIK
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(2.98023e-08, -0.471039, -0.0356379)
            }
        }
        KeyframeGroup {
            target: armIK
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.374381, -0.599866, -0.599866, -0.37438)
            }
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: basicWhite_material
            alphaMode: PrincipledMaterial.Opaque
            objectName: "basicWhite_material"
            baseColor: "#ffa9a9a9"
            roughness: 0.5
            opacity: 1
        }

        DefaultMaterial {
            id: newMaterial
            objectName: "New Material"
            opacity:1
        }
    }
}
