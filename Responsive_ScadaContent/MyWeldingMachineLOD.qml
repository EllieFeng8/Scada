import QtQuick 6.5
import QtQuick3D 6.5
import QtQuick3D.Helpers 6.5

Node {
    id: weldingMachineLOD
    property Material weldingBasicMaterial;
    property Material weldingBeltMaterial;
    /*Model {
        id: myWeldingMachine_med
        x: -0
        y: -0
        source: "meshes/WeldingMachine_Med/meshes/welding_med.mesh"
        eulerRotation.y: 90
        scale.z: 1
        scale.y: 1
        scale.x: 1
        z: 0
        materials: [weldingBasicMaterial,weldingBeltMaterial,weldingBasicMaterial]
    }*/

    Model {
        id: myWeldingMachine_low
        x: 0
        y: -0
        source: "meshes/WeldingMachine_low/meshes/welding_low.mesh"
        z: 0
        scale.z: 1
        scale.y: 1
        scale.x: 1
        materials: [weldingBasicMaterial,weldingBeltMaterial,weldingBasicMaterial]
    }

    Node {
        id: __materialLibrary__
    }
}
