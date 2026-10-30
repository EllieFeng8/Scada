
/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtQuick3D
import Responsive_Scada
import QtQuick.Studio.Components
import QtQuick.Layouts
import QtQuick.Studio.DesignEffects

Rectangle {
    id: root
    color: root.backgroundColor

    width: Constants.width
    height: Constants.height

    //anchors.fill: parent
    property bool mobileUI: root.width < 1000

    property int widgetType: 0
    property int mousePosX: 0
    property int mousePosY: 0
    property int activeWidget: -1
    property int targetPos: 0
    property bool movingWidget: false
    property color brandColor: "#2b5edb"
    StateMaster {
        id: master
    }

    Item {
        id: views

        anchors.fill: parent

        property int activeView: 2

        Item {
            id: linescadaview
            anchors.fill: parent

            anchors.rightMargin: root.mobileUI ? 32 : 532
            anchors.topMargin: root.mobileUI ? 316 : 252
            anchors.leftMargin: navBar_side.visible ? 128 : 32
            anchors.bottomMargin: navBar.visible ? 128 : 0
            visible: views.activeView == 1

            // Factory_2D {
            //     id: myPlan_in_2D
            //     anchors.verticalCenter: parent.verticalCenter
            //     anchors.horizontalCenter: parent.horizontalCenter
            //     scale: parent.height / 852
            //     color: root.backgroundColor
            //     dayMode: !master.__daymode
            // }
        }
        Item {
            id: factory3dview
            visible: views.activeView == 2
            anchors.fill: parent
            Factory_3D {
                anchors.fill: parent
            }
        }
    }

    Item {
        id: widgets
        anchors.fill: parent

        property bool singleColumn: views.activeView != 0

        visible: views.activeView == 0 ? true : (root.mobileUI != true ? (header.notifications ? false : true) : false)

        //anchors.rightMargin: 32
        anchors.topMargin: 168
        anchors.bottomMargin: 132
        anchors.leftMargin: root.mobileUI ? 32 : 128
        ListModel {
            id: listmodel
            ListElement {
                wstate: 0
                wtype: StateMaster.WTYPE.WTYPE_EFFICIENCY
                wtitle: "Machine Efficiency"
                wsubtitle: "This is a subtitle"
                wicon: "images/WidgetIcons/speedometer.png"
                wvalue: "77%"
                wvaluechange: "00%"
                wpositiveStatus: true
            }
            ListElement {
                wstate: 1
                wtype: 1
                wtitle: "Air Quality Index"
                wsubtitle: "Air quality is good"
                wicon: "images/WidgetIcons/thermometer.png"
                wvalue: "87%"
                wvaluechange: "12%"
                wpositiveStatus: true
            }
            ListElement {
                wstate: 2
                wtype: StateMaster.WTYPE.WTYPE_WORKSHOP
                wtitle: "Assembly Line View"
                wsubtitle: "Live camera view of assembly"
                wicon: "images/WidgetIcons/tool.png"
                wvalue: "0 pcs"
                wvaluechange: "00%"
                wpositiveStatus: true
            }
            ListElement {
                wstate: 2
                wtype: 8
                wtitle: "Production Output per SKU"
                wsubtitle: "Cumulative units produced YTD"
                wicon: "images/WidgetIcons/speedometer.png"
                wvalue: "1,000"
                wvaluechange: "00%"
                wpositiveStatus: true
            }
            ListElement {
                wstate: 0
                wtype: 4
                wtitle: "Total Downtime"
                wsubtitle: "This is a subtitle"
                wicon: "images/WidgetIcons/activity.png"
                wvalue: "256h"
                wvaluechange: "00%"
                wpositiveStatus: true
            }
            ListElement {
                wstate: 1
                wtype: 4
                wtitle: "Unplanned Downtime"
                wsubtitle: "Last down 2h ago"
                wicon: "images/WidgetIcons/activity.png"
                wvalue: "36h"
                wvaluechange: "12%"
                wpositiveStatus: true
            }
            ListElement {
                wstate: 2
                wtype: 7
                wtitle: "Next Service"
                wsubtitle: "Planned maintenance program"
                wicon: "images/WidgetIcons/tool.png"
                wvalue: "54h"
                wvaluechange: "12%"
                wpositiveStatus: true
            }
            ListElement {
                wstate: 0
                wtype: 6
                wtitle: "Recycle Rate"
                wsubtitle: "Plastic 35%, metal 48%, other 17%"
                wicon: "images/WidgetIcons/arrowtriangle.png"
                wvalue: "877kg"
                wvaluechange: "02%"
                wpositiveStatus: true
            }
            ListElement {
                wstate: 1
                wtype: 3
                wtitle: "Inventory"
                wsubtitle: "Inventory turnover ratio"
                wicon: "images/WidgetIcons/container.png"
                wvalue: "1,000"
                wvaluechange: "00%"
                wpositiveStatus: true
            }
            ListElement {
                wstate: 2
                wtype: 6
                wtitle: "Recycle Rate"
                wsubtitle: "Plastic 35%, metal 48%, other 17%"
                wicon: "images/WidgetIcons/arrowtriangle.png"
                wvalue: "877kg"
                wvaluechange: "02%"
                wpositiveStatus: true
            }
            ListElement {
                wtype: 0
                wstate: 0
                wtitle: "Accident occurred"
                wsubtitle: "This is a subtitle"
                wicon: "images/WidgetIcons/warning.png"
                wvalue: "164"
                wvaluechange: "00%"
                wpositiveStatus: true
            }
            ListElement {
                wstate: 2
                wtype: 9
                wtitle: "Accidents by category"
                wsubtitle: "Accidents YTD"
                wicon: "images/WidgetIcons/warning.png"
                wvalue: "164"
                wvaluechange: "00%"
                wpositiveStatus: true
            }
        }

        Widgets_Flow {
            id: widgets_flow
            anchors.right: parent.right
            anchors.top: parent.top
        }
    }
    property int displayMode: StateMaster.DISPLAYMODE.DARKMODE

    property color darkModeMainColor: "#181818"
    property color lightModeMainColor: "#ffffff"

    property color darkModeBGColor: "#000000"
    property color lightModeBGColor: "#efefef"

    property color darkModeTextColor: "#ffffff"
    property color lightModeTextColor: "#000000"

    property color mainColor: (root.displayMode === StateMaster.DISPLAYMODE.LIGHTMODE) ? root.lightModeMainColor : root.darkModeMainColor
    property color backgroundColor: (root.displayMode === StateMaster.DISPLAYMODE.LIGHTMODE) ? root.lightModeBGColor : root.darkModeBGColor
    property color textColor: master.__font_C

    Item {
        id: __materialLibrary__
    }


    /*Text {
        id: text3
        visible: false
        text: root.mousePosX + " - " + root.mousePosY
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 36
        anchors.horizontalCenter: parent.horizontalCenter
    }*/
    Rectangle {
        id: widgetVisualization
        width: 200
        height: 200
        visible: widgets_flow.movingWidget
        color: "#81ffea85"
        radius: 8
    }

    GroupItem {
        id: ui
        anchors.fill: parent

        NavBar {
            id: navBar
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.leftMargin: 24
            anchors.rightMargin: 24
            anchors.bottomMargin: 24
            anchors.topMargin: 24
            visible: root.mobileUI

            DesignEffect {
                effects: [
                    DesignDropShadow {
                        color: "#4d000000"
                        offsetY: 0
                        spread: 0
                        blur: 20
                    }
                ]
            }
        }

        NavBar {
            id: navBar_side
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            anchors.leftMargin: 24
            anchors.rightMargin: 24
            anchors.bottomMargin: 20
            anchors.topMargin: 107
            width: 80
            barPos: 1
            visible: !root.mobileUI
        }

        GroupItem {
            id: titlegroup
            width: 474
            height: 108

            visible: views.activeView != 0

            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: root.mobileUI ? 32 : 128

            anchors.rightMargin: 32
            anchors.topMargin: 145
            anchors.bottomMargin: navBar.visible ? 128 : 0

            Text {
                id: viewtitle
                text: qsTr("IAD Complex 01A")
                anchors.left: parent.left
                anchors.top: parent.top
                font.family: "Hubot"
                font.weight: 600
                font.pixelSize: 56
                anchors.leftMargin: 0
                anchors.topMargin: 0
                color: master.__font_C
            }

            Text {
                id: subtitle
                text: qsTr("Additional details")
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                font.weight: 600
                font.pixelSize: 24
                font.family: "Hubot"
                transformOrigin: Item.Center
                anchors.bottomMargin: 0
                color: master.__fontS_C
                anchors.leftMargin: 0
            }
        }

        Header {
            id: header
            anchors.bottom: parent.bottom
            anchors.leftMargin: root.mobileUI ? 32 : 128
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 32
            anchors.top: parent.top
            anchors.topMargin: 107
            anchors.bottomMargin: 20
            connected: SharedData.connected
        }

        MyNotificationBox {
            id: notificationBox
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.bottomMargin: 0
            layer.enabled: true
            visible: header.notifications
            //width: 544
        }

        GroupItem {
            id: notice
            anchors.fill: parent

            Rectangle {
                id: topbanner
                height: 60
                color: "#3f56e59d"
                radius: 16
                border.color: "#23b26a"
                border.width: 4
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.leftMargin: 24
                anchors.rightMargin: 24
                anchors.topMargin: 23

                Rectangle {
                    id: rectangle1
                    width: 24
                    height: 25
                    color: "#23b26a"
                    radius: 6
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.leftMargin: 16
                    anchors.topMargin: 18

                    Image {
                        id: check
                        anchors.verticalCenter: parent.verticalCenter
                        source: "images/check.png"
                        mipmap: false
                        smooth: true
                        anchors.horizontalCenter: parent.horizontalCenter
                        fillMode: Image.PreserveAspectFit
                    }
                }

                Text {
                    id: title
                    anchors.left: parent.left
                    anchors.top: parent.top

                    color: root.textColor
                    text: qsTr("All systems operational")
                    font.pixelSize: 24
                    font.styleName: "SemiBold"
                    font.family: "Hubot Sans"
                    font.weight: Font.DemiBold
                    font.bold: false
                    anchors.leftMargin: 53
                    anchors.topMargin: 16
                }

                Text {
                    id: title1
                    x: 6
                    y: 6
                    visible: false
                    color: root.textColor
                    text: qsTr("Equipment is operating within parameters, and project is on schedule and on budget")
                    anchors.left: parent.left
                    anchors.top: parent.top
                    font.pixelSize: 16
                    font.weight: Font.DemiBold
                    anchors.topMargin: 48
                    anchors.leftMargin: 44
                    font.bold: false
                }

                DesignEffect {
                    backgroundLayer: factory3dview
                    backgroundBlurRadius: 20
                    effects: [
                        DesignDropShadow {
                            visible: false
                            blur: 0
                        }
                    ]
                }
            }
        }
    }
    states: [
        State {
            when: root.mobileUI == false
            name: "desktop"
            PropertyChanges {
                target: widgets_flow
                anchors.bottomMargin: -150
                anchors.bottom: parent.bottom
            }
        }
    ]
    Connections {
        target: SharedData
        onPerformanceChanged: {
            Utils.setPerformance(listmodel, SharedData.performance)
        }
        onEfficiencyChanged: {
            Utils.setEfficiency(listmodel, SharedData.efficiency)
        }
        onRecycleChanged: {
            Utils.setRecycle(listmodel, SharedData.recycle)
        }
        onEnvironmentChanged: {
            Utils.setEnvironment(listmodel, SharedData.environment)
        }
    }
    Connections {
        target: WorkshopInstance
        onPartCounterChanged: {
            var index = 2
            var parts = WorkshopInstance.partCounter
            console.log("Faulty count:" + WorkshopInstance.failtyPartCounter + ", count:" + parts)
            var failtyPercent = ((WorkshopInstance.failtyPartCounter) / parts) * 100
            console.assert(listmodel.get(index).wtype === StateMaster.WTYPE.WTYPE_WORKSHOP,
                           "listModel index is wrong");
            listmodel.setProperty(index, "wpositiveStatus", true)
            listmodel.setProperty(index, "wvalue", parts + " pcs")
            listmodel.setProperty(index, "wvaluechange", failtyPercent.toFixed(0) + '%')
        }
        onFailtyPartCounterChanged: {
            var index = 2
            console.assert(listmodel.get(index).wtype === StateMaster.WTYPE.WTYPE_WORKSHOP,
                           "listModel index is wrong");
            var parts = WorkshopInstance.partCounter
            var failtyPercent = ((WorkshopInstance.failtyPartCounter) / parts) * 100
            listmodel.setProperty(index, "wpositiveStatus", false)
            listmodel.setProperty(index, "wvaluechange", failtyPercent.toFixed(0) + '%')
        }
    }
}
