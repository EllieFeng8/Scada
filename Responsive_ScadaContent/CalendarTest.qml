import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components


Item {
    id: calenderTest
    width: parent.width
    height: parent.height

    property alias nexEvnText: nexEvn.text
    property int currentMonth: new Date().getMonth() + 1
    property int currentYear: new Date().getFullYear()
    property int currentDay: new Date().getDate()

    property var eventDates: {
        "2023-10-03": "Event Description",
        "2023-10-14": "Meeting with Client",
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
        const monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
        return monthNames[month - 1];
    }

    Rectangle {
        id: header
        x: 0
        width: parent.width
        height: 40
        color: "#00ffffff"
        anchors.top: parent.top
        anchors.topMargin: 15
        Label {
            color: root.textColor
            anchors.centerIn: parent
            text: getMonthName(currentMonth) + " " + currentYear
            font.pointSize: 14
            font.weight: Font.Medium
            anchors.verticalCenterOffset: 1
            anchors.horizontalCenterOffset: 0
            font.family: "Hubot Sans"
        }
    }
    Grid {
        anchors.fill: parent
        anchors.topMargin: 52
        rows: 7
        columns: 7
        Repeater {
            model: 7
        }
        Repeater {
            model: 42
            delegate: Rectangle {
                width: parent.width / 7
                height: parent.height / 7
                color: "#00ffffff"

                property var currentDate: null
                property string eventDescription: "time with her"
                property bool isToday: false
                Rectangle {
                    id: currentColor
                    width: 25
                    height: 25
                    radius: 13
                    opacity: 0.2
                    visible: isToday
                    anchors.centerIn: parent
                }
                EllipseItem {
                    width: 25
                    height: 25
                    fillColor: "#00000000"
                    strokeWidth: 2
                    smooth: true
                    antialiasing: true
                    visible: eventDescription !== ""
                    anchors.centerIn: parent
                }

                Label {
                    anchors.centerIn: parent
                    text: currentDate ? currentDate.getDate() : ""
                    font.pointSize: 12
                    color: root.textColor
                    font.family: "Hubot Sans"
                    Label {
                        anchors.centerIn: parent
                        text: currentDate ? currentDate.getDate() : ""
                        color: root.textColor
                    }
                }

                Component.onCompleted: {
                    currentDate = new Date(currentYear, currentMonth - 1, index - getFirstDayOfMonth(currentMonth, currentYear) + 1);
                    isToday = currentDate.toDateString() === new Date().toDateString();
                    eventDescription = eventDates[currentDate.getFullYear() + '-' + (currentDate.getMonth() + 1).toString().padStart(2, '0') + '-' + currentDate.getDate().toString().padStart(2, '0')] || "";
                }

            }
        }
    }

    Text {
      id: nexEvn
      visible: false
      //text: nextEventDate
      font.pixelSize: 12
      color: root.textColor

      Component.onCompleted: {
        var nextEventDate = Object.keys(eventDates).filter(date => new Date(date) >= new Date())[0];

        // Convert the month number to a month word.
        var monthWord = convertMonthNumberToWord(parseInt(nextEventDate.split("-")[1]));

        // Set the text of the nexEvn element to the month word, day, and year of the next event.
        nexEvn.text = monthWord + " " + nextEventDate.split("-")[2] + ", " + nextEventDate.split("-")[0];
      }
    }

    function convertMonthNumberToWord(monthNumber) {
      const monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept", "Oct", "Nov", "Dec"];
      return monthNames[monthNumber - 1];
    }
}
