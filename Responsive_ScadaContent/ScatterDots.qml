import QtQuick 2.15
import QtCharts 2.3
import Qt5Compat.GraphicalEffects

ChartView {
    id: chartView
    width: parent.width
    height: parent.height
    antialiasing: true

    Glow {
        id: glowEffect
        anchors.fill: scatter1
        radius: 18.8
        color: "blue"
        source: scatter1
        spread: 14.4
        samples: 3
        fast: true
    }

    ValuesAxis {
        id: xAxis
        visible: true
        titleText: ""
        minorGridVisible: true
        gridVisible: false
        min: 0
        max: 30
    }

    ValuesAxis {
        id: yAxis
        visible: false
        titleText: ""
        labelsVisible: false
        lineVisible: false
        min: 0
        max: 3
    }

    ScatterSeries {
        id: scatter1
        name: "Scatter1"
        color: "#000bff"
        markerSize: 6
        axisX: xAxis
        axisY: yAxis
        pointsVisible: true

        property var monthlyEvent: {
            "2023-10-05": "Event Description",
            "2023-11-14": "Meeting with Client",
            "2023-11-28": "Error Machine"
        }

        property var scatter1Points: []

        Repeater {
            model: Object.keys(monthlyEvent)
            delegate: XYPoint {
                x: parseInt(modelData.split("-")[2]) // Extract the day from the key
                y: 2 // Set the y value according to your needs
            }
        }
    }

    function addXYPoint(scatterSeries, x, y) {
        scatterSeries.push({ x: x, y: y });
    }

    Component.onCompleted: {
        // Add additional XYPoints if needed
        addXYPoint(scatter1.scatter1Points, 5, 2);
        addXYPoint(scatter1.scatter1Points, 14, 2);
        addXYPoint(scatter1.scatter1Points, 28, 2);
    }
}
