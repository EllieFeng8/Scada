import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: refresh
    width: 40
    height: 40
    color: "#efefef"
    radius: 32

    RowLayout {
        id: refresh_RowLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 8
        anchors.rightMargin: 8
        anchors.topMargin: 8
        anchors.bottomMargin: 8
        spacing: 8
        Rectangle {
            id: refresh1
            x: 8
            y: 8
            width: 24
            height: 24
            color: "transparent"
            Image {
                id: icon
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 1
                anchors.rightMargin: 2
                anchors.topMargin: 2
                anchors.bottomMargin: 2
                source: "assets/icon.png"
            }
            clip: true
            Layout.preferredWidth: 24
            Layout.preferredHeight: 24
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"61296e88-d414-53c8-9526-d5547be19bda"}D{i:1;uuid:"61296e88-d414-53c8-9526-d5547be19bda_HORIZONTAL"}
D{i:2;uuid:"03a11cd5-af16-5612-9e67-187d8e9a7ee6"}D{i:3;uuid:"53b93181-3273-5f5e-8cfa-33475cf5abac"}
}
##^##*/

