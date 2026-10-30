import QtQuick
import QtQuick3D
/*NOT FOR DS:*/import QtQuick3D.Physics
/*NOT FOR DS:*/import QtQuick3D.Physics.Helpers
//import Adaptation

Node {
    // Materials
    // end of Materials
    id: rootNode
    property alias stopTrigger: trigger_box_stop_area
    property alias robotBaseMaterial: roboticArm.robotArm_VeryLow_BaseMaterials
    property QtObject currentItem: null
    property alias isRunning: conveyor.running
    property bool triggersVisible: false


    Component.onCompleted: {
        WorkshopInstance.workshopCamera = camera
    }

    Conveyor{
        x: 1.134
        y: 80
        z: -128.13983
        filterGroup: 4
        id: conveyor
        length: 27
    }


    PerspectiveCamera {
        id: camera
        //position: cameraVec
        x: -506.018
        y: 184.645
        z: 1247.10352
        fieldOfView: 60
        clipFar: 5000
        //lookAtNode: workshop.currentItem
        eulerRotation.z: 1.49685
        eulerRotation.x: -28.15017
        eulerRotation.y: -69.45995



        function checkObject() {
                console.log("camera checkObject()");
                recognize();
            }
        function recognize() {
                camera.lookAt(currentItem.content)
                WorkshopInstance.workshopCameraView.grabToImage(function(result) {
                    var pictureNr = /*Math.random() **/ 1000000;
                    var filename = "/tmp/pic_" + pictureNr.toString() + ".jpg"
                    console.log("saving image to " + filename);
                    result.saveToFile(filename);
                    Query.text = (filename);
                    Query.query();
                    console.log("AI detection started")
                });
        }
        Connections {
            target: Query
            onClassindexChanged: {
                var isFaulty = false
                console.log("recognition result: ", Query.possibility*100, "% class: ", Query.classindex);
                isFaulty = ((Query.classindex % 2)==1) ? true : false;
                WorkshopInstance.failtyPartCounter += isFaulty;
                rootNode.currentItem.faulty = isFaulty;
                console.log("class value = ", Query.classindex % 2);
                console.log("isFaulty = ", isFaulty);
            }
        }
    }

    ItemMan {
        id: itemMan
        x: -469.251
        y: 182.36
        z: 604.41241
        /*
        Timer {
                id: spawnTimer
                interval: 1000
                running: true
                repeat: true
                onTriggered: {
                    if (conveyor.running) {
                        itemMan.spawnItem();
                    }
                }
            }*/

    }


    AiRobotArm {
        id: roboticArm
        x: -300
        // TODO this leads to the robot being "higher" than the others, but lower values lead
        // to the arm going thru the conveyor when picking up the object - maybe need
        // to adjust the (visible) conveyor height instead?
        y: 160
        z: 1630
        scale.z: 120 / rootNode.scale.z
        scale.y: 120 / rootNode.scale.y
        scale.x: 120 / rootNode.scale.x
        eulerRotation.y: -180
    // /*FOR DS:*/    Model {
    // /*FOR DS:*/        source: "#Cube"
    // /*FOR DS:*/        materials: [
    // /*FOR DS:*/            basicWhite
    // /*FOR DS:*/        ]
    // /*FOR DS:*/    }
        onItemDisposed: {
            console.log("Resume belt after pickup");
            conveyor.running = true;
        }
    }


    // /*FOR DS:*/Node {
        /*NOT FOR DS:*/TriggerBody {
        id: trigger_box_stop_area
        x: -455
        y: 180
        z: 1250
        scale.z: 0.3
        scale.y: 0.6
        scale.x: 2.5
        /*NOT FOR DS:*/visible: rootNode.triggersVisible
        /*NOT FOR DS:*/receiveTriggerReports: true
        filterIgnoreGroups : 0b10000 // Catch only parts

        Model {
            source: "#Cube"
            materials: [
                material_trigger1
            ]
        }
         /*NOT FOR DS--*/
        collisionShapes: BoxShape {}
        onBodyEntered: (body) => {
            //console.log("trigger_box_stop_area.onBodyEntered");
            console.log("item enter body trigger box stop area", body.itemname);
            rootNode.currentItem = body;
            // TODO
            conveyor.running = false;
            camera.checkObject();
            conveyor.running = true;
        }
        onBodyExited: (body) => {
            //console.log("trigger_box_stop_area.onBodyExited");
            console.log("item leave body trigger box stop area", body.itemname);
        }
        /*--NOT FOR DS*/
    }


    // /*FOR DS:*/Node {
        /*NOT FOR DS:*/TriggerBody {
        id: trigger_box_pickup_area
        x: -455
        y: 180
        z: 1637
        scale.z: 0.2
        scale.y: 0.6
        scale.x: 1.5
        visible: rootNode.triggersVisible
        /*NOT FOR DS:*/receiveTriggerReports: true
        filterIgnoreGroups : 0b10000 // Catch only parts

        Model {
            source: "#Cube"
            materials: [
                material_trigger1
            ]
        }
        /*NOT FOR DS--*/
        collisionShapes: BoxShape {}
        onBodyEntered: (body) => {
            console.log("Item entering pick up area", body.itemname, body.faulty);
            if (body.faulty) {
                rootNode.currentItem = body;
                rootNode.currentItem.lifespan = -1000;
                conveyor.running = false;
                roboticArm.currentItem = rootNode.currentItem;
                roboticArm.pickUp();
            }
        }
        onBodyExited: (body) => {
            console.log("Item leaving pick up area", body.itemname);
        }
        /*--NOT FOR DS*/
    }

    // /*FOR DS:*/Node {
        /*NOT FOR DS:*/TriggerBody {
        id: trigger_box_spawn_area
        x: -455
        y: 180
        z: 767.36151
        scale.z: 0.2
        scale.y: 1
        scale.x: 1.5
        visible: rootNode.triggersVisible
        /*NOT FOR DS:*/receiveTriggerReports: true
        filterIgnoreGroups : 0b1 // Catch only belts
        Model {
            source: "#Cube"
            materials: [
                material_trigger2
            ]
        }
        /*NOT FOR DS--*/
        collisionShapes: BoxShape {}
        onBodyEntered: (body) => {
            //console.log("trigger_box_spawn_area.onBodyEntered");
            if(body.beltID %7 == 4) {

                itemMan.spawnItem();
                WorkshopInstance.partCounter++
           }
        }
    }
    // /*FOR DS:*/Node {
        /*NOT FOR DS:*/TriggerBody {
        id: trigger_box_dispawn_area_belt
        x: -455
        y: 180
        z: 1713.255
        scale.z: 0.2
        scale.y: 0.6
        scale.x: 1.5
        visible: rootNode.triggersVisible
        /*NOT FOR DS:*/receiveTriggerReports: true
        filterIgnoreGroups : 0b10000 // Catch only parts
        Model {
            source: "#Cube"
            materials: [
                material_trigger3
            ]
        }
        /*NOT FOR DS--*/
        collisionShapes: BoxShape {}
        onBodyExited: (body) => {
            //console.log("trigger_box_dispawn_area_belt.onBodyExited");
            body.isObsolete = true;
            itemMan.despawnItems();
        }
        /*--NOT FOR DS*/
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: material_trigger1
            objectName: "material_trigger1"
            baseColor: Qt.rgba(1, 0, 1, 0.2)
            alphaMode: PrincipledMaterial.Blend
        }

        PrincipledMaterial {
            id: material_trigger2
            objectName: "material_trigger2"
            baseColor: Qt.rgba(0, 0, 1, 0.2)
            alphaMode: PrincipledMaterial.Blend
        }

        PrincipledMaterial {
            id: material_trigger3
            objectName: "material_trigger3"
            baseColor: Qt.rgba(0, 0, 1, 0.2)
            alphaMode: PrincipledMaterial.Blend
        }

        PrincipledMaterial {
            id: material_trigger4
            objectName: "material_trigger4"
            baseColor: Qt.rgba(0, 1, 0, 0.2)
            alphaMode: PrincipledMaterial.Blend
        }
    }
}




