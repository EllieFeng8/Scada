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
        id: otherFactory_1_low
        source: "meshes/otherFactory_1_low.mesh"
        materials: principledMaterial
    }

    // Animations:
}
