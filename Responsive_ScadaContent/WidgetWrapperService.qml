import QtQuick
import QtQuick.Controls

Widget_Main {
    id: widget
    property int widgetValue: 0
    property int widgetValueChange: 0
    property string unit: "h"

    value: widgetValue.toLocaleString(Qt.locale("en_US"), 'g', 4) + unit
    valueChange: widgetValueChange.toString() + "%"
    statecontroller: 2

    Widget_Service {
        anchors.fill: parent
        statecontroller: parent.statecontroller
    }
}
