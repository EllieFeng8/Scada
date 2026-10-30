import QtQuick 6.5
import QtQuick3D 6.5
import QtQuick3D.Helpers 6.5

Node {
    property Material elecQABasicMaterial;
    property bool isPaused;
    id: electricSolder_LOD

    /*MyElecSoldering_Med {
        id: elecSoldering_Med
        materials: elecQABasicMaterial
        elecQA_MiddleBeamMaterial: elecQABasicMaterial
        //elecQA_GlassMaterial: glass
        isPaused: electricSolder_LOD.isPaused
    }*/

    MyElecSoldering_low {
        id: elecSoldering_low
        materials: elecQABasicMaterial
        x: 0
        y: 0
        z: 0
        elecQA_low_MiddleBeamMaterial: elecQABasicMaterial
        isPaused: electricSolder_LOD.isPaused
    }

    Node {
        id: __materialLibrary__
    }

}
