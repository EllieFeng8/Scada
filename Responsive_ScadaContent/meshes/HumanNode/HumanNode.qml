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
        id: icosphere
        objectName: "Icosphere"
        source: "meshes/icosphere_mesh.mesh"
        materials: [
            principledMaterial
        ]
    }

    // Animations:
}
