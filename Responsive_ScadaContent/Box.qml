// Copyright (C) 2022 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR BSD-3-Clause
import QtQuick
import QtQuick3D
import QtQuick3D.Physics

DynamicRigidBody {
    property string itemname: "Box"
    property int lifespan: 0
    property bool faulty: false
    property bool isObsolete: false
    property int boundingX: 148
    property int boundingY: 78+10
    property int boundingWidth: 120
    property int boundingHeight: 200

    density: 10
    scale.x: 0.19
    scale.y: 0.19
    scale.z: 0.19

    // For testing
    /*Model {
        source: "#Cube"
        scale: Qt.vector3d(2,2,2)
        materials: [material_box]
    }*/

    LRE1 {
        id: content
        y: -25
        scale.x: 50
        scale.y: 50
        scale.z: 50
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: material_box
            objectName: "material_box"
            baseColor: Qt.rgba(1, 0, 0, 0.5)
            alphaMode: PrincipledMaterial.Blend
        }
    }

    physicsMaterial: PhysicsMaterial {
        restitution: 0.5
        dynamicFriction: 0.9
        staticFriction: 0.9
    }

    sendTriggerReports: true
    sendContactReports: true
    collisionShapes: BoxShape {
        extents: Qt.vector3d(100, 50, 100)
    }
    function markForRemove() {
        isObsolete = true;
    }
    function isUseless() {
        return isObsolete;
    }
    function aging() {
        lifespan++;
        if(lifespan >= 400) {
            markForRemove();
        }
    }

}

/*##^##
Designer {
    D{i:0;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
}
##^##*/
