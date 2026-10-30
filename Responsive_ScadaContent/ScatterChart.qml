import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15
import QtQuick.Studio.Components 1.0
import QtCharts




ChartView {
    id: scatter
    width: parent.width
    height: parent.height


    property int selectedMonth: 10

    property var eventChart:  {
        "2023-10-05": "Event Description",
        "2023-10-09": "Event Description",
//        "2023-10-13": "Event Description",
//        "2023-10-25": "Event Description",
//        "2023-10-29": "Event Description",

        "2023-11-14": "Meeting with Client",
        "2023-11-28": "error machine ",

    }
    ScatterSeries {
        id: scatterSeries
        name: ""
        visible: true
        color: "#df206e"
        pointLabelsFormat: ""
        pointsVisible: true
        pointLabelsClipping: false
        bestFitLineVisible: false


        axisX: ValuesAxis {
            id: xAxis
            visible: false
            titleVisible: false
            truncateLabels: false
            labelsVisible: false
            lineVisible: false
            titleText: monthTextX
            minorGridVisible: false
            gridVisible: false
            min: 0
            max: daysInMonth(selectedMonth);

        }
        axisY: ValuesAxis {
            id: yAxis
            visible: false
            color: "#02d6d6d6"
            gridVisible: false
            minorGridVisible: false
            titleVisible: false
            labelsVisible: false
            lineVisible: false
            min: 0
            max: 5
        }
    }

    property string monthTextX: {
            var monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
            return monthNames[selectedMonth - 1];
        }


    function daysInMonth(month) {
            var days = new Date(2023, month, 0).getDate();
            return days;
        }

    function updateScatterSeries() {
            scatterSeries.clear();

            for (var key in eventChart) {
                var month = parseInt(key.split('-')[1]);
                if (month === selectedMonth) {
                    scatterSeries.append(parseInt(key.split('-')[2]), 2);
                }
            }
        }

        Component.onCompleted: {
            updateScatterSeries();
        }
    }

