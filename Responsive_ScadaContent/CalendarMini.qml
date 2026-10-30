import QtQuick 2.15
import QtQuick.Controls 2.15



Item {
  id: root

  Rectangle {
    id: view
    x: 24
    y: 56
    width: 388
    height: 70
    color: "transparent"
    radius: 4

    Calendar_view {
      id: calendarView
      model: monthlyEvent
      visibleDays: 31
      eventModel: eventList
    }
  }

  ColumnLayout {
    id: eventListLayout
    anchors.left: view.left
    anchors.right: view.right
    anchors.top: view.bottom
    anchors.bottom: parent.bottom
    spacing: 4

    // Iterate through the eventDates property of the calendar_view element.
    Repeater {
      model: eventList
      delegate: Item {
        // Create a Rectangle element for each event.
        Rectangle {
          id: eventRectangle
          color: "white"
          radius: 4
          height: 32

          // Create a Text element to display the event date.
          Text {
            id: eventDateText
            text: model.date
            font.weight: Font.Medium
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
          }

          // Create a Text element to display the event title.
          Text {
            id: eventTitleText
            text: model.title
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
          }

          // Layout the event date and title elements.

          }
        }
      }
    }
  }

