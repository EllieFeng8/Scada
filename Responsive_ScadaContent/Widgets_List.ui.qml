import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick3D 6.5
import ResizeableWidgets
import QtQuick.Studio.Components
import QtQuick.Layouts

ListView {
    id: widgets
    interactive: !widgets.movingWidget && !widgets.scalingWidget
    visible: widgets.columns == 1
    anchors.leftMargin: navBar_side.visible ? 128 : 24
    anchors.bottomMargin: navBar.visible ? 128 : 24

    property real gridSize: Math.min(
                                Math.max(
                                    96,
                                    (widgets.height / widgets.referenceRes.y) * 96),
                                128)
    property real minLength: 500
    //property int layoutDirection: Qt.RightToLeft //0 = vertical, 1 = horizontal
    property int columns: Math.max(1, widgets.width / widgets.minLength)
    property vector2d widgetpos: Qt.vector2d(0, 0)
    property int activeWidget: -1
    property int targetPos: -1
    property bool movingWidget: false
    property bool scalingWidget: false
    property vector2d phoneReference: Qt.vector2d(800, 1280)
    property vector2d tabletReference: Qt.vector2d(1000, 1000)
    property vector2d pcReference: Qt.vector2d(1280, 800)
    property vector2d resolution: Qt.vector2d(App.width, App.height)
    property real aspect: resolution.x / resolution.y
    property vector2d referenceRes: aspect < 0.75 ? phoneReference : aspect
                                                    < 1.25 ? tabletReference : pcReference

    Item {
        id: __materialLibrary__
    }
}
