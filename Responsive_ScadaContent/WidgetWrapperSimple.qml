import QtQuick
import QtQuick.Controls

Widget_Main {
    id: widget
    property int widgetValue
    property int widgetValueChange
    property string unit: ""

    value: widgetValue.toLocaleString(Qt.locale("en_US"), 'g', 4) + unit
    valueChange: widgetValueChange.toString() + "%"
    statecontroller: 0
}
