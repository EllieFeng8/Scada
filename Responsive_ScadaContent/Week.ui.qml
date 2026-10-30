import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: week
    width: 388
    height: 30
    color: "transparent"
    property alias day2Text: day2.text
    property alias day6Text: day6.text
    property alias day1Text: day1.text
    property alias day5Text: day5.text
    property alias dayText: day.text
    property alias day4Text: day4.text
    property alias day3Text: day3.text
    state: "state_format_Start_with_Monday"

    RowLayout {
        id: week_RowLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 0
        Rectangle {
            id: _Weekday
            x: 0
            y: 4
            width: 55
            height: 26
            color: "transparent"
            ColumnLayout {
                id: _Weekday_ColumnLayout
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                spacing: 8
                Text {
                    id: day
                    x: 12
                    y: 5
                    width: 32
                    height: 16
                    color: "#5b5b5b"
                    text: qsTr("Mon")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.NoWrap
                    font.weight: Font.DemiBold
                    font.family: "Hubot Sans"
                    Layout.preferredWidth: 32
                    Layout.preferredHeight: 16
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
                anchors.topMargin: 5
                anchors.rightMargin: 0
                anchors.bottomMargin: 5
            }
            Layout.preferredHeight: 26
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        }

        Rectangle {
            id: _Weekday1
            x: 55
            y: 4
            width: 55
            height: 26
            color: "transparent"
            ColumnLayout {
                id: _Weekday_ColumnLayout1
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                spacing: 8
                Text {
                    id: day1
                    x: 15
                    y: 5
                    width: 26
                    height: 16
                    color: "#5b5b5b"
                    text: qsTr("Tue")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.NoWrap
                    font.weight: Font.DemiBold
                    font.family: "Hubot Sans"
                    Layout.preferredWidth: 26
                    Layout.preferredHeight: 16
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
                anchors.topMargin: 5
                anchors.rightMargin: 0
                anchors.bottomMargin: 5
            }
            Layout.preferredHeight: 26
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        }

        Rectangle {
            id: _Weekday2
            x: 111
            y: 4
            width: 55
            height: 26
            color: "transparent"
            ColumnLayout {
                id: _Weekday_ColumnLayout2
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                spacing: 8
                Text {
                    id: day2
                    x: 12
                    y: 5
                    width: 32
                    height: 16
                    color: "#5b5b5b"
                    text: qsTr("Wed")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.NoWrap
                    font.weight: Font.DemiBold
                    font.family: "Hubot Sans"
                    Layout.preferredWidth: 32
                    Layout.preferredHeight: 16
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
                anchors.topMargin: 5
                anchors.rightMargin: 0
                anchors.bottomMargin: 5
            }
            Layout.preferredHeight: 26
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        }

        Rectangle {
            id: _Weekday3
            x: 166
            y: 4
            width: 55
            height: 26
            color: "transparent"
            ColumnLayout {
                id: _Weekday_ColumnLayout3
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                spacing: 8
                Text {
                    id: day3
                    x: 14
                    y: 5
                    width: 28
                    height: 16
                    color: "#5b5b5b"
                    text: qsTr("Thu")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.NoWrap
                    font.weight: Font.DemiBold
                    font.family: "Hubot Sans"
                    Layout.preferredWidth: 28
                    Layout.preferredHeight: 16
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
                anchors.topMargin: 5
                anchors.rightMargin: 0
                anchors.bottomMargin: 5
            }
            Layout.preferredHeight: 26
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        }

        Rectangle {
            id: _Weekday4
            x: 222
            y: 4
            width: 55
            height: 26
            color: "transparent"
            ColumnLayout {
                id: _Weekday_ColumnLayout4
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                spacing: 8
                Text {
                    id: day4
                    x: 18
                    y: 5
                    width: 21
                    height: 16
                    color: "#5b5b5b"
                    text: qsTr("Fri")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.NoWrap
                    font.weight: Font.DemiBold
                    font.family: "Hubot Sans"
                    Layout.preferredWidth: 21
                    Layout.preferredHeight: 16
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
                anchors.topMargin: 5
                anchors.rightMargin: 0
                anchors.bottomMargin: 5
            }
            Layout.preferredHeight: 26
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        }

        Rectangle {
            id: _Weekday5
            x: 277
            y: 4
            width: 55
            height: 26
            color: "transparent"
            ColumnLayout {
                id: _Weekday_ColumnLayout5
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                spacing: 8
                Text {
                    id: day5
                    x: 15
                    y: 5
                    width: 26
                    height: 16
                    color: "#5b5b5b"
                    text: qsTr("Sat")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.NoWrap
                    font.weight: Font.DemiBold
                    font.family: "Hubot Sans"
                    Layout.preferredWidth: 26
                    Layout.preferredHeight: 16
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
                anchors.topMargin: 5
                anchors.rightMargin: 0
                anchors.bottomMargin: 5
            }
            Layout.preferredHeight: 26
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        }

        Rectangle {
            id: _Weekday6
            x: 333
            y: 4
            width: 55
            height: 26
            color: "transparent"
            ColumnLayout {
                id: _Weekday_ColumnLayout6
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                spacing: 8
                Text {
                    id: day6
                    x: 14
                    y: 5
                    width: 29
                    height: 16
                    color: "#5b5b5b"
                    text: qsTr("Sun")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.NoWrap
                    font.weight: Font.DemiBold
                    font.family: "Hubot Sans"
                    Layout.preferredWidth: 29
                    Layout.preferredHeight: 16
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
                anchors.topMargin: 5
                anchors.rightMargin: 0
                anchors.bottomMargin: 5
            }
            Layout.preferredHeight: 26
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        }
        anchors.topMargin: 4
    }
    states: [
        State {
            name: "state_format_Start_with_Monday"
        },
        State {
            name: "state_format_Start_with_Sunday"
            extend: "state_format_Start_with_Monday"

            PropertyChanges {
                target: day5
                x: 18
                width: 21
                text: qsTr("Fri")
                Layout.preferredWidth: 21
            }

            PropertyChanges {
                target: day4
                x: 14
                width: 28
                text: qsTr("Thu")
                Layout.preferredWidth: 28
            }

            PropertyChanges {
                target: day1
                x: 12
                width: 32
                text: qsTr("Mon")
                Layout.preferredWidth: 32
            }

            PropertyChanges {
                target: day
                x: 14
                width: 29
                text: qsTr("Sun")
                Layout.preferredWidth: 29
            }

            PropertyChanges {
                target: day6
                x: 15
                width: 26
                text: qsTr("Sat")
                Layout.preferredWidth: 26
            }

            PropertyChanges {
                target: day2
                x: 15
                width: 26
                text: qsTr("Tue")
                Layout.preferredWidth: 26
            }

            PropertyChanges {
                target: day3
                x: 12
                width: 32
                text: qsTr("Wed")
                Layout.preferredWidth: 32
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;uuid:"68604115-1dec-5993-b2a6-611d6d77b51c"}D{i:1;uuid:"68604115-1dec-5993-b2a6-611d6d77b51c_HORIZONTAL"}
D{i:2;uuid:"61dfc41c-c0fe-5c7e-9518-a50db9cbb32b"}D{i:3;uuid:"61dfc41c-c0fe-5c7e-9518-a50db9cbb32b_VERTICAL"}
D{i:4;uuid:"bbd6ecea-9aaf-533f-b37c-a6d7a51e4645"}D{i:5;uuid:"d9824802-8b44-5d5b-be76-5becf47687a9"}
D{i:6;uuid:"d9824802-8b44-5d5b-be76-5becf47687a9_VERTICAL"}D{i:7;uuid:"f55fc620-35e8-5307-89a5-5549b978ad3a"}
D{i:8;uuid:"f5c3a406-89a2-5b70-8dc3-52cd47ce6197"}D{i:9;uuid:"f5c3a406-89a2-5b70-8dc3-52cd47ce6197_VERTICAL"}
D{i:10;uuid:"e71cc64f-ecdd-5b20-8e7e-f4bf4b468d53"}D{i:11;uuid:"61201845-f04d-59ab-8152-298e3bde4cbc"}
D{i:12;uuid:"61201845-f04d-59ab-8152-298e3bde4cbc_VERTICAL"}D{i:13;uuid:"e95e04f6-6a3e-5453-98f0-d1efe2d6df57"}
D{i:14;uuid:"6dbeac13-18bd-5fde-8e81-c82a39099158"}D{i:15;uuid:"6dbeac13-18bd-5fde-8e81-c82a39099158_VERTICAL"}
D{i:16;uuid:"e6ee35ae-f02f-5fac-b59a-7605acd4eb75"}D{i:17;uuid:"28b7c44d-81f4-593e-8cbe-983689d5b12c"}
D{i:18;uuid:"28b7c44d-81f4-593e-8cbe-983689d5b12c_VERTICAL"}D{i:19;uuid:"545492d2-1c65-59dd-ace3-5810cbd5064d"}
D{i:20;uuid:"2e031ad2-5c1f-50bb-8920-17ac1a7ebb32"}D{i:21;uuid:"2e031ad2-5c1f-50bb-8920-17ac1a7ebb32_VERTICAL"}
D{i:22;uuid:"ff2793b9-c517-55b1-b668-fb14e67374bb"}
}
##^##*/

