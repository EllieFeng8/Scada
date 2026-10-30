import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node
    property alias robotArm_VeryLow_BaseMaterials: robotArm_VeryLow_Base.materials
    property alias timelineAnimationPaused: timelineAnimation.paused
    property int timelineCurrentFrameInt;
    property alias animation1111Paused: animation1111.paused
    property alias sequentialAnimationPaused: sequentialAnimation.paused






    // Resources
    Skin {
        id: skin
        joints: [
            base,
            arm1,
            arm2,
            arm3,
            arm4,
            right_Finger,
            left_Finger,
            rightUpper_Hinge,
            rightLower_Hinge,
            leftUpper_Hinge,
            leftLower_Hinge
        ]
        inverseBindPoses: [
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, -0.00364393, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, -2.38419e-07, 0, 0, 1, 0, -0.139526, 2.38419e-07, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, -2.38419e-07, 0, 0, 1, 0, -0.363427, 2.38419e-07, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, -2.38419e-07, 0, 0, 1, 0, -0.487836, 2.38419e-07, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, -2.38419e-07, 0, 0, 1, 0, -0.582847, 2.38419e-07, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0.000864549, 1.94423e-07, -0.0479753, -0.000864549, 1, -3.52468e-07, -0.667124, -1.94728e-07, 3.52299e-07, 1, -1.72613e-07, 0, 0, 0, 1),
            Qt.matrix4x4(0.999937, 0.0112269, -2.06555e-08, 0.0396317, -0.0112269, 0.999937, -3.39738e-07, -0.666978, 1.684e-08, 3.39949e-07, 1, -1.72446e-07, 0, 0, 0, 1),
            Qt.matrix4x4(-0.0121103, -0.999927, 2.14094e-07, 0.667727, 0.999927, -0.0121102, -4.52109e-07, 0.00102986, 4.54669e-07, 2.08603e-07, 1, -9.03334e-08, 0, 0, 0, 1),
            Qt.matrix4x4(-0.00995904, -0.99995, 5.66499e-08, 0.647716, 0.99995, -0.0099591, -4.51198e-07, -0.00760741, 4.51739e-07, 5.21536e-08, 1, 1.20596e-08, 0, 0, 0, 1),
            Qt.matrix4x4(0.0285088, -0.999594, -6.37283e-07, 0.667597, -0.999594, -0.0285089, -4.54248e-07, 0.0122315, 4.35895e-07, 6.49974e-07, -1, -4.83163e-07, 0, 0, 0, 1),
            Qt.matrix4x4(0.0305603, -0.999533, -1.11329e-06, 0.647822, -0.999533, -0.0305602, -4.54119e-07, 0.00592775, 4.19885e-07, 1.12665e-06, -1, -7.76092e-07, 0, 0, 0, 1)
        ]
    }

    // Nodes:
    Node {
        id: robotArm_VeryLow_Armature
        Model {
            id: robotArm_VeryLow_Base
            source: "meshes/plane_023.mesh"
            receivesReflections: true
            skin: skin
            materials: principledMaterial

            Model {
                id: baseModel
                x: 0
                y: -0.049
                source: "#Cylinder"
                receivesReflections: true
                z: 0
                scale.z: 0.0025
                scale.y: 0.001
                scale.x: 0.0025
                materials: robotArm_VeryLow_BaseMaterials
            }


        }
        Node {
            id: base
            y: 0.003643929958343506
            Node {
                id: arm1
                y: 0.13588157296180725
                rotation: Qt.quaternion(1, 0, 1.19209e-07, 0)
                scale.x: 1
                scale.y: 1
                scale.z: 1
                Node {
                    id: arm2
                    y: 0.22390185296535492
                    rotation: Qt.quaternion(1, 0, 1.42109e-14, 0)
                    Node {
                        id: arm3
                        y: 0.12440839409828186
                        Node {
                            id: arm4
                            y: 0.0950111448764801
                            Node {
                                id: right_Finger
                                x: 0.04739847406744957
                                y: 0.08431851863861084
                                z: -4.1898488234437536e-08
                                rotation: Qt.quaternion(1, -1.76243e-07, -2.16497e-07, 0.000432275)
                            }
                            Node {
                                id: left_Finger
                                x: -0.04711732640862465
                                y: 0.0836440920829773
                                z: -6.456728840475989e-08
                                rotation: Qt.quaternion(0.999984, -1.70594e-07, -1.09833e-07, 0.00561354)
                            }
                            Node {
                                id: rightUpper_Hinge
                                x: 0.007056547794491053
                                y: 0.0848434567451477
                                z: -5.0474653789933654e-08
                                rotation: Qt.quaternion(0.702812, -1.50222e-07, 1.79407e-09, -0.711376)
                                scale.x: 1
                                scale.y: 1
                                scale.z: 1
                            }
                            Node {
                                id: rightLower_Hinge
                                x: 0.014057700522243977
                                y: 0.06476134061813354
                                z: -4.883351678586223e-08
                                rotation: Qt.quaternion(0.703577, -9.4142e-08, 5.65131e-08, -0.710619)
                            }
                            Node {
                                id: leftUpper_Hinge
                                x: -0.006805890705436468
                                y: 0.08482736349105835
                                z: -5.378187850624272e-08
                                rotation: Qt.quaternion(-4.68036e-07, 0.717115, -0.696955, 1.52792e-08)
                                scale.x: 1
                                scale.y: 1
                                scale.z: 1
                            }
                            Node {
                                id: leftLower_Hinge
                                x: -0.013872599229216576
                                y: 0.06485390663146973
                                z: -5.5492616723995525e-08
                                rotation: Qt.quaternion(-6.33533e-07, 0.71783, -0.696218, -1.55922e-07)
                                scale.x: 1
                                scale.y: 1
                                scale.z: 1
                            }
                        }
                    }
                }
            }
        }


    }

    //    PropertyAnimation { id: animation11;
    //                                  target: timeline;
    //                                  property: "currentFrame";
    //                                  from:0;
    //                                  to: 20834;
    //                                  duration: 20834;
    //                                    loops: Animation.Infinite
    //                                    running: true
    //                                    ;

    //    }





    // Animations:
    Timeline {
        id: timeline
        currentFrame: 0
        //  currentFrame: timelineCurrentFrameInt
        //  startFrame: 0
        endFrame: 20834
        enabled: true

        SequentialAnimation on currentFrame {
            id: sequentialAnimation
            //  loops: Animation.Infinite
            PropertyAnimation { id: animation111;
                target: timeline;
                property: "currentFrame";
                from:timelineCurrentFrameInt;
                to: 20834;
                duration: 20834 - timelineCurrentFrameInt;

                //  running: true


            }
            PropertyAnimation { id: animation1111;
                target: timeline;
                property: "currentFrame";
                from:0;
                to: 20834;
                duration: 20834;
                loops: Animation.Infinite
                //  running: true


            }
        }


        animations: TimelineAnimation {
            id: timelineAnimation
            duration: 20834
            from: 0
            to: 20834
            running: false
            loops: Animation.Infinite


        }
        KeyframeGroup {
            target: rightUpper_Hinge
            property: "position"
            keyframeSource: "animations/rightUpper_Hinge_position_0.qad"
        }
        KeyframeGroup {
            target: rightUpper_Hinge
            property: "rotation"
            keyframeSource: "animations/rightUpper_Hinge_rotation_0.qad"
        }
        KeyframeGroup {
            target: base
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0.00364393, 0)
            }
        }
        KeyframeGroup {
            target: left_Finger
            property: "position"
            keyframeSource: "animations/left_Finger_position_0.qad"
        }
        KeyframeGroup {
            target: left_Finger
            property: "rotation"
            keyframeSource: "animations/left_Finger_rotation_0.qad"
        }
        KeyframeGroup {
            target: arm1
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0.135882, 0)
            }
        }
        KeyframeGroup {
            target: arm1
            property: "rotation"
            keyframeSource: "animations/arm1_rotation_0.qad"
        }
        KeyframeGroup {
            target: right_Finger
            property: "position"
            keyframeSource: "animations/right_Finger_position_0.qad"
        }
        KeyframeGroup {
            target: right_Finger
            property: "rotation"
            keyframeSource: "animations/right_Finger_rotation_0.qad"
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
            target: arm4
            property: "position"
            keyframeSource: "animations/arm4_position_0.qad"
        }
        KeyframeGroup {
            target: arm4
            property: "rotation"
            keyframeSource: "animations/arm4_rotation_0.qad"
        }
        KeyframeGroup {
            target: rightLower_Hinge
            property: "position"
            keyframeSource: "animations/rightLower_Hinge_position_0.qad"
        }
        KeyframeGroup {
            target: rightLower_Hinge
            property: "rotation"
            keyframeSource: "animations/rightLower_Hinge_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftUpper_Hinge
            property: "position"
            keyframeSource: "animations/leftUpper_Hinge_position_0.qad"
        }
        KeyframeGroup {
            target: leftUpper_Hinge
            property: "rotation"
            keyframeSource: "animations/leftUpper_Hinge_rotation_0.qad"
        }
        KeyframeGroup {
            target: leftLower_Hinge
            property: "position"
            keyframeSource: "animations/leftLower_Hinge_position_0.qad"
        }
        KeyframeGroup {
            target: leftLower_Hinge
            property: "rotation"
            keyframeSource: "animations/leftLower_Hinge_rotation_0.qad"
        }

    }



    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: principledMaterial
            objectName: "New Material"
        }
    }



}
