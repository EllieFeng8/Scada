import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: principledMaterial
        metalness: 1
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }

    // Nodes:
    Model {
        id: factoryItem_SpherePedestal_Mess
        source: "meshes/plane_001.mesh"
        materials: principledMaterial
    }

    // Animations:
}
