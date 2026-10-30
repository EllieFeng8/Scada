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
            id: forkLift_base_low
            objectName: "forkLift_base_low"
            y: 2.1847476959228516
            z: -0.23969268798828125
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/cube_030_mesh.mesh"
            materials: [
                basicWhite_material
            ]
        }
        Model {
            id: forkLift_fork_low
            objectName: "forkLift_fork_low"
            y: 30.908994674682617
            z: 159.18106079101562
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/cube_042_mesh.mesh"
            materials: [
                basicWhite_material
            ]
        }
    }

    // Animations:
}
