import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node
    property alias elecQA_Low_MainMachine_AnimationMaterials: elecQA_Low_MainMachine_Animation.materials
    property bool isPaused:false
    // Resources
    Skin {
        id: skin
        joints: [
            leftArm,
            rightArm,
            centerArm,
            leftBeam,
            rightBeam,
            centerBeam
        ]
        inverseBindPoses: [
            Qt.matrix4x4(1.94707e-09, 0, 0.01, 0.02306, 1.19209e-09, 0.01, -2.32109e-16, -0.346337, -0.01, 0, 1.94707e-09, -6.6044e-09, 0, 0, 0, 1),
            Qt.matrix4x4(1.94707e-09, 0, 0.01, 1.3428, 1.19209e-09, 0.01, -2.32109e-16, -0.346337, -0.01, 0, 1.94707e-09, 3.08046e-07, 0, 0, 0, 1),
            Qt.matrix4x4(1.94707e-09, 0, 0.01, 0.683162, 0, 0.01, 0, -0.338455, -0.01, 0, 1.94707e-09, 1.50776e-07, 0, 0, 0, 1),
            Qt.matrix4x4(-4.37114e-10, -2.38419e-09, 0.01, 0.0289272, 0.01, 6.93889e-24, 4.37114e-10, 0.321211, -1.04216e-16, 0.01, 2.38419e-09, -0.484356, 0, 0, 0, 1),
            Qt.matrix4x4(-4.37114e-10, -2.38419e-09, 0.01, 1.33845, 0.01, 6.93889e-24, 4.37114e-10, 0.321211, -1.04216e-16, 0.01, 2.38419e-09, -0.484356, 0, 0, 0, 1),
            Qt.matrix4x4(4.01339e-09, -0.01, -3.63804e-16, 0.484672, 9.06475e-10, -1.51496e-10, 0.01, 1.13376, -0.01, -4.01339e-09, 9.06475e-10, 3.32277e-07, 0, 0, 0, 1)
        ]
    }

    // Nodes:
    Node {
        id: root
        Model {
            id: elecQA_Low_MainMachine_Animation
            source: "meshes/cube_156.mesh"
            skin: skin

        }
        Node {
            id: elecQA_Armature_low
            rotation: Qt.quaternion(0.707107, 0, -0.707107, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            Node {
                id: leftArm
                x: -0.023059993982315063
                y: 0.34633737802505493
                z: 1.2131430082717998e-08
                rotation: Qt.quaternion(1, -2.98023e-08, 1.19209e-07, 0)
                scale.x: 1
                scale.y: 1
                scale.z: 1
            }
            Node {
                id: rightArm
                x: -1.342799186706543
                y: 0.34633737802505493
                z: 1.2131430082717998e-08
                rotation: Qt.quaternion(1, -2.98023e-08, 1.19209e-07, 0)
                scale.x: 1
                scale.y: 1
                scale.z: 1
            }
            Node {
                id: centerArm
                x: -0.683162271976471
                y: 0.3384549915790558
                z: 1.2131428306361158e-08
                rotation: Qt.quaternion(1, 0, 1.19209e-07, 0)
            }
            Node {
                id: leftBeam
                x: -0.028927085921168327
                y: 0.48435595631599426
                z: 0.3212113082408905
                rotation: Qt.quaternion(0.707107, -0.707107, 8.42937e-08, -8.42937e-08)
                scale.x: 1
                scale.y: 1
                scale.z: 1
            }
            Node {
                id: rightBeam
                x: -1.3384456634521484
                y: 0.48435595631599426
                z: 0.3212113082408905
                rotation: Qt.quaternion(0.707107, -0.707107, 8.42937e-08, -8.42937e-08)
                scale.x: 1
                scale.y: 1
                scale.z: 1
            }
            Node {
                id: centerBeam
                x: -1.133764624595642
                y: 0.48467162251472473
                z: 1.4600860964719686e-08
                rotation: Qt.quaternion(0.707107, 9.43919e-08, 1.89398e-07, -0.707107)
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
            paused: isPaused
            duration: 12500
            from: 0
            to: 12500
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: leftArm
            property: "position"
            keyframeSource: "animations/leftArm_position_0.qad"
        }
        KeyframeGroup {
            target: leftArm
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(1, -2.98023e-08, 1.19209e-07, 2.11758e-22)
            }
        }
        KeyframeGroup {
            target: rightArm
            property: "position"
            keyframeSource: "animations/rightArm_position_0.qad"
        }
        KeyframeGroup {
            target: rightArm
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(1, -2.98023e-08, 1.19209e-07, 2.11758e-22)
            }
        }
        KeyframeGroup {
            target: centerArm
            property: "position"
            keyframeSource: "animations/centerArm_position_0.qad"
        }
        KeyframeGroup {
            target: leftBeam
            property: "position"
            keyframeSource: "animations/leftBeam_position_0.qad"
        }
        KeyframeGroup {
            target: rightBeam
            property: "position"
            keyframeSource: "animations/rightBeam_position_0.qad"
        }
        KeyframeGroup {
            target: centerBeam
            property: "position"
            keyframeSource: "animations/centerBeam_position_0.qad"
        }
    }
    Timeline {
        startFrame: 0
        endFrame: 12500
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            paused: isPaused
            duration: 12500
            from: 0
            to: 12500
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: leftArm
            property: "position"
            keyframeSource: "animations/leftArm_position_1.qad"
        }
        KeyframeGroup {
            target: leftArm
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(1, -2.98023e-08, 1.19209e-07, 2.11758e-22)
            }
        }
        KeyframeGroup {
            target: rightArm
            property: "position"
            keyframeSource: "animations/rightArm_position_1.qad"
        }
        KeyframeGroup {
            target: rightArm
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(1, -2.98023e-08, 1.19209e-07, 2.11758e-22)
            }
        }
        KeyframeGroup {
            target: centerArm
            property: "position"
            keyframeSource: "animations/centerArm_position_1.qad"
        }
        KeyframeGroup {
            target: leftBeam
            property: "position"
            keyframeSource: "animations/leftBeam_position_1.qad"
        }
        KeyframeGroup {
            target: rightBeam
            property: "position"
            keyframeSource: "animations/rightBeam_position_1.qad"
        }
        KeyframeGroup {
            target: centerBeam
            property: "position"
            keyframeSource: "animations/centerBeam_position_1.qad"
        }
    }

    Node {
        id: __materialLibrary__
    }
}
