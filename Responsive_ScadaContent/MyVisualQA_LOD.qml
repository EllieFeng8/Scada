import QtQuick 6.5
import QtQuick3D 6.5
import QtQuick3D.Helpers 6.5

Node {
    id: visualQA_LOD
    property Material elecVisualQaBasicMaterial;
    property Material elecVisualQaBeltInverseMaterial;
    /*Model {
        id: myElectricVisualQA_med
        x: 0
        y: 0
        source: "meshes/ElectricVisualQA_Med/meshes/electricQA_Med.mesh"
        receivesReflections: false
        scale.z: 100
        scale.y: 100
        scale.x: 100
        z: 0
        materials: [elecVisualQaBasicMaterial,elecVisualQaBeltInverseMaterial]
    }*/

    Model {
        id: myElectricVisualQA_low
        x: 0
        y: 0
        source: "meshes/ElectricVisualQA_low/meshes/elecQA_Low.mesh"
        receivesReflections: false
        z: 0
        scale.z: 1
        scale.y: 1
        scale.x: 1
        materials: [elecVisualQaBasicMaterial,elecVisualQaBeltInverseMaterial]
    }

    Node {
        id: __materialLibrary__
    }
}
