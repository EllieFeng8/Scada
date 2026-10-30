import QtQuick
import QtQuick.Controls
import QtQuick3D
import Responsive_Scada
import QtQuick.Studio.Components
import QtQuick.Layouts

ScrollView{
    id:widgetsview
    Behavior on width {
        PropertyAnimation {
            easing.bezierCurve: [0.2,0.2,0.8,0.8,1,1]
            duration: 500
        }
    }
    height: widgets.height
    width: widgets.singleColumn ? 468 : widgets.width
    property real gridSize: 128
    property real minLength: 500
    //property int layoutDirection: Qt.RightToLeft //0 = vertical, 1 = horizontal
    //property int columns: Math.max(1, widgets.width / widgets.minLength)
    property vector2d widgetpos: Qt.vector2d(0, 0)
    property int activeWidget: -1
    property int targetPos: -1
    property bool movingWidget: false
    property bool scalingWidget: false

    contentHeight: widgetsflow.childrenRect.height
    contentWidth: widgetsflow.childrenRect.width
    Flow {
        id: widgetsflow
        flow: Flow.TopToBottom

        height: root.mobileUI ? 3500 : widgets.height+150
        width: widgets.singleColumn ? 468 : widgets.width
        /*anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: root.mobileUI ? (parent.width - width) / 2 : 0
        anchors.bottomMargin: -150*/

        //width: widgets.singleColumn ? 468 : parent.width

        //visible: widgets.columns != 1
        spacing: 32

        Repeater {
            model: listmodel
            delegate: Widget_Main {
                widgetType: wtype
                statecontroller: wstate
                iconPath: wicon
                title: wtitle
                subtitle: (wtype === StateMaster.WTYPE.WTYPE_EFFICIENCY || wtype === StateMaster.WTYPE.WTYPE_ENVIRONMENT)
                          ? (SharedData.assignmentError
                             ? SharedData.assignmentError + (SharedData.assignment ? "（保留上次資料）" : "")
                             : !SharedData.assignment ? "讀取中…"
                             : wtype === StateMaster.WTYPE.WTYPE_EFFICIENCY ? "OEE"
                             : "目標產量：" + SharedData.assignment.targetQuantity
                               + (SharedData.assignment.targetQuantity === 0 ? "（尚無有效目標）" : ""))
                          : wsubtitle
                value: wtype === StateMaster.WTYPE.WTYPE_EFFICIENCY
                       ? (SharedData.assignment ? SharedData.assignment.oee + "%" : "—")
                       : wtype === StateMaster.WTYPE.WTYPE_ENVIRONMENT
                         ? (SharedData.assignment ? String(SharedData.assignment.currentQuantity) : "—") : wvalue
                valueChange: (wtype === StateMaster.WTYPE.WTYPE_EFFICIENCY || wtype === StateMaster.WTYPE.WTYPE_ENVIRONMENT)
                             ? "" : wvaluechange
                positiveStatus: wpositiveStatus
            }
        }

        Item {
            id: __materialLibrary__
        }
    }
}





/*##^##
Designer {
    D{i:0;formeditorColor:"#00000c"}
}
##^##*/
