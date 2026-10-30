import QtQuick 6.5
import QtQuick3D 6.5
import QtQuick3D.Helpers 6.5

Node {
    id: hopper_LOD
    property Material hopperBasicMaterial
    /*Model {
        id: hopperModel_med
        source: "meshes/Hopper_med/meshes/hopper_med.mesh"
        scale.z: 100
        scale.y: 100
        scale.x: 100
        materials: hopperBasicMaterial
    }*/

    Model {
        id: hopperModel_low
        x: 0
        y: 0
        source: "meshes/Hopper_low/meshes/hopper_low.mesh"
        castsReflections: false
        receivesShadows: false
        castsShadows: false
        scale.z: 100
        scale.y: 100
        scale.x: 100
        z: 0
        materials: hopperBasicMaterial
    }

    Node {
        id: __materialLibrary__
    }
}
