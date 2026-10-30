import QtQuick
import QtQuick.Controls
import QtQuick.Controls.impl 2.15

Rectangle {
    id: hopper
    width: 40
    height: 40
    color: "transparent"

    ColorImage {
        id: union
        x: 0
        y: 0
        color: factory_2d.itemBGcolor
        source: "assets/union.png"
    }
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#00000c";uuid:"c8ab6f61-5cb0-58e1-9ac9-0da17bfbef7c"}
}
##^##*/

