import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: icon
    width: 24
    height: 24
    color: "#23b26a"
    radius: 6

    RowLayout {
        id: icon_RowLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 4
        anchors.rightMargin: 4
        anchors.topMargin: 4
        anchors.bottomMargin: 4
        spacing: 8
        Settings {
            id: settings
            x: 4
            y: 4
            width: 16
            height: 16
            state: "size_16"
            clip: true
            Layout.preferredWidth: 16
            Layout.preferredHeight: 16
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"5d0d3196-f400-5548-be00-3cc8e2b01604"}D{i:1;uuid:"5d0d3196-f400-5548-be00-3cc8e2b01604_HORIZONTAL"}
D{i:2;uuid:"44e68c63-d2fc-5748-8a02-6221b0e29ead"}
}
##^##*/

