import QtQuick
import QtQuick.Studio.Components

import QtQuick 2.15
import QtQuick.Studio.Components 1.0




Rectangle {
    id: dotsLines
    height: 100 // Adjust the height to visualize properly
    width: parent.width
    color: "transparent"

    function calculatePosition(index, totalItems, baseMargin, spacing) {
        return baseMargin + index * (parent.width - 2 * baseMargin) / (totalItems - 1);
    }

    property int totalDots: 30
    property int totalRects: 6
    property int baseMargin: 10
    property int spacing: 5
    property int alignmentHeight: 40 // Unified height for vertical alignment

    // Repeater for dots (SvgPathItems)
    Repeater {
        model: totalDots
        SvgPathItem {
            width: 5
            height: 4
            strokeWidth: 0.74652
            strokeColor: "transparent"
            path: "M 0 0 L 5 0 L 5 4 L 0 4 L 0 0 Z"
            fillColor: "#d9ff4154"
            antialiasing: true
            x: dotsLines.calculatePosition(index, totalDots, baseMargin, spacing)
            y: alignmentHeight - height / 2 // Centering along the alignmentHeight
        }
    }

    // Repeater for rectangles
    Repeater {
        model: totalRects
        Rectangle {
            width: 1
            height: 32
            color: master.__lines_C//"#e0e0e0"
            x: dotsLines.calculatePosition(index, totalRects, baseMargin, spacing)
            y: alignmentHeight - height / 2 // Centering along the alignmentHeight
        }
    }

    anchors.fill: parent
    anchors.margins: 50
}


