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
        id: lRE1_obj
        Model {
            id: cylinder_Cylinder_001
            source: "meshes/cylinder_Cylinder_001.mesh"
            materials: [
                material_001_material
            ]
        }
    }
}
