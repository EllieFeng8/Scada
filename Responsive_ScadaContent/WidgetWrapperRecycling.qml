import QtQuick
import QtQuick.Controls

Widget_Main {
    id: widget
    property int widgetValue: 0
    property int widgetValueChange: 0
    property string unit: "kg"
    property int recycleSliderValue: 50

    value: widgetValue.toLocaleString(Qt.locale("en_US"), 'g', 4) + unit
    valueChange: widgetValueChange.toString() + "%"
    statecontroller: 1

    Widget_Recycling {
        anchors.fill: parent
        statecontroller: parent.statecontroller
        recycleSliderValue: parent.recycleSliderValue
    }
}
