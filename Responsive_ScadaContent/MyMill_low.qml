import QtQuick 6.5
import QtQuick3D 6.5
import "meshes/Mill_Arm_animated_low"


Model {
    id: mill_low
    property bool isPaused
    x: 0
    y: -0
    source: "meshes/Mill_Machine_low/meshes/cube_084.mesh"
    eulerRotation.y: 90
    z: 0
    scale.z: 50
    scale.y: 50
    scale.x: 50


    Node {
        id: __materialLibrary__
    }

    Model {
        id: model
        x: 0.255
        y: 0.755
        source: "meshes/Mill_Door_low/meshes/mill_Door_low.mesh"
        z: 1.04327
        scale.z: 1
        scale.y: 1
        scale.x: 1
        materials: mill_low.materials
    }

    Mill_Arm_animated_low {
        id: mill_Arm_animated_low
        x: 0
        y: 0.263
        z: 1.04365
        scale.z: 0.015
        scale.y: 0.015
        scale.x: 0.015
        millArmLowMaterials: mill_low.materials
        isPaused: mill_low.isPaused
    }



}
