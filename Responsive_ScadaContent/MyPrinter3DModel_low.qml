import QtQuick 6.5
import QtQuick3D 6.5
import "meshes/Printer_Head_low"

Model {
    property alias printerHead3D_low_Material: node3DPrinter_PrintHead_Animated_low.printerHead3DMaterials
    id: printer3DModel_low
    x: -0
    y: -0
    source: "meshes/Printer_low/meshes/cube_093.mesh"
    z: 140.88702
    scale.z: 100
    scale.y: 100
    scale.x: 100

    Node {
        id: __materialLibrary__
    }


    Printer_Head_low {
        id: node3DPrinter_PrintHead_Animated_low
        x: 0.61
        y: 0.05
        z: -0.09


        scale.z: 0.018
        scale.y: 0.018
        scale.x: 0.018
    }
}
