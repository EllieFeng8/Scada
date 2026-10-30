import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: basicWhite_material
        baseColor: "#ffcccccc"
        roughness: 0.5
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }

    // Nodes:
    Model {
        id: factoryItem_Motherboard_MessCracked
        source: "meshes/cylinder_005.mesh"
        materials: basicWhite_material
    }

    // Animations:
}
