import QtQuick
import QtQuick.Window

// Animated GLSL loader background (ported from a React + Three.js shader).
// ShaderEffect renders the fragment shader; FrameAnimation drives its time uniform.
Item {
    id: root

    property real cornerRadius: 12

    FrameAnimation {
        id: frameAnimation
        running: root.visible
                 && root.Window.window
                 && root.Window.window.visible
                 && root.Window.window.visibility !== Window.Minimized
    }

    ShaderEffect {
        anchors.fill: parent

        // The React version increments time by 0.05 every frame. At 60 FPS,
        // that is approximately three shader-time units per second.
        // The shader repeats every 20 time units. Wrapping the value keeps
        // single-precision GPU math stable even after days of uptime.
        property real time: (frameAnimation.elapsedTime * 3.0) % 20.0
        property vector2d resolution: Qt.vector2d(
            width * Screen.devicePixelRatio,
            height * Screen.devicePixelRatio)
        property real radius: root.cornerRadius * Screen.devicePixelRatio

        fragmentShader: "qrc:/shaders/shader-animation.frag.qsb"
    }
}
