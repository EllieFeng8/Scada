import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: basicWhite_material
        baseColor: "#ffa9a9a9"
        roughness: 0.5
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: belt_material
        baseColor: "#ffcccccc"
        roughness: 0.5
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }

    // Nodes:
    Model {
        id: qa_Machine_Belt_low
        scale.x: 100
        scale.y: 100
        scale.z: 100
        source: "meshes/qa_Machine_Belt_low.mesh"
        materials: [
            basicWhite_material,
            belt_material
        ]
    }

    // Animations:
}
