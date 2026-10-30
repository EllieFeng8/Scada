import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: basicWhite_material
        objectName: "BasicWhite"
        baseColor: "#ffa9a9a9"
        roughness: 0.5
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }

    // Nodes:
    Node {
        id: root
        objectName: "ROOT"
        Model {
            id: forklift_base_med
            objectName: "forklift_base_med"
            y: 2.3158934116363525
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/cube_021_mesh.mesh"
            materials: [
                basicWhite_material
            ]
        }
        Model {
            id: forkLift_fork_med
            objectName: "forkLift_fork_med"
            y: 2.3158934116363525
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/cube_041_mesh.mesh"
            materials: [
                basicWhite_material
            ]
        }
    }

    // Animations:
}
