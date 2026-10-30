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
    PrincipledMaterial {
        id: basicWhiteGlass_material
        baseColor: "#80141414"
        roughness: 0.018181830644607544
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Blend
    }

    // Nodes:
    Node {
        id: root
        Model {
            id: elecQA_MainMachine
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/elecQA_MainMachine.mesh"
            materials: [
                basicWhite_material,
                belt_material
            ]
        }
        Model {
            id: elecQA_Window
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/cube_220.mesh"
            materials: basicWhiteGlass_material
        }
    }

    // Animations:
}
