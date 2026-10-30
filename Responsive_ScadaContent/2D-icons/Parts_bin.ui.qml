import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0

Rectangle {
    id: parts_bin
    width: 40
    height: 40
    color: "transparent"

    ArcItem {
        id: ellipse_71
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        strokeWidth: 2
        strokeStyle: 1
        strokeColor: factory_2d.itemBGcolor
        outlineArc: true
        fillColor: "transparent"
        end: 450.00001
        begin: 90
        arcWidth: 20
        antialiasing: true
    }

    SvgPathItem {
        id: line_Stroke_
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        strokeWidth: 2
        strokeStyle: 1
        strokeColor: "transparent"
        rotation: 45
        path: "M 20.000000000000004 2 L 0 2 L 0 0 L 20.000000000000004 0 L 20.000000000000004 2 Z"
        joinStyle: 0
        fillColor: factory_2d.itemBGcolor
        antialiasing: true
        anchors.topMargin: 19
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 19
    }

    SvgPathItem {
        id: line_Stroke_1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        strokeWidth: 2
        strokeStyle: 1
        strokeColor: "transparent"
        rotation: -45
        path: "M 20.000000000000004 2 L 0 2 L 0 0 L 20.000000000000004 0 L 20.000000000000004 2 Z"
        joinStyle: 0
        fillColor: factory_2d.itemBGcolor
        antialiasing: true
        anchors.topMargin: 19
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 19
    }

    SvgPathItem {
        id: line_Stroke_2
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        strokeWidth: 2
        strokeStyle: 1
        strokeColor: "transparent"
        path: "M 5.333333492279053 2 L 0 2 L 0 0 L 5.333333492279053 0 L 5.333333492279053 2 Z"
        joinStyle: 0
        fillColor: factory_2d.itemBGcolor
        antialiasing: true
        anchors.topMargin: 19
        anchors.rightMargin: 27
        anchors.leftMargin: 8
        anchors.bottomMargin: 19
    }

    SvgPathItem {
        id: line_Stroke_3
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        strokeWidth: 2
        strokeStyle: 1
        strokeColor: "transparent"
        path: "M 5.333333492279053 2 L 0 2 L 0 0 L 5.333333492279053 0 L 5.333333492279053 2 Z"
        joinStyle: 0
        fillColor: factory_2d.itemBGcolor
        antialiasing: true
        anchors.topMargin: 19
        anchors.rightMargin: 8
        anchors.leftMargin: 27
        anchors.bottomMargin: 19
    }
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#00000c";uuid:"cceccf59-33e7-56fd-8d9b-8aaf8a747da2"}D{i:1;uuid:"637cda0c-fcb6-529e-9204-3320324fe634"}
D{i:2;uuid:"4a579b6e-d0a0-5547-8fb1-d8f637f17b0c"}D{i:3;uuid:"0fe89a01-576e-514d-b314-6570ac0f214b"}
D{i:4;uuid:"7d19b043-b7c0-5522-8604-08ed0eb9f5d5"}D{i:5;uuid:"fd660851-d638-5f7d-95da-7d0ba06aea4a"}
}
##^##*/

