import QtQuick 6.5
import QtQuick3D 6.5
import QtQuick3D.Helpers 6.5

Node {

    property Material containerBasicMaterial;
    id: containderLOD
    /*Model {
        id: myContainer_med
        x: 0
        y: 0
        source: "meshes/ContainerFork_med/meshes/cube_111.mesh"
        z: 0
        scale.z: 100
        scale.y: 100
        scale.x: 100
        materials: containerBasicMaterial
    }*/

    Model {
        id: myContainer_low
        x: 0
        y: 0
        source: "meshes/ContainerFork_low/meshes/cube_202.mesh"
        scale.z: 100
        scale.y: 100
        scale.x: 100
        z: 0
        materials: containerBasicMaterial
    }

    Node {
        id: __materialLibrary__
    }
}
