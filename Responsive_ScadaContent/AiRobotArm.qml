import QtQuick
import QtQuick3D

Node {
    id: rootNode
    // TODO are these needed?
    property real baseScaleY: 0.001 * 3
    property real baseY: -0.049 * 3

    property QtObject currentItem: null
    property QtObject disposedItem: null
    property QtObject conveyor: null

    property alias robotArm_VeryLow_BaseMaterials: robotArm_VeryLow_Base.materials

    readonly property real leftFingerInitialX: -0.04711732640862465
    readonly property real leftLowerHingeInitialX: -0.013872599229216576
    readonly property real leftUpperHingeInitialX: -0.006805890705436468
    readonly property real rightFingerInitialX: 0.04739847406744957
    readonly property real rightLowerHingeInitialX: 0.014057700522243977
    readonly property real rightUpperHingeInitialX: 0.007056547794491053

    signal itemDisposed()


    function pickUp() {
        console.log("Start robot pick up sequence")
        rootNode.disposedItem = rootNode.currentItem;
        armAnimation.start();
    }

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
            source: "meshes/RobotArm_low/meshes/plane_023.mesh"
            receivesReflections: true
            castsShadows: false    //FIXME: to avoid the random bug where the robot casts a huge shadow over the factory
            skin: skin

            Model {
                id: baseModel
                x: 0
                y: rootNode.baseY
                source: "#Cylinder"
                receivesReflections: true
                castsShadows: false    //FIXME: to avoid the random bug where the robot casts a huge shadow over the factory
                z: 0
                scale.z: 0.0025
                scale.y: rootNode.baseScaleY
                scale.x: 0.0025
                materials: rootNode.robotArm_VeryLow_BaseMaterials
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

    SequentialAnimation {
        id: armAnimation

        ParallelAnimation {
            NumberAnimation { target: arm1; property: "eulerRotation.x"; to: 30; duration: 2000 }
            NumberAnimation { target: arm2; property: "eulerRotation.x"; to: 37; duration: 2000 }
            NumberAnimation { target: arm3; property: "eulerRotation.y"; to: 0; duration: 2000 }
            NumberAnimation { target: base; property: "eulerRotation.y"; to: 90; duration: 2000 }
            NumberAnimation { target: arm4; property: "eulerRotation.x"; to: 90; duration: 2000 }
        }

        ParallelAnimation {
            NumberAnimation { target: arm3; property: "eulerRotation.y"; to: 0; duration: 1000 }
            NumberAnimation { target: arm2; property: "eulerRotation.x"; to: 75; duration: 1000 }
            NumberAnimation { target: arm1; property: "eulerRotation.x"; to: 60; duration: 1000 }
            NumberAnimation { target: arm4; property: "eulerRotation.x"; to: -45; duration: 2000 }
        }

        ParallelAnimation {
            NumberAnimation { target: arm1; property: "eulerRotation.x"; to: 70; duration: 1000 }
            NumberAnimation { target: arm2; property: "eulerRotation.x"; to: 80; duration: 1000 }
            NumberAnimation { target: arm4; property: "eulerRotation.x"; to: -50; duration: 2000 }
        }

        ParallelAnimation {
            NumberAnimation { target: left_Finger; property: "position.x"; to: -0.025; duration: 1000 }
            NumberAnimation { target: leftUpper_Hinge; property: "position.x"; to: 0.01; duration: 1000 }
            NumberAnimation { target: leftLower_Hinge; property: "position.x"; to: 0; duration: 1000 }
            NumberAnimation { target: right_Finger; property: "position.x"; to: 0.025; duration: 1000 }
            NumberAnimation { target: rightUpper_Hinge; property: "position.x"; to: -0.01; duration: 1000 }
            NumberAnimation { target: rightLower_Hinge; property: "position.x"; to: 0; duration: 1000 }
        }

        ScriptAction {
            script: {
                if (rootNode.disposedItem) {
                    console.log("pickup the item");
                    console.log("disposedItem.scenePosition: " + rootNode.disposedItem.scenePosition);
                    console.log("disposedItem.position: " + rootNode.disposedItem.position);
                    console.log("arm4.scenePosition: " + arm4.scenePosition);
                    console.log("arm4.position to workshop: " + arm4.mapPositionToNode(rootNode.parent, arm4.position));

                    rootNode.disposedItem.kinematicPosition = Qt.binding(function() {
                        // Hacksy - the scenePosition property changed, while the position
                        // one does not, so we just create this vector to force the
                        // binding to be re-evaluated, while we actually return the
                        // arm's local position mapped to the Workshop coordinates
                        var vec = Qt.vector3d(
                                    arm4.scenePosition.x,
                                    arm4.scenePosition.y,
                                    arm4.scenePosition.z
                                    );
                        var returnPosition = arm4.mapPositionToNode(rootNode.parent, arm4.position)
                        returnPosition.x = returnPosition.x - 5
                        returnPosition.y = returnPosition.y - 5
                        return returnPosition
                    } )
                   rootNode.disposedItem.isKinematic = true;
                }
            }
        }
        NumberAnimation { target: arm1; property: "eulerRotation.x"; to: 50; duration: 2000 }

        ParallelAnimation {
            NumberAnimation { target: arm1; property: "eulerRotation.x"; to: 30; duration: 1500 }
            NumberAnimation { target: arm2; property: "eulerRotation.x"; to: 37; duration: 1500 }
            NumberAnimation { target: arm3; property: "eulerRotation.y"; to: 0; duration: 1500 }
            NumberAnimation { target: base; property: "eulerRotation.y"; to: 225; duration: 3000 }
            NumberAnimation { target: arm4; property: "eulerRotation.x"; to: 90; duration: 3000 }
        }

        NumberAnimation { target: arm2; property: "eulerRotation.x"; to: 90; duration: 1500 }
        ParallelAnimation {
            NumberAnimation { target: arm1; property: "eulerRotation.x"; to: 70; duration: 1500 }
            NumberAnimation { target: arm4; property: "eulerRotation.x"; to: -45; duration: 1500 }
        }
        NumberAnimation { target: arm1; property: "eulerRotation.x"; to: 68; duration: 2500 }

        ParallelAnimation {
            NumberAnimation { target: left_Finger; property: "position.x"; to: rootNode.leftFingerInitialX; duration: 1000 }
            NumberAnimation { target: leftUpper_Hinge; property: "position.x"; to: rootNode.leftUpperHingeInitialX; duration: 1000 }
            NumberAnimation { target: leftLower_Hinge; property: "position.x"; to: rootNode.leftLowerHingeInitialX; duration: 1000 }
            NumberAnimation { target: right_Finger; property: "position.x"; to: rootNode.rightFingerInitialX; duration: 1000 }
            NumberAnimation { target: rightUpper_Hinge; property: "position.x"; to: rootNode.rightUpperHingeInitialX; duration: 1000 }
            NumberAnimation { target: rightLower_Hinge; property: "position.x"; to: rootNode.rightLowerHingeInitialX; duration: 1000 }
        }

        ScriptAction {
            script: {
                if (rootNode.disposedItem) {
                    console.log("dropping the item");

                    console.log("disposedItem.scenePosition: " + rootNode.disposedItem.scenePosition);
                    console.log("rootNode.arm4.scenePosition: " + arm4.scenePosition);
                    console.log("rootNode.arm4.position: " + arm4.position);

                    rootNode.disposedItem.kinematicPosition = arm4.mapPositionToNode(rootNode.parent, arm4.position)
                    rootNode.disposedItem.isObsolete = true;
                    console.log("disposedItem.kinematicPosition: " + rootNode.disposedItem.kinematicPosition);
                    rootNode.itemDisposed();
                }
            }
        }

        NumberAnimation { target: arm1; property: "eulerRotation.x"; to: 60; duration: 2000 }

        SequentialAnimation {
            ParallelAnimation {
                NumberAnimation { target: rootNode.disposedItem; property: "kinematicPosition.z"; to: 1780; duration: 3000 }
                NumberAnimation { target: rootNode.disposedItem; property: "kinematicPosition.x"; to: -150; duration: 3000 }
            }
            ParallelAnimation {
                NumberAnimation { target: rootNode.disposedItem; property: "kinematicPosition.z"; to: 1775; duration: 6000 }
                NumberAnimation { target: rootNode.disposedItem; property: "kinematicPosition.x"; to: 45; duration: 6000 }
            }
            ParallelAnimation {
                NumberAnimation { target: rootNode.disposedItem; property: "kinematicPosition.z"; to: 1740; duration: 3000 }
                NumberAnimation { target: rootNode.disposedItem; property: "kinematicPosition.x"; to: 110; duration: 3000 }
            }
        }

        onFinished: {
            console.log("Robot finished picking up box");
            console.log("Destroy the item");
            if (rootNode.disposedItem) {
                rootNode.disposedItem.visible = false;
                rootNode.disposedItem = null;
            }
        }
    }
}
