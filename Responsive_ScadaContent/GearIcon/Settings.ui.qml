import QtQuick
import QtQuick.Controls

Rectangle {
    id: settings
    width: 16
    height: 16
    color: "transparent"
    state: "size_16"
    clip: true

    Image {
        id: icon
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1
        anchors.rightMargin: 1
        anchors.topMargin: 1
        anchors.bottomMargin: 1
        source: "assets/icon_size_16.svg"
    }
    states: [
        State {
            name: "size_24"

            PropertyChanges {
                target: settings
                width: 24
                height: 24
            }

            PropertyChanges {
                target: icon
                anchors.leftMargin: 2
                anchors.rightMargin: 2
                source: "assets/icon_size_24.svg"
            }
        },
        State {
            name: "size_16"

            PropertyChanges {
                target: settings
                width: 16
                height: 16
            }

            PropertyChanges {
                target: icon
                anchors.leftMargin: 1
                anchors.rightMargin: 1
                source: "assets/icon_size_16.svg"
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;uuid:"0c190166-1c3f-5a6a-87f9-7a026832623a"}D{i:1;uuid:"9e23995c-b3dd-502e-a4ae-3180d0dfce09"}
}
##^##*/

