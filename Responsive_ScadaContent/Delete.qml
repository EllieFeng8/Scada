import QtQuick 2.15
import QtCharts 2.3
import Widgets_Monitor

ChartView {
    id: chartView
    width: 600
    height: 200
    property int value1: 16
    property int value2: 53
    property int value3: 100


    backgroundColor: "#00000000"
    titleColor: "#0000e6"
    antialiasing: true
    legend.visible: false

    ValuesAxis {
        id: yAxis
        color: "#b6b6b6"
        gridVisible: false
        lineVisible: false
        minorGridVisible: true
        labelsColor: master.__fontS_C
        gridLineColor: master.__lines_C
        labelsFont.pointSize: 12
        min: 10
        max: 300
        tickCount: 4
        labelsVisible: false
        labelFormat: "%d"
        titleVisible: false
        labelsFont.family: "Hubot Sans"
    }

    CategoryAxis {
        id: xAxis
        tickCount: 7
        gridVisible: true
        gridLineColor: "#ff0000"
        labelsVisible: true
    }

    SplineSeries {
        width: 85

        color: "#2151c5"
        useOpenGL: false
        axisX: xAxis
        axisY: yAxis
        XYPoint { x: 0; y: -100 }
        XYPoint { x: 1; y: value1-20 }
        XYPoint { x: 2; y: value1 }
        XYPoint { x: 3; y: value2-50 }
        XYPoint { x: 4; y: value2 }
        XYPoint { x: 5; y: value3-50 }
        XYPoint { x: 6; y: value3 }
        XYPoint { x: 7; y: value3 }
        XYPoint { x: 8; y: value3 }
    }
}
