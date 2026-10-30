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
    PrincipledMaterial {
        id: emmisive_material
        baseColor: "#ffcccccc"
        roughness: 0.5
        emissiveFactor.x: 1
        emissiveFactor.y: 1
        emissiveFactor.z: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }

    // Nodes:
    Node {
        id: root
        Model {
            id: factoryItem_InnerCasing
            x: 1.7466144561767578
            y: 77.02513122558594
            z: 2.293001890182495
            source: "meshes/cylinder_012.mesh"
            materials: basicWhite_material
        }
        Model {
            id: factoryItem_CoolantUnit
            x: 2.737163543701172
            y: 80.31201171875
            z: 3.507678270339966
            source: "meshes/cylinder_013.mesh"
            materials: basicWhite_material
        }
        Model {
            id: factoryItem_Motherboard
            x: 1.7466145753860474
            y: 80.6834945678711
            z: -5.230403900146484
            source: "meshes/cylinder_014.mesh"
            materials: basicWhite_material
        }
        Model {
            id: factoryItem_Base
            source: "meshes/torus_005.mesh"
            materials: basicWhite_material
        }
        Model {
            id: factoryItem_SpherePedestal
            source: "meshes/plane_008.mesh"
            materials: basicWhite_material
        }
        Model {
            id: factoryItem_SphereWire
            y: 36.842979431152344
            source: "meshes/icosphere_032.mesh"
            materials: basicWhite_material
        }
        Model {
            id: factoryItem_Sphere
            y: 39.43033218383789
            source: "meshes/icosphere_033.mesh"
            materials: emmisive_material
        }
    }

    // Animations:
}
