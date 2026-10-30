import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0

Rectangle {
    id: gadget
    width: 76
    height: 14
    color: "transparent"
    property alias item_oneText: item_one.text
    property alias fillColor: ellipse_50.fillColor

    RowLayout {
        id: item_instance_RowLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 8
        ArcItem {
            id: ellipse_50
            x: 0
            y: 1
            width: 12
            height: 12
            strokeWidth: 0
            strokeColor: "transparent"
            outlineArc: true
            fillColor: root.brandColor
            end: 450.00001
            begin: 90
            arcWidth: 6
            antialiasing: true
            Layout.preferredWidth: 12
            Layout.preferredHeight: 12
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
        }

        Text {
            id: item_one
            x: 20
            y: 0
            width: 58
            height: 14
            color: "#5b5b5b"
            text: qsTr("Item one")
            font.letterSpacing: 0.5
            font.pixelSize: 12
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
            font.family: "Hubot Sans"
            Layout.preferredWidth: 58
            Layout.preferredHeight: 14
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"9a19f426-fac2-56a3-bb6d-5e7fa49cf652"}D{i:1;uuid:"9a19f426-fac2-56a3-bb6d-5e7fa49cf652_HORIZONTAL"}
D{i:2;uuid:"12f01639-588f-5272-b0a6-15518631dab0"}D{i:3;uuid:"df7555b4-b0c7-5a71-a62f-fd76cd6376ef"}
}
##^##*/

