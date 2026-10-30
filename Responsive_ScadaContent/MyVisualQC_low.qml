import QtQuick 6.5
import QtQuick3D 6.5
import "meshes/VQA_Arm_low"

Model {
    id: visualQC_low
    property Material beltMaterial
    property Material basicMaterial
    property bool isPaused
    x: 0
    y: 0
    source: "meshes/VisualQA_Machine_low/meshes/qa_Machine_Belt_low.mesh"
    receivesReflections: true
    eulerRotation.y: 180
    scale.z: 100
    scale.y: 100
    scale.x: 100
    z: 0
    materials: [basicMaterial,beltMaterial]

    VQA_Arm_low {
        id: visualQA_Arm_Animated_low
        eulerRotation.y: 90
        scale.z: 0.01
        scale.y: 0.01
        scale.x: 0.01
        pivot.z: 30
        pivot.y: -22
        pivot.x: -76
        lowArmMaterial: basicMaterial
        isPlaying: visualQC_low.isPaused

    }

    Node {
        id: __materialLibrary__
    }
}
