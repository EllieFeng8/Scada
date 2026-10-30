import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources

    // Nodes:
    Model {
        id: factoryItem_Base_Mess
        source: "meshes/torus_002.mesh"
        materials: basicWhite_material
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: basicWhite_material
            objectName: "basicWhite_material"
            baseColor: "#ffcccccc"
            roughness: 0.5
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
    }

    // Animations:
}
