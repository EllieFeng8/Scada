import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node
    property Material qa_Machine_Arm_001Materials
    property bool isPaused

    // Resources
    Skin {
        id: skin
        joints: [
            base,
            arm1,
            arm2,
            arm3
        ]
        inverseBindPoses: [
            Qt.matrix4x4(0.01, 3.63097e-10, -2.35637e-09, 0, 1.74623e-16, 0.00988335, 0.00152294, 0, 2.38419e-09, -0.00152294, 0.00988335, 0, 0, 0, 0, 1),
            Qt.matrix4x4(0.01, -1.255e-09, -2.02715e-09, 2.68512e-08, 0, 0.00850247, -0.00526384, -0.131764, 2.38419e-09, 0.00526384, 0.00850247, -0.112622, 0, 0, 0, 1),
            Qt.matrix4x4(0.01, 6.83877e-09, 2.09536e-09, -2.31097e-07, 6.98491e-16, -0.00292952, 0.00956127, 0.198056, 7.15257e-09, -0.00956127, -0.00292952, 0.323097, 0, 0, 0, 1),
            Qt.matrix4x4(0.01, 5.10066e-09, 5.01421e-09, -2.03347e-07, -1.86264e-15, -0.00701037, 0.00713124, 0.153595, 7.15256e-09, -0.00713124, -0.00701037, 0.284299, 0, 0, 0, 1)
        ]
    }

    // Nodes:
    Node {
        id: visualQAArmature
        scale.x: 100
        scale.y: 100
        scale.z: 100
        Model {
            id: qa_Machine_Arm_001
            source: "meshes/plane_003.mesh"
            skin: skin
            materials: qa_Machine_Arm_001Materials
        }
        Node {
            id: base
            rotation: Qt.quaternion(0.99708, 0.0763701, 1.18861e-07, 9.10402e-09)
            Node {
                id: arm1
                y: 0.17333629727363586
                rotation: Qt.quaternion(0.938127, -0.346292, 9.46757e-15, -8.25624e-08)
                scale.x: 1
                scale.y: 1
                scale.z: 1
                Node {
                    id: arm2
                    x: 1.7763568394002505e-15
                    y: 0.23008383810520172
                    z: -7.450580596923828e-09
                    rotation: Qt.quaternion(0.351872, 0.936048, 8.38931e-08, 4.46343e-07)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    Node {
                        id: arm3
                        x: -6.294728735652122e-15
                        y: 0.19295212626457214
                        z: -2.2351741790771484e-08
                        rotation: Qt.quaternion(0.971393, 0.237478, -6.10776e-13, 1.69858e-07)
                        scale.x: 1
                        scale.y: 1
                        scale.z: 1
                    }
                }
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
            target: arm1
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-3.89527e-15, 0.173336, 1.6338e-08)
            }
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
