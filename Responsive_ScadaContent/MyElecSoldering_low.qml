import QtQuick 6.5
import QtQuick3D 6.5
import "meshes/EQA_Anim_low"

Model {
    property alias elecQA_low_MiddleBeamMaterial: electricQA_AnimatedParts_low_animated.elecQA_Low_MainMachine_AnimationMaterials
    property bool isPaused: false
    id: elecSoldering_low
    source: "meshes/ElectricQA_SteadyParts_low/meshes/elecQA_Low_MainMachine.mesh"
    scale.z: 100
    scale.y: 100
    scale.x: 100

    Node {
        id: __materialLibrary__
    }

    EQA_Anim_low {
        id: electricQA_AnimatedParts_low_animated
        scale.z: 0.01
        scale.y: 0.01
        scale.x: 0.01
        isPaused: elecSoldering_low.isPaused
    }
}
