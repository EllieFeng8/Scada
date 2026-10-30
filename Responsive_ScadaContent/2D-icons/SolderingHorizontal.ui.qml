import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components 1.0

Rectangle {
    id: solderingHorizontal
    width: 96
    height: 60
    color: "transparent"
    state: "state_state_Default_Orientation_horizontal"

    Chip_new {
        id: chip_new
        y: 1
        width: 73
        height: 20
        state: "state_state_default"
        labelText: "Soldering 1"
        anchors.horizontalCenterOffset: -1
        anchors.horizontalCenter: parent.horizontalCenter
    }

    SvgPathItem {
        id: union
        width: 96
        height: 36
        anchors.bottom: parent.bottom
        strokeWidth: 1
        strokeStyle: 1
        strokeColor: "transparent"
        path: "M 42 1.9999994039535522 C 42 0.8954299688339233 42.89543151855469 0 44 0 L 52 0 C 53.10456848144531 0 54 0.8954305648803711 54 2 L 77.45870208740234 2 C 77.72758483886719 2 77.98513793945312 2.108281373977661 78.1732406616211 2.3004086017608643 L 95.71453857421875 20.216506958007812 C 95.89752197265625 20.403398513793945 96 20.654542922973633 96 20.916099548339844 L 96 35 C 96 35.552284240722656 95.55228424072266 36 95 36 L 89 36 C 88.44771575927734 36 88 35.552284240722656 88 35 L 88 23.11315155029297 C 88 22.83527946472168 87.88438415527344 22.56993865966797 87.68087005615234 22.38074493408203 L 74.68087005615234 9.267593383789062 C 74.49585723876953 9.095602035522461 74.25260925292969 9 74 9 L 54 9 L 54 13 L 72.45870208740234 13 C 72.72758483886719 13 72.98513793945312 13.108281135559082 73.1732406616211 13.300408363342285 L 83.71453857421875 23.216506958007812 C 83.89752197265625 23.403398513793945 84 23.654542922973633 84 23.916099548339844 L 84 35 C 84 35.552284240722656 83.55228424072266 36 83 36 L 77 36 C 76.44771575927734 36 76 35.552284240722656 76 35 L 76 26.11315155029297 C 76 25.83527946472168 75.88438415527344 25.56993865966797 75.68087005615234 25.38074493408203 L 69.68087005615234 20.267593383789062 C 69.49585723876953 20.09560203552246 69.25260925292969 20 69 20 L 54 20 C 54 21.104570388793945 53.10456848144531 22 52 22 L 44 22 C 42.89543151855469 22 42 21.104568481445312 42 20 L 27.000001907348633 20 C 26.747394561767578 20 26.5041446685791 20.09560203552246 26.319133758544922 20.267593383789062 L 20.319133758544922 25.38074493408203 C 20.115619659423828 25.569936752319336 20 25.83527946472168 20 26.113149642944336 L 20 35 C 20 35.552284240722656 19.552284240722656 36 19 36 L 13 36 C 12.447715759277344 36 12 35.552284240722656 12 35 L 12 23.916099548339844 C 12 23.654544830322266 12.102477073669434 23.403398513793945 12.285459518432617 23.216506958007812 L 22.826757431030273 13.300407409667969 C 23.01486587524414 13.108280181884766 23.272417068481445 13 23.54129981994629 13 L 42 13 L 42 9 L 22.000001907348633 9 C 21.747394561767578 9 21.5041446685791 9.095602035522461 21.319133758544922 9.267593383789062 L 8.319132804870605 22.38074493408203 C 8.115618705749512 22.569936752319336 7.999999523162842 22.83527946472168 7.999999523162842 23.113149642944336 L 7.999999523162842 35 C 7.999999523162842 35.552284240722656 7.552283763885498 36 6.999999523162842 36 L 1.0000001192092896 36 C 0.4477154016494751 36 0 35.552284240722656 0 35 L 0 20.916099548339844 C 0 20.654544830322266 0.10247687995433807 20.403398513793945 0.2854594588279724 20.216506958007812 L 17.826757431030273 2.3004074096679688 C 18.01486587524414 2.1082801818847656 18.272417068481445 2 18.54129981994629 2 L 42 1.9999994039535522 Z M 44 19 C 44 19.552284240722656 44.447715759277344 20 45 20 L 51 20 C 51.552284240722656 20 52 19.552284240722656 52 19 L 52 3 C 52 2.4477152824401855 51.552284240722656 2 51 2 L 45 2 C 44.447715759277344 2 44 2.4477157592773438 44 3.000000476837158 L 44 19 Z"
        joinStyle: 0
        fillColor: master.__dark_rect_C
        antialiasing: true
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: -1
    }
    states: [
        State {
            name: "state_state_Default_Orientation_horizontal"
        },
        State {
            name: "state_state_Error_Orientation_horizontal"
            extend: "state_state_Default_Orientation_horizontal"

            PropertyChanges {
                target: chip_new
                state: "state_state_error"
            }

            PropertyChanges {
                target: union
                fillColor: "#ff4154"
            }
        },
        State {
            name: "state_state_Active_Orientation_horizontal"
            extend: "state_state_Default_Orientation_horizontal"

            PropertyChanges {
                target: chip_new
                state: "state_state_active"
            }
        },
        State {
            name: "state_state_Hover_Orientation_horizontal"
            extend: "state_state_Default_Orientation_horizontal"

            PropertyChanges {
                target: chip_new
                state: "state_state_hover"
            }

            PropertyChanges {
                target: union
                fillColor: "#e0e0e0"
            }
        },
        State {
            name: "state_state_Selected_Orientation_horizontal"
            extend: "state_state_Default_Orientation_horizontal"

            PropertyChanges {
                target: chip_new
                state: "state_state_selected"
            }

            PropertyChanges {
                target: union
                fillColor: "#181818"
            }
        },
        State {
            name: "state_state_OK_Orientation_horizontal"
            extend: "state_state_Default_Orientation_horizontal"

            PropertyChanges {
                target: chip_new
                state: "state_state_status_ok"
            }

            PropertyChanges {
                target: union
                fillColor: "#23b26a"
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;uuid:"5efed695-3e74-555c-9f64-4106d29d7adf"}D{i:1;uuid:"dcbb06be-e140-5b98-8e9c-0630fb3dd85f"}
D{i:2;uuid:"a5d4da1b-39c3-5ab0-8911-68425a33de92"}
}
##^##*/

