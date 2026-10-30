import QtQuick
import QtQuick3D
import QtQuick.Controls.Material
import QtQuick.Controls
import QtQuick.Layouts
/*NOT FOR DS:*/import QtQuick3D.Physics
/*NOT FOR DS:*/import QtQuick3D.Physics.Helpers

Node {
    id: root
    //FIXME: property var beltUnits: []
    property bool running: true
    property bool converyorVisible: false
    property int filterGroup: 0
    property int length: 20
    //x: -100
    //z: 200
    //scale: Qt.vector3d(0.3, 0.3, 0.3)
    property double beltX: x-455.908
    property double beltY: y
    property double beltZ: root.z+713.86963

    Repeater3D {
        id: beltRepeater
        model: root.length

        BeltAnimation {
            id: child
            required property int index
            beltID: index
            filterGroup: root.filterGroup
            totalNumOfBelts: root.length
            startCoordinate: beltZ
            endCoordinate: beltZ + (50 * root.length)
            /*NOT FOR DS:*/visible: converyorVisible
            // /*FOR DS:*/x: -455.908
            // /*FOR DS:*/y: 77.34
            // /*FOR DS:*/z: 713.86963
            /*NOT FOR DS:*/kinematicPosition.x: beltX
            /*NOT FOR DS:*/kinematicPosition.y: beltY
            /*NOT FOR DS:*/kinematicPosition.z: beltZ + (50*index)
            states: [
                State {
                    when: root.running
                    StateChangeScript {
                        script: start()
                    }
                },
                State {
                    when: !root.running
                    StateChangeScript {
                        script: stop()
                    }
                }
            ]
        }

    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: node197199196_material
            objectName: "node197199196_material"
            baseColor: "#ffc5c7c4"
        }

        PrincipledMaterial {
            id: node250255255_4_material
            objectName: "node250255255_4_material"
            baseColor: "#fffaffff"
        }
    }
}





/*##^##
Designer {
    D{i:0;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
}
##^##*/
