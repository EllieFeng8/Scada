import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources

    // Nodes:
    Model {
        id: factoryItem_SphereWire_halfMess
        source: "meshes/icosphere_007.mesh"
        materials: principledMaterial
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: principledMaterial
            objectName: "principledMaterial"
            metalness: 1
            roughness: 1
            alphaMode: PrincipledMaterial.Opaque
        }
    }

    // Animations:
}
