import QtQuick 6.5
import QtQuick3D 6.5
import "meshes/VisualQA_Arm_Animated_med"

Model {
    id: visualQC_med
    source: "meshes/VisualQA_Machine_med/meshes/qa_Machine_Belt.mesh"
    property alias visualQC_medMaterials: visualQC_med.materials
    property Material visualQC_animation_medMaterials
    property bool isPaused

    Node {
        id: __materialLibrary__
    }

    Node {
        id: group
        x: -0
        y: 0
        z: 0
        VisualQA_Arm_Animated_med {
            id: visualQA_Arm_Animated_med
            x: 0
            y: 0
            eulerRotation.y: 90
            pivot.z: 30
            pivot.y: -22
            pivot.x: -76
            z: 0
            scale.z: 0.01
            scale.y: 0.01
            scale.x: 0.01
            qa_Machine_Arm_001Materials: visualQC_animation_medMaterials
            isPaused: visualQC_med.isPaused

        }
    }



}
