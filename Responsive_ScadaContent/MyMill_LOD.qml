import QtQuick 6.5
import QtQuick3D 6.5
import QtQuick3D.Helpers 6.5

Node {
    property Material millBasicMaterial
    property bool isPaused
    id: mill_LOD

    /*MyMill_med {
        id: mill_med
        materials: millBasicMaterial
        isPaused: mill_LOD.isPaused
    }*/
    MyMill_low {
        id: mill_low
        x: 0
        y: 2.143
        z: 0
        materials:millBasicMaterial
        isPaused: mill_LOD.isPaused
    }

    Node {
        id: __materialLibrary__
    }
}
