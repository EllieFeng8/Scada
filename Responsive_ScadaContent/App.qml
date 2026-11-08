// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.5
import Responsive_Scada

Window {
    id: appWindow
    width: 1920
    height: 1080

    visible: true
    title: "AEYEOT SCADA 3D"
    // Dark background so the window never flashes white while the UI builds.
    color: "#07111f"
    //visibility: Window.FullScreen

    // Build the (heavy) main screen asynchronously so the window + loading
    // screen paint immediately instead of blocking white on startup.
    Loader {
        id: mainLoader
        anchors.fill: parent
        asynchronous: true
        sourceComponent: mainScreenComponent
    }

    Component {
        id: mainScreenComponent
        Screen01 {
            id: mainScreen
        }
    }

    // Loading screen shown until the main UI is ready, then fades away.
    Rectangle {
        id: bootOverlay
        anchors.fill: parent
        color: appWindow.color
        visible: opacity > 0
        opacity: mainLoader.status === Loader.Ready ? 0 : 1
        Behavior on opacity {
            NumberAnimation { duration: 500; easing.type: Easing.OutCubic }
        }

        // Animated GLSL loader background.
        ShaderAnimation {
            anchors.fill: parent
            cornerRadius: 0
        }

        Column {
            anchors.centerIn: parent
            spacing: 14

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "AEYEOT SCADA 3D"
                color: "white"
                font.pixelSize: 40
                font.weight: Font.DemiBold
            }

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("載入中…")
                color: "#cbd5e1"
                font.pixelSize: 15
                font.letterSpacing: 2
            }
        }
    }
}
