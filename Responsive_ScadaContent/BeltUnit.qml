import QtQuick
import QtQuick3D
import QtQuick.Controls.Material
import QtQuick.Controls
import QtQuick.Layouts
/*NOT FOR DS:*/import QtQuick3D.Physics
/*NOT FOR DS:*/import QtQuick3D.Physics.Helpers

// /*FOR DS:*/Node {
/*NOT FOR DS:*/DynamicRigidBody {
    id: root
    property int beltIndex: beltID
    property int beltID: 0

    /*NOT FOR DS:*/isKinematic: true
    /*NOT FOR DS:*/receiveTriggerReports: true
    /*NOT FOR DS:*/sendTriggerReports: true
    /*NOT FOR DS:*/collisionShapes: BoxShape{}
    scale.z: 0.5
    scale.y: 0.03
    scale.x: 1.02

    Model {
        source: "#Cube"
        materials: [
            pickupColor_material
        ]
    }

    Node {
        id: __materialLibrary__

        // /*FOR DS:*/PrincipledMaterial {
        /*NOT FOR DS:*/DefaultMaterial {   // FIXME: Why?
            id: pickupColor_material
            objectName: "pickupColor_material"
            // /*FOR DS:*/baseColor : "#ffeeaaff"
            /*NOT FOR DS:*/diffuseColor : pickupColor(beltIndex);
        }
    }

    physicsMaterial: PhysicsMaterial {
        restitution: 0.1
        dynamicFriction: 0.8
        staticFriction: 0.8
    }

    function pickupColor(beltIndex) {
        if(beltIndex % 3 == 0) {
            return "#808080";
        } else if(beltIndex % 3 == 1) {
            return "#a9a9a9";
        } else {
            return "#d3d3d3";
        }
    }

}

/*##^##
Designer {
    D{i:0;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
}
##^##*/
