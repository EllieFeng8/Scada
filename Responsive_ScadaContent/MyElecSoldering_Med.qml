import QtQuick 6.5
import QtQuick3D 6.5
import Quick3DAssets.ElectricQA_AnimatedParts_Med_animated

Model {
    property alias elecQA_MiddleBeamMaterial: electricQA_AnimatedParts_Med_animated.elecQA_MiddleBeamMaterials
    // property alias elecQA_GlassMaterial: elecQA_Glass.materials
    property bool isPaused;
    id: elecSoldering_Med
    source: "meshes/ElectricQA_SteadyParts_Med/meshes/elecQA_MainMachine.mesh"
    scale.z: 100
    scale.y: 100
    scale.x: 100

    Node {
        id: __materialLibrary__
    }

//    Model {
//        id: elecQA_Glass
//        source: "meshes/ElectricQA_SteadyParts_low/meshes/cube_249.mesh"
//        receivesReflections: true
//    }

    ElectricQA_AnimatedParts_Med_animated {
        id: electricQA_AnimatedParts_Med_animated
        scale.z: 0.01
        scale.y: 0.01
        scale.x: 0.01
        isPaused: elecSoldering_Med.isPaused

    }


}
