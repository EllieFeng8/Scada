import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15
import QtQuick.Studio.Components 1.0
import QtCharts

Item {
    id: calenderTest
    width: parent.width
    height: parent.height

    property int currentMonth: new Date().getMonth() + 1
    property int currentYear: new Date().getFullYear()
    property int currentDay: new Date().getDate()
    property int statecontroller: 0

    property var eventDates: {
        "2023-10-03": "Event Description",
        "2023-10-05": "Meeting with Client",
        "2023-10-10": "Meeting with Client",
        "2023-10-25": "Meeting with Client",
        "2023-10-28": "error machine "

    }

    function getDaysInMonth(month, year) {
        return new Date(year, month, 0).getDate();
    }
    function getFirstDayOfMonth(month, year) {
        var firstDay = new Date(year, month - 1, 1).getDay();
        return firstDay === 0 ? 6 : firstDay - 1;
    }
    function getMonthName(month) {
        const monthNames = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
        return monthNames[month - 1];
    }



    function convertMonthNumberToWord(monthNumber) {
        const monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
        return monthNames[monthNumber - 1];
    }



    ScatterChart {
        id: scatterChart
        eventChart: eventDates
    }

    function getAllEventDays() {
        var eventDays = [];
        for (var date in eventDates) {
            var day = date.split("-")[2];
            eventDays.push(day);
        }
        return eventDays;
    }

    function getAllEventDaysOfWeek() {
        var eventDaysOfWeek = [];
        for (var date in eventDates) {
            var dayOfWeek = getDayOfWeek(new Date(date));
            eventDaysOfWeek.push(dayOfWeek);
        }
        // Add a 15-pixel gap between each day of the week
        return eventDaysOfWeek.join(" ".padEnd(eventDaysOfWeek.join(" ").length + eventDaysOfWeek.length * 0, " "));
    }

    function getDayOfWeek(date) {
        var days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
        return days[date.getDay()];
    }

}
