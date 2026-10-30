import QtQuick
import QtQuick3D
import QtQuick.Controls.Material
import QtQuick.Controls
import QtQuick.Layouts

BeltUnit {
    id: root

    property int startCoordinate: 700
    property int endCoordinate: 50 * index
    property int totalNumOfBelts: 0
    SequentialAnimation {
        id: seq_anim
        NumberAnimation {
            target: root
            /*NOT FOR DS:*/property: "kinematicPosition.z"
            // /*FOR DS:*/property: "z"
            to: endCoordinate
            duration: 4000 * (totalNumOfBelts - beltID)
            loops: 1
        }
        NumberAnimation {
            target: root
            /*NOT FOR DS:*/property: "kinematicPosition.z"
            // /*FOR DS:*/property: "z"
            from: startCoordinate
            to: endCoordinate
            duration: 4000 * totalNumOfBelts
            loops: -1
        }
    }

    Node {
        id: __materialLibrary__
    }

    function start() {
        if(seq_anim.paused) {
            seq_anim.resume();
        } else {
            seq_anim.start();
        }
    }
    function stop() {
        seq_anim.pause();
    }
}



/*##^##
Designer {
    D{i:0;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
}
##^##*/
