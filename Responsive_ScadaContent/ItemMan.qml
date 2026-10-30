import QtQuick
import QtQuick3D
import QtQuick3D.Helpers
import QtQuick.Controls.Material
import QtQuick.Controls
import QtQuick.Layouts
/*NOT FOR DS:*/import QtQuick3D.Physics
/*NOT FOR DS:*/import QtQuick3D.Physics.Helpers
import QtQml

Node {
    id: rootNode
    property var itemList: []
    property bool faulty: false
//    property var compList: [
//        "qrc:/qt/qml/Quick3DAssets/Factory_Item_Base_Broken/Factory_Item_Base_Broken.qml",
//        // "qrc:/qt/qml/Quick3DAssets/Factory_Item_CoolantBroken/Factory_Item_CoolantBroken.qml",
//        "qrc:/qt/qml/Quick3DAssets/Factory_Item_Full/Factory_Item_Full.qml",
//        //"qrc:/qt/qml/Quick3DAssets/Factory_Item_InnerCasing_Mess/Factory_Item_InnerCasing_Mess.qml",
//        //"qrc:/qt/qml/Quick3DAssets/Factory_Item_MotherboardBroken/Factory_Item_MotherboardBroken.qml",
//        "qrc:/qt/qml/Quick3DAssets/Factory_Item_PedestalMissPrint/Factory_Item_PedestalMissPrint.qml",
//        "qrc:/qt/qml/Quick3DAssets/Factory_Item_SphereWire_Broken/Factory_Item_SphereWire_Broken.qml",
//        "qrc:/qt/qml/Quick3DAssets/Factory_Item_SphereWire_Missprint/Factory_Item_SphereWire_Missprint.qml"]
    property var compList: [
        "Box.qml",
        "FaultyBox.qml"]

    //property var faulties: [true, /*true,*/ false, /*true, true,*/ true, true, true]
    property var faulties: [false, true]
    property int index: 0

    // /*FOR DS:*/Model {
    // /*FOR DS:*/    x: spawnPosX
    // /*FOR DS:*/    y: spawnPosY
    // /*FOR DS:*/    z: spawnPosZ
    // /*FOR DS:*/    scale.x: 0.33125
    // /*FOR DS:*/    scale.y: 0.33125
    // /*FOR DS:*/    scale.z: 0.33125
    // /*FOR DS:*/    source: "#Cube"
    // /*FOR DS:*/    materials: [
    // /*FOR DS:*/        material_trigger1
    // /*FOR DS:*/    ]
    // /*FOR DS:*/}

    Timer {
        id: timer
        interval: 10000
        running: true
        repeat: true
        onTriggered: {
            itemList.forEach(boxObj => {
                boxObj.aging();
                             });
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: material_trigger1
            objectName: "material_trigger1"
            baseColor: Qt.rgba(1, 0, 0, 0.5)
            alphaMode: PrincipledMaterial.Blend
        }
    }

    function spawnItem() {
        let center = Qt.vector3d(x, y, z);
        console.log("spawn an item to " + center);
        var boxComp = Qt.createComponent(compList[index]);
        if (boxComp.status === Component.Ready) {
            faulty = faulties[index];
            //let x = 0;
            //let y = 100;
            //let z = 0;
            let boxObj = boxComp.createObject(parent, {position: center, lifespan: 0, scale: Qt.vector3d(0.06125, 0.063125, 0.063125)});
            if (boxObj === null) {
                console.log("Error creating factory item");
            }
            //boxObj.eulerRotation = Qt.vector3d(0, 0, 0).toEulerAngles();
            itemList.push(boxObj);
        } else {
            // Error Handling
            console.log("Error loading component:", boxComp.errorString());
        }

        index++;
        index = index % 2;
    }

    function despawnItems () {
        console.log("dispawn boxes");
        var altitemList = [];
        itemList.forEach(itemObj => {
            console.log("isObsolete: " + itemObj.isObsolete + ", lifespan: " + itemObj.lifespan);
            if(itemObj.isUseless()) {
                itemObj.destroy();
            } else {
                altitemList.push(itemObj);
            }
        });
        itemList = altitemList;
    }
}

/*##^##
Designer {
    D{i:0;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
}
##^##*/
