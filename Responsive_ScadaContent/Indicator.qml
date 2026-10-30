// Indicator.qml

import QtQuick 2.14
import QtQuick.Shapes 1.14

Item {
    width: 500
    height: 500

    Shape {
        id: indicator1
        anchors.fill: parent

        ShapePath {
            id: indicatorPath1
            fillColor: "#ff0c0c"
            strokeColor: "red"
            strokeWidth: 5
            capStyle: RecycleSlider.capStyle

            PathAngleArc {

                startAngle: RecycleSlider.startAngle - 90
                sweepAngle: 90
            }
        }
    }

    Shape {
        id: indicator2
        anchors.fill: parent

        ShapePath {
            id: indicatorPath2
            strokeColor: "green"
            fillColor: internal.transparentColor
            strokeWidth: 5
            capStyle: RecycleSlider.capStyle

            PathAngleArc {
                radiusX: internal.baseRadius
                radiusY: internal.baseRadius
                centerX: RecycleSlider.width / 2
                centerY: RecycleSlider.height / 2
                startAngle: RecycleSlider.startAngle - 90 + 90
                sweepAngle: 90
            }
        }
    }

    Shape {
        id: indicator3
        anchors.fill: parent

        ShapePath {
            id: indicatorPath3
            strokeColor: "blue"
            fillColor: internal.transparentColor
            strokeWidth: 5
            capStyle: RecycleSlider.capStyle

            PathAngleArc {
                radiusX: internal.baseRadius
                radiusY: internal.baseRadius
                centerX: RecycleSlider.width / 2
                centerY: RecycleSlider.height / 2
                startAngle: RecycleSlider.startAngle - 90 + 180
                sweepAngle: 90
            }
        }
    }

    Shape {
        id: indicator4
        anchors.fill: parent

        ShapePath {
            id: indicatorPath4
            strokeColor: "orange"
            fillColor: internal.transparentColor
            strokeWidth: 5
            capStyle: RecycleSlider.capStyle

            PathAngleArc {
                radiusX: internal.baseRadius
                radiusY: internal.baseRadius
                centerX: RecycleSlider.width / 2
                centerY: RecycleSlider.height / 2
                startAngle: RecycleSlider.startAngle - 90 + 270
                sweepAngle: 90
            }
        }
    }
}
