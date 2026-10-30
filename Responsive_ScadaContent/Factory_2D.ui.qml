import "2D-icons"
import QtQuick 6.5
import QtQuick.Studio.Components

Rectangle {
    id: factory_2d
    width: 712
    height: 852
    color: master.__background_C

    property bool dayMode
    property color dayBGColor: "#9f9f9f"
    property color nightBGColor: "#5b5b5b"
    property color itemBGcolor: factory_2d.dayMode ? factory_2d.dayBGColor : factory_2d.nightBGColor

    Section {
        id: section_productionline2
        x: 17
        y: 228
        width: 271
        height: 180
    }

    Section {
        id: section_assemblyline1
        x: 316
        y: 0
        width: 396
        height: 852
    }

    Section {
        id: section_pre_productionline2
        x: 0
        y: 432
        width: 308
        height: 420
    }

    Section {
        id: section_mobileassets
        x: 572
        y: 253
        height: 591
    }

    Section {
        id: section_pre_productionline1
        x: 0
        y: 0
        width: 308
        height: 424
    }

    Rectangle {
        id: items_pre_productionline1
        x: 28
        y: 32
        width: 331
        height: 180
        color: "#00ffffff"

        SvgPathItem {
            id: vector_78
            x: 39
            y: 24
            width: 316
            height: 89
            path: "M 0 0 L 227 0 L 227 22 L 210 39 M 0 80 L 171 80 L 181 70 M 207 65 L 229 87 L 315.5 87"
            strokeWidth: 2
            fillColor: "#00ffffff"

            strokeColor: factory_2d.itemBGcolor
        }

        TriangleItem {
            id: polygon217
            x: 44
            y: 18
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: 90
            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon231
            x: 134
            y: 18
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: 90

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon241
            x: 225
            y: 18
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: 90

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon251
            x: 150
            y: 98
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: 90
            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon261
            x: 95
            y: 98
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: 90

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon271
            x: 293
            y: 104
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: 90

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon281
            x: 253
            y: 96
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: 135

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        Rectangle {
            id: indicator14
            x: 172
            y: 104
            width: 32
            height: 22
            color: "#00ffffff"
            border.width: 0
            TriangleItem {
                id: polygon_14
                x: 9
                y: 5
                width: 14
                height: 12
                radius: 0
                strokeColor: "#00ff0000"
                rotation: 0

                fillColor: factory_2d.itemBGcolor
                arcRadius: 1
            }

            SvgPathItem {
                id: link_Stroke_6
                x: 10
                y: 5
                width: 11
                height: 2
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 11 2 L 0 2 L 0 0 L 11 0 L 11 2 Z"

                fillColor: factory_2d.itemBGcolor
            }

            SvgPathItem {
                id: link_Stroke_7
                x: 10
                y: 16
                width: 11
                height: 2
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 11 2 L 0 2 L 0 0 L 11 0 L 11 2 Z"

                fillColor: factory_2d.itemBGcolor
            }
        }

        Rectangle {
            id: indicator15
            x: 54
            y: 104
            width: 32
            height: 22
            color: "#00ffffff"
            border.width: 0
            TriangleItem {
                id: polygon_15
                x: 9
                y: 5
                width: 14
                height: 12
                radius: 0
                strokeColor: "#00ff0000"
                rotation: 0

                fillColor: factory_2d.itemBGcolor
                arcRadius: 1
            }

            SvgPathItem {
                id: link_Stroke_8
                x: 10
                y: 5
                width: 11
                height: 2
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 11 2 L 0 2 L 0 0 L 11 0 L 11 2 Z"

                fillColor: factory_2d.itemBGcolor
            }

            SvgPathItem {
                id: link_Stroke_9
                x: 10
                y: 16
                width: 11
                height: 2
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 11 2 L 0 2 L 0 0 L 11 0 L 11 2 Z"

                fillColor: factory_2d.itemBGcolor
            }
        }

        Rectangle {
            id: indicator16
            x: 114
            y: 84
            width: 32
            height: 22
            color: "#00ffffff"
            border.width: 0
            rotation: 180
            TriangleItem {
                id: polygon_16
                x: 9
                y: 5
                width: 14
                height: 12
                radius: 0
                strokeColor: "#00ff0000"
                rotation: 0

                fillColor: factory_2d.itemBGcolor
                arcRadius: 1
            }

            SvgPathItem {
                id: link_Stroke_10
                x: 10
                y: 5
                width: 11
                height: 2
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 11 2 L 0 2 L 0 0 L 11 0 L 11 2 Z"

                fillColor: factory_2d.itemBGcolor
            }

            SvgPathItem {
                id: link_Stroke_11
                x: 10
                y: 16
                width: 11
                height: 2
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 11 2 L 0 2 L 0 0 L 11 0 L 11 2 Z"

                fillColor: factory_2d.itemBGcolor
            }
        }

        Rectangle {
            id: indicator17
            x: 79
            y: 147
            width: 32
            height: 22
            color: "#00ffffff"
            border.width: 0
            rotation: -90
            TriangleItem {
                id: polygon_17
                x: 9
                y: 5
                width: 14
                height: 12
                radius: 0
                strokeColor: "#00ff0000"
                rotation: 0

                fillColor: factory_2d.itemBGcolor
                arcRadius: 1
            }

            SvgPathItem {
                id: link_Stroke_12
                x: 10
                y: 3
                width: 11
                height: 2
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 11 2 L 0 2 L 0 0 L 11 0 L 11 2 Z"

                fillColor: factory_2d.itemBGcolor
            }

            SvgPathItem {
                id: link_Stroke_13
                x: 10
                y: 19
                width: 11
                height: 2
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 11 2 L 0 2 L 0 0 L 11 0 L 11 2 Z"

                fillColor: factory_2d.itemBGcolor
            }
        }

        Rectangle {
            id: indicator18
            x: 145
            y: 146
            width: 32
            height: 26
            color: "#00ffffff"
            border.width: 0
            rotation: 90
            TriangleItem {
                id: polygon_18
                x: 9
                y: 5
                width: 14
                height: 12
                radius: 0
                strokeColor: "#00ff0000"
                rotation: 0

                fillColor: factory_2d.itemBGcolor
                arcRadius: 1
            }

            SvgPathItem {
                id: link_Stroke_14
                x: 10
                y: 1
                width: 11
                height: 2
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 11 2 L 0 2 L 0 0 L 11 0 L 11 2 Z"

                fillColor: factory_2d.itemBGcolor
            }

            SvgPathItem {
                id: link_Stroke_15
                x: 10
                y: 21
                width: 11
                height: 2
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 11 2 L 0 2 L 0 0 L 11 0 L 11 2 Z"

                fillColor: factory_2d.itemBGcolor
            }
        }

        Rectangle {
            id: indicator19
            x: 88
            y: 61
            width: 32
            height: 26
            color: "#00ffffff"
            border.width: 0
            rotation: 90
            TriangleItem {
                id: polygon_19
                x: 9
                y: 5
                width: 14
                height: 12
                radius: 0
                strokeColor: "#00ff0000"
                rotation: 0

                fillColor: factory_2d.itemBGcolor
                arcRadius: 1
            }

            SvgPathItem {
                id: link_Stroke_16
                x: 10
                y: 1
                width: 11
                height: 2
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 11 2 L 0 2 L 0 0 L 11 0 L 11 2 Z"

                fillColor: factory_2d.itemBGcolor
            }

            SvgPathItem {
                id: link_Stroke_17
                x: 10
                y: 21
                width: 11
                height: 2
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 11 2 L 0 2 L 0 0 L 11 0 L 11 2 Z"

                fillColor: factory_2d.itemBGcolor
            }
        }

        Parts_bin {
            id: parts_bin6
            x: -1
            y: 4
        }

        Hopper {
            id: hopper
            x: 108
            y: 144
        }

        Hopper {
            id: hopper1
            x: 50
            y: 58
        }

        Printer_3D {
            id: printer_3D
            x: 47
            y: 125
        }

        Printer_3D {
            id: printer_3D2
            x: 106
            y: 39
        }

        Printer_3D {
            id: printer_3D1
            x: 165
            y: 125
        }

        Visual_QC {
            id: visual_QC1
            x: 196
            y: 32
        }
    }

    Rectangle {
        id: items_productionline2
        x: 28
        y: 210
        width: 331
        height: 191
        color: "#00ffffff"

        SvgPathItem {
            id: vector_79
            x: 40
            y: -1
            width: 318
            height: 174

            fillColor: factory_2d.itemBGcolor
            strokeWidth: 2

            strokeColor: factory_2d.itemBGcolor
            path: "M196 171.5H197V172.5H196V171.5ZM196 146.5L196.646 145.737L197 146.036V146.5H196ZM146 97.5V96.5H146.414L146.707 96.7929L146 97.5ZM273.5 1L272.753 0.335175L273.051 0H273.5V1ZM195 171.5V146.5H197V171.5H195ZM146 98.5H24.5V96.5H146V98.5ZM24.5 98.5H20V96.5H24.5V98.5ZM149.293 102.207L145.293 98.2071L146.707 96.7929L150.707 100.793L149.293 102.207ZM195.354 147.263L175.854 130.747L177.146 129.221L196.646 145.737L195.354 147.263ZM183.753 100.335L272.753 0.335175L274.247 1.66483L185.247 101.665L183.753 100.335ZM273.5 0H318V2H273.5V0ZM0.5 170.5H108V172.5H0.5V170.5ZM108 170.5H196V172.5H108V170.5ZM20 98.5H0.5V96.5H20V98.5Z"
        }

        TriangleItem {
            id: polygon36
            x: 74
            y: 91
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: 90

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon37
            x: 153
            y: 91
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: 90

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon38
            x: 229
            y: 151
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -180

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon39
            x: 198
            y: 164
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -90

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon40
            x: 131
            y: 164
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -90

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon41
            x: 65
            y: 164
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -90

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon42
            x: 252
            y: 55
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: 40.21

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon43
            x: 296
            y: 6
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: 40.21

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }
        Visual_QC {
            id: visual_QC
            x: 168
            y: 71
        }
        CNC {
            id: cNC
            x: 98
            y: 61
        }

        Parts_bin {
            id: parts_bin5
            y: 151
        }

        Robotic_arm {
            id: robotic_arm13
            x: -2
            y: 71
        }
    }

    Rectangle {
        id: items_pre_productionline2
        x: 28
        y: 446
        width: 383
        height: 418
        color: "#00ffffff"

        Rectangle {
            id: indicator
            x: 116
            y: 268
            width: 32
            height: 22
            color: "#00ffffff"
            border.width: 0

            TriangleItem {
                id: polygon_
                x: 9
                y: 5
                width: 14
                height: 12
                radius: 0

                fillColor: factory_2d.itemBGcolor
                arcRadius: 1
                strokeColor: "#00ff0000"
                rotation: -180
            }

            SvgPathItem {
                id: link_Stroke_
                x: 10
                y: 5
                width: 11
                height: 2
                rotation: -90

                fillColor: factory_2d.itemBGcolor
                strokeColor: "#00ff0000"
                strokeWidth: 2
                path: "M 11 2 L 0 2 L 0 0 L 11 0 L 11 2 Z"
            }

            SvgPathItem {
                id: link_Stroke_1
                x: 10
                y: 16
                width: 11
                height: 2
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 11 2 L 0 2 L 0 0 L 11 0 L 11 2 Z"

                fillColor: factory_2d.itemBGcolor
            }
        }

        Rectangle {
            id: indicator1
            x: 28
            y: 70
            width: 32
            height: 22
            color: "#00ffffff"
            border.width: 0
            TriangleItem {
                id: polygon_1
                x: 9
                y: 5
                width: 14
                height: 12
                radius: 0
                strokeColor: "#00ff0000"
                rotation: 0

                fillColor: factory_2d.itemBGcolor
                arcRadius: 1
            }

            SvgPathItem {
                id: link_Stroke_2
                x: 10
                y: 5
                width: 11
                height: 2
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 11 2 L 0 2 L 0 0 L 11 0 L 11 2 Z"

                fillColor: factory_2d.itemBGcolor
            }

            SvgPathItem {
                id: link_Stroke_3
                x: 10
                y: 16
                width: 11
                height: 2
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 11 2 L 0 2 L 0 0 L 11 0 L 11 2 Z"

                fillColor: factory_2d.itemBGcolor
            }
        }

        Rectangle {
            id: indicator2
            x: 70
            y: 358
            width: 32
            height: 22
            color: "#00ffffff"
            border.width: 0
            TriangleItem {
                id: polygon_2
                x: 9
                y: 5
                width: 14
                height: 12
                radius: 0
                strokeColor: "#00ff0000"
                rotation: -180

                fillColor: factory_2d.itemBGcolor
                arcRadius: 1
            }

            SvgPathItem {
                id: link_Stroke_4
                x: 10
                y: 5
                width: 11
                height: 2
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 11 2 L 0 2 L 0 0 L 11 0 L 11 2 Z"

                fillColor: factory_2d.itemBGcolor
            }

            SvgPathItem {
                id: link_Stroke_5
                x: 10
                y: 16
                width: 11
                height: 2
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 11 2 L 0 2 L 0 0 L 11 0 L 11 2 Z"

                fillColor: factory_2d.itemBGcolor
            }
        }

        SvgPathItem {
            id: vector_81
            x: 2
            y: 65
            width: 354
            height: 121
            strokeWidth: 2

            strokeColor: factory_2d.itemBGcolor
            path: "M266 116.5H267V117.5H266V116.5ZM266 47.5L266.707 46.7929L267 47.0858V47.5H266ZM10.5 7L0.5 11.7735V0.226494L10.5 5V7ZM38.5 115.5H266V117.5H38.5V115.5ZM265 116.5V47.5H267V116.5H265ZM175 7H9.5V5H175V7ZM270 5H353V7H270V5ZM265.293 48.2071L260.293 43.2071L261.707 41.7929L266.707 46.7929L265.293 48.2071ZM196 5H254V7H196V5Z"

            fillColor: factory_2d.itemBGcolor
        }

        SvgPathItem {
            id: vector_82
            x: 40
            y: 163
            width: 368
            height: 220
            path: "M 2.842170943040401e-14 127.49998474121094 L 173 127.49998474121094 M 174 148.5 L 86.5 217.49998474121094 L 0 217.49998474121094 M 211.5 117.5 L 345 0 L 368 0"
            fillColor: "#00000000"
            strokeWidth: 2

            strokeColor: factory_2d.itemBGcolor
        }

        TriangleItem {
            id: polygon35
            x: 293
            y: 66
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: 90

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon44
            x: 84
            y: 66
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: 90

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon45
            x: 147
            y: 66
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: 90

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon46
            x: 226
            y: 66
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: 90

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon47
            x: 261
            y: 140
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -180

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon48
            x: 226
            y: 178
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -90

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon49
            x: 145
            y: 178
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -90

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon50
            x: 65
            y: 177
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -90

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon54
            x: 65
            y: 285
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -90

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon55
            x: 165
            y: 285
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -90

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon551
            x: 65
            y: 375
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -90

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon57
            x: 176
            y: 328
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -132.03

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon56
            x: 139
            y: 357
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -132.03

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }
        Weld_Bolt {
            id: weld_Bolt
            x: 197
            y: 249
        }

        SolderingVertical {
            id: solderingVertical
            x: 143
            y: -2
        }

        Electronic_QC_Vertical {
            id: electronic_QC_Vertical
            x: 230
            y: -2
        }

        Parts_bin {
            id: parts_bin
            y: 163
        }

        Parts_bin {
            id: parts_bin1
            y: 270
        }

        Parts_bin {
            id: parts_bin2
            x: 0
            y: 362
        }

        Robotic_arm {
            id: robotic_arm
            x: 46
            y: 301
        }

        Robotic_arm {
            id: robotic_arm1
            x: 86
            y: 207
        }

        Robotic_arm {
            id: robotic_arm2
            x: 93
            y: 93
        }

        Robotic_arm {
            id: robotic_arm3
            x: -7
            y: 93
        }
    }

    Rectangle {
        id: items_assemblyline1
        x: 342
        y: 33
        width: 283
        height: 819
        color: "#00ffffff"

        SvgPathItem {
            id: vector_80_Stroke_
            x: 105
            y: 6
            width: 12
            height: 799
            strokeStyle: 1

            fillColor: factory_2d.itemBGcolor
            path: "M 11.547005653381348 0 L 6.773502826690674 10 L 6.773491859436035 555.8687133789062 L 4.773491859436035 555.8687133789062 L 4.773502826690674 10 L 0 0 L 11.547005653381348 0 Z M 4.773526668548584 631.6753540039062 L 4.773526668548584 590.0916748046875 L 6.773526668548584 590.0916748046875 L 6.773526668548584 631.6753540039062 L 4.773526668548584 631.6753540039062 Z M 4.7735090255737305 799 L 4.77351188659668 643.1214599609375 L 6.77351188659668 643.1214599609375 L 6.7735090255737305 799 L 4.7735090255737305 799 Z"
            strokeWidth: 2
            strokeColor: "#00ff0000"
        }

        TriangleItem {
            id: polygon58
            x: 1
            y: 625
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -132.03

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon59
            x: 47
            y: 584
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -132.03

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon3
            x: 30
            y: 104
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: 90

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon29
            x: 104
            y: 83
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -180

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon30
            x: 104
            y: 147
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -180

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon31
            x: 104
            y: 222
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -180

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon32
            x: 104
            y: 300
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -180

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon33
            x: 104
            y: 378
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -180

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon34
            x: 104
            y: 457
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -180

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon51
            x: 104
            y: 509
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -180

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon52
            x: 104
            y: 672
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -180

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon53
            x: 104
            y: 744
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -180

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon216
            x: 104
            y: 798
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: -180

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        TriangleItem {
            id: polygon211
            x: 32
            y: 171
            width: 14
            height: 12
            radius: 0
            strokeColor: "#00ff0000"
            rotation: 90

            fillColor: factory_2d.itemBGcolor
            arcRadius: 1
        }

        Rectangle {
            id: indicator3
            x: 223
            y: 78
            width: 32
            height: 79
            color: "#00ffffff"
            border.width: 0
            rotation: -90
            TriangleItem {
                id: polygon_3
                x: 9
                y: 35
                width: 14
                height: 12
                radius: 0
                strokeColor: "#00ff0000"
                rotation: -180

                fillColor: factory_2d.itemBGcolor
                arcRadius: 1
            }

            SvgPathItem {
                id: link_Stroke_18
                width: 40
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 58
                anchors.topMargin: 19
                strokeWidth: 2
                strokeColor: "#00000000"
                rotation: -90
                path: "M 39.5 2 L 0 2 L 0 0 L 39.5 0 L 39.5 2 Z"

                fillColor: factory_2d.itemBGcolor
            }

            SvgPathItem {
                id: link_Stroke_19
                width: 40
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 19
                anchors.topMargin: 58
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 39.5 2 L 0 2 L 0 0 L 39.5 0 L 39.5 2 Z"

                fillColor: factory_2d.itemBGcolor
            }
        }

        Rectangle {
            id: indicator4
            x: 223
            y: 144
            width: 32
            height: 79
            color: "#00ffffff"
            border.width: 0
            rotation: -90
            TriangleItem {
                id: polygon_4
                x: 9
                y: 35
                width: 14
                height: 12
                radius: 0
                strokeColor: "#00ff0000"
                rotation: -180

                fillColor: factory_2d.itemBGcolor
                arcRadius: 1
            }

            SvgPathItem {
                id: link_Stroke_20
                width: 40
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                strokeWidth: 2
                strokeColor: "#00000000"
                rotation: -90
                path: "M 39.5 2 L 0 2 L 0 0 L 39.5 0 L 39.5 2 Z"

                fillColor: factory_2d.itemBGcolor
                anchors.topMargin: 19
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 58
            }

            SvgPathItem {
                id: link_Stroke_21
                width: 40
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 39.5 2 L 0 2 L 0 0 L 39.5 0 L 39.5 2 Z"

                fillColor: factory_2d.itemBGcolor
                anchors.topMargin: 58
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 19
            }
        }

        Rectangle {
            id: indicator5
            x: 130
            y: 148
            width: 32
            height: 70
            color: "#00ffffff"
            border.width: 0
            rotation: 90
            TriangleItem {
                id: polygon_5
                x: 9
                y: 29
                width: 14
                height: 12
                radius: 0
                strokeColor: "#00ff0000"
                rotation: 0

                fillColor: factory_2d.itemBGcolor
                arcRadius: 1
            }

            SvgPathItem {
                id: link_Stroke_22
                width: 35
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                strokeWidth: 2
                strokeColor: "#00000000"
                rotation: -90
                path: "M 35 2 L 0 2 L 0 0 L 35 0 L 35 2 Z"

                fillColor: factory_2d.itemBGcolor
                anchors.topMargin: 52
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 17
            }

            SvgPathItem {
                id: link_Stroke_23
                width: 35
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 39.5 2 L 0 2 L 0 0 L 39.5 0 L 39.5 2 Z"

                fillColor: factory_2d.itemBGcolor
                anchors.topMargin: 17
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 52
            }
        }

        Rectangle {
            id: indicator6
            x: 130
            y: 82
            width: 32
            height: 70
            color: "#00ffffff"
            border.width: 0
            rotation: -90
            TriangleItem {
                id: polygon_6
                x: 9
                y: 29
                width: 14
                height: 12
                radius: 0
                strokeColor: "#00ff0000"
                rotation: -180

                fillColor: factory_2d.itemBGcolor
                arcRadius: 1
            }

            SvgPathItem {
                id: link_Stroke_24
                width: 35
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                strokeWidth: 2
                strokeColor: "#00000000"
                rotation: -90
                path: "M 35 2 L 0 2 L 0 0 L 35 0 L 35 2 Z"

                fillColor: factory_2d.itemBGcolor
                anchors.topMargin: 52
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 17
            }

            SvgPathItem {
                id: link_Stroke_25
                width: 35
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 39.5 2 L 0 2 L 0 0 L 39.5 0 L 39.5 2 Z"

                fillColor: factory_2d.itemBGcolor
                anchors.topMargin: 17
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 52
            }
        }

        Rectangle {
            id: indicator7
            x: 130
            y: 4
            width: 32
            height: 70
            color: "#00ffffff"
            border.width: 0
            rotation: 90
            TriangleItem {
                id: polygon_7
                x: 9
                y: 29
                width: 14
                height: 12
                radius: 0
                strokeColor: "#00ff0000"
                rotation: -180

                fillColor: factory_2d.itemBGcolor
                arcRadius: 1
            }

            SvgPathItem {
                id: link_Stroke_26
                width: 35
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                strokeWidth: 2
                strokeColor: "#00000000"
                rotation: -90
                path: "M 35 2 L 0 2 L 0 0 L 35 0 L 35 2 Z"

                fillColor: factory_2d.itemBGcolor
                anchors.topMargin: 52
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 17
            }

            SvgPathItem {
                id: link_Stroke_27
                width: 35
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 39.5 2 L 0 2 L 0 0 L 39.5 0 L 39.5 2 Z"

                fillColor: factory_2d.itemBGcolor
                anchors.topMargin: 17
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 52
            }
        }

        Rectangle {
            id: indicator8
            x: 73
            y: 17
            width: 32
            height: 44
            color: "#00ffffff"
            border.width: 0
            rotation: -90
            TriangleItem {
                id: polygon_8
                x: 9
                y: 16
                width: 14
                height: 12
                radius: 0
                strokeColor: "#00ff0000"
                rotation: -180

                fillColor: factory_2d.itemBGcolor
                arcRadius: 1
            }

            SvgPathItem {
                id: link_Stroke_28
                width: 22
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 10
                anchors.bottomMargin: 32
                strokeWidth: 2
                strokeColor: "#00000000"
                rotation: -90
                path: "M 35 2 L 0 2 L 0 0 L 35 0 L 35 2 Z"

                fillColor: factory_2d.itemBGcolor
                anchors.horizontalCenter: parent.horizontalCenter
            }

            SvgPathItem {
                id: link_Stroke_29
                width: 22
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 39.5 2 L 0 2 L 0 0 L 39.5 0 L 39.5 2 Z"

                fillColor: factory_2d.itemBGcolor
                anchors.topMargin: 32
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 10
            }
        }

        Rectangle {
            id: indicator9
            x: 73
            y: 88
            width: 32
            height: 44
            color: "#00ffffff"
            border.width: 0
            rotation: -90
            TriangleItem {
                id: polygon_9
                x: 9
                y: 16
                width: 14
                height: 12
                radius: 0
                strokeColor: "#00ff0000"
                rotation: -180

                fillColor: factory_2d.itemBGcolor
                arcRadius: 1
            }

            SvgPathItem {
                id: link_Stroke_30
                width: 22
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                strokeWidth: 2
                strokeColor: "#00000000"
                rotation: -90
                path: "M 35 2 L 0 2 L 0 0 L 35 0 L 35 2 Z"

                fillColor: factory_2d.itemBGcolor
                anchors.topMargin: 10
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 32
            }

            SvgPathItem {
                id: link_Stroke_31
                width: 22
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 39.5 2 L 0 2 L 0 0 L 39.5 0 L 39.5 2 Z"

                fillColor: factory_2d.itemBGcolor
                anchors.topMargin: 32
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 10
            }
        }

        Rectangle {
            id: indicator10
            x: 73
            y: 686
            width: 32
            height: 44
            color: "#00ffffff"
            border.width: 0
            rotation: -90
            TriangleItem {
                id: polygon_10
                x: 9
                y: 16
                width: 14
                height: 12
                radius: 0
                strokeColor: "#00ff0000"
                rotation: -180

                fillColor: factory_2d.itemBGcolor
                arcRadius: 1
            }

            SvgPathItem {
                id: link_Stroke_32
                width: 22
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                strokeWidth: 2
                strokeColor: "#00000000"
                rotation: -90
                path: "M 35 2 L 0 2 L 0 0 L 35 0 L 35 2 Z"

                fillColor: factory_2d.itemBGcolor
                anchors.topMargin: 10
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 32
            }

            SvgPathItem {
                id: link_Stroke_33
                width: 22
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 39.5 2 L 0 2 L 0 0 L 39.5 0 L 39.5 2 Z"

                fillColor: factory_2d.itemBGcolor
                anchors.topMargin: 32
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 10
            }
        }

        Rectangle {
            id: indicator11
            x: 73
            y: 155
            width: 32
            height: 44
            color: "#00ffffff"
            border.width: 0
            rotation: -90
            TriangleItem {
                id: polygon_11
                x: 9
                y: 16
                width: 14
                height: 12
                radius: 0
                strokeColor: "#00ff0000"
                rotation: -180

                fillColor: factory_2d.itemBGcolor
                arcRadius: 1
            }

            SvgPathItem {
                id: link_Stroke_34
                width: 22
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                strokeWidth: 2
                strokeColor: "#00000000"
                rotation: -90
                path: "M 35 2 L 0 2 L 0 0 L 35 0 L 35 2 Z"

                fillColor: factory_2d.itemBGcolor
                anchors.topMargin: 10
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 32
            }

            SvgPathItem {
                id: link_Stroke_35
                width: 22
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 39.5 2 L 0 2 L 0 0 L 39.5 0 L 39.5 2 Z"

                fillColor: factory_2d.itemBGcolor
                anchors.topMargin: 32
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 10
            }
        }

        Rectangle {
            id: indicator12
            x: 73
            y: 462
            width: 32
            height: 44
            color: "#00ffffff"
            border.width: 0
            rotation: -90
            TriangleItem {
                id: polygon_12
                x: 9
                y: 16
                width: 14
                height: 12
                radius: 0
                strokeColor: "#00ff0000"
                rotation: -180

                fillColor: factory_2d.itemBGcolor
                arcRadius: 1
            }

            SvgPathItem {
                id: link_Stroke_36
                width: 22
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                strokeWidth: 2
                strokeColor: "#00000000"
                rotation: -90
                path: "M 35 2 L 0 2 L 0 0 L 35 0 L 35 2 Z"

                fillColor: factory_2d.itemBGcolor
                anchors.topMargin: 10
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 32
            }

            SvgPathItem {
                id: link_Stroke_37
                width: 22
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 39.5 2 L 0 2 L 0 0 L 39.5 0 L 39.5 2 Z"

                fillColor: factory_2d.itemBGcolor
                anchors.topMargin: 32
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 10
            }
        }

        Rectangle {
            id: indicator13
            x: 73
            y: 748
            width: 32
            height: 44
            color: "#00ffffff"
            border.width: 0
            rotation: -90
            TriangleItem {
                id: polygon_13
                x: 9
                y: 16
                width: 14
                height: 12
                radius: 0
                strokeColor: "#00ff0000"
                rotation: -180

                fillColor: factory_2d.itemBGcolor
                arcRadius: 1
            }

            SvgPathItem {
                id: link_Stroke_38
                width: 22
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                strokeWidth: 2
                strokeColor: "#00000000"
                rotation: -90
                path: "M 35 2 L 0 2 L 0 0 L 35 0 L 35 2 Z"

                fillColor: factory_2d.itemBGcolor
                anchors.topMargin: 10
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 32
            }

            SvgPathItem {
                id: link_Stroke_39
                width: 22
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                strokeWidth: 2
                strokeColor: "#00ff0000"
                rotation: -90
                path: "M 39.5 2 L 0 2 L 0 0 L 39.5 0 L 39.5 2 Z"

                fillColor: factory_2d.itemBGcolor
                anchors.topMargin: 32
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 10
            }
        }
        Electronic_QC_Horizontal {
            id: electronic_QC_Horizontal
            x: 63
            y: 613
        }

        Weld_Bolt {
            id: weld_Bolt1
            x: 78
            y: 529
        }

        Robotic_arm {
            id: robotic_arm4
            x: 17
            y: 86
        }

        Robotic_arm {
            id: robotic_arm5
            x: 1
            y: 677
        }

        Robotic_arm {
            id: robotic_arm6
            x: 153
            y: 90
        }

        Robotic_arm {
            id: robotic_arm7
            x: 153
            y: 157
        }

        Robotic_arm {
            id: robotic_arm8
            x: 17
            y: 15
        }

        Robotic_arm {
            id: robotic_arm9
            x: 17
            y: 153
        }

        Robotic_arm {
            id: robotic_arm10
            x: 1
            y: 740
        }

        Robotic_arm {
            id: robotic_arm11
            x: 8
            y: 457
        }

        Robotic_arm {
            id: robotic_arm12
            x: 153
            y: 13
        }

        Parts_bin {
            id: parts_bin3
            x: 277
            y: 98
        }

        Parts_bin {
            id: parts_bin4
            x: 277
            y: 164
        }
    }

    Rectangle {
        id: items_mobileassets
        x: 591
        y: 288
        width: 97
        height: 550
        color: "#00ffffff"

        Forklift {
            id: forklift
            x: 11
        }

        Forklift {
            id: forklift1
            x: 11
            y: 80
        }

        Forklift {
            id: forklift2
            x: 11
            y: 160
        }

        Forklift {
            id: forklift3
            x: 11
            y: 240
        }

        Forklift {
            id: forklift4
            x: 11
            y: 320
        }

        Forklift {
            id: forklift5
            x: 11
            y: 401
        }

        Repair_robot {
            id: repair_robot
            x: 8
            y: 481
        }
    }

    Item {
        id: __materialLibrary__
    }
}
