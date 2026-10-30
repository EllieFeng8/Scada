import QtQuick
import QtQuick.Controls

Widget_Main {
    id: widget
    property int widgetValue: 1000
    property int widgetValueChange: 0
    property string unit: ""

    value: widgetValue.toLocaleString(Qt.locale("en_US"), 'g', 4) + unit
    valueChange: widgetValueChange.toString() + "%"
    statecontroller: 1

    Widgets_Financial {
        anchors.fill: parent
        statecontroller: parent.statecontroller
    }
}
