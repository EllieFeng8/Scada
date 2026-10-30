import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick.Studio.Components

Rectangle {
    property int urgency: 0
    property color green: "#4d23B26A"
    property color greenBorder: "#23B26A"
    property color blue: "#4d2151C5"
    property color blueBorder: "#2151C5"
    property color yellow: "#4df2ae3d"
    property color yellowBorder: "#f2ae3d"
    property color red: "#4dFF4154"
    property color redBorder: "#FF4154"
    property color white: master.__panelBackground_C
    property string iconsource: "qrc:/qtquickplugin/images/template_image.png"
    property string title: "Notification title"
    property string message: "Notification message"
    property int severity: 0
    property bool closeable: false
    property int sizeState: 0
    property int iconState: 0

    id: notification
    color: severity == 1 ? green : white
    radius: 16
    border.color: severity == 0 ? white : (severity == 1 ? greenBorder : (severity == 2 ? blueBorder : (severity == 3 ? yellowBorder : redBorder)))
    border.width: 4

    width: notificationBox.notificationWidth
    height: sizeState == 0 ? 78 : (sizeState == 1 ? 94 : 128)

    Rectangle {
        id: rectangle
        width: 24
        height: 24
        color: notification.iconState == 0 ? "#E0E0E0" : (notification.iconState == 1 ? notification.greenBorder : (notification.iconState == 2 ? notification.yellowBorder : notification.redBorder))
        radius: 6
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 16
        anchors.topMargin: 16

        Image {
            id: image
            x: 0
            y: 0
            width: 16
            height: 16
            anchors.verticalCenter: parent.verticalCenter
            source: notification.iconState == 0 ? "images/alert.png" : (notification.iconState == 1 ? "images/check.png" : (notification.iconState == 2 ? "images/alert-triangle.png" : "images/alert.png"))
            sourceSize.height: 16
            sourceSize.width: 16
            anchors.horizontalCenter: parent.horizontalCenter
            smooth: true
            mipmap: true
            fillMode: Image.PreserveAspectFit
        }
    }

    GroupItem {
        id: textbox
        anchors.fill: parent
        anchors.rightMargin: 16
        anchors.leftMargin: 48
        anchors.bottomMargin: 16
        anchors.topMargin: 8
        Text {
            id: title
            text: notification.title
            elide: Text.ElideRight
            anchors.left: parent.left
            anchors.right: parent.right
            font.pixelSize: 26
            fontSizeMode: Text.HorizontalFit
            color: master.__font_C
            font.weight: 600
        }
        Text {
            id: subtitle
            text: notification.message
            elide: Text.ElideRight
            anchors.fill: parent
            font.pixelSize: 16
            lineHeight: 0.9
            wrapMode: Text.WordWrap
            maximumLineCount: notification.sizeState + 2
            fontSizeMode: Text.Fit
            anchors.topMargin: 34
            color: master.__font_C
            font.weight: 600
        }
    }
/*
    ColorizedImage {
        id: solid
        visible: notification.closeable
        anchors.right: parent.right
        anchors.top: parent.top
        source: "images/Solid.png"
        anchors.topMargin: 16
        anchors.rightMargin: 16
        fillMode: Image.PreserveAspectFit
        color: master.__font_C
    }
    */
}
