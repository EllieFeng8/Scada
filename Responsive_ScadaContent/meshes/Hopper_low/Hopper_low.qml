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

    // Nodes:
    Model {
        id: hopper_low
        scale.x: 100
        scale.y: 100
        scale.z: 100
        source: "meshes/hopper_low.mesh"
        materials: basicWhite_material
    }

    // Animations:
}
