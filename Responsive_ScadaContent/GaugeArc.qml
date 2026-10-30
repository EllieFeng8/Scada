import QtQuick
import QtQuick.Layouts 1.15
import QtQuick.Studio.Components 1.0
import QtQuick3D 6.5


GroupItem {
    property real value: 0.2230
    property int minValue: 0
    property int arcWidth: 27
    property int maxValue: 1
    property real normalizedValue: (gaugearc.value - gaugearc.minValue) / (gaugearc.maxValue-gaugearc.minValue)
    property int minRotation: -110
    property int maxRotation: 110
    id: gaugearc
    width: 220
    height: 220
    anchors.verticalCenter: parent.verticalCenter
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.verticalCenterOffset: 34
    anchors.horizontalCenterOffset: 2

    ArcItem {
        id: bgArc
        anchors.fill: parent
        strokeStyle: 1
        begin: gaugearc.minRotation
        layer.enabled: true
        layer.mipmap: false
        enabled: true
        antialiasing: true
        outlineArc: false
        arcWidth: 0
        round: false
        strokeWidth: gaugearc.arcWidth
        capStyle: 32
        strokeColor: "#e0e0e0"
        end: gaugearc.maxRotation
        fillColor: "#00000000"
    }

    ArcItem {
        id: fillArc
        anchors.fill: parent
        strokeStyle: 1
        begin: gaugearc.minRotation
        layer.enabled: true
        layer.mipmap: false
        enabled: true
        antialiasing: true
        outlineArc: false
        arcWidth: 0
        round: false
        strokeWidth: gaugearc.arcWidth
        capStyle: 32
        strokeColor: root.brandColor
        end: gaugearc.minRotation * (1.0-gaugearc.normalizedValue) + gaugearc.maxRotation * gaugearc.normalizedValue
        fillColor: "#00000000"
    }

    GroupItem {
        id: pointerroot
        anchors.fill: parent
        rotation: -90 + (gaugearc.minRotation * (1.0-gaugearc.normalizedValue) + gaugearc.maxRotation * gaugearc.normalizedValue)

        Image {
            id: pointer
            width: gaugearc.width / 2
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            source: "assets/pointer.png"
            anchors.rightMargin: 16
            fillMode: Image.PreserveAspectFit
        }
    }

    Item {
        id: __materialLibrary__
    }
}
