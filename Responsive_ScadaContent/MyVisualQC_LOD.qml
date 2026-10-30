import QtQuick 6.5
import QtQuick3D 6.5
import QtQuick3D.Helpers 6.5
import "meshes/VQA_Arm_low"

Node {
    id: visualQC_LOD
    property Material visualQCbasicMaterial
    property Material visualQCbeltMaterial
    property bool isPaused
    /*MyVisualQC_med {
        id: visualQC_med
        eulerRotation.x: -0.00003
        eulerRotation.y: 180
        eulerRotation.z: 0.00002
        receivesReflections: true
        scale.x: 100
        scale.y: 100
        scale.z: 100
        x: 0
        y: 0
        z: 0
        visualQC_medMaterials:  [visualQCbasicMaterial,visualQCbeltMaterial]
        isPaused:visualQC_LOD.isPaused
        visualQC_animation_medMaterials: visualQCbasicMaterial
    }*/

    MyVisualQC_low {
        id: visualQC_low
        eulerRotation.y: 180
        receivesReflections: true
        scale.x: 100
        scale.y: 100
        scale.z: 100
        x: 0
        y: 0
        z: 0
        basicMaterial: visualQCbasicMaterial
        beltMaterial: visualQCbeltMaterial
        isPaused:visualQC_LOD.isPaused

    }

    Node {
        id: __materialLibrary__
    }
}
