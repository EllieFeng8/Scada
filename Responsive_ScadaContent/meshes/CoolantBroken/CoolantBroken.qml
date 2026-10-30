import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: basicWhite_material
        baseColor: "#ffcccccc"
        roughness: 0.5
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }

    // Nodes:
    Model {
        id: factoryItem_CoolantUnit_Mess
        rotation: Qt.quaternion(0.707107, 0, 0.707107, 0)
        scale.x: 1
        scale.y: 1
        scale.z: 1
        source: "meshes/cylinder_004.mesh"
        materials: basicWhite_material
    }

    // Animations:
}
