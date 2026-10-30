import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources

    // Nodes:
    Model {
        id: electricQA_Med
        scale.x: 100
        scale.y: 100
        scale.z: 100
        source: "meshes/electricQA_Med.mesh"
        materials: [
            basicWhite_material,
            belt_material
        ]
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: basicWhite_material
            objectName: "basicWhite_material"
            baseColor: "#ffa9a9a9"
            roughness: 0.5
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: belt_material
            objectName: "belt_material"
            baseColor: "#ffcccccc"
            roughness: 0.5
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
    }

    // Animations:
}
