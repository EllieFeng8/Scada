import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick3D 6.5
/*NOT FOR DS:*/import QtQuick3D.Physics
/*NOT FOR DS:*/import QtQuick3D.Physics.Helpers

import "meshes/Belt_45D_1"
import "meshes/Belt_90D_1"
import "meshes/Belt_Incline_1"
import "meshes/Belt_Straight_1"
import "meshes/Belt_Upper45D_1"
import "meshes/Belt_Upper90D_1"
import "meshes/Belt_UpperStraight_1"
import "meshes/ContainerFork_low"
import "meshes/ContainerFork_med"
import "meshes/EQA_Anim_Med"
import "meshes/EQA_Anim_low"
import "meshes/ElectricQA_SteadyParts_Med"
import "meshes/ElectricQA_SteadyParts_low"
import "meshes/ElectricVisualQA_Med"
import "meshes/ElectricVisualQA_low"
import "meshes/Hopper_low"
import "meshes/Hopper_med"
import "meshes/Mill_Arm_animated_low"
import "meshes/Mill_Arm_animated_med"
import "meshes/Mill_Door_Animated_low"
import "meshes/Mill_Door_Animated_med"
import "meshes/Mill_Machine_low"
import "meshes/Mill_Machine_med"
import "meshes/VQA_Arm_med"
import "meshes/VQA_Arm_low"
import "meshes/VisualQA_Machine_low"
import "meshes/VisualQA_Machine_med"
import "meshes/WeldingMachine_Med"
import "meshes/WeldingMachine_low"
import "meshes/Printer_med"
import "meshes/Printer_low"
import "meshes/Printer_Head_med"
import "meshes/Printer_Head_low"
import QtQuick3D.Helpers 6.5
import "meshes/Base_Broken"
import "meshes/CoolantBroken"
import "meshes/Factory_Item_Full"
import "meshes/InnerCasing_Mess"
import "meshes/MotherboardBroken"
import "meshes/PedestalMisPrint"
import "meshes/SphereWire_Broken"
import "meshes/SphereWire_Missprint"
import "meshes/MillDoorGlass_Left"
import "meshes/Mill_Door_low"
import "meshes/Mill_Door_right_Med"
import "meshes/RobotArm_low"
import "meshes/LaserGate"
import "meshes/Pillar_1_low"
import "meshes/Pillar_1_med"
import "meshes/Pillar_2_low"
import "meshes/Pillar_2_med"
import "meshes/Wall_1_low"
import "meshes/Wall_1_med"
import "meshes/Wall_2_low"
import "meshes/Wall_2_med"
import "meshes/FactorySpline_1_low"
import "meshes/FactorySpline_2_low"
import "meshes/FactorySpline_3_low"
import "meshes/FactorySpline_4_low"
import "meshes/OtherFactory_1_low"
import "meshes/OtherFactory_2_low"
import "meshes/OtherFactory_3_low"
import "meshes/OtherFactory_4_low"
//import Quick3DAssets.Belt_45D_1
//import Quick3DAssets.Belt_90D_1
//import Quick3DAssets.Belt_Incline_1
//import Quick3DAssets.Belt_Straight_1
////import Quick3DAssets.Belt_Upper45D_1
//import Quick3DAssets.Belt_Upper90D_1
//import Quick3DAssets.Belt_UpperStraight_1
import "meshes/HumanNode"
import "meshes/Trolly_low"
import "meshes/ForkLift_low"

import QtQuick.Studio.Effects



Rectangle {

    id: factory
    property bool isRunning: workshop.isRunning // factoryStopCheckBox.checked
    property list<int> distanceLOD:  [1500]
    property bool themeToggle: master.__daymode
    property real resetbuttonPos: 1010

    // property color darkColor: "#343a40"
    // property color darkColorFloor: "#212529"
    // property color darkColorRedGate: "#212529"
    property int transitionspeed: 1000
    anchors.fill: parent
    width: 1920
    height: 1080

    Component.onCompleted: {
        WorkshopInstance.workshopImportScene = scene
        WorkshopInstance.workshopEnvironment = sceneEnvironment
    }

    /*gradient: Gradient {
        GradientStop {
            position: 0
            color: master.__background_C
        }

        GradientStop {
            position: 1
            color: master.__panelBackground_C
        }
        orientation: Gradient.Vertical
    }*/
    onVisibleChanged: startCameraAnim.running = true

    /*NOT FOR DS:*/PhysicsWorld {
    /*NOT FOR DS:*/    running: true
    /*NOT FOR DS:*/    enableCCD: false
    /*NOT FOR DS:*/    forceDebugDraw: false
    /*NOT FOR DS:*/    //sceneView: scene
    /*NOT FOR DS:*/    scene: scene
    /*NOT FOR DS:*/}

    View3D {
        id: view3D
        visible: true
        anchors.fill: parent
        camera: sceneCamera

        environment: sceneEnvironment

        ExtendedSceneEnvironment {
            id: sceneEnvironment
            clearColor: master.__appBackground_C
            backgroundMode: SceneEnvironment.Color
            aoBias: 1
            aoSampleRate: 4
            aoSoftness: 50
            aoDistance: 14
            aoStrength: 40
            aoEnabled: true
            probeExposure: 1
            exposure: 0.65
            whitePoint: 1
            tonemapMode: SceneEnvironment.TonemapModeLinear



            lightProbe: blue_photo_studio_1k
            temporalAAStrength: 1
            temporalAAEnabled: true
            specularAAEnabled: true
            probeHorizon: 0
            probeOrientation.z: 0
            probeOrientation.x: 0
            //probeOrientation.y: 96
            // probeExposure: (themeToggle >= !themeToggle) ? 0.4 : 0.15
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.VeryHigh

            Texture {
                id: blue_photo_studio_1k
                source: "images/untitled.hdr"
            }
        }

        Node {
            id: scene


            /*NOT FOR DS:*/PhysicsMaterial {
            /*NOT FOR DS:*/    id: physicsMaterial
            /*NOT FOR DS:*/    staticFriction: 0.6
            /*NOT FOR DS:*/    dynamicFriction: 0.4
            /*NOT FOR DS:*/    restitution: 0.2
            /*NOT FOR DS:*/}

            Node {
                id: beltGroup
                visible: true
                scale.y: 1

                Model {
                    id: straightBelt
                    x: 0
                    y: 0
                    source: "meshes/Belt_Straight_1/meshes/belt_Straight_1.mesh"
                    usedInBakedLighting: true
                    castsReflections: false
                    castsShadows: true
                    receivesShadows: true

                    instanceRoot: straightBelt
                    instancing: instanceList
                    receivesReflections: false
                    scale.z: 100
                    scale.y: 100
                    scale.x: 100
                    z: 0
                    materials: [basicWhite,belt]

                    InstanceList {
                        id: instanceList
                        instances: [mainBeltLine,line3BeltLine,instanceListEntry10,instanceListEntry11,line2BeltLineLower,instanceListEntry14,instanceListEntry15,instanceListEntry16,instanceListEntry17,instanceListEntry18,instanceListEntry19,instanceListEntry12,instanceListEntry20,instanceListEntry21,instanceListEntry22,instanceListEntry26,instanceListEntry27,instanceListEntry28,instanceListEntry29,instanceListEntry30,instanceListEntry31,instanceListEntry32,instanceListEntry33,instanceListEntry34,instanceListEntry35,instanceListEntry36,line4BeltLine,instanceListEntry38,instanceListEntry23,instanceListEntry39,instanceListEntry40,instanceListEntry41,instanceListEntry42,instanceListEntry45,instanceListEntry46,instanceListEntry47,instanceListEntry48,instanceListEntry49,instanceListEntry50,instanceListEntry51,instanceListEntry52,instanceListEntry53,instanceListEntry54,instanceListEntry55,line4BeltFork,instanceListEntry59,instanceListEntry61,instanceListEntry62,instanceListEntry,instanceListEntry2,instanceListEntry9,instanceListEntry13,instanceListEntry37,instanceListEntry43,line2BeltLine,instanceListEntry58,instanceListEntry63,instanceListEntry64,instanceListEntry57,instanceListEntry65,instanceListEntry66,instanceListEntry67,instanceListEntry68,instanceListEntry69,instanceListEntry71,instanceListEntry72,instanceListEntry73,instanceListEntry75,instanceListEntry74,instanceListEntry77,instanceListEntry78,instanceListEntry79,instanceListEntry86,instanceListEntry87,instanceListEntry88,instanceListEntry89,instanceListEntry90,instanceListEntry91,instanceListEntry92,instanceListEntry93,instanceListEntry94,instanceListEntry95,instanceListEntry96,instanceListEntry97,instanceListEntry98,instanceListEntry100,instanceListEntry103,instanceListEntry104,instanceListEntry107,instanceListEntry108,instanceListEntry109,instanceListEntry110,instanceListEntry111,instanceListEntry112,instanceListEntry113,instanceListEntry114,instanceListEntry115,instanceListEntry116,instanceListEntry117,instanceListEntry118,instanceListEntry120,smallSideContainerBelts,instanceListEntry123,instanceListEntry124,instanceListEntry125,instanceListEntry126,instanceListEntry127,instanceListEntry128,instanceListEntry129,instanceListEntry130,instanceListEntry131,instanceListEntry132]

                        InstanceListEntry {
                            id: mainBeltLine
                            position.y: 0
                            eulerRotation.y: 180
                        }

                        InstanceListEntry {
                            id: line3BeltLine
                            position.x: 550
                            position.y: 0
                            eulerRotation.y: -90
                            position.z: 100

                            InstanceListEntry {
                                id: line2BeltLineLower
                                position.y: 0
                                position.z: 300
                                position.x: 350+350
                                eulerRotation.y: 90

                                InstanceListEntry {
                                    id: instanceListEntry14
                                    eulerRotation.y: 90
                                    position.z: 350
                                    position.x: 350+350
                                }

                                InstanceListEntry {
                                    id: instanceListEntry15
                                    eulerRotation.y: 90
                                    position.z: 400
                                    position.x: 350+350
                                }

                                InstanceListEntry {
                                    id: instanceListEntry16
                                    eulerRotation.y: 90
                                    position.z: 450
                                    position.x: 350+350
                                }

                                InstanceListEntry {
                                    id: instanceListEntry17
                                    position.y: 0
                                    eulerRotation.y: 90
                                    position.z: 500
                                    position.x: 350+350
                                }

                                InstanceListEntry {
                                    id: instanceListEntry18
                                    eulerRotation.y: 90
                                    position.z: 550
                                    position.x: 350+350
                                }

                                InstanceListEntry {
                                    id: instanceListEntry19
                                    eulerRotation.y: 90
                                    position.z: 600
                                    position.x: 350+350
                                }
                            }

                            InstanceListEntry {
                                id: instanceListEntry37
                                position.y: 0
                                eulerRotation.y: -90
                                position.z: 875
                                position.x: 550
                            }

                            InstanceListEntry {
                                id: instanceListEntry43
                                eulerRotation.y: -90
                                position.z: 925
                                position.x: 550
                            }




                        }

                        InstanceListEntry {
                            id: line4BeltLine
                            eulerRotation.y: 90
                            position.z: 100
                            position.y: 0
                            position.x: 1100
                        }

                        InstanceListEntry {
                            id: instanceListEntry38
                            eulerRotation.y: 90
                            position.z: 150
                            position.x: 1100
                        }

                        InstanceListEntry {
                            id: line4BeltFork
                            position.y: 0
                            eulerRotation.y: 135
                            position.z: 792.5
                            position.x: 1362.5
                        }

                        InstanceListEntry {
                            id: instanceListEntry59
                            position.z: 827.5
                            position.x: 1397.5
                            eulerRotation.y: 135
                        }

                        InstanceListEntry {
                            id: instanceListEntry61
                            position.y: 0
                            eulerRotation.y: 90
                            position.z: 905.5
                            position.x: 1429.5
                        }

                        InstanceListEntry {
                            id: instanceListEntry62
                            position.y: 0
                            eulerRotation.y: 90
                            position.z: 955.5
                            position.x: 1429.5
                        }

                        InstanceListEntry {
                            id: instanceListEntry45
                            eulerRotation.y: 135
                            position.z: 228
                            position.y: 0
                            position.x: 1132
                        }

                        InstanceListEntry {
                            id: instanceListEntry46
                            eulerRotation.y: 135
                            position.z: 263
                            position.x: 1167
                        }

                        InstanceListEntry {
                            id: instanceListEntry47
                            eulerRotation.y: 135
                            position.z: 298
                            position.x: 1202
                        }

                        InstanceListEntry {
                            id: instanceListEntry48
                            eulerRotation.y: 90
                            position.z: 376
                            position.x: 1234
                        }

                        InstanceListEntry {
                            id: instanceListEntry49
                            position.z: 626
                            eulerRotation.y: 90
                            position.x: 1234
                        }

                        InstanceListEntry {
                            id: instanceListEntry50
                            position.y: 0
                            position.z: 676
                            eulerRotation.y: 90
                            position.x: 1234
                        }

                        InstanceListEntry {
                            id: instanceListEntry51
                            eulerRotation.y: 90
                            position.x: 1234
                            position.z: 726
                        }

                        InstanceListEntry {
                            id: instanceListEntry52
                            eulerRotation.y: 90
                            position.z: 776
                            position.x: 1234
                        }

                        InstanceListEntry {
                            id: instanceListEntry53
                            eulerRotation.y: 90
                            position.z: 826
                            position.x: 1234
                        }

                        InstanceListEntry {
                            id: instanceListEntry54
                            eulerRotation.y: 90
                            position.z: 876
                            position.x: 1234
                        }

                        InstanceListEntry {
                            id: instanceListEntry55
                            eulerRotation.y: 90
                            position.z: 926
                            position.x: 1234
                        }

                        InstanceListEntry {
                            id: line2BeltLine
                            position.x: -150
                            position.z: 100
                            eulerRotation.y: -90
                        }

                        InstanceListEntry {
                            id: instanceListEntry93
                            eulerRotation.y: -90
                            position.z: 100
                            position.x: -400
                        }

                        InstanceListEntry {
                            id: instanceListEntry58
                            position.x: -150
                            position.z: 150
                            eulerRotation.y: -90
                        }

                        InstanceListEntry {
                            id: instanceListEntry63
                            position.z: 200
                            eulerRotation.y: -90
                            position.x: -150
                        }

                        InstanceListEntry {
                            id: instanceListEntry64
                            eulerRotation.y: -90
                            position.z: 250
                            position.x: -150
                        }

                        InstanceListEntry {
                            id: instanceListEntry57
                            position.x: 32.25-150
                            position.z: 328
                            eulerRotation.y: -45
                        }

                        InstanceListEntry {
                            id: instanceListEntry65
                            position.x: 67.5-150
                            position.z: 363.25
                            eulerRotation.y: -45
                        }

                        InstanceListEntry {
                            id: instanceListEntry67
                            position.x: 102.75-150
                            eulerRotation.y: -45
                            position.z: 398.5
                        }

                        InstanceListEntry {
                            id: instanceListEntry68
                            position.x: 138-150
                            position.z: 433.75
                            eulerRotation.y: -45
                        }

                        InstanceListEntry {
                            id: instanceListEntry69
                            position.z: 469
                            position.x: 173.25-150
                            eulerRotation.y: -45
                        }

                        InstanceListEntry {
                            id: instanceListEntry71
                            eulerRotation.y: -90
                            position.z: 547.25
                            position.x: 205.5-150
                        }

                        InstanceListEntry {
                            id: instanceListEntry72
                            eulerRotation.y: -90
                            position.z: 847
                            position.x: 205.5-150
                        }

                        InstanceListEntry {
                            id: instanceListEntry73
                            eulerRotation.y: -90
                            position.z: 897
                            position.x: 205.5-150
                        }

                        InstanceListEntry {
                            id: instanceListEntry75
                            scale.x: 1
                            eulerRotation.y: -90
                            position.z: 1047
                            position.x: 305.5-150
                        }

                        InstanceListEntry {
                            id: instanceListEntry74
                            eulerRotation.y: -90
                            position.z: 1047+50
                            position.x: 305.5-150
                        }

                        InstanceListEntry {
                            id: instanceListEntry77
                            eulerRotation.y: -90
                            position.z: 1047+50+50
                            position.x: 305.5-150
                        }

                        InstanceListEntry {
                            id: instanceListEntry78
                            eulerRotation.y: -90
                            position.z: 1047+50+50+50
                            position.x: 305.5-150
                        }

                        InstanceListEntry {
                            id: instanceListEntry79
                            eulerRotation.y: -90
                            position.z: 1047+50+50+50+50
                            position.x: 305.5-150
                        }

                        InstanceListEntry {
                            id: instanceListEntry94
                            eulerRotation.y: -90
                            position.z: 150
                            position.x: -400
                        }

                        InstanceListEntry {
                            id: instanceListEntry95
                            eulerRotation.y: -90
                            position.z: 200
                            position.x: -400
                        }

                        InstanceListEntry {
                            id: instanceListEntry96
                            eulerRotation.y: -90
                            position.z: 250
                            position.x: -400
                        }

                        InstanceListEntry {
                            id: instanceListEntry97
                            eulerRotation.y: -90
                            position.z: 300
                            position.x: -400
                        }

                        InstanceListEntry {
                            id: instanceListEntry98
                            eulerRotation.y: -90
                            position.z: 350
                            position.x: -400
                        }

                        InstanceListEntry {
                            id: instanceListEntry100
                            position.z: 428.25
                            position.x: -432.25
                            eulerRotation.y: -135
                        }

                        InstanceListEntry {
                            id: instanceListEntry103
                            eulerRotation.y: -90
                            position.z: 785.5
                            position.x: -536
                        }

                        InstanceListEntry {
                            id: instanceListEntry104
                            eulerRotation.y: -90
                            position.z: 835.5
                            position.x: -536
                        }

                        InstanceListEntry {
                            id: instanceListEntry107
                            eulerRotation.y: -45
                            position.z: 913.5
                            position.x: -503.75
                        }

                        InstanceListEntry {
                            id: instanceListEntry108
                            eulerRotation.y: -90
                            position.z: 991.5
                            position.x: -471.5
                        }

                        InstanceListEntry {
                            id: instanceListEntry109
                            eulerRotation.y: -90
                            position.z: 1041.50
                            position.x: -471.5
                        }

                        InstanceListEntry {
                            id: instanceListEntry110
                            eulerRotation.y: -90
                            position.z: 1091.50
                            position.x: -471.5
                        }

                        InstanceListEntry {
                            id: instanceListEntry111
                            eulerRotation.y: -90
                            position.z: 1141.50
                            position.x: -471.5
                        }

                        InstanceListEntry {
                            id: instanceListEntry112
                            eulerRotation.y: -90
                            position.z: 1191.50
                            position.x: -471.5
                        }

                        InstanceListEntry {
                            id: instanceListEntry113
                            eulerRotation.y: -90
                            position.z: 1241.50
                            position.x: -471.5
                        }

                        InstanceListEntry {
                            id: instanceListEntry114
                            eulerRotation.y: -90
                            position.z: 1291.50
                            position.x: -471.5
                        }

                        InstanceListEntry {
                            id: instanceListEntry115
                            eulerRotation.y: -90
                            position.z: 1341.50
                            position.x: -471.5
                        }

                        InstanceListEntry {
                            id: instanceListEntry116
                            eulerRotation.y: -90
                            position.z: 1391.50
                            position.x: -471.5

                        }

                        InstanceListEntry {
                            id: instanceListEntry117
                            eulerRotation.y: -90
                            position.z: 1441.50
                            position.x: -471.5
                        }

                        InstanceListEntry {
                            id: instanceListEntry118
                            eulerRotation.y: -90
                            position.z: 1491.50
                            position.x: -471.5
                        }

                        InstanceListEntry {
                            id: instanceListEntry120
                            position.x: -661
                            eulerRotation.y: 0
                            position.z: 466.75
                        }

                        InstanceListEntry {
                            id: instanceListEntry123
                            position.x: -100
                            eulerRotation.y: -90
                            position.z: -150
                        }

                        InstanceListEntry {
                            id: instanceListEntry124
                            position.x: -300
                            eulerRotation.y: -90
                            position.z: -100
                        }

                        InstanceListEntry {
                            id: instanceListEntry125
                            position.x: -300
                            eulerRotation.y: -90
                            position.z: -150
                        }

                        InstanceListEntry {
                            id: smallSideContainerBelts
                            position.x: -100
                            eulerRotation.y: -90
                            position.z: -100
                        }

                        InstanceListEntry {
                            id: instanceListEntry126
                            eulerRotation.y: 180
                            position.x: -450
                        }

                        InstanceListEntry {
                            id: instanceListEntry127
                            eulerRotation.y: 180
                            position.x: -500
                        }

                        InstanceListEntry {
                            id: instanceListEntry128
                            eulerRotation.y: 180
                            position.x: -550
                        }

                        InstanceListEntry {
                            id: instanceListEntry129
                            eulerRotation.y: 180
                            position.x: -600
                        }

                        InstanceListEntry {
                            id: instanceListEntry130
                            eulerRotation.y: 180
                            position.y: 0
                            position.x: -700
                        }

                        InstanceListEntry {
                            id: instanceListEntry131
                            eulerRotation.y: 180
                            position.y: 0
                            position.x: -650
                        }

                        InstanceListEntry {
                            id: instanceListEntry132
                            eulerRotation.y: 180
                            position.x: -750
                        }

                        InstanceListEntry {
                            id: instanceListEntry12
                            position.z: 0
                            position.x: 1625
                            eulerRotation.y: 180
                        }

                        InstanceListEntry {
                            id: instanceListEntry2
                            eulerRotation.y: 180
                            position.x: -800
                        }

                        InstanceListEntry {
                            id: instanceListEntry26
                            eulerRotation.y: 180
                            position.x: 500
                        }

                        InstanceListEntry {
                            id: instanceListEntry27
                            eulerRotation.y: 180
                            position.x: 550
                        }

                        InstanceListEntry {
                            id: instanceListEntry28
                            eulerRotation.y: 180
                            position.x: 600
                        }

                        InstanceListEntry {
                            id: instanceListEntry29
                            eulerRotation.y: 180
                            position.x: 650
                        }

                        InstanceListEntry {
                            id: instanceListEntry30
                            eulerRotation.y: 180
                            position.x: 700
                        }

                        InstanceListEntry {
                            id: instanceListEntry31
                            eulerRotation.y: 180
                            position.x: 750
                        }

                        InstanceListEntry {
                            id: instanceListEntry32
                            eulerRotation.y: 180
                            position.x: 1000
                            position.z: 0
                        }

                        InstanceListEntry {
                            id: instanceListEntry33
                            eulerRotation.y: 180
                            position.x: 1050
                        }

                        InstanceListEntry {
                            id: instanceListEntry34
                            eulerRotation.y: 180
                            position.x: 1100
                        }

                        InstanceListEntry {
                            id: instanceListEntry35
                            eulerRotation.y: 180
                            position.x: 1150
                        }

                        InstanceListEntry {
                            id: instanceListEntry36
                            eulerRotation.y: 180
                            position.x: 1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry23
                            eulerRotation.y: 180
                            position.x: 1375
                        }

                        InstanceListEntry {
                            id: instanceListEntry39
                            eulerRotation.y: 180
                            position.x: 1425
                        }

                        InstanceListEntry {
                            id: instanceListEntry40
                            eulerRotation.y: 180
                            position.x: 1475
                        }

                        InstanceListEntry {
                            id: instanceListEntry41
                            eulerRotation.y: 180
                            position.x: 1525
                        }

                        InstanceListEntry {
                            id: instanceListEntry42
                            eulerRotation.y: 180
                            position.x: 1575
                        }

                        InstanceListEntry {
                            id: instanceListEntry66
                            eulerRotation.y: 180
                            position.x: -50
                        }

                        InstanceListEntry {
                            id: instanceListEntry86
                            eulerRotation.y: 180
                            position.x: -100
                        }

                        InstanceListEntry {
                            id: instanceListEntry87
                            eulerRotation.y: 180
                            position.x: -150
                        }

                        InstanceListEntry {
                            id: instanceListEntry88
                            eulerRotation.y: 180
                            position.x: -200
                        }

                        InstanceListEntry {
                            id: instanceListEntry89
                            eulerRotation.y: 180
                            position.x: -250
                        }

                        InstanceListEntry {
                            id: instanceListEntry90
                            eulerRotation.y: 180
                            position.x: -300
                        }

                        InstanceListEntry {
                            id: instanceListEntry91
                            eulerRotation.y: 180
                            position.x: -350
                        }

                        InstanceListEntry {
                            id: instanceListEntry92
                            position.y: 0
                            eulerRotation.y: 180
                            position.x: -400
                        }

                        InstanceListEntry {
                            id: instanceListEntry10
                            position.z: 425
                            eulerRotation.y: -90
                            position.x: 550
                        }

                        InstanceListEntry {
                            id: instanceListEntry11
                            position.y: 0
                            position.z: 475
                            position.x: 550
                            eulerRotation.y: -90
                        }

                        InstanceListEntry {
                            id: instanceListEntry20
                            position.y: 0
                            eulerRotation.y: -90
                            position.z: 725
                            position.x: 550
                        }

                        InstanceListEntry {
                            id: instanceListEntry21
                            eulerRotation.y: -90
                            position.z: 775
                            position.x: 550
                        }

                        InstanceListEntry {
                            id: instanceListEntry22
                            position.y: 0
                            eulerRotation.y: -90
                            position.z: 825
                            position.x: 550
                        }

                        InstanceListEntry {
                            id: instanceListEntry
                            eulerRotation.y: -90
                            position.z: 150
                            position.x: 550
                            position.y: 0
                        }

                        InstanceListEntry {
                            id: instanceListEntry9
                            eulerRotation.y: -90
                            position.z: 200
                            position.x: 550
                            position.y: 0
                        }

                        InstanceListEntry {
                            id: instanceListEntry13
                            position.y: 0
                            eulerRotation.y: -90
                            position.z: 250
                            position.x: 200+350
                        }








































                    }

                    BakedLightmap {
                        id: blm_straightBelt
                        loadPrefix: "lightmaps"
                        key: "blm_straightBelt"
                        enabled: true
                    }











                }

                Model {
                    id: curved90DBelt
                    x: 0
                    y: 0
                    source: "meshes/Belt_90D_1/meshes/belt_90D_1_mesh.mesh"
                    usedInBakedLighting: true
                    castsReflections: false

                    instancing: instanceList1
                    z: 0
                    scale.z: 100
                    scale.y: 100
                    scale.x: 100
                    receivesReflections: false
                    materials: [basicWhite,belt]

                    instanceRoot: curved90DBelt

                    InstanceList {
                        id: instanceList1
                        instances: [line3BeltLine90,line2BeltLine90,instanceListEntry56,instanceListEntry102]

                        InstanceListEntry {
                            id: line3BeltLine90
                            eulerRotation.y: 90
                            position.z: 250
                            position.x: 350+350
                        }

                        InstanceListEntry {
                            id: line2BeltLine90
                            eulerRotation.y: -90
                            position.x: 205.5-150
                            position.z: 947


                        }

                        InstanceListEntry {
                            id: instanceListEntry56
                            eulerRotation.y: 90
                            position.z: 451
                            position.x: 325.75-150
                        }

                        InstanceListEntry {
                            id: instanceListEntry102
                            eulerRotation.y: 180
                            position.z: 460.5
                            position.x: -510.5
                        }
                    }


                }
                Model {
                    id: curved45DBelt
                    x: 0
                    y: 0
                    source: "meshes/Belt_45D_1/meshes/belt_45D_1_mesh.mesh"
                    usedInBakedLighting: true
                    castsReflections: false
                    receivesReflections: false
                    property bool isReversed: false
                    instanceRoot: curved45DBelt
                    instancing: instanceList2
                    eulerRotation.y: 0
                    scale.z: 100
                    scale.y: 100
                    scale.x: 100
                    z: 0
                    materials: [basicWhite,belt]

                    InstanceList {
                        id: instanceList2
                        instances: [instanceListEntry80,instanceListEntry82,instanceListEntry83,instanceListEntry84,instanceListEntry85,instanceListEntry44,instanceListEntry105]

                        InstanceListEntry {
                            id: instanceListEntry80
                            position.x: -150
                            eulerRotation.y: -90
                            position.z: 275
                        }





                        InstanceListEntry {
                            id: instanceListEntry82
                            position.z: 351
                            eulerRotation.y: 90
                            position.x: 1234
                        }

                        InstanceListEntry {
                            id: instanceListEntry83
                            eulerRotation.y: 45
                            position.z: 986.5
                            position.x: 1219.2
                        }

                        InstanceListEntry {
                            id: instanceListEntry84
                            eulerRotation.y: -225
                            position.z: 775
                            position.x: 1345
                        }

                        InstanceListEntry {
                            id: instanceListEntry85
                            eulerRotation.y: 90
                            position.z: 880
                            position.x: 1429.5
                        }

                        InstanceListEntry {
                            id: instanceListEntry44
                            eulerRotation.y: 180
                            position.z: 426
                            position.x: 276-150
                        }






                        InstanceListEntry {
                            id: instanceListEntry105
                            eulerRotation.y: -90
                            position.z: 860.4
                            position.x: -536
                        }




                    }
                }

                Model {
                    id: curved45DBeltInverse
                    x: -0
                    y: -0
                    source: "meshes/Belt_45D_1/meshes/belt_45D_1_mesh.mesh"
                    usedInBakedLighting: true
                    castsReflections: false
                    receivesReflections: false
                    instancing: curve45ReverseInstances
                    property bool isReversed: false
                    instanceRoot: curved45DBeltInverse

                    eulerRotation.y: 0
                    scale.z: 100
                    scale.y: 100
                    scale.x: 100
                    z: 0
                    materials: [basicWhite,beltInverse]

                    InstanceList {
                        id: curve45ReverseInstances
                        instances: [instanceListEntry122,instanceListEntry133,instanceListEntry134,instanceListEntry135,instanceListEntry136,instanceListEntry137,instanceListEntry138,instanceListEntry139]

                        InstanceListEntry {
                            id: instanceListEntry122
                            eulerRotation.y: 90
                            position.z: 522.25
                            position.x: 205.5-150
                        }

                        InstanceListEntry {
                            id: instanceListEntry133
                            eulerRotation.y: -90
                            position.z: 476
                            position.x: 175.75
                        }

                        InstanceListEntry {
                            id: instanceListEntry134
                            eulerRotation.y: 90
                            position.z: 966.5
                            position.x: -471.5
                        }

                        InstanceListEntry {
                            id: instanceListEntry135
                            position.x: -686
                            eulerRotation.y: -180
                            position.z: 466.75
                        }

                        InstanceListEntry {
                            id: instanceListEntry136
                            position.x: -600.5
                            eulerRotation.y: -225
                            position.z: 481.5
                        }

                        InstanceListEntry {
                            id: instanceListEntry137
                            eulerRotation.y: 0
                            position.z: 460.5
                            position.x: -485.5
                        }

                        InstanceListEntry {
                            id: instanceListEntry138
                            eulerRotation.y: 45
                            position.z: 410.5
                            position.x: -414.75
                        }

                        InstanceListEntry {
                            id: instanceListEntry139
                            eulerRotation.y: -90
                            position.z: 175
                            position.x: 1100
                        }
                    }
                }

                Model {
                    id: inclineStraightModel
                    x: 0
                    y: 0
                    source: "meshes/Belt_Incline_1/meshes/belt_Incline_1.mesh"
                    usedInBakedLighting: true
                    castsReflections: false
                    instancing: instanceList3
                    materials: [basicWhite,beltInverse]

                    instanceRoot: straightBelt
                    // instancing: instanceList
                    receivesReflections: false
                    scale.z: 100
                    scale.y: 100
                    scale.x: 100
                    z: 0

                    InstanceList {
                        id: instanceList3
                        instances: [instanceListEntry140]

                        InstanceListEntry {
                            id: instanceListEntry140
                            position.x: 50
                        }
                    }
                }
                Model {
                    id: inclineStraightModelReversed
                    x: 0
                    y: 0
                    source: "meshes/Belt_Incline_1/meshes/belt_Incline_1.mesh"
                    usedInBakedLighting: true
                    castsReflections: false
                    instancing: instanceList4
                    materials: [basicWhite,belt]

                    instanceRoot: straightBelt
                    // instancing: instanceList
                    receivesReflections: false
                    scale.z: 100
                    scale.y: 100
                    scale.x: 100
                    z: 0

                    InstanceList {
                        id: instanceList4
                        instances: [,instanceListEntry141]

                        InstanceListEntry {
                            id: instanceListEntry141
                            eulerRotation.y: 180
                            position.x: 450
                        }


                    }
                }
                Model {
                    id: upperStraightModel
                    x: 0
                    y: 0
                    source: "meshes/Belt_UpperStraight_1/meshes/belt_UpperStraight_1.mesh"
                    usedInBakedLighting: true
                    castsReflections: false
                    instancing: instanceList5
                    materials: [basicWhite,beltInverse]

                    instanceRoot: straightBelt
                    // instancing: instanceList
                    receivesReflections: false
                    scale.z: 100
                    scale.y: 100
                    scale.x: 100
                    z: 0

                    InstanceList {
                        id: instanceList5
                        instances: [,instanceListEntry142,instanceListEntry143,instanceListEntry144,instanceListEntry145,instanceListEntry146]

                        InstanceListEntry {
                            id: instanceListEntry142
                            position.x: 150
                        }

                        InstanceListEntry {
                            id: instanceListEntry143
                            position.x: 200
                        }

                        InstanceListEntry {
                            id: instanceListEntry144
                            position.x: 250
                        }

                        InstanceListEntry {
                            id: instanceListEntry145
                            position.x: 300
                        }

                        InstanceListEntry {
                            id: instanceListEntry146
                            position.x: 350
                        }




                    }
                }

                Model {
                    id: curved90DBelt1
                    x: 0
                    y: 0
                    source: "meshes/Belt_90D_1/meshes/belt_90D_1_mesh.mesh"
                    usedInBakedLighting: true
                    castsReflections: false
                    instancing: instanceList6
                    z: 0
                    scale.z: 100
                    scale.y: 100
                    scale.x: 100
                    receivesReflections: false
                    materials: [basicWhite,beltInverse]
                    instanceRoot: curved90DBelt1

                    InstanceList {
                        id: instanceList6
                        instances: [instanceListEntry1]

                        InstanceListEntry {
                            id: instanceListEntry1

                            eulerRotation.y: 90
                            position.z: 997
                            position.x: 305.5-150
                        }
                    }
                }

            }


            PerspectiveCamera {
                id: sceneCamera

                x: 3192.821
                y: 2724.444
                frustumCullingEnabled: false
                z: 3250.11206
                clipFar: 20000
                fieldOfView: processingService.camera_fov
                eulerRotation.z: 0
                eulerRotation.y: 45.00002
                eulerRotation.x: -37.98194


                NumberAnimation {
                    id:startCameraAnim
                    target: sceneCamera
                    property: "z"
                    duration: 100
                    easing.type: Easing.InOutQuad
                    running: true
                    from: 3249
                    to: 3250.11206
                }

                ParallelAnimation {
                    id: resetCameraAnimation

                    PropertyAnimation {
                        target: sceneCamera
                        property: "position"
                        duration: factory.transitionspeed
                        easing.type: Easing.InOutQuad
                        to: Qt.vector3d(3192.821, 2724.444, 3250.11206)
                    }

                    PropertyAnimation {
                        target: sceneCamera
                        property: "eulerRotation"
                        duration: factory.transitionspeed
                        easing.type: Easing.InOutQuad
                        to: Qt.vector3d(-37.98194, 45.00002, 0)
                    }
                }
            }


            /*NOT FOR DS:*/StaticRigidBody {
                x: -1167.807
                y: -20.957
                z: -1446.49817
                eulerRotation.x: -90
                collisionShapes: PlaneShape {}
                Model {
                    id: plane
                    //x: -1167.807
                    //y: -20.957
                    visible: true
                    source: "#Rectangle"
                    usedInBakedLighting: true
                    castsReflections: false
                    receivesShadows: true
                    receivesReflections: false
                    //z: -1446.49817
                    scale.z: 1
                    scale.y: 300
                    scale.x: 300
                    //eulerRotation.x: -90
                    materials: floor


                }

            }

            MyContainderLOD {
                id: containderLOD
                //camera: sceneCamera
                //distances: distanceLOD
                eulerRotation.y: 135
                eulerRotation.z: 0
                //fadeDistance: 200
                x: 1190.312
                y: 0
                visible: true
                z: 1014.79926
                containerBasicMaterial:basicWhite

            }

            MyWeldingMachineLOD {
                id: weldingMachineLOD
                //camera: sceneCamera
                //distances: distanceLOD
                //fadeDistance: 200
                x: 1234
                y: 0
                visible: true
                z: 576.14032
                weldingBasicMaterial: basicWhite
                weldingBeltMaterial: belt
            }

            MyVisualQA_LOD {
                id: visualQA_LOD
                //camera: sceneCamera
                //distances: distanceLOD
                eulerRotation.x: 0
                eulerRotation.y: -90
                //fadeDistance: 200
                x: 1250
                visible: true
                elecVisualQaBasicMaterial: basicWhite
                elecVisualQaBeltInverseMaterial: beltInverse
            }

            MyElectricSolder_LOD {
                id: electricSolder_LOD
                //camera: sceneCamera
                //distances: distanceLOD
                //fadeDistance: 200
                x: 550
                y: -0
                visible: true
                z: 675
                elecQABasicMaterial: basicWhite
                isPaused: !isRunning
            }

            MyHopper_LOD {
                id: hopper_LOD
                /*camera: sceneCamera
                distances: distanceLOD
                fadeDistance: 200*/
                x: -347.261
                y: -0
                visible: true
                z: 1207.05652
                hopperBasicMaterial: basicWhite
            }

            MyMill_LOD {
                id: mill_LOD
                //camera: sceneCamera
                //distances: distanceLOD
                //fadeDistance: 200
                x: -20.4
                y: -0
                visible: true
                z: 1085.83594
                millBasicMaterial: basicWhite
                isPaused: !isRunning
            }

            MyVisualQC_LOD {
                id: visualQC_LOD
                //camera: sceneCamera
                //distances: distanceLOD
                //fadeDistance: 200
                x: 55.587
                y: 2.281
                visible: true
                z: 597.71576
                visualQCbasicMaterial: basicWhite
                visualQCbeltMaterial: belt
                isPaused: !isRunning
            }

            Model {
                id: visualQC_med1
                x: -535.612
                y: -0
                visible: true
                source: "meshes/VisualQA_Machine_med/meshes/qa_Machine_Belt.mesh"
                usedInBakedLighting: true
                castsReflections: false
                z: 535.93829
                scale.z: 100
                scale.y: 100
                scale.x: 100
                materials: [basicWhite,belt]
                eulerRotation.z: 0.00002
                eulerRotation.y: 180
                eulerRotation.x: -0.00003

                Model {
                    id: model
                    x: 0
                    y: 0
                    source: "meshes/LaserGate/meshes/lightScreenGate.mesh"
                    usedInBakedLighting: true
                    castsReflections: false
                    scale.z: 0.01
                    scale.y: 0.01
                    scale.x: 0.01
                    z: -2.20161
                    materials: basicWhite

                    Model {
                        id: model1
                        source: "meshes/LaserGate/meshes/lightScreenLaser.mesh"
                        usedInBakedLighting: true
                        castsReflections: false
                        materials: redLaserMaterial
                    }
                }
            }

            MyPrinter3DLOD {
                id: printer3DLOD
                //camera: sceneCamera
                //distances: distanceLOD
                eulerRotation.x: -0.00002
                eulerRotation.y: -90
                eulerRotation.z: -0.00002
                //fadeDistance: 200
                scale.x: 0.5
                scale.y: 0.5
                scale.z: 0.5
                x: -344.53
                y: -0
                visible: true
                z: 1125.91711
                printerBasicWhite:basicWhite
            }

            Node {
                id: robotArmsGroup
                visible: true

                RobotArm_low {
                    id: robotArm_low
                    x: -344.003
                    y: 10
                    eulerRotation.z: 0
                    eulerRotation.y:-95
                    eulerRotation.x: 0
                    scale.z: 120
                    scale.y: 120
                    scale.x: 120
                    z: 268.10217
                    robotArm_VeryLow_BaseMaterials:basicWhite
                    timelineCurrentFrameInt: Math.floor(Math.random() * (20834 - 0 + 1)) + 0;
                    sequentialAnimationPaused: !isRunning





                }

                RobotArm_low {
                    id: robotArm_low1
                    x: -398.232
                    y: 10
                    eulerRotation.z: 0
                    eulerRotation.y:0
                    eulerRotation.x: 0
                    scale.z: 120
                    scale.y: 120
                    scale.x: 120
                    z: 46.49227
                    robotArm_VeryLow_BaseMaterials:basicWhite
                    timelineCurrentFrameInt: Math.floor(Math.random() * (20834 - 0 + 1)) + 0;
                    sequentialAnimationPaused: !isRunning




                }

                RobotArm_low {
                    id: robotArm_low3
                    x: -423.116
                    y: 10
                    z: 1143.40845
                    timelineCurrentFrameInt: Math.floor(Math.random() * (20834 - 0 + 1)) + 0
                    scale.z: 120
                    scale.y: 120
                    scale.x: 120
                    robotArm_VeryLow_BaseMaterials: basicWhite
                    eulerRotation.z: 0
                    eulerRotation.y: 90
                    eulerRotation.x: 0
                    sequentialAnimationPaused: !isRunning
                }
                RobotArm_low {
                    id: robotArm_low4
                    x: -423.116
                    y: 10
                    z: 1428.86584
                    timelineCurrentFrameInt: Math.floor(Math.random() * (20834 - 0 + 1)) + 0
                    scale.z: 120
                    scale.y: 120
                    scale.x: 120
                    robotArm_VeryLow_BaseMaterials: basicWhite
                    eulerRotation.z: 0
                    eulerRotation.y: 90
                    eulerRotation.x: 0
                    sequentialAnimationPaused: !isRunning
                }
                RobotArm_low {
                    id: robotArm_low5
                    x: -547.114
                    y: 10
                    z: 1313.36792
                    timelineCurrentFrameInt: Math.floor(Math.random() * (20834 - 0 + 1)) + 0
                    scale.z: 120
                    scale.y: 120
                    scale.x: 120
                    robotArm_VeryLow_BaseMaterials: basicWhite
                    eulerRotation.z: 0
                    eulerRotation.y: -90
                    eulerRotation.x: 0
                    sequentialAnimationPaused: !isRunning
                }

                RobotArm_low {
                    id: robotArm_low6
                    x: -149.053
                    y: 10
                    z: 48.16114
                    timelineCurrentFrameInt: Math.floor(Math.random() * (20834 - 0 + 1)) + 0
                    scale.z: 120
                    scale.y: 120
                    scale.x: 120
                    robotArm_VeryLow_BaseMaterials: basicWhite
                    eulerRotation.z: 0.00001
                    eulerRotation.y: -0
                    eulerRotation.x: -0.00001
                    sequentialAnimationPaused: !isRunning
                }
                RobotArm_low {
                    id: robotArm_low7
                    x: 79.199
                    y: 10
                    z: 454.0787
                    timelineCurrentFrameInt: Math.floor(Math.random() * (20834 - 0 + 1)) + 0
                    scale.z: 120
                    scale.y: 120
                    scale.x: 120
                    robotArm_VeryLow_BaseMaterials: basicWhite
                    eulerRotation.z: 0
                    eulerRotation.y: -45
                    eulerRotation.x: -0
                    sequentialAnimationPaused: !isRunning
                }
                RobotArm_low {
                    id: robotArm_low8
                    x: 86.67
                    y: 10
                    z: 1014.48071
                    timelineCurrentFrameInt: Math.floor(Math.random() * (20834 - 0 + 1)) + 0
                    scale.z: 120
                    scale.y: 120
                    scale.x: 120
                    robotArm_VeryLow_BaseMaterials: basicWhite
                    eulerRotation.z: 0
                    eulerRotation.y: -45
                    eulerRotation.x: -0
                    sequentialAnimationPaused: !isRunning
                }
                RobotArm_low {
                    id: robotArm_low9
                    x: 154.038
                    y: 10
                    z: 1301.40088
                    timelineCurrentFrameInt: Math.floor(Math.random() * (20834 - 0 + 1)) + 0
                    scale.z: 120
                    scale.y: 120
                    scale.x: 120
                    robotArm_VeryLow_BaseMaterials: basicWhite
                    eulerRotation.z: -0
                    eulerRotation.y: -177.18025
                    eulerRotation.x: -0.00002
                    sequentialAnimationPaused: !isRunning
                }
                RobotArm_low {
                    id: robotArm_low10
                    x: 551.611
                    y: 10
                    z: 46.76728
                    timelineCurrentFrameInt: Math.floor(Math.random() * (20834 - 0 + 1)) + 0
                    scale.z: 120
                    scale.y: 120
                    scale.x: 120
                    robotArm_VeryLow_BaseMaterials: basicWhite
                    eulerRotation.z: 0
                    eulerRotation.y: 2.81974
                    eulerRotation.x: 0.00002
                    sequentialAnimationPaused: !isRunning
                }
                RobotArm_low {
                    id: robotArm_low11
                    x: 611.755
                    y: 10
                    z: 225.57423
                    timelineCurrentFrameInt: Math.floor(Math.random() * (20834 - 0 + 1)) + 0
                    scale.z: 120
                    scale.y: 120
                    scale.x: 120
                    robotArm_VeryLow_BaseMaterials: basicWhite
                    eulerRotation.z: -0.00003
                    eulerRotation.y: -90
                    eulerRotation.x: -0.00001
                    sequentialAnimationPaused: !isRunning
                }
                RobotArm_low {
                    id: robotArm_low12
                    x: 550.097
                    y: 10
                    z: 981.56024
                    timelineCurrentFrameInt: Math.floor(Math.random() * (20834 - 0 + 1)) + 0
                    scale.z: 120
                    scale.y: 120
                    scale.x: 120
                    robotArm_VeryLow_BaseMaterials: basicWhite
                    eulerRotation.z: -0
                    eulerRotation.y: 0
                    eulerRotation.x: 0.00006
                    sequentialAnimationPaused: !isRunning
                }
                RobotArm_low {
                    id: robotArm_low13
                    x: 1101.008
                    y: 10.001
                    z: 46.35036
                    timelineCurrentFrameInt: Math.floor(Math.random() * (20834 - 0 + 1)) + 0
                    scale.z: 120
                    scale.y: 120
                    scale.x: 120
                    robotArm_VeryLow_BaseMaterials: basicWhite
                    eulerRotation.z: -0
                    eulerRotation.y: 0
                    eulerRotation.x: 0.00006
                    sequentialAnimationPaused: !isRunning
                }
                RobotArm_low {
                    id: robotArm_low14
                    x: 1285.051
                    y: 10
                    z: 761.29504
                    timelineCurrentFrameInt: Math.floor(Math.random() * (20834 - 0 + 1)) + 0
                    scale.z: 120
                    scale.y: 120
                    scale.x: 120
                    robotArm_VeryLow_BaseMaterials: basicWhite
                    eulerRotation.z: -0.00008
                    eulerRotation.y: -90.00003
                    eulerRotation.x: -0.00002
                    sequentialAnimationPaused: !isRunning
                }
                RobotArm_low {
                    id: robotArm_low15
                    x: 1285.051
                    y: 10
                    z: 923.7027
                    timelineCurrentFrameInt: Math.floor(Math.random() * (20834 - 0 + 1)) + 0
                    scale.z: 120
                    scale.y: 120
                    scale.x: 120
                    robotArm_VeryLow_BaseMaterials: basicWhite
                    eulerRotation.z: -0.00008
                    eulerRotation.y: -90.00003
                    eulerRotation.x: -0.00002
                    sequentialAnimationPaused: !isRunning
                }
                RobotArm_low {
                    id: robotArm_low16
                    x: 1428.428
                    y: 10
                    z: 50.8244
                    timelineCurrentFrameInt: Math.floor(Math.random() * (20834 - 0 + 1)) + 0
                    scale.z: 120
                    scale.y: 120
                    scale.x: 120
                    robotArm_VeryLow_BaseMaterials: basicWhite
                    eulerRotation.z: -0.00005
                    eulerRotation.y: 179.99997
                    eulerRotation.x: -0.00003
                    sequentialAnimationPaused: !isRunning
                }
                RobotArm_low {
                    id: robotArm_low17
                    x: 1522.533
                    y: 10
                    z: 50.82446
                    timelineCurrentFrameInt: Math.floor(Math.random() * (20834 - 0 + 1)) + 0
                    scale.z: 120
                    scale.y: 120
                    scale.x: 120
                    robotArm_VeryLow_BaseMaterials: basicWhite
                    eulerRotation.z: -0.00005
                    eulerRotation.y: 179.99997
                    eulerRotation.x: -0.00003
                    sequentialAnimationPaused: !isRunning
                }
                RobotArm_low {
                    id: robotArm_low18
                    x: -302.441
                    y: 9.998
                    z: -49.67284
                    timelineCurrentFrameInt: Math.floor(Math.random() * (20834 - 0 + 1)) + 0
                    scale.z: 120
                    scale.y: 120
                    scale.x: 120
                    robotArm_VeryLow_BaseMaterials: basicWhite
                    eulerRotation.z: -0.00005
                    eulerRotation.y: 0
                    eulerRotation.x: -0.00003
                    sequentialAnimationPaused: !isRunning
                }
                RobotArm_low {
                    id: robotArm_low19
                    x: -98.911
                    y: 9.998
                    z: -49.67284
                    timelineCurrentFrameInt: Math.floor(Math.random() * (20834 - 0 + 1)) + 0
                    scale.z: 120
                    scale.y: 120
                    scale.x: 120
                    robotArm_VeryLow_BaseMaterials: basicWhite
                    eulerRotation.z: -0.00005
                    eulerRotation.y: 0
                    eulerRotation.x: -0.00003
                    sequentialAnimationPaused: !isRunning
                }
            }

            Node {
                id: lights
                visible: true

                SpotLight {
                    id: lightSpot
                    x: -6.441
                    y: 3869.614
                    visible: true
                    bakeMode: Light.BakeModeAll
                    innerConeAngle: 66
                    shadowMapFar: 20000
                    brightness: (themeToggle >= !themeToggle) ? 500 : 350
                    ambientColor: "#000000"
                    eulerRotation.z: -168.19606
                    shadowMapQuality: Light.ShadowMapQualityVeryHigh
                    shadowFactor: 100
                    castsShadow: false
                    coneAngle: 100
                    eulerRotation.x: -71.60654
                    eulerRotation.y: -150.15918
                    z: -234.76422
                }

                SpotLight {
                    id: lightSpot11
                    x: -493.326
                    y: 2265.272
                    visible: true
                    bakeMode: Light.BakeModeAll
                    shadowFilter: 3
                    shadowMapQuality: Light.ShadowMapQualityVeryHigh
                    shadowFactor: 100
                    castsShadow: false
                    innerConeAngle: 0
                    coneAngle: 74
                    brightness: (themeToggle >= !themeToggle) ? 50 : 100
                    z: 529.88409
                    eulerRotation.x: -90
                    eulerRotation.y: 0
                }
                SpotLight {
                    id: lightSpot111
                    x: 1201.985
                    y: 2265.272
                    visible: true
                    bakeMode: Light.BakeModeAll
                    shadowFilter: 3
                    shadowMapQuality: Light.ShadowMapQualityVeryHigh
                    shadowFactor: 100
                    castsShadow: false
                    innerConeAngle: 0
                    coneAngle: 74
                    brightness: (themeToggle >= !themeToggle) ? 50 : 100
                    z: 529.88428
                    eulerRotation.x: -90
                    eulerRotation.y: 0
                }
            }

            Node {
                id: hopper_LOD3
                x: -813.45
                y: -0
                visible: true
                scale.z: 1.125
                scale.y: 1.125
                scale.x: 1.125
                eulerRotation.z: -0.00002
                eulerRotation.y: -90
                eulerRotation.x: -0.00003
                z: 0
                //fadeDistance: 200
                //distances: distanceLOD
                /*Model {
                    id: hopperModel_med3
                    visible: true
                    source: "meshes/Hopper_med/meshes/hopper_med.mesh"
                    castsReflections: false
                    scale.z: 100
                    scale.y: 100
                    scale.x: 100
                    materials: basicWhite
                }*/

                Model {
                    id: hopperModel_low3
                    x: 0
                    y: 0
                    visible: true
                    source: "meshes/Hopper_low/meshes/hopper_low.mesh"
                    usedInBakedLighting: true
                    castsReflections: false
                    z: 0
                    scale.z: 100
                    scale.y: 100
                    scale.x: 100
                    materials: basicWhite
                }
                //camera: sceneCamera
            }

            MyPrinter3DLOD {
                id: printer3DLOD1
                x: -350.451
                y: 8
                visible: true
                z: 1407.44336
                scale.z: 0.5
                scale.y: 0.5
                scale.x: 0.5
                //fadeDistance: 200
                eulerRotation.z: -0.00002
                eulerRotation.y: -90
                eulerRotation.x: -0.00002
                //distances: distanceLOD
                //camera: sceneCamera
                printerBasicWhite:basicWhite

            }

            MyPrinter3DLOD {
                id: printer3DLOD2
                x: -625.79
                y: 4.999
                visible: true
                z: 1327.61975
                scale.z: 0.5
                scale.y: 0.5
                scale.x: 0.5
                //fadeDistance: 200
                eulerRotation.z: -0.00002
                eulerRotation.y: 90
                eulerRotation.x: -0.00002
                //distances: distanceLOD
                //camera: sceneCamera
                printerBasicWhite:basicWhite
            }

            MyContainderLOD {
                id: containderLOD8
                x: 1429.548
                y: 7
                visible: true
                eulerRotation.x: -0
                z: 1021.39246
                //fadeDistance: 200
                eulerRotation.z: 0
                eulerRotation.y: 180
                //distances: distanceLOD
                containerBasicMaterial: basicWhite
                //camera: sceneCamera
            }

            MyContainderLOD {
                id: containderLOD9
                x: 1691.738
                y: 7
                visible: true
                z: -0.00005
                //fadeDistance: 200
                eulerRotation.z: 0
                eulerRotation.y: -90
                eulerRotation.x: -0
                //distances: distanceLOD
                containerBasicMaterial: basicWhite
                //camera: sceneCamera
            }

            MyContainderLOD {
                id: containderLOD10
                x: 699.699
                y: 2.015
                visible: true
                z: 666.87866
                //fadeDistance: 200
                eulerRotation.z: 0
                eulerRotation.y: 180
                eulerRotation.x: -0
                //distances: distanceLOD
                containerBasicMaterial: basicWhite
                //camera: sceneCamera
            }

            MyContainderLOD {
                id: containderLOD11
                x: 218.701
                y: -0.985
                visible: true
                z: 541.2843
                //fadeDistance: 200
                eulerRotation.z: 0
                eulerRotation.y: -135
                eulerRotation.x: -0
                //distances: distanceLOD
                containerBasicMaterial: basicWhite
                //camera: sceneCamera
            }

            MyContainderLOD {
                id: containderLOD12
                x: -750.944
                y: 3.149
                visible: true
                z: 507.59589
                //fadeDistance: 200
                eulerRotation.z: 0
                eulerRotation.y: 135
                eulerRotation.x: -0
                //distances: distanceLOD
                containerBasicMaterial: basicWhite
                //camera: sceneCamera
            }

            MyContainderLOD {
                id: containderLOD13
                x: -299.725
                y: 5.149
                visible: true
                z: -216.51007
                //fadeDistance: 200
                eulerRotation.z: 0
                eulerRotation.y: 0
                eulerRotation.x: -0.00001
                //distances: distanceLOD
                containerBasicMaterial: basicWhite
                //camera: sceneCamera
            }

            MyContainderLOD {
                id: containderLOD14
                x: -99.92
                y: 4.149
                visible: true
                z: -216.12167
                //fadeDistance: 200
                eulerRotation.z: 0
                eulerRotation.y: 0
                eulerRotation.x: -0.00001
                //distances: distanceLOD
                containerBasicMaterial: basicWhite
                //camera: sceneCamera
            }

            MyWeldingMachineLOD {
                id: weldingMachineLOD2
                x: 950
                y: 0
                visible: true
                eulerRotation.y: 90
                z: 0
                weldingBeltMaterial: belt
                weldingBasicMaterial: basicWhite
                //fadeDistance: 200
                //distances: distanceLOD
                //camera: sceneCamera
            }

            MyVisualQA_LOD {
                id: visualQA_LOD2
                x: 550
                y: -0
                visible: true
                z: 365
                //fadeDistance: 200
                eulerRotation.y: 0
                eulerRotation.x: 0
                elecVisualQaBeltInverseMaterial: beltInverse
                elecVisualQaBasicMaterial: basicWhite
                //distances: distanceLOD
                //camera: sceneCamera
            }

            MyHopper_LOD {
                id: hopper_LOD4
                x: -352.798
                y: -0
                visible: true
                z: 1490.21704
                hopperBasicMaterial: basicWhite
                /*fadeDistance: 200
                distances: distanceLOD
                camera: sceneCamera*/
            }

            MyHopper_LOD {
                id: hopper_LOD5
                x: -624.951
                y: -0.73
                visible: true
                z: 1393.42126
                hopperBasicMaterial: basicWhite
                /*fadeDistance: 200
                distances: distanceLOD
                camera: sceneCamera*/
            }

            Node {
                id: group
                visible: true

                Model {
                    id: wall_low
                    source: "meshes/Wall_1_low/meshes/wall_1_low.mesh"
                    usedInBakedLighting: true
                    castsShadows: true
                    instancing: instanceList7
                    scale.z: 100
                    scale.y: 50
                    scale.x: 100
                    materials: basicWhite

                    InstanceList {
                        id: instanceList7
                        instances: [instanceListEntry3,instanceListEntry4,instanceListEntry5,instanceListEntry7,instanceListEntry8,instanceListEntry24,instanceListEntry25,instanceListEntry60,instanceListEntry70,instanceListEntry76,instanceListEntry81,instanceListEntry99,instanceListEntry101,instanceListEntry106,instanceListEntry119,instanceListEntry147,instanceListEntry148,instanceListEntry149,instanceListEntry150,instanceListEntry151,instanceListEntry152,instanceListEntry153,instanceListEntry154,instanceListEntry155,instanceListEntry156,instanceListEntry157,instanceListEntry158,instanceListEntry159,instanceListEntry160,instanceListEntry161,instanceListEntry162,instanceListEntry163,instanceListEntry164,instanceListEntry165,instanceListEntry166,instanceListEntry167,instanceListEntry168,instanceListEntry169,instanceListEntry170,instanceListEntry173,instanceListEntry172,instanceListEntry173,instanceListEntry174,instanceListEntry175,instanceListEntry176,instanceListEntry177,instanceListEntry179,instanceListEntry180,instanceListEntry181,instanceListEntry182,instanceListEntry183,instanceListEntry184,instanceListEntry185,instanceListEntry6]

                        InstanceListEntry {
                            id: instanceListEntry3
                            position.z: -600
                            position.x: 0
                        }

                        InstanceListEntry {
                            id: instanceListEntry60
                            eulerRotation.y: 90
                            position.z: -200
                            position.x: -1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry70
                            eulerRotation.y: 90
                            position.z: 0
                            position.x: -1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry76
                            eulerRotation.y: 90
                            position.z: 200
                            position.x: -1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry81
                            eulerRotation.y: 90
                            position.z: 400
                            position.x: -1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry99
                            eulerRotation.y: 90
                            position.z: 600
                            position.x: -1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry101
                            eulerRotation.y: 90
                            position.z: 800
                            position.x: -1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry106
                            eulerRotation.y: 90
                            position.z: 1000
                            position.x: -1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry119
                            eulerRotation.y: 90
                            position.z: 1200
                            position.x: -1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry147
                            eulerRotation.y: 90
                            position.z: 1600
                            position.x: -1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry148
                            eulerRotation.y: 90
                            position.z: 1800
                            position.x: -1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry25
                            eulerRotation.y: 90
                            position.z: -400
                            position.x: -1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry151
                            eulerRotation.y: 0
                            position.z: 1800
                            position.x: -1000
                        }

                        InstanceListEntry {
                            id: instanceListEntry152
                            eulerRotation.y: 0
                            position.z: 1800
                            position.x: -400
                        }

                        InstanceListEntry {
                            id: instanceListEntry153
                            eulerRotation.y: 0
                            position.z: 1800
                            position.x: -800
                        }

                        InstanceListEntry {
                            id: instanceListEntry154
                            eulerRotation.y: 0
                            position.z: 1800
                            position.x: -600
                        }

                        InstanceListEntry {
                            id: instanceListEntry155
                            eulerRotation.y: 0
                            position.z: 1800
                            position.x: -200

                        }

                        InstanceListEntry {
                            id: instanceListEntry156
                            eulerRotation.y: 90
                            position.z: 1800
                            position.x: 0
                        }

                        InstanceListEntry {
                            id: instanceListEntry150
                            eulerRotation.y: 0
                            position.z: 1800
                            position.x: -1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry158
                            eulerRotation.y: 0
                            position.z: 1600
                            position.x: 200
                        }

                        InstanceListEntry {
                            id: instanceListEntry159
                            eulerRotation.y: 0
                            position.z: 1600
                            position.x: 400
                        }

                        InstanceListEntry {
                            id: instanceListEntry149
                            eulerRotation.y: 90
                            position.z: 1600
                            position.x: 600
                        }

                        InstanceListEntry {
                            id: instanceListEntry182
                            eulerRotation.y: 0
                            position.z: 1600
                            position.x: 1400
                        }

                        InstanceListEntry {
                            id: instanceListEntry181
                            eulerRotation.y: 0
                            position.z: 1600
                            position.x: 1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry180
                            position.y: 0
                            eulerRotation.y: 90
                            position.z: 1600
                            position.x: 1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry179
                            position.y: 0
                            eulerRotation.y: 0
                            position.z: 1400
                            position.x: 1000
                        }

                        InstanceListEntry {
                            id: instanceListEntry185
                            eulerRotation.y: 0
                            position.z: 1600
                            position.x: 1600

                        }

                        InstanceListEntry {
                            id: instanceListEntry6
                            position.y: 0
                            eulerRotation.y: 0
                            position.z: 1400
                            position.x: 600
                        }

                        InstanceListEntry {
                            id: instanceListEntry157
                            eulerRotation.y: 0
                            position.z: 1600
                            position.x: 0
                        }

                        InstanceListEntry {
                            id: instanceListEntry166
                            eulerRotation.y: 0
                            position.z: -400
                            position.x: 1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry167
                            eulerRotation.y: 0
                            position.z: -400
                            position.x: 1400
                        }

                        InstanceListEntry {
                            id: instanceListEntry168
                            eulerRotation.y: 0
                            position.z: -400
                            position.x: 1600
                        }

                        InstanceListEntry {
                            id: instanceListEntry169
                            eulerRotation.y: 0
                            position.z: -400
                            position.x: 1800
                        }

                        InstanceListEntry {
                            id: instanceListEntry165
                            eulerRotation.y: -90
                            position.z: -600
                            position.x: 1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry172
                            eulerRotation.y: -90
                            position.z: 0
                            position.x: 2000
                        }

                        InstanceListEntry {
                            id: instanceListEntry173
                            eulerRotation.y: -90
                            position.z: 200
                            position.x: 2000
                        }

                        InstanceListEntry {
                            id: instanceListEntry174
                            eulerRotation.y: -90
                            position.z: 400
                            position.x: 2000
                        }

                        InstanceListEntry {
                            id: instanceListEntry175
                            eulerRotation.y: -90
                            position.z: 600
                            position.x: 2000
                        }

                        InstanceListEntry {
                            id: instanceListEntry170
                            eulerRotation.y: -90
                            position.z: -400
                            position.x: 2000
                        }

                        InstanceListEntry {
                            id: instanceListEntry177
                            eulerRotation.y: -90
                            position.z: 800
                            position.x: 1800
                        }

                        InstanceListEntry {
                            id: instanceListEntry183
                            eulerRotation.y: -90
                            position.z: 1200
                            position.x: 1800
                        }

                        InstanceListEntry {
                            id: instanceListEntry184
                            eulerRotation.y: -90
                            position.z: 1400
                            position.x: 1800
                        }

                        InstanceListEntry {
                            id: instanceListEntry176
                            eulerRotation.y: 0
                            position.z: 800
                            position.x: 1800
                        }

                        InstanceListEntry {
                            id: instanceListEntry4
                            position.x: -200
                            position.z: -600
                        }

                        InstanceListEntry {
                            id: instanceListEntry5
                            position.x: -400
                            position.z: -600
                        }

                        InstanceListEntry {
                            id: instanceListEntry7
                            position.z: -600
                            position.x: -800
                        }

                        InstanceListEntry {
                            id: instanceListEntry8
                            position.z: -600
                            position.x: -1000
                        }

                        InstanceListEntry {
                            id: instanceListEntry24
                            position.z: -600
                            position.x: -1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry160
                            position.z: -600
                            position.x: 200
                        }

                        InstanceListEntry {
                            id: instanceListEntry161
                            position.z: -600
                            position.x: 400
                        }

                        InstanceListEntry {
                            id: instanceListEntry162
                            position.z: -600
                            position.x: 600
                        }

                        InstanceListEntry {
                            id: instanceListEntry163
                            position.z: -600
                            position.x: 800
                        }

                        InstanceListEntry {
                            id: instanceListEntry164
                            position.z: -600
                            position.x: 1000
                        }






































                    }
                }

                Model {
                    id: cornerPillar_low
                    source: "meshes/Pillar_1_low/meshes/pillar_1_low.mesh"
                    usedInBakedLighting: true
                    instanceRoot: cornerPillar_low
                    instancing: instanceList8
                    scale.z: 100
                    scale.y: 50
                    scale.x: 100
                    materials: basicWhite

                    InstanceList {
                        id: instanceList8
                        instances: [instanceListEntry121,instanceListEntry171,instanceListEntry178,instanceListEntry186,instanceListEntry187,instanceListEntry188,instanceListEntry189,instanceListEntry190,instanceListEntry191,instanceListEntry192,instanceListEntry193,instanceListEntry194,instanceListEntry195,instanceListEntry196]

                        InstanceListEntry {
                            id: instanceListEntry121
                            position.z: -600
                            position.x: -1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry171
                            position.z: 1800
                            position.x: -1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry178
                            position.z: 1800
                            position.x: 0
                        }

                        InstanceListEntry {
                            id: instanceListEntry186
                            position.z: 1600
                            position.x: 0
                        }

                        InstanceListEntry {
                            id: instanceListEntry187
                            position.z: 1600
                            position.x: 600
                        }

                        InstanceListEntry {
                            id: instanceListEntry188
                            position.z: 1400
                            position.x: 600
                        }

                        InstanceListEntry {
                            id: instanceListEntry189
                            position.y: 0
                            position.z: 1400
                            position.x: 1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry190
                            position.z: 1600
                            position.x: 1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry191
                            position.z: 1600
                            position.x: 1800
                        }

                        InstanceListEntry {
                            id: instanceListEntry192
                            position.z: 800
                            position.x: 1800
                        }

                        InstanceListEntry {
                            id: instanceListEntry193
                            position.z: 800
                            position.x: 2000
                        }

                        InstanceListEntry {
                            id: instanceListEntry194
                            position.z: -400
                            position.x: 2000
                        }

                        InstanceListEntry {
                            id: instanceListEntry195
                            position.z: -400
                            position.x: 1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry196
                            position.z: -600
                            position.x: 1200
                        }
                    }
                }

                Model {
                    id: pillar2_low
                    source: "meshes/Pillar_2_low/meshes/pillar_2_low.mesh"
                    usedInBakedLighting: true
                    instanceRoot: pillar2_low
                    instancing: instanceList9
                    scale.z: 75
                    scale.y: 50
                    scale.x: 60
                    materials: basicWhite

                    InstanceList {
                        id: instanceList9
                        instances: [instanceListEntry197,instanceListEntry198,instanceListEntry199,instanceListEntry200,instanceListEntry201,instanceListEntry202,instanceListEntry203,instanceListEntry204,instanceListEntry205,instanceListEntry206]

                        InstanceListEntry {
                            id: instanceListEntry197
                            eulerRotation.y: 180
                            position.z: -600
                            position.x: -400
                        }

                        InstanceListEntry {
                            id: instanceListEntry198
                            eulerRotation.y: 180
                            position.z: -600
                            position.x: -600
                        }

                        InstanceListEntry {
                            id: instanceListEntry199
                            eulerRotation.y: -90
                            position.z: 1200
                            position.x: -1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry200
                            eulerRotation.y: -90
                            position.z: 1400
                            position.x: -1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry201
                            position.x: 800
                            position.z: 1400
                        }

                        InstanceListEntry {
                            id: instanceListEntry202
                            position.x: 1000
                            position.z: 1400
                        }

                        InstanceListEntry {
                            id: instanceListEntry203
                            eulerRotation.y: 90
                            position.x: 1800
                            position.z: 1200
                        }

                        InstanceListEntry {
                            id: instanceListEntry204
                            eulerRotation.y: 90
                            position.x: 1800
                            position.z: 1000
                        }

                        InstanceListEntry {
                            id: instanceListEntry205
                            eulerRotation.y: 90
                            position.x: 2000
                            position.z: 0
                        }

                        InstanceListEntry {
                            id: instanceListEntry206
                            eulerRotation.y: 90
                            position.x: 2000
                            position.z: -200
                        }
                    }
                }


            }

            Node {
                id: outsideFactoryGroup
                visible: true

                Model {
                    id: spline_1_low
                    x: 2123.169
                    y: 32.4
                    source: "meshes/FactorySpline_1_low/meshes/factorySpline_1_low.mesh"
                    usedInBakedLighting: true
                    eulerRotation.z: 0.00002
                    eulerRotation.y: 90
                    eulerRotation.x: -0.00003
                    z: -97.88354
                    scale.z: 150
                    scale.y: 150
                    scale.x: 150
                    materials: factorySpline_m

                    Model {
                        id: factory_1_low
                        x: 12.268
                        y: -0.23
                        source: "meshes/OtherFactory_1_low/meshes/otherFactory_1_low.mesh"
                        usedInBakedLighting: true
                        eulerRotation.z: 0.00002
                        eulerRotation.y: -90
                        eulerRotation.x: -0.00003
                        z: -5.37168
                        scale.z: 1
                        scale.y: 1
                        scale.x: 1
                        materials: basicWhite
                    }
                }
                Model {
                    id: spline_2_low
                    x: 1826.261
                    y: 32.4
                    source: "meshes/FactorySpline_2_low/meshes/factorySpline_2_low.mesh"
                    usedInBakedLighting: true
                    eulerRotation.z: 0.00002
                    eulerRotation.y: 90
                    eulerRotation.x: -0.00003
                    z: 1095.08643
                    scale.z: 150
                    scale.y: 150
                    scale.x: 150
                    materials: factorySpline_m

                    Model {
                        id: factory_2_low
                        x: -10.493
                        y: -0.289
                        source: "meshes/OtherFactory_2_low/meshes/otherFactory_2_low.mesh"
                        usedInBakedLighting: true
                        eulerRotation.z: 0
                        eulerRotation.y: 0
                        eulerRotation.x: 0
                        z: 2.20294
                        scale.z: 1
                        scale.y: 1
                        scale.x: 1
                        materials: basicWhite
                    }
                }
                Model {
                    id: spline_3_low
                    x: 885.394
                    y: 32.4
                    source: "meshes/FactorySpline_3_low/meshes/factorySpline_3_low.mesh"
                    usedInBakedLighting: true
                    eulerRotation.z: 0.00002
                    eulerRotation.y: 90
                    eulerRotation.x: -0.00003
                    z: 1389.99304
                    scale.z: 150
                    scale.y: 150
                    scale.x: 150
                    materials: factorySpline_m

                    Model {
                        id: factory_3_low
                        x: -12.234
                        y: -0.255
                        source: "meshes/OtherFactory_3_low/meshes/otherFactory_3_low.mesh"
                        usedInBakedLighting: true
                        eulerRotation.z: 0
                        eulerRotation.y:90
                        eulerRotation.x: 0
                        z: -8.4699
                        scale.z: 1
                        scale.y: 1
                        scale.x: 1
                        materials: basicWhite
                    }
                }
                Model {
                    id: spline_4_low
                    x: -1183.902
                    y: 32.399
                    source: "meshes/FactorySpline_4_low/meshes/factorySpline_4_low.mesh"
                    usedInBakedLighting: true
                    eulerRotation.z: 0.00002
                    eulerRotation.y: 90
                    eulerRotation.x: -0.00003
                    z: 1272.59033
                    scale.z: 150
                    scale.y: 150
                    scale.x: 150
                    materials: factorySpline_m
                    Model {
                        id: factory_4_low
                        x: 11.489
                        y: -0.246
                        source: "meshes/OtherFactory_4_low/meshes/otherFactory_4_low.mesh"
                        usedInBakedLighting: true
                        eulerRotation.z: 0.00002
                        eulerRotation.y: 0
                        eulerRotation.x: -0.00003
                        z: -10.39539
                        scale.z: 1
                        scale.y: 1
                        scale.x: 1
                        materials: basicWhite
                    }
                }
            }

            Model {
                id: line2Person
                x: 160
                y: 0
                source: "meshes/HumanNode/meshes/icosphere_mesh.mesh"
                z: 575
                materials: basicWhite



                Timer{
                    id: timer
                    running: true
                    property int r1 : 160
                    property int r2 : 575
                    property int r3 : 2500
                    repeat: true
                    interval: {       ( 5000 - timer.r2 )+5000 - timer.r3                  }

                    onTriggered:
                    {
                        r1 = Math.random() * (600 - 100) + 100;
                        r2 = Math.random() * (575 - 900) + 900;
                        r3 = Math.random() * (5000 - 2500) + 2500;

                    }


                }

                SequentialAnimation {
                    running: true

                    loops: -1


                    NumberAnimation { target: line2Person; property: "z"; to: timer.r2; duration: 5000 - timer.r2 }


                    //  NumberAnimation { target: cube; property: "x"; to: timer.r1; duration: 5000 }
                    NumberAnimation { target: line2Person; property: "z"; to: timer.r2; duration: 5000 - timer.r3  }




                }



            }
            Model {
                id: line3Person
                x: 630
                y: -0
                source: "meshes/HumanNode/meshes/icosphere_mesh.mesh"
                usedInBakedLighting: true
                scale.z: 1
                scale.y: 1
                scale.x: 1
                z: 899.8158
                materials: basicWhite



                Timer{
                    id: timer1
                    running: true
                    property int r1 : 160
                    property int r2 : 315
                    property int r3 : 2500
                    repeat: true
                    interval: {       ( 5000 - timer1.r2 )+5000 - timer1.r3                  }

                    onTriggered:
                    {
                        r1 = Math.random() * (600 - 100) + 100;
                        r2 = Math.random() * (315 - 900) + 900;
                        r3 = Math.random() * (5000 - 2500) + 2500;

                    }


                }

                SequentialAnimation {
                    running: true

                    loops: -1


                    ParallelAnimation {
                        running: true
                        //  NumberAnimation { target: cube; property: "x"; to: timer.r1; duration: 5000 }
                        NumberAnimation { target: line3Person; property: "z"; to: timer1.r2; duration: 5000 - timer1.r2 }


                    }
                    ParallelAnimation {
                        running: true
                        //  NumberAnimation { target: cube; property: "x"; to: timer.r1; duration: 5000 }
                        NumberAnimation { target: line3Person; property: "z"; to: timer1.r2; duration: 5000 - timer1.r3  }


                    }

                }






            }

            Model {
                id: line2Person2
                x: 107.102
                y: -0
                source: "meshes/HumanNode/meshes/icosphere_mesh.mesh"
                usedInBakedLighting: true
                scale.z: 1
                scale.y: 1
                scale.x: 1
                z: 1143.68787
                materials: basicWhite


            }

            Model {
                id: line4Person
                x: 1360.445
                y: 0
                source: "meshes/HumanNode/meshes/icosphere_mesh.mesh"
                usedInBakedLighting: true
                z: 492.18246
                scale.z: 1
                scale.y: 1
                scale.x: 1
                materials: basicWhite
            }

            Model {
                id: line4Person2
                x: 1353.407
                y: -0
                source: "meshes/HumanNode/meshes/icosphere_mesh.mesh"
                usedInBakedLighting: true
                z: 525.93829
                scale.z: 1
                scale.y: 1
                scale.x: 1
                materials: basicWhite
            }

            Model {
                id: line1Person
                x: -204.77
                y: 0
                source: "meshes/HumanNode/meshes/icosphere_mesh.mesh"
                usedInBakedLighting: true
                z: 738.38397
                scale.z: 1
                scale.y: 1
                scale.x: 1
                materials: basicWhite



                Timer{
                    id: timer2
                    running: true
                    property int r1 : 160
                    property int r2 : 575
                    property int r3 : 2500
                    property int r4 : 600
                    property int r5 : 600

                    repeat: true
                    interval: {  (timer2.r2*4)*6 }

                    onTriggered:
                    {
                        r1 = Math.random() * (600 - 100) + 100;
                        r2 = Math.random() * (550 - 830) + 830;
                        r3 = Math.random() * (5000 - 2500) + 2500;
                        r4 = Math.random() * (900 - 550) + 550;
                        r5 = Math.random() * (600 - 900) + 900;


                    }


                }

                SequentialAnimation {
                    running: true

                    loops: -1


                    ParallelAnimation {
                        running: true
                        NumberAnimation { target: line1Person; property: "x"; to: -430; duration: timer2.r2*4 }
                        NumberAnimation { target: line1Person; property: "z"; to: timer2.r2; duration: timer2.r2*4 }


                    }




                    ParallelAnimation {
                        running: true
                        NumberAnimation { target: line1Person; property: "x"; to: -430; duration: timer2.r2*4 }
                        NumberAnimation { target: line1Person; property: "z"; to: timer2.r2; duration: timer2.r2*4 }


                    }

                    ParallelAnimation {
                        running: true
                        NumberAnimation { target: line1Person; property: "x"; to:-200; duration: timer2.r2*4 }
                        NumberAnimation { target: line1Person; property: "z"; to: timer2.r5; duration: timer2.r2*4 }


                    }

                    ParallelAnimation {
                        running: true
                        NumberAnimation { target:line1Person; property: "x"; to: 0; duration: timer2.r2*4 }
                        NumberAnimation { target: line1Person; property: "z"; to: timer2.r4; duration:timer2.r2*4 }


                    }

                    ParallelAnimation {
                        running: true
                        NumberAnimation { target:line1Person; property: "x"; to: 0; duration: timer2.r2*4 }
                        NumberAnimation { target: line1Person; property: "z"; to: timer2.r4; duration: timer2.r2*4 }


                    }
                    ParallelAnimation {
                        running: true
                        NumberAnimation { target: line1Person; property: "x"; to:-260; duration: timer2.r2*4 }
                        NumberAnimation { target: line1Person; property: "z"; to: timer2.r5; duration: timer2.r2*4 }


                    }


                }



            }

            Model {
                id: trolleyAnimated1
                x: 1680
                y: 0
                source: "meshes/Trolly_low/meshes/cube_002_mesh.mesh"
                eulerRotation.z: 0.00001
                eulerRotation.y: -90
                eulerRotation.x: -0.00002
                scale.z: 15
                scale.y: 15
                scale.x: 15
                z: 1100
                materials: basicWhite


                Timer{
                    id: timer3
                    running: true
                    property int r1 : 160
                    property int r2 : 575
                    property int r3 : 2500
                    property int r4 : 1090
                    repeat: true
                    interval: { ( 5000 - timer3.r2 ) }

                    onTriggered:
                    {
                        r1 = Math.random() * (600 - 100) + 100;
                        r2 = Math.random() * (550 - 830) + 830;
                        r3 = Math.random() * (5000 - 2500) + 2500;
                        r4 = Math.random() * (1380 - 1090) + 1090;

                    }


                }

                SequentialAnimation {
                    running: true

                    loops: -1


                    // ParallelAnimation {
                    //      running: true
                    //        NumberAnimation { target: model2; property: "x"; to:1680; duration: 5000 }
                    //        NumberAnimation { target: model2; property: "z"; to:1100; duration: 5000 }
                    //        NumberAnimation { target: model2; property: "eulerRotation.y"; to:-90; duration: 5000 }
                    //    }


                    NumberAnimation { target: trolleyAnimated1; property: "x"; to: 2085; duration: 5000;
                        easing.type: Easing.InOutSine;



                    }

                    NumberAnimation { target: trolleyAnimated1; property: "eulerRotation.y"; to:0; duration: 1500; easing.type: Easing.InOutSine; }

                    NumberAnimation { target: trolleyAnimated1; property: "z"; to:-805; duration: 15000; easing.type: Easing.InOutSine;}

                    NumberAnimation { target:trolleyAnimated1; property: "eulerRotation.y"; to:90; duration: 1500 ; easing.type: Easing.InOutSine;}

                    NumberAnimation { target: trolleyAnimated1; property: "x"; to: -450; duration: 20000; easing.type: Easing.InOutSine; }

                    NumberAnimation { target: trolleyAnimated1; property: "eulerRotation.y"; to:180; duration: 1500 ; easing.type: Easing.InOutSine;}

                    NumberAnimation { target: trolleyAnimated1; property: "z"; to:-350; duration: 3000; easing.type: Easing.InOutSine;}

                    NumberAnimation { target: trolleyAnimated1; property: "eulerRotation.y"; to:270; duration: 1500; easing.type: Easing.InOutSine; }

                    NumberAnimation { target: trolleyAnimated1; property: "x"; to: 1815; duration: 20000; easing.type: Easing.InOutSine; }

                    NumberAnimation { target: trolleyAnimated1; property: "eulerRotation.y"; to:180; duration: 1500 ; easing.type: Easing.InOutSine;}

                    NumberAnimation { target: trolleyAnimated1; property: "z"; to:600; duration: 6500; easing.type: Easing.InOutSine;}

                    NumberAnimation { target:trolleyAnimated1; property: "eulerRotation.y"; to:90; duration: 1500; easing.type: Easing.InOutSine; }

                    NumberAnimation { target:trolleyAnimated1; property: "x"; to:1680; duration: 3000; easing.type: Easing.InOutSine; }

                    NumberAnimation { target: trolleyAnimated1; property: "eulerRotation.y"; to:180; duration: 1500; easing.type: Easing.InOutSine; }

                    NumberAnimation { target: trolleyAnimated1; property: "z"; to:1100; duration: 5000; easing.type: Easing.InOutSine; }

                    NumberAnimation { target: trolleyAnimated1; property: "eulerRotation.y"; to:270; duration: 1500; easing.type: Easing.InOutSine; }

                    NumberAnimation { target: trolleyAnimated1; property: "eulerRotation.y"; to:-90; duration: 1 }



                }

            }

            Model {
                id: forkLift
                x: 1430
                y: 0.002
                source: "meshes/ForkLift_low/meshes/cube_030_mesh.mesh"
                eulerRotation.z: 0.00001
                eulerRotation.y: 180
                eulerRotation.x: -0.00004
                scale.z: 25
                scale.y: 25
                scale.x: 25
                z: 1110
                materials: basicWhite

                Model {
                    id: forkLiftFront
                    x: 0
                    y: 0.327
                    source: "meshes/ForkLift_low/meshes/cube_042_mesh.mesh"
                    z: 1.59507
                    materials: basicWhite
                }


                SequentialAnimation {
                    running: true

                    loops: -1


                    // ParallelAnimation {
                    //      running: true
                    //        NumberAnimation { target: forkLift; property: "x"; to:1430; duration: 500 }
                    //        NumberAnimation { target: forkLift; property: "z"; to:1110; duration: 500 }
                    //        NumberAnimation { target: forkLift; property: "eulerRotation.y"; to:180; duration: 500 }
                    //    }

                    NumberAnimation { target: forkLift; property: "z"; to:1067; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "z"; to:1067; duration: 1000 ; easing.type: Easing.InOutSine;}
                    NumberAnimation { target: forkLift; property: "z"; to:1110; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "eulerRotation.y"; to:270; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "x"; to:960; duration: 5000 ; easing.type: Easing.InOutSine;}
                    NumberAnimation { target: forkLift; property: "eulerRotation.y"; to:360; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "z"; to:2600; duration: 12000; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "eulerRotation.y"; to:270; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "x"; to:-900; duration: 13000 ; easing.type: Easing.InOutSine;}
                    NumberAnimation { target: forkLift; property: "eulerRotation.y"; to:360; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "z"; to:3010; duration: 2500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "eulerRotation.y"; to:180; duration: 10000; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "z"; to:2600; duration: 2500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "eulerRotation.y"; to:90; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "x"; to:960; duration: 12000; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "eulerRotation.y"; to:180; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "z"; to:1300; duration: 12000; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "eulerRotation.y"; to:90; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "x"; to:1400; duration: 4500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "eulerRotation.y"; to:0; duration:1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "z"; to:1475; duration: 3000; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "eulerRotation.y"; to:90; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "x"; to:1700; duration: 2500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "x"; to:1700; duration: 3000; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "x"; to:1600; duration: 3000; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "eulerRotation.y"; to:270; duration: 3000; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "x"; to:1430; duration: 4500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "eulerRotation.y"; to:180; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "z"; to:1110; duration: 500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: forkLift; property: "z"; to:1110; duration: 500; easing.type: Easing.InOutSine; }


                }


            }
            Model {
                id: trolleyAnimated2
                x: -200
                y: -0.002
                source: "meshes/Trolly_low/meshes/cube_002_mesh.mesh"
                eulerRotation.z: 0.00001
                eulerRotation.y: 90
                eulerRotation.x: -0.00002
                scale.z: 15
                scale.y: 15
                scale.x: 15
                z: 1200
                materials: basicWhite

                SequentialAnimation {
                    running: true

                    loops: -1


                    ParallelAnimation {
                        running: true
                        NumberAnimation { target: trolleyAnimated2; property: "x"; to:-270; duration: 1500 }
                        NumberAnimation { target: trolleyAnimated2; property: "z"; to:1200; duration: 1500 }
                        NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:90; duration: 1500 }
                    }
                    NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:180; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "z"; to:1490; duration: 2500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:90; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:90; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:180; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "z"; to:1600; duration: 2000; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:90; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "x"; to:-710; duration: 5000; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:0; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "z"; to:1400; duration: 3500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:-90; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:-90; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:0; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "z"; to:1340; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:90; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "x"; to:-2550; duration: 12500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:0; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "z"; to:-150; duration: 15500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:180; duration: 3000; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:180; duration: 16500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "z"; to:100; duration: 4000; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:270; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "x"; to:-1400; duration: 13000; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:360; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "z"; to:-730; duration: 12500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:270; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "x"; to:-550; duration:10500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:180; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "z"; to:-250; duration: 9000; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:270; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "x"; to:350; duration: 9500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:180; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "z"; to:1450; duration: 12500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:90; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "x"; to:-200; duration: 6000; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:0; duration: 1500 ; easing.type: Easing.InOutSine;}
                    NumberAnimation { target: trolleyAnimated2; property: "z"; to:1200; duration: 3500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "eulerRotation.y"; to:90; duration: 1500; easing.type: Easing.InOutSine; }
                    NumberAnimation { target: trolleyAnimated2; property: "x"; to:-270; duration: 1500 ; easing.type: Easing.InOutSine;}

                }
            }




            Model {
                id: line1Pos
                x: -520.507
                y: 0
                source: "#Cube"
                z: 743.383
                materials: cubemat
            }

            Model {
                id: line1QAPos
                x: -548.718
                y: 200

                source: "#Cube"
                z: 709.94568
                materials: cubemat
            }

            Model {
                id: line1PrintersPos
                x: -548.718
                y: 200
                source: "#Cube"
                z: 1275.73755
                materials: cubemat
            }

            Model {
                id: line1EndPos
                x: -548.718
                y: 200
                source: "#Cube"
                z: 90.94656
                materials: cubemat
            }

            Model {
                id: line2Pos
                x: 166.607
                y: 0
                source: "#Cube"
                z: 743.383
                materials: cubemat
            }
            Model {
                id: discard1Pos
                x: -259.41
                y: 0
                source: "#Cube"
                z: -342.44238
                materials: cubemat
            }

            Model {
                id: line2MillPos
                x: 79.232
                y: -0
                source: "#Cube"
                z: 1091.55054
                materials: cubemat

            }

            Model {
                id: line2QAPos1
                x: -7.353
                y: 0
                source: "#Cube"
                z: 668.43555
                materials: cubemat
            }


            Model {
                id: line2ContainerPos
                x: 217.726
                y: 0
                source: "#Cube"
                z: 443.65063
                materials: cubemat
            }


            Model {
                id: line2EndPos
                x: -39.884
                y: 0
                source: "#Cube"
                z: 131.02545
                materials: cubemat
            }

            Model {
                id: discard2Pos
                x: -39.884
                y: 0
                source: "#Cube"
                z: -329.53088
                materials: cubemat
            }

            Model {
                id: line3Pos
                x: 770.066
                y: -0
                source: "#Cube"
                z: 864.26642
                materials: cubemat
            }


            Model {
                id: line3SolderingPos
                x: 539.522
                y: 0
                source: "#Cube"
                z: 611.55292
                materials: cubemat
            }

            Model {
                id: line3QAPos
                x: 539.522
                y: 0
                source: "#Cube"
                z: 348.68561
                materials: cubemat
            }
            Model {
                id: line3ContainerPos
                x: 778.217
                y: -0
                source: "#Cube"
                z: 650.53363
                materials: cubemat
            }

            Model {
                id: line3ArmsPos
                x: 543.561
                y: 0
                source: "#Cube"
                z: 89.4776
                materials: cubemat
            }

            Model {
                id: weldingPos
                x: 849.889
                y: 0
                source: "#Cube"
                z: -162.39459
                materials: cubemat
            }

            Model {
                id: line4Pos
                x: 1515.468
                y: 0
                source: "#Cube"
                z: 603.47247
                materials: cubemat
            }

            Model {
                id: line4ContainersPos
                x: 1281.76
                y: -0
                source: "#Cube"
                z: 1089.77393
                materials: cubemat
            }




            Model {
                id: line4WeldingPos
                x: 1281.76
                y: 0
                source: "#Cube"
                z: 488.81287
                materials: cubemat
            }

            Model {
                id: line4EndPos
                x: 1164.229
                y: 0
                source: "#Cube"
                z: 132.43884
                materials: cubemat
            }


            Model {
                id: mainQAPos
                x: 1281.195
                y: 0
                source: "#Cube"
                z: -96.511
                materials: cubemat
            }

            Model {
                id: mainArmsPos
                x: 1519.634
                y: 0
                source: "#Cube"
                z: -96.511
                materials: cubemat
            }

            Model {
                id: mainEndPos
                x: 1713.002
                y: 0
                source: "#Cube"
                z: -96.511
                materials: cubemat
            }

            Workshop {
                id: workshop
                x: -685.988
                y: -20.882
                z: 1052.60938
                eulerRotation.y: 180
                scale.x: 0.33125
                scale.y: 0.33125
                scale.z: 0.33125
                robotBaseMaterial: [basicWhite]
            }
        }
    }

    Rectangle {
        id: rectangle
        width: parent.width
        height: 200
        color: master.__gradient
        gradient: Gradient {
            GradientStop { position: 0.0; color: master.__gradient }
            GradientStop { position: 0.2; color: master.__gradient }
            GradientStop { position: 1.0; color: "#00000000" }
        }
    }


    RoundButton {
        id: roundButton
        x: 940
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: root.mobileUI? 120 : 20
        y: 1010
        width: 40
        height: 40
        text: ""
        z: 3
        layer.enabled: true
        layer.effect: DropShadowEffect {
            id: dropShadow
            color: "#2e000000"
            radius: 7
            spread: 0.2
            verticalOffset: 0
            horizontalOffset: 0
        }
        onPressed: {
            if (factory.state === "Base State")
                resetCameraAnimation.restart()
            else
                factory.state = "Base State"
        }


        Image {
            id: icon
            x: 10
            y: 10
            source: "RefreshIcon/assets/icon.png"
            fillMode: Image.PreserveAspectFit
        }
    }

    WasdController {
        id: wasdController
        controlledObject: sceneCamera
    }

    PinchHandler {
        id: pinchHandler
        readonly property real speed: 20

        target: null

        onScaleChanged: (delta) => {
            console.log("pinch scale changed " + delta)
                            if (pinchHandler.activeScale > 1)
                                zoom(delta)
                            else
                                zoomOut(delta)
        }

        function updatePosition(vector, speed, position)
        {
            speed += pinchHandler.speed

            var direction = vector;
            var velocity = Qt.vector3d(direction.x * speed,
                                       direction.y * speed,
                                       direction.z * speed);

            var newPosition = position.plus(velocity)

            var newPositionGlobal = sceneCamera.mapPositionToScene(newPosition)

            // console.log("camera new position " + newPosition.toString())
            if (newPosition.y > 20)
                sceneCamera.position = newPosition
        }

        function negate(vector) {
            return Qt.vector3d(-vector.x, -vector.y, -vector.z)
        }

        function zoom(delta) {
            updatePosition(sceneCamera.forward, delta, sceneCamera.position);
        }

        function zoomOut(delta) {
            updatePosition(negate(sceneCamera.forward), delta, sceneCamera.position)
        }
    }

    MouseArea {
        anchors.fill: parent
        onWheel: (wheel) => {
                     pinchHandler.zoom(wheel.angleDelta.y)
                 }
    }

    ClickableTitle {
        id: clickableTitle
        x: 1170
        y: 468
        z: 2
        name: "Line 1"
        stateName: "Line1CamState"
        trackedWorldPosition: line1Pos.scenePosition
        visiblityDistance: 7000
    }
    ClickableTitle {
        id: clickableTitle2
        x: 1170
        y: 530
        name: "Line 1 QA"
        stateName: "Line1QA_state"
        trackedWorldPosition: line1QAPos.scenePosition
        visiblityDistance: 2000
    }


    ClickableTitle {
        id: clickableTitle3
        name: "Line 1 Printers"
        x: 1170
        y: 592
        visiblityDistance: 2000
        trackedWorldPosition: line1PrintersPos.scenePosition
        stateName: "Line1Printers_state"
    }

    ClickableTitle {
        id: clickableTitle4
        name: "Line 1 End"
        x: 1170
        y: 648
        visiblityDistance: 2000
        trackedWorldPosition: line1EndPos.scenePosition
        stateName: "line1endZoom"
    }

    ClickableTitle {
        id: clickableTitle1
        name: "Line 2"
        x: 1365
        y: 468
        z: 2
        visiblityDistance: 7000
        trackedWorldPosition: line2Pos.scenePosition
        stateName: "line2View"
    }

    ClickableTitle {
        id: clickableTitle5
        name: "Discard 1"
        x: 1365
        y: 468
        visiblityDistance: 2000
        trackedWorldPosition: discard1Pos.scenePosition
        stateName: "Discardpile1"
    }
    ClickableTitle {
        id: clickableTitle6
        name: "Line 2 Mill"
        x: 1365
        y: 468
        visiblityDistance: 2000
        trackedWorldPosition: line2MillPos.scenePosition
        stateName: "line2Mill"
    }
    ClickableTitle {
        id: clickableTitle7
        name: "Line 2 QA"
        x: 1365
        y: 468
        visiblityDistance: 2000
        trackedWorldPosition: line2QAPos1.scenePosition
        stateName: "line2QA"
    }
    ClickableTitle {
        id: clickableTitle8
        name: "Line 2 Container"
        x: 1365
        y: 468
        visiblityDistance: 2000
        trackedWorldPosition: line2ContainerPos.scenePosition
        stateName: "Line 2 Container"
    }
    ClickableTitle {
        id: clickableTitle9
        name: "Line 2 End"
        x: 1365
        y: 468
        visiblityDistance: 2000
        trackedWorldPosition: line2EndPos.scenePosition
        stateName: "Line 2 End"
    }
    ClickableTitle {
        id: clickableTitle10
        name: "Discard 2"
        x: 1365
        y: 468
        visiblityDistance: 2000
        trackedWorldPosition: discard2Pos.scenePosition
        stateName: "discardPile2"
    }
    ClickableTitle {
        id: clickableTitle11
        name: "Line 3"
        x: 1365
        y: 468
        z: 2
        visiblityDistance: 7000
        trackedWorldPosition: line3Pos.scenePosition
        stateName: "Line3"
    }
    ClickableTitle {
        id: clickableTitle12
        name: "Line 3 Soldering"
        x: 1365
        y: 468
        visiblityDistance: 2000
        trackedWorldPosition: line3SolderingPos.scenePosition
        stateName: "Line 3 Soldering"
    }
    ClickableTitle {
        id: clickableTitle13
        name: "Line 3 e-QA"
        x: 1365
        y: 468
        visiblityDistance: 2000
        trackedWorldPosition: line3QAPos.scenePosition
        stateName: "line3EQA"
    }
    ClickableTitle {
        id: clickableTitle14
        name: "Line 3 Container"
        x: 1365
        y: 468
        visiblityDistance: 2000
        trackedWorldPosition: line3ContainerPos.scenePosition
        stateName: "Line3Container"
    }
    ClickableTitle {
        id: clickableTitle15
        name: "Line 3 Arms"
        x: 1365
        y: 468
        visiblityDistance: 2000
        trackedWorldPosition: line3ArmsPos.scenePosition
        stateName: "Line3Arms"
    }
    ClickableTitle {
        id: clickableTitle16
        name: "Welding"
        x: 1365
        y: 468
        z: 2
        visiblityDistance: 7000
        trackedWorldPosition: weldingPos.scenePosition
        stateName: "MainLineWelding"
    }
    ClickableTitle {
        id: clickableTitle17
        name: "Line 4"
        x: 1365
        y: 468
        z: 2
        visiblityDistance: 7000
        trackedWorldPosition: line4Pos.scenePosition
        stateName: "Line4"
    }
    ClickableTitle {
        id: clickableTitle18
        name: "Line 4 Containers"
        x: 1365
        y: 468
        visiblityDistance: 2000
        trackedWorldPosition: line4ContainersPos.scenePosition
        stateName: "Line4Containers"
    }
    ClickableTitle {
        id: clickableTitle19
        name: "Line 4 Welding"
        x: 1365
        y: 468
        visiblityDistance: 2000
        trackedWorldPosition: line4WeldingPos.scenePosition
        stateName: "Line4Welding"
    }
    ClickableTitle {
        id: clickableTitle20
        name: "Line 4 End"
        x: 1365
        y: 468
        visiblityDistance: 2000
        trackedWorldPosition: line4EndPos.scenePosition
        stateName: "Line4End"
    }
    ClickableTitle {
        id: clickableTitle21
        name: "Main QA"
        x: 1365
        y: 468
        visiblityDistance: 2000
        trackedWorldPosition: mainQAPos.scenePosition
        stateName: "MainLineQA"
    }
    ClickableTitle {
        id: clickableTitle22
        name: "Main Arms"
        x: 1365
        y: 468
        visiblityDistance: 2000
        trackedWorldPosition: mainArmsPos.scenePosition
        stateName: "MainLineArms"
    }


    ClickableTitle {
        id: clickableTitle23
        name: "Main End"
        x: 1365
        y: 468
        visiblityDistance: 2000
        trackedWorldPosition: mainEndPos.scenePosition
        stateName: "MainLineEnd"
    }


    Item {
        id: __materialLibrary__
        PrincipledMaterial {
            id: cubemat
            opacity: 0
            roughness: 0.2
            baseColor: "white"

        }
        PrincipledMaterial {
            id: belt
            baseColor: master.__beltcolor
            roughness: 0.1
            baseColorMap: beltTexture_128_p
            objectName: "Belt"
        }
        PrincipledMaterial {
            id: beltInverse
            roughness: 0.1
            baseColorMap: beltTexture_128_p_Inverse
            baseColor: master.__beltcolor
            objectName: "BeltInverse"
        }

        PrincipledMaterial {
            id: basicWhite
            roughness: 0.2
            baseColor: master.__beltcolor
            objectName: "BasicWhite"
        }
        Texture {
            id: beltTexture_128_p
            source: "images/BeltRefined_T_128.jpg"
            // positionV: 1
            scaleV: 1
            NumberAnimation on positionV {
                paused: !isRunning
                from: 0
                to: -10
                //  to: (button.checked) ? 0 : -10
                // to: -10
                duration: 25000
                // duration: (isRunning >= !isRunning) ? 0 : 25000
                loops: Animation.Infinite
            }
        }
        Texture {
            id: beltTexture_128_p_Inverse
            source: "images/BeltRefined_T_128.jpg"
            positionV: 1
            scaleV: 1
            NumberAnimation on positionV {
                paused: !isRunning
                from: 0
                to: 10
                // to: (button.checked) ? 0 : -10
                duration: 25000
                loops: Animation.Infinite
            }
        }

        PrincipledMaterial {
            id: floor
            baseColor: master.__colorFloor
            opacityChannel: Material.R
            opacityMap: _4KGradientCircle
            indexOfRefraction: 1
            metalness: 0
            roughness: 0.6
            objectName: "Floor"
        }

        PrincipledMaterial {
            id: glass
            opacity: 0.4
            baseColor: "#8c797979"
            alphaMode: PrincipledMaterial.Opaque
            objectName: "Glass"
        }

        PrincipledMaterial {
            id: redLaserMaterial
            emissiveFactor.z: (!factory.themeToggle >= factory.themeToggle) ? 0.05 : 0.5
            emissiveFactor.y: (!factory.themeToggle >= factory.themeToggle) ? 0.05 : 0.5
            emissiveFactor.x: (!factory.themeToggle >= factory.themeToggle) ? 0.1 : 1
            baseColor: "#ff0082"
            objectName: "redLaserMaterial"
        }

        PrincipledMaterial {
            id: factorySpline_m
            opacity: (! factory.themeToggle >= factory.themeToggle) ? 0.4 : 0.55
            emissiveFactor.y: 0
            emissiveFactor.z: 1
            emissiveFactor.x: 0
            //            emissiveFactor.z: 0.15
            //            emissiveFactor.y: 0.07
            //            emissiveFactor.x: 0.07 (themeToggle >= !themeToggle) ? 0.5 : 0.15
            // emissiveFactor.z: (themeToggle >= !themeToggle) ? 0.5 : 0.15
            // emissiveFactor.y: (themeToggle >= !themeToggle) ? 0.25 : 0.07
            // emissiveFactor.x: (themeToggle >= !themeToggle) ? 0.25 : 0.07

            opacityChannel: Material.G
            opacityMap: hologramTexture
            baseColorMap: hologramTexture
            baseColor: "#4bb6ff"
            objectName: "factorySpline_m"
        }

        Texture {
            id: hologramTexture
            source: "images/HologramTexture.png"
            NumberAnimation on positionV {

                from: 0
                to: 10
                // to: (button.checked) ? 0 : -10
                duration: 100000
                loops: Animation.Infinite
            }
        }

        Texture {
            id: _4KGradientCircle
            source: "images/4KGradientCircle.png"
        }
    }
    states: [
        State {
            name: "Base State"

            PropertyChanges {
                target: sceneCamera
                x: 3192.821
                y: 2724.444
                z: 3250.11206
                eulerRotation.z: 0
                eulerRotation.y: 45.00002
                eulerRotation.x: -37.98194
            }
        },
        State {
            name: "Line1CamState"

            PropertyChanges {
                target: sceneCamera
                x: -67.321
                y: 838.02
                eulerRotation.z: 0.00002
                eulerRotation.y: 84.99998
                eulerRotation.x: -69.00002
                z: 779.31219
            }




        },
        State {
            name: "Line1QA_state"

            PropertyChanges {
                target: sceneCamera
                x: -272.343
                y: 226.936
                eulerRotation.z: 0.00001
                eulerRotation.y: 77.2724
                eulerRotation.x: -34.98195
                z: 642.49744
            }



        },
        State {
            name: "Line1Printers_state"
            when: printer3DTab.checked

            PropertyChanges {
                target: sceneCamera
                x: 196.557
                y: 538.381
                eulerRotation.z: 0.00001
                eulerRotation.y: 97.8903
                eulerRotation.x: -37.98196
                z: 1195.25049
            }

        },
        State {
            name: "line1endZoom"
            when: line1EndTab.checked

            PropertyChanges {
                target: sceneCamera
                x: 126.657
                y: 511.323
                eulerRotation.z: 0.00001
                eulerRotation.y: 77.2724
                eulerRotation.x: -37.98195
                z: 431.76831
            }


        },
        State {
            name: "line2View"

            PropertyChanges {
                target: sceneCamera
                x: 443.675
                y: 821.439
                eulerRotation.z: -0.00004
                eulerRotation.y: 83.70008
                eulerRotation.x: -68.70004
                z: 768.00397
            }


        },
        State {
            name: "line2Mill"

            PropertyChanges {
                target: sceneCamera
                x: 473.454
                y: 284.356
                eulerRotation.z: 0
                eulerRotation.y: 105.17127
                eulerRotation.x: -30.00001
                z: 940.72925
            }
        },
        State {
            name: "line2QA"

            PropertyChanges {
                target: sceneCamera
                x: 378.662
                y: 181.802
                eulerRotation.z: 0
                eulerRotation.y: 75.19418
                eulerRotation.x: -25.70477
                z: 773.76666
            }
        },
        State {
            name: "Line 2 Container"

            PropertyChanges {
                target: sceneCamera
                x: 394.373
                y: 253.494
                eulerRotation.z: 0.00001
                eulerRotation.y: 120.79899
                eulerRotation.x: -37.98196
                z: 318.41931
            }
        },
        State {
            name: "Line 2 End"

            PropertyChanges {
                target: sceneCamera
                x: 68.589
                y: 200.742
                eulerRotation.z: 0.00001
                eulerRotation.y: 78.25755
                eulerRotation.x: -37.98197
                z: 101.26833
            }
        },
        State {
            name: "Discardpile1"

            PropertyChanges {
                target: sceneCamera
                x: -42.21
                y: 249.175
                eulerRotation.z: 0
                eulerRotation.y: 65.63686
                eulerRotation.x: -37.98198
                z: 9.20806
            }
        },
        State {
            name: "discardPile2"

            PropertyChanges {
                target: sceneCamera
                x: 217.446
                y: 288.135
                eulerRotation.z: 0.00001
                eulerRotation.y: 65.87486
                eulerRotation.x: -37.98198
                z: 27.56483
            }
        },
        State {
            name: "Line3"

            PropertyChanges {
                target: sceneCamera
                x: 792.046
                y: 647.631
                eulerRotation.z: -0.00001
                eulerRotation.y: 85.00002
                eulerRotation.x: -78.70001
                z: 544.50134
            }
        },
        State {
            name: "Line 3 Soldering"

            PropertyChanges {
                target: sceneCamera
                x: 878.216
                y: 231.336
                eulerRotation.z: 0.00001
                eulerRotation.y: 77.89698
                eulerRotation.x: -31.81871
                z: 706.76691
            }
        },
        State {
            name: "line3EQA"

            PropertyChanges {
                target: sceneCamera
                x: 735.411
                y: 205.737
                eulerRotation.x: -49
                eulerRotation.z: 0
                eulerRotation.y: 68.70002
                z: 426.46533
            }

        },
        State {
            name: "Line3Container"

            PropertyChanges {
                target: sceneCamera
                x: 934.562
                y: 204.535
                eulerRotation.z: 0.00002
                eulerRotation.y: 79.46519
                eulerRotation.x: -37.98196
                z: 641.92633
            }
        },
        State {
            name: "Line3Arms"

            PropertyChanges {
                target: sceneCamera
                x: 805.329
                y: 238.359
                eulerRotation.z: 0.00002
                eulerRotation.y: 54.21923
                eulerRotation.x: -37.98195
                z: 327.92041
            }
        },
        State {
            name: "MainLineWelding"

            PropertyChanges {
                target: sceneCamera
                x: 1150.238
                y: 357.111
                eulerRotation.z: 0.00001
                eulerRotation.y: 144.48845
                eulerRotation.x: -32.15439
                z: -427.51279
            }
        },
        State {
            name: "Line4"

            PropertyChanges {
                target: sceneCamera
                x: 1556.223
                y: 605.931
                eulerRotation.x: -67.00001
                eulerRotation.z: -0.00001
                eulerRotation.y: 83.70002
                z: 639.38062
            }
        },
        State {
            name: "Line4Containers"

            PropertyChanges {
                target: sceneCamera
                x: 1742.838
                y: 396.296
                eulerRotation.x: -41.79594
                eulerRotation.z: 0.00003
                eulerRotation.y: 70.00992
                z: 1059.27039
            }
        },
        State {
            name: "Line4Welding"

            PropertyChanges {
                target: sceneCamera
                x: 1724.096
                y: 348.115
                eulerRotation.z: -0
                eulerRotation.y: 76.36066
                eulerRotation.x: -30.38503
                z: 621.29047
            }
        },
        State {
            name: "Line4End"

            PropertyChanges {
                target: sceneCamera
                x: 1253.054
                y: 211.073
                z: 259.12219
            }
        },
        State {
            name: "MainLineQA"

            PropertyChanges {
                target: sceneCamera
                x: 1373.541
                y: 164.915
                eulerRotation.z: 0.00001
                eulerRotation.y: 21.54394
                eulerRotation.x: -30.87616
                z: 242.73199
            }
        },
        State {
            name: "MainLineArms"

            PropertyChanges {
                target: sceneCamera
                x: 1576.319
                y: 174.396
                eulerRotation.z: 0.00002
                eulerRotation.y: 151.93579
                eulerRotation.x: -37.98201
                z: -138.58118
            }
        },
        State {
            name: "MainLineEnd"

            PropertyChanges {
                target: sceneCamera
                x: 1566.938
                y: 177.691
                eulerRotation.z: -0.00001
                eulerRotation.y: 197
                eulerRotation.x: -37.98204
                z: -180.42461
            }
        },
        State {
            name: "MoveState"
        }
    ]
    transitions: [
        Transition {
            id: transition
            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: sceneCamera
                        property: "eulerRotation.x"
                        easing.bezierCurve: [0.222,0.00077,0.444,0.998,1,1]
                        duration: transitionspeed
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: sceneCamera
                        property: "eulerRotation.y"
                        easing.bezierCurve: [0.222,0.00077,0.444,0.998,1,1]
                        duration: transitionspeed
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: sceneCamera
                        property: "eulerRotation.z"
                        easing.bezierCurve: [0.222,0.00077,0.444,0.998,1,1]
                        duration: transitionspeed
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: sceneCamera
                        property: "x"
                        easing.bezierCurve: [0.222,0.00077,0.444,0.998,1,1]
                        duration: transitionspeed
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: sceneCamera
                        property: "y"
                        easing.bezierCurve: [0.222,0.00077,0.444,0.998,1,1]
                        duration: transitionspeed
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: sceneCamera
                        property: "z"
                        easing.bezierCurve: [0.222,0.00077,0.444,0.998,1,1]
                        duration: transitionspeed
                    }
                }
            }
            to: "*"
            from: "*"
        }
    ]










}

/*##^##
Designer {
    D{i:0;formeditorColor:"#00000c";matPrevEnvDoc:"SkyBox";matPrevEnvValueDoc:"preview_studio";matPrevModelDoc:"#Sphere"}
D{i:5;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
}
##^##*/
