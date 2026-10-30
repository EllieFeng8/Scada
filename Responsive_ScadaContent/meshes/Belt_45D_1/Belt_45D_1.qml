import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources

    // Nodes:
    Model {
        id: belt_45D_1
        objectName: "Belt_45D_1"
        rotation: Qt.quaternion(0.707107, 0, 0.707107, 0)
        scale.x: 100
        scale.y: 100
        scale.z: 100
        source: "meshes/belt_45D_1_mesh.mesh"
        materials: [
            basicWhite_material,
            belt_material
        ]
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: basicWhite_material
            objectName: "BasicWhite"
            baseColor: "#ffa9a9a9"
            roughness: 0.5
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: belt_material
            objectName: "Belt"
            baseColor: "#ffcccccc"
            roughness: 0.5
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
    }

    // Animations:
}
