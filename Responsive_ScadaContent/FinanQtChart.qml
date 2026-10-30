import QtQuick
import QtCharts

ChartView {
    id: chartView
    width: parent.width
    height: parent.height
    visible: true

    dropShadowEnabled: false
    antialiasing: true
    legend.visible: false
    backgroundColor: "#00000000"



    property real maxValue: 75
    property list<string> categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun"]
    property list<int> values1
    property list<int> values2
    property list<int> values3

    property color barSetColor1: "#8b8b8b"
    property color barSetColor2: root.brandColor
    property color barSetColor3: "#757575"

    BarSeries {
        axisX: BarCategoryAxis {
            titleFont.family: "Hubot-Sans"
            labelsFont.pointSize: 10
            labelsFont.weight: Font.Bold
            labelsFont.family: "Hubot-Sans"
            lineVisible: false
            gridLineColor: "#ff0000"
            categories: chartView.categories
            gridVisible: false

        }
        axisY: ValuesAxis {
            color: "#00d6d6d6"
            gridLineColor: "#979696"
            labelsColor: "#9f9f9f"
            labelsFont.weight: Font.Medium
            labelsFont.pointSize: 10
            labelsFont.family: "Hubot-Sans"

            titleVisible: false
            lineVisible: false
            min: 0
            tickCount: 4
            gridVisible: true

            max: chartView.maxValue
            labelFormat: "%.0fK"
        }

        // Create bars for each month using the exposed properties
        BarSet {
            id: line01
            color: chartView.barSetColor1
            borderColor: "#00000000"
            borderWidth: 0
            values: chartView.values1


        }

        BarSet {
            id: line02
            color: chartView.barSetColor2
            borderColor: "#00000000"
            borderWidth: 0
            values: chartView.values2

        }

        BarSet {
            id: line03
            color: chartView.barSetColor3
            borderWidth: 0
            borderColor: "#00000000"
            values: chartView.values3
        }
    }
}

