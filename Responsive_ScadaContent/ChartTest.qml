import QtQuick 2.15
import QtQuick.Controls 2.15
import QtCharts 2.15

ChartView {

    anchors.fill: parent
    antialiasing: true



    ValuesAxis {
        id: valueAxisX
        visible: false
        gridVisible: false
        labelsVisible: false
        lineVisible: false
        titleVisible: false
            min: 1
            max: 7

            tickCount: 12

        }

    ValuesAxis {
        id: valueAxisY
        visible: false
        lineVisible: false
        labelsVisible: false
        gridVisible: false
        titleVisible: false
        min: -20
        max: 110
        tickCount: 6

    }

    AreaSeries {

        axisX: valueAxisX
        axisY: valueAxisY
        upperSeries: LineSeries {
            XYPoint { x: 1; y: 0 }
            XYPoint { x: 2; y: 50 }
            XYPoint { x: 3; y: 50 }
            XYPoint { x: 4; y: 70 }
            XYPoint { x: 5; y: 70 }
            XYPoint { x: 6; y: 30 }
            XYPoint { x: 7; y: 30 }
            XYPoint { x: 7; y: 30 }
            }

        }
    }

