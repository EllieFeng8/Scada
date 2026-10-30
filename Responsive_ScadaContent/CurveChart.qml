import QtQuick 2.15
import QtCharts 2.3

ChartView {
    id: chartView
    property int value1: 100
    property int value2: 50
    property int value3: 100
    y: 15
    width: 436
    height: 251
    property int splineSeriesWidth: 200
    property color splineSeriesColor: "#2151c5"


    backgroundColor: "#00000000"
    titleColor: "#0000e6"
    antialiasing: true
    legend.visible: false

    ValuesAxis {
        id: yAxis
        visible: false
        color: "#b6b6b6"
        gridVisible: false
        lineVisible: false
        minorGridVisible: false
        labelsColor: stateMaster.__fontS_C
        gridLineColor: stateMaster.__lines_C
        labelsFont.pointSize: 12

        min: -70
        max: 300
        tickCount: 4
        labelsVisible: false
        labelFormat: "%d"
        titleVisible: false
        labelsFont.family: "Hubot Sans"
    }

    CategoryAxis {
        id: xAxis
        visible: false
        minorGridVisible: false
        titleVisible: false
        lineVisible: false
        max: 13
        min: 0
        tickCount: 22
        gridVisible: false
        gridLineColor: "#ff0000"
        labelsVisible: false
    }

    SplineSeries {
        id: splineSeries
        width: splineSeriesWidth
        color: splineSeriesColor

        pointLabelsVisible: false
        useOpenGL: false
        axisX: xAxis
        axisY: yAxis
        XYPoint { x: 0; y: -300 }
        XYPoint { x: 4; y: value1-300 }
        XYPoint { x: 5; y: value1-300 }

        XYPoint { x: 8; y: value2-300 }
        XYPoint { x: 9; y: value2-300}

        XYPoint { x: 12; y: value3-300 }
        XYPoint { x: 13; y: value3-300 }
        XYPoint { x: 14; y: value3-300 }



    }

    StateMaster {
        id: stateMaster
    }
}
