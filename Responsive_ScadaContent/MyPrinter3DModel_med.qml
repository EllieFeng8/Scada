import QtQuick 6.5
import QtQuick3D 6.5
import "meshes/Printer_Head_med"

Model {
    property alias printerHead3DMaterial: node3DPrinter_PrintHead_Animated_med.printerHead3DMaterials
    property alias printerGlass3DMaterial: glassContainer.materials
    id: printer3DModel_med
    source: "meshes/Printer_med/meshes/cube_069.mesh"
    scale.z: 100
    scale.y: 100
    scale.x: 100

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: newMaterial
            objectName: "New Material"
        }
    }

    Model {
        id: glassContainer
        visible: false
        source: "meshes/Printer_med/meshes/cube_072.mesh"
        materials: newMaterial
    }

    Printer_Head_med {
        id: node3DPrinter_PrintHead_Animated_med
        x: 0.61
        y: 0.05
        z: -0.09


        scale.z: 0.018
        scale.y: 0.018
        scale.x: 0.018

    }

}
