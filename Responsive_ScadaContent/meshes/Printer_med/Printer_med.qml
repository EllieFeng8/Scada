import QtQuick
import QtQuick3D

import QtQuick.Timeline

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
            id: node3DPrinter_Machine_med
            rotation: Qt.quaternion(-2.8213e-07, 0, 1, 0)
            scale.x: 55
            scale.y: 55
            scale.z: 55
            source: "meshes/cube_069.mesh"
            materials: basicWhite_material
        }
        Model {
            id: node3DPrinter_GlassCover_med
            y: 0.018211042508482933
            rotation: Qt.quaternion(-1.62921e-07, 0, 1, 0)
            scale.x: 55
            scale.y: 55
            scale.z: 55
            source: "meshes/cube_072.mesh"
            materials: basicWhiteGlass_material
        }
    }

    // Animations:
    Timeline {
        startFrame: 0
        endFrame: 0
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 0
            from: 0
            to: 0
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: node3DPrinter_Machine_med
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(2.8213e-07, 0, -1, 0)
            }
        }
    }
    Timeline {
        startFrame: 0
        endFrame: 0
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 0
            from: 0
            to: 0
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: node3DPrinter_GlassCover_med
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0.018211, 0)
            }
        }
        KeyframeGroup {
            target: node3DPrinter_GlassCover_med
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(1.62921e-07, 0, -1, 0)
            }
        }
    }
}
