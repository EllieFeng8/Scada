import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15
import QtQuick.Studio.Components 1.0
import QtCharts

Item {
    id: calenderTest
    width: parent.width
    height: parent.height

    property alias nexEvnText: nexEvn.text
    property int currentMonth: new Date().getMonth() + 1
    property int currentYear: new Date().getFullYear()
    property int currentDay: new Date().getDate()
    property int statecontroller: 0
    property int eventMonth: 0

    property var eventDates: {
        "2023-10-03": "Event Description",
//        "2023-10-14": "Meeting with Client",
//        "2023-10-05": "Event Description",
//        "2023-10-11": "Meeting with Client",
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

    Rectangle {
        id: header
        x: 0
        width: parent.width
        height: 40
        visible: false
        color: "#00ffffff"
        anchors.top: parent.top
        anchors.topMargin: 15
        Label {
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
        id: grid
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
                    color: master.__fontS_C
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
                    font.family: "Hubot Sans"
                    Label {
                        anchors.centerIn: parent
                        text: currentDate ? currentDate.getDate() : ""
                        color: {
                            if (currentDate.getMonth() + 1 === currentMonth) {
                                return master.__font_C;
                            } else {
                                return master.__fontS_C;
                            }
                        }
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
        text: nextEventDate
        font.pixelSize: 12

        Component.onCompleted: {
            var nextEventDate = Object.keys(eventDates).filter(date => new Date(date) >= new Date())[0];

            // Convert the month number to a month word.
            var monthWord = convertMonthNumberToWord(parseInt(nextEventDate.split("-")[1]));

            // Set the text of the nexEvn element to the month word, day, and year of the next event.
            nexEvn.text = monthWord + " " + nextEventDate.split("-")[2] + ", " + nextEventDate.split("-")[0];
        }
    }

    function convertMonthNumberToWord(monthNumber) {
        const monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
        return monthNames[monthNumber - 1];
    }

    Item {
        id: item1
        width: 396
        height: 74
        anchors.horizontalCenter: parent.horizontalCenter


        Column {
            id: column
            height: 51
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.right: parent.right
            spacing: 10

            Text {
                id: allEvent2
                color: master.__fontS_C
                    text: getAllEventDaysOfWeek()
                    anchors.left: parent.left
                    anchors.right: parent.right
                    font.family:  "Hubot Sans"
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignLeft

                    font.weight: Font.Medium
            }

            Row {
                height: allEvent2.height
                anchors.verticalCenter: allEvent2.verticalCenter
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.verticalCenterOffset: 25
                anchors.rightMargin: 0
                anchors.leftMargin: 0 // Align vertically

                spacing: 42

                Repeater {
                    model: getAllEventDays()
                    EllipseItem {
                        id: ellipseItem
                        width: 30
                        height: 30
                        antialiasing: true
                        smooth: true
                        strokeWidth: 3

                        Text {
                            width: parent.width
                            height: parent.height
                            color: "#181818"
                            text: modelData
                            font.pixelSize: 12
                            font.family:  "Hubot Sans"
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            anchors.centerIn: parent // Center the Text item within EllipseItem
                        }
                    }
                }

                Repeater {
                    model: getAllEventDays()
                }
            }

        }
    }



    function getAllEventDays() {
                var eventDays = [];
                var selectedMonth = eventMonth - 1; // Adjusted for JavaScript Date object (0 for January, 1 for February, ..., 11 for December)
                for (var date in eventDates) {
                    var eventDate = new Date(date);
                    if (eventDate.getMonth() === selectedMonth) {
                        var day = eventDate.getDate();
                        eventDays.push(day);
                    }
                }
                return eventDays;
            }

    function getAllEventDaysOfWeek() {
        var eventDaysOfWeek = [];
        var selectedMonth = eventMonth - 1;
        for (var date in eventDates) {
            var eventDate = new Date(date);
            if (eventDate.getMonth() === selectedMonth) {
                var dayOfWeek = getDayOfWeek(eventDate);
                eventDaysOfWeek.push(dayOfWeek);
            }
        }
        var totalGap = 18;
        var gapLength = totalGap - (eventDaysOfWeek.length - 2);


        for (var i = 0; i < eventDaysOfWeek.length; i++) {
            eventDaysOfWeek[i] = eventDaysOfWeek[i].padEnd(eventDaysOfWeek[i].length + gapLength, " ");
        }

        return eventDaysOfWeek.join("");
    }


    function getDayOfWeek(date) {
        var days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
        return days[date.getDay()];
    }

    states: [
        State {
            name: "State1"
            when: calenderTest.statecontroller===1

            PropertyChanges {
                target: item1
                visible: false
            }

            PropertyChanges {
                target: header
                visible: true
            }
        },
        State {
            name: "State2"
            when: calenderTest.statecontroller===2

            PropertyChanges {
                target: grid
                visible: false
            }

            PropertyChanges {
                target: header
                visible: false
            }
        }
    ]


}

/*##^##
Designer {
    D{i:0;uuid:"a83fadc9-174c-5f75-8ed1-f57a2610d3d7"}
}
##^##*/

