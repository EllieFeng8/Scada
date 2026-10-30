import QtQuick
import QtQuick.Controls
import QtQuick3D
import Responsive_Scada
import QtQuick.Layouts

Rectangle {
    id: navBar
    height: 80
    color: root.mainColor
    radius: 16

    property int endSpace: 24
    property int btnSize: 56
    property int barPos: 0 //0=bottom, 1=side

    Grid {
        id: grid
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: navBar.endSpace * (navBar.barPos == 0 ? 1 : 0.5)
        anchors.topMargin: navBar.endSpace * (navBar.barPos == 0 ? 0.5 : 1) + navBar.barPos * 73
        anchors.bottomMargin: navBar.endSpace * (navBar.barPos == 0 ? 0.5 : 1) + navBar.barPos * 104
        verticalItemAlignment: Grid.AlignBottom
        horizontalItemAlignment: Grid.AlignHCenter
        anchors.leftMargin: navBar.endSpace * (navBar.barPos == 0 ? 1 : 0.5)
        spacing: 32
        rows: navBar.barPos == 0 ? 1 : 3
        columns: navBar.barPos == 0 ? 3 : 1
        /*
        RoundButton {
            id: roundButton
            text: "+"
            icon.color: views.activeView == viewId ? "#FFFFFF" : "#808080"
            icon.source: "images/bar-chart-square.png"
            property int viewId: 0
            display: AbstractButton.IconOnly
            background: Rectangle {
                radius: 8
                color: views.activeView == parent.viewId ? "#2b5edb" : "#00000000"
            }
            width: navBar.btnSize
            height: navBar.btnSize
            radius: 8
            Connections {
                target: roundButton
                onClicked: views.activeView = roundButton.viewId
            }
        }
        */
        RoundButton {
            id: roundButton1
            width: navBar.btnSize
            height: navBar.btnSize
            property int viewId: 2
            background: Rectangle {
                radius: 8
                color: views.activeView == parent.viewId ? "#2b5edb" : "#00000000"
            }
            radius: 8
            text: "+"
            icon.color: views.activeView == viewId ? "#FFFFFF" : "#808080"
            display: AbstractButton.IconOnly
            icon.source: "images/cube.png"
            Connections {
                target: roundButton1
                onClicked: views.activeView = roundButton1.viewId
            }
        }
        /*
        RoundButton {
            id: roundButton2
            width: navBar.btnSize
            height: navBar.btnSize
            property int viewId: 1
            background: Rectangle {
                radius: 8
                color: views.activeView == parent.viewId ? "#2b5edb" : "#00000000"
            }
            radius: 8
            text: "+"
            icon.color: views.activeView == viewId ? "#FFFFFF" : "#808080"
            display: AbstractButton.IconOnly
            icon.source: "images/qr-code.png"
            Connections {
                target: roundButton2
                onClicked: views.activeView = roundButton2.viewId
            }
        }
        */
    }

    Item {
        id: __materialLibrary__
    }

    Image {
        id: iAD
        visible: navBar.barPos
        anchors.top: parent.top
        source: (root.displayMode === StateMaster.DISPLAYMODE.LIGHTMODE) ? "images/qt-logo-light.png" : "images/qt-logo-dark.png"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 16
        fillMode: Image.PreserveAspectFit
    }

    RoundButton {
        id: roundButton6
        width: 56
        height: 32

        background: Rectangle {
            radius: 16
            color: "#808080"
        }
        text: "+"
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: navBar.barPos ? parent.width / 2 - roundButton6.width / 2 : 16
        anchors.bottomMargin: navBar.barPos ? 48 : parent.height / 2 - roundButton6.height / 2
        display: AbstractButton.IconOnly

        //visible: navBar.barPos
        Image {
            id: image
            width: 28
            height: 28
            anchors.verticalCenter: parent.verticalCenter
            source: (root.displayMode === StateMaster.DISPLAYMODE.LIGHTMODE) ? "images/Knob_light.png" : "images/Knob_dark.png"
            anchors.horizontalCenterOffset: (root.displayMode === StateMaster.DISPLAYMODE.LIGHTMODE) ? -12 : 12
            anchors.horizontalCenter: parent.horizontalCenter
            sourceSize.height: 28
            sourceSize.width: 28
            fillMode: Image.PreserveAspectFit
        }

        Connections {
            target: roundButton6
            onClicked: {
                if (master.daymodeChanging === false) {
                    if (root.displayMode === StateMaster.DISPLAYMODE.LIGHTMODE) {
                        root.displayMode = StateMaster.DISPLAYMODE.DARKMODE
                        master.__daymode = true
                    }
                    else {
                        root.displayMode = StateMaster.DISPLAYMODE.LIGHTMODE
                        master.__daymode = false
                    }
                }
                // root.displayMode = (root.displayMode === StateMaster.DISPLAYMODE.LIGHTMODE) ?
                //     StateMaster.DISPLAYMODE.DARKMODE : StateMaster.DISPLAYMODE.LIGHTMODE;
                // master.__daymode = (root.displayMode === StateMaster.DISPLAYMODE.LIGHTMODE) ? true : false;
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#00000c"}
}
##^##*/

