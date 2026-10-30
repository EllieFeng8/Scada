import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: day
    width: 32
    height: 32
    color: "transparent"
    property alias element1Text: element1.text
    state: "state_state_Default_Selected_False_Current_month_True"

    ColumnLayout {
        id: day_ColumnLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 0
        Item {
            id: day_ColumnLayout_SpacerFrontal
            x: 0
            y: 0
            width: 1
            height: 1
            Layout.fillHeight: true
        }

        Rectangle {
            id: element
            x: 2
            y: 3
            width: 28
            height: 26
            color: "transparent"
            radius: 16
            RowLayout {
                id: date_RowLayout
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                spacing: 0
                Item {
                    id: date_RowLayout_SpacerFrontal
                    x: 0
                    y: 0
                    width: 1
                    height: 1
                    Layout.fillWidth: true
                }

                Text {
                    id: element1
                    x: 0
                    y: 7
                    width: 29
                    height: 12
                    color: "#181818"
                    text: qsTr("12")
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.weight: Font.Medium
                    font.family: "Hubot Sans"
                    Layout.preferredWidth: 29
                    Layout.preferredHeight: 12
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                Item {
                    id: date_RowLayout_SpacerRear
                    x: 0
                    y: 0
                    width: 1
                    height: 1
                    Layout.fillWidth: true
                }
                anchors.topMargin: 7
                anchors.bottomMargin: 7
            }
            Layout.preferredWidth: 28
            Layout.preferredHeight: 26
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

        Item {
            id: day_ColumnLayout_SpacerRear
            x: 0
            y: 0
            width: 1
            height: 1
            Layout.fillHeight: true
        }
        anchors.topMargin: 4
        anchors.rightMargin: 4
        anchors.leftMargin: 4
        anchors.bottomMargin: 4
    }

    Rectangle {
        id: current
        visible: false
        color: "#9f9f9f"
        radius: 32
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 6
        anchors.rightMargin: 6
        anchors.leftMargin: 6
        anchors.bottomMargin: 6
    }

    Rectangle {
        id: selected
        visible: false
        color: "transparent"
        radius: 32
        border.color: "#ff4154"
        border.width: 2
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 4
        anchors.rightMargin: 4
        anchors.leftMargin: 4
        anchors.bottomMargin: 4
    }
    states: [
        State {
            name: "state_state_Default_Selected_False_Current_month_True"
        },
        State {
            name: "state_state_Default_Selected_False_Current_month_False"
            extend: "state_state_Default_Selected_False_Current_month_True"

            PropertyChanges {
                target: element1
                color: "#5b5b5b"
            }
        },
        State {
            name: "state_state_Hover_Selected_False_Current_month_True"
            extend: "state_state_Default_Selected_False_Current_month_True"

            PropertyChanges {
                target: element1
                color: "#9f9f9f"
            }

            PropertyChanges {
                target: current
                color: "#e0e0e0"
            }
        },
        State {
            name: "state_state_Hover_Selected_False_Current_month_False"
            extend: "state_state_Default_Selected_False_Current_month_True"

            PropertyChanges {
                target: element1
                color: "#9f9f9f"
            }

            PropertyChanges {
                target: current
                color: "#e0e0e0"
            }
        },
        State {
            name: "state_state_Selected_Selected_True_Current_month_True"
            extend: "state_state_Default_Selected_False_Current_month_True"

            PropertyChanges {
                target: selected
                visible: true
            }
        },
        State {
            name: "state_state_Active_Selected_False_Current_month_True"
            extend: "state_state_Default_Selected_False_Current_month_True"

            PropertyChanges {
                target: element1
                color: "#5b5b5b"
            }
        },
        State {
            name: "state_state_Hover_Selected_True_Current_month_True"
            extend: "state_state_Default_Selected_False_Current_month_True"

            PropertyChanges {
                target: element1
                color: "#5b5b5b"
            }

            PropertyChanges {
                target: current
                color: "#e0e0e0"
            }

            PropertyChanges {
                target: selected
                visible: true
            }
        },
        State {
            name: "state_state_Active_Selected_True_Current_month_False"
            extend: "state_state_Default_Selected_False_Current_month_True"

            PropertyChanges {
                target: element1
                color: "#5b5b5b"
            }

            PropertyChanges {
                target: selected
                visible: true
            }
        },
        State {
            name: "state_state_Active_Selected_True_Current_month_True"
            extend: "state_state_Default_Selected_False_Current_month_True"

            PropertyChanges {
                target: element1
                color: "#5b5b5b"
            }

            PropertyChanges {
                target: selected
                visible: true
            }
        },
        State {
            name: "state_state_Active_Selected_False_Current_month_False"
            extend: "state_state_Default_Selected_False_Current_month_True"

            PropertyChanges {
                target: element1
                color: "#5b5b5b"
            }
        },
        State {
            name: "state_state_Selected_Selected_True_Current_month_False"
            extend: "state_state_Default_Selected_False_Current_month_True"

            PropertyChanges {
                target: element1
                color: "#5b5b5b"
            }

            PropertyChanges {
                target: selected
                visible: true
            }
        },
        State {
            name: "state_state_Hover_Selected_True_Current_month_False"
            extend: "state_state_Default_Selected_False_Current_month_True"

            PropertyChanges {
                target: element1
                color: "#9f9f9f"
            }

            PropertyChanges {
                target: current
                color: "#e0e0e0"
            }

            PropertyChanges {
                target: selected
                visible: true
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;uuid:"1e372d74-f2aa-58e3-9322-7d65f9bfc90a"}D{i:1;uuid:"1e372d74-f2aa-58e3-9322-7d65f9bfc90a_VERTICAL"}
D{i:2;uuid:"1e372d74-f2aa-58e3-9322-7d65f9bfc90a_VERTICAL_SpacerFrontal"}D{i:3;uuid:"8e2a48a6-0e9d-539c-927d-bd4a25170168"}
D{i:4;uuid:"8e2a48a6-0e9d-539c-927d-bd4a25170168_HORIZONTAL"}D{i:5;uuid:"8e2a48a6-0e9d-539c-927d-bd4a25170168_HORIZONTAL_SpacerFrontal"}
D{i:6;uuid:"97a3f5bb-43eb-599a-b3b9-844875caf9c8"}D{i:7;uuid:"8e2a48a6-0e9d-539c-927d-bd4a25170168_HORIZONTAL_SpacerRear"}
D{i:8;uuid:"1e372d74-f2aa-58e3-9322-7d65f9bfc90a_VERTICAL_SpacerRear"}D{i:9;uuid:"c16db442-711d-5f29-9695-622b28909b06"}
D{i:10;uuid:"61e52019-bd2e-58a3-8c3f-0b1dc9748a32"}
}
##^##*/

