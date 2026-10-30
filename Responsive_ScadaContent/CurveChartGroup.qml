import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: rootchartCombine

    clip: true
    property real data1: 30
    property real data2: 70
    property real data3: 100
    property color graphColor: "#2151c5"
    property int splineWidth:200
    width: parent.width
    height: parent.height

    CurveChart {
        id: curveChart
        y: -138
        height: 251
        anchors.left: parent.left
        anchors.right: parent.right
        splineSeriesWidth: splineWidth
        splineSeriesColor: graphColor
        anchors.rightMargin: -33
        anchors.leftMargin: -137
        value1: data1+50
        value2: data2+50
        value3: data3+50
    }

    CurveChart {
        id: curveChart1
        x: -6
        y: 47
        height: 251
        anchors.left: parent.left
        anchors.right: parent.right
        splineSeriesWidth: splineWidth
        splineSeriesColor: graphColor
        anchors.rightMargin: -33
        anchors.leftMargin: -137
        value1: data1+50
        value2: data2+50
        value3: data3+50

        transform: Scale {
            xScale: 1
            yScale: -1
            origin.x: curveChart1.width / 2
            origin.y: curveChart1.height / 2
        }

    }
}

