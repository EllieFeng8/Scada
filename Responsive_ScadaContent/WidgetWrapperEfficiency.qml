import QtQuick
import QtQuick.Controls

Widget_Main {
    id: widget
    property int widgetValue: 0
    property int widgetValueChange: 0
    property string unit: ""
    property int average: 2555

    value: widgetValue.toLocaleString(Qt.locale("en_US"), 'g', 4) + unit
    valueChange: widgetValueChange.toString() + "%"
    statecontroller: 2

    Widget_Efficiency {
        anchors.fill: parent
        statecontroller: parent.statecontroller
        average: parent.average
    }
}
