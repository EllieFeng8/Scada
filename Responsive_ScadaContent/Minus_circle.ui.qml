import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components 1.0

Rectangle {
    id: minus_circle
    width: 24
    height: 24
    color: "transparent"

    SvgPathItem {
        id: solid
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        strokeWidth: 2
        strokeColor: "transparent"
        path: "M 11 0 C 4.924867630004883 0 0 4.924867630004883 0 11 C 0 17.075132369995117 4.924867630004883 22 11 22 C 17.075132369995117 22 22 17.075132369995117 22 11 C 22 4.924867630004883 17.075132369995117 0 11 0 Z M 7 10 C 6.4477152824401855 10 6 10.447714805603027 6 11 C 6 11.552285194396973 6.4477152824401855 12 7 12 L 15 12 C 15.552285194396973 12 16 11.552285194396973 16 11 C 16 10.447714805603027 15.552285194396973 10 15 10 L 7 10 Z"
        fillColor: "#9f9f9f"
        antialiasing: true
        anchors.topMargin: 1
        anchors.rightMargin: 1
        anchors.leftMargin: 1
        anchors.bottomMargin: 1
    }
}

/*##^##
Designer {
    D{i:0;uuid:"8a8741fb-2975-59bb-b9ca-4ac5180bfb9a"}D{i:1;uuid:"dd44aa29-9b10-587f-a07c-7c9fcaf4e6c7"}
}
##^##*/

