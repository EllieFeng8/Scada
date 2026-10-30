import QtQuick
import QtQuick.Controls

Widget_Main {
    id: widget
    property int gaugeValue: 80
    property int widgetValue: 1000
    property int widgetValueChange: 0

    value: widgetValue.toLocaleString(Qt.locale("en_US"), 'g', 4)
    valueChange: widgetValueChange.toString() + "%"
    statecontroller: 2

    Widget_Performance {
        anchors.fill: parent
        statecontroller: parent.statecontroller
        gauge1Value: parent.gaugeValue
    }
}
