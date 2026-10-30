import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components 1.0

Rectangle {
    id: forklift
    width: 77
    height: 70
    color: "transparent"
    state: "state_state_Default"

    SvgPathItem {
        id: union
        y: 0
        width: 40
        height: 35
        strokeWidth: 1
        strokeStyle: 1
        strokeColor: "transparent"
        path: "M 37 0 C 35.34314727783203 0 34 1.3431460857391357 34 3.000000238418579 L 34 21 L 25 21 C 25 18.238576889038086 22.761425018310547 16 20 16 C 17.238576889038086 16 15 18.238576889038086 15 21 L 9 21 C 4.02943754196167 21 0 25.029438018798828 0 30 L 0 35.104759216308594 L 5.623794078826904 35.104759216308594 C 4.616767406463623 34.03156280517578 4 32.587806701660156 4 31 C 4 27.686290740966797 6.686291694641113 25 10 25 C 13.313708305358887 25 16 27.686290740966797 16 31 C 16 32.587806701660156 15.383233070373535 34.03156280517578 14.376206398010254 35.104759216308594 L 25.62379264831543 35.104759216308594 C 24.61676597595215 34.03156280517578 24 32.587806701660156 24 31 C 24 27.686290740966797 26.686290740966797 25 30 25 C 33.3137092590332 25 36 27.686290740966797 36 31 C 36 32.587806701660156 35.38323211669922 34.03156280517578 34.37620544433594 35.104759216308594 L 40 35.104759216308594 L 40 25.5 C 40 25.5 39.9834098815918 25.513269424438477 39.95213317871094 25.536664962768555 C 39.98358154296875 25.362539291381836 40 25.18318748474121 40 25 L 40 3 C 40 1.3431458473205566 38.65685272216797 0 37 0 Z M 38 25 L 38 3 C 38 2.4477152824401855 37.552284240722656 2 37 2 C 36.447715759277344 2 36 2.4477152824401855 36 3.000000238418579 L 36 25 C 36 25.552284240722656 36.447715759277344 26 37 26 C 37.552284240722656 26 38 25.552284240722656 38 25 Z M 30 35 C 32.209136962890625 35 34 33.209136962890625 34 31 C 34 28.790861129760742 32.209136962890625 27 30 27 C 27.790861129760742 27 26 28.790861129760742 26 31 C 26 33.209136962890625 27.790861129760742 35 30 35 Z M 14 31 C 14 33.209136962890625 12.209138870239258 35 10 35 C 7.790861129760742 35 6 33.209136962890625 6 31 C 6 28.790861129760742 7.790861129760742 27 10 27 C 12.209138870239258 27 14 28.790861129760742 14 31 Z"
        joinStyle: 0
        fillColor: factory_2d.itemBGcolor
        antialiasing: true
        anchors.horizontalCenterOffset: -1
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Chip_new {
        id: chip_new
        width: 77
        height: 32
        state: "state_state_default"
        labelText: "Automated
Forklift 1"
        anchors.verticalCenterOffset: 20
        anchors.centerIn: parent
    }
    states: [
        State {
            name: "state_state_Default"
        },
        State {
            name: "state_state_Error"
            extend: "state_state_Default"

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
            name: "state_state_OK"
            extend: "state_state_Default"

            PropertyChanges {
                target: chip_new
                state: "state_state_status_ok"
            }

            PropertyChanges {
                target: union
                fillColor: "#23b26a"
            }
        },
        State {
            name: "state_state_Hover"
            extend: "state_state_Default"

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
            name: "state_state_Active"
            extend: "state_state_Default"

            PropertyChanges {
                target: chip_new
                state: "state_state_active"
            }
        },
        State {
            name: "state_state_Selected"
            extend: "state_state_Default"

            PropertyChanges {
                target: chip_new
                state: "state_state_selected"
            }

            PropertyChanges {
                target: union
                fillColor: "#181818"
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#00000c";uuid:"3326dbdd-ffa0-5a57-b5b3-93bed777da2c"}D{i:1;uuid:"078fa3b2-60db-57fa-a86b-1c5d3c492076"}
D{i:2;uuid:"aa8e7455-584b-577d-aa36-869e91f1996b"}
}
##^##*/

