import QtQuick 6.5
import QtQuick3D 6.5
import "meshes/Mill_Arm_animated_med"
import "meshes/Mill_Machine_med"

Model {
    id: mill_med
    property bool isPaused
    x: 0
    y: -0
    source: "meshes/Mill_Machine_med/meshes/cube.mesh"
    eulerRotation.y: 90
    z: 0
    scale.z: 50
    scale.y: 50
    scale.x: 50

    Node {
        id: __materialLibrary__
    }

    Model {
        id: millDoorModel
        x: 0.238
        y: 0.78
        source: "meshes/Mill_Door_right_Med/meshes/millDoor_Right_Med.mesh"
        z: 1.05904
        materials: mill_med.materials
    }

    Mill_Arm_animated_med {
        id: mill_Arm_animated_med
        x: 0
        y: 0.263
        z: 1.04365
        scale.z: 0.015
        scale.y: 0.015
        scale.x: 0.015
        millArmMedMaterials: mill_med.materials
        isPaused: mill_med.isPaused
    }

}
