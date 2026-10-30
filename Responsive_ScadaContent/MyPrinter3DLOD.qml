import QtQuick 6.5
import QtQuick3D 6.5
import QtQuick3D.Helpers 6.5

Node {
    property Material printerBasicWhite;

    id: printer3DLOD
    /*MyPrinter3DModel_med {
        id: printer3DModel_med
        materials: printerBasicWhite
        printerHead3DMaterial: printerBasicWhite
       // printerGlass3DMaterial: glass
    }*/
    MyPrinter3DModel_low {
        id: printer3DModel_low
        z: 0

        //QML Layer Crashes when this is active
        printerHead3D_low_Material: printerBasicWhite
        materials: printerBasicWhite

    }

    Node {
        id: __materialLibrary__
    }
}
