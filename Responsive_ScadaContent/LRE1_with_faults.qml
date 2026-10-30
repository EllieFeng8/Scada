import QtQuick
import QtQuick3D

Node {
    // Materials
    DefaultMaterial {
        id: defaultMaterial_material
        diffuseColor: "#ff999999"
    }
    DefaultMaterial {
        id: material_001_material
        diffuseColor: "#ffcccccc"
    }
    // end of Materials

    Node {
        id: lRE1_with_faults_obj
        Model {
            id: cylinder
            source: "meshes/cylinder.mesh"
            materials: [
                material_001_material
            ]
        }
    }
}
