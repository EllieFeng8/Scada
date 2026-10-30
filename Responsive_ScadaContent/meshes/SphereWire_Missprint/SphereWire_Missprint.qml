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
        id: factoryItem_SphereWire__Mess
        source: "meshes/icosphere_018.mesh"
        materials: principledMaterial
    }

    // Animations:
}
