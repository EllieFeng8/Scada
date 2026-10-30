import QtQuick
import QtCharts

ChartView {
    id: chartView
    width: 388
    height: 200
    property int value1: 50
    property int value2: 50
    property int value3: 50
    property int value4: 50
    property int value5: 50
    property int value6: 50

    backgroundColor: "#00000000"

    titleColor: root.textColor
    antialiasing: true
    legend.visible: false

    ValuesAxis {
        id: yAxis
        color: "#b6b6b6"
        gridVisible: false
        lineVisible: false
        minorGridVisible: true
        labelsColor: root.textColor
        gridLineColor: root.textColor
        labelsFont.pointSize: 12
        min: 0
        max: 300
        tickCount: 4
        labelsVisible: false
        labelFormat: "%d"
        titleVisible: false
        labelsFont.family: "Hubot Sans"
    }

    CategoryAxis {
        id: xAxis
        gridVisible: true
        gridLineColor: "#ff0000"
        labelsVisible: true
    }

    LineSeries {
        width: 5
        color: "#2151c5"
        useOpenGL: false
        axisX: xAxis
        axisY: yAxis
        XYPoint {
            x: 0
            y: value1
        }
        XYPoint {
            x: 1
            y: value2
        }
        XYPoint {
            x: 2
            y: value3
        }
        XYPoint {
            x: 3
            y: value4
        }
        XYPoint {
            x: 4
            y: value5
        }
        XYPoint {
            x: 5
            y: value6
        }
    }
}
