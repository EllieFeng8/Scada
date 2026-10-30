import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: rootGrid
    width: 436
    height: 221
    color: "transparent"
    radius: 18
    property int statecontroler: 1
    property int numberY:4
    property int numberX: 5

    Rectangle {
            width: parent.width
            height: parent.height
            color: "transparent"


            Repeater {
                model: 9
                Rectangle {
                    id: rectangle
                    width: parent.width
                    height: 1
                    color: "lightgray"
                    y: (parent.height / numberY) * index
                }
            }


            Repeater {
                model: 9
                Rectangle {
                    width: 1
                    height: parent.height
                    color: "lightgray"
                    x: (parent.width / numberX) * index
                }
            }
    }
    states: [
        State {
            name: "State1"
            when: rootGrid.statecontroler===1

            PropertyChanges {
                target: rootGrid

            }
        },
        State {
            name: "State2"
            when: rootGrid.statecontroler===2

            PropertyChanges {
                target: rectangle
                y: (parent.height / 7) * index
            }

            PropertyChanges {
                target: rootGrid
                height: 331
                numberY: 6
                numberX: 6
            }
        }
    ]
}




