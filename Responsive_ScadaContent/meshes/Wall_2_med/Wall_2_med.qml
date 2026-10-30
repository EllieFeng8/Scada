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
        id: wall_2_med
        source: "meshes/wall_2_med.mesh"
        materials: principledMaterial
    }

    // Animations:
}
