import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node
    property alias elecQA_MiddleBeamMaterials: elecQA_MiddleBeam.materials
    property bool isPaused;

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
            Qt.matrix4x4(3.13917e-09, 0, 0.01, 0.02306, 1.19209e-09, 0.01, -3.74218e-16, -0.346337, -0.01, 0, 3.13917e-09, -3.85543e-09, 0, 0, 0, 1),
            Qt.matrix4x4(3.13917e-09, 0, 0.01, 1.3428, 1.19209e-09, 0.01, -3.74218e-16, -0.346337, -0.01, 0, 3.13917e-09, 4.6812e-07, 0, 0, 0, 1),
            Qt.matrix4x4(3.13916e-09, 0, 0.01, 0.683162, 0, 0.01, 0, -0.338455, -0.01, 0, 3.13916e-09, 2.32216e-07, 0, 0, 0, 1),
            Qt.matrix4x4(-4.33632e-10, -2.38419e-09, 0.01, 0.0289272, 0.01, 2.45495e-16, -5.96047e-10, 0.321211, -1.03386e-16, 0.01, 2.38419e-09, -0.484356, 0, 0, 0, 1),
            Qt.matrix4x4(0, -2.38419e-09, 0.01, 1.33845, 0.01, 2.84217e-16, -1.19209e-09, 0.321211, 0, 0.01, 2.38419e-09, -0.484356, 0, 0, 0, 1),
            Qt.matrix4x4(5.20549e-09, -0.01, -9.06475e-10, 0.484672, 9.06475e-10, -9.06475e-10, 0.01, 1.13376, -0.01, -5.20549e-09, 9.06475e-10, 3.90055e-07, 0, 0, 0, 1)
        ]
    }

    // Nodes:
    Node {
        id: root
        Model {
            id: elecQA_MiddleBeam
            source: "meshes/cube_187.mesh"
            skin: skin
        }
        Node {
            id: elecQA_Armature
            scale.x: 100
            scale.y: 100
            scale.z: 100
            Node {
                id: leftArm
                x: -1.1123444387806103e-08
                y: 0.34633737802505493
                z: -0.023059993982315063
                rotation: Qt.quaternion(0.707107, -4.21468e-08, -0.707107, 1.25607e-15)
                scale.x: 1
                scale.y: 1
                scale.z: 1
            }
            Node {
                id: rightArm
                x: 4.656418539639162e-08
                y: 0.34633737802505493
                z: -1.342799186706543
                rotation: Qt.quaternion(0.707107, -4.21468e-08, -0.707107, 1.25607e-15)
                scale.x: 1
                scale.y: 1
                scale.z: 1
            }
            Node {
                id: centerArm
                x: 1.7730542367644375e-08
                y: 0.3384549915790558
                z: -0.683162271976471
                rotation: Qt.quaternion(0.707107, 0, -0.707107, 0)
                scale.x: 1
                scale.y: 1
                scale.z: 1
            }
            Node {
                id: leftBeam
                x: -0.3212113082408905
                y: 0.48435595631599426
                z: -0.02892710082232952
                rotation: Qt.quaternion(-0.5, 0.5, 0.5, 0.5)
                scale.x: 1
                scale.y: 1
                scale.z: 1
            }
            Node {
                id: rightBeam
                x: -0.3212112784385681
                y: 0.48435595631599426
                z: -1.3384456634521484
                rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
                scale.x: 1
                scale.y: 1
                scale.z: 1
            }
            Node {
                id: centerBeam
                x: 3.495757283644707e-08
                y: 0.48467162251472473
                z: -1.133764624595642
                rotation: Qt.quaternion(0.5, 0.5, -0.5, -0.5)
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
            target: leftArm
            property: "position"
            keyframeSource: "animations/leftArm_position_0.qad"
        }
        KeyframeGroup {
            target: leftArm
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.707107, -4.21468e-08, -0.707107, 2.67653e-21)
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
                value: Qt.quaternion(0.707107, -4.21468e-08, -0.707107, 2.67653e-21)
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
            target: leftBeam
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            }
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
            paused: node.isPaused
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
                value: Qt.quaternion(0.707107, -4.21468e-08, -0.707107, 2.67653e-21)
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
                value: Qt.quaternion(0.707107, -4.21468e-08, -0.707107, 2.67653e-21)
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
            target: leftBeam
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            }
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
