import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Shapes 1.14
import QtQml 2.14
import QtQuick.Layouts 1.15
import QtQuick.Studio.Components 1.0

Item {
    id: control

    property int trackWidth: 25
    property int progressWidth: 25
    property int handleWidth: 91
    property int handleHeight: 82
    property int handleRadius: 0
    property int handleVerticalOffset: 115
    property real startAngle: 45
    property real endAngle: 315
    property real minValue: 0.0
    property real maxValue: 200
    property real value: 50
    readonly property alias angle: internal.angle
    property int capStyle: Qt.RoundCap
    property color trackColor: "#c2c2c2"
    property color progressColor: root.brandColor
    property color handleColor: "#313131"
    property real stepSize: 0.1
    property bool snap: false
    //    property Component handle: null
    //    readonly property alias pressed: trackMouse.pressed
    property bool hideTrack: false
    property bool hideProgress: false
    property bool interactive: false
    property alias cursorShape: trackMouse.cursorShape
    property real handleItemScale: 1
    rotation: 180

    implicitWidth: parent.width
    implicitHeight: parent.height







    Binding {
        target: control
        property: "value"
        value: control.snap ? internal.snappedValue : internal.mapFromValue(startAngle, endAngle, minValue, maxValue, internal.angleProxy)
        when: internal.setUpdatedValue
        restoreMode: Binding.RestoreBinding
    }

    QtObject {
        id: internal

        property var centerPt: Qt.point(control.width / 2, control.height / 2)
        property real baseRadius: Math.min(control.width, control.height) / 2 - Math.max(control.trackWidth, control.progressWidth) / 2
        property real actualSpanAngle: control.endAngle - control.startAngle
        property color transparentColor: "transparent"
        property color trackColor: control.trackColor
        property bool setUpdatedValue: false
        property real angleProxy: control.startAngle
        property real snappedValue: 0.0
        readonly property real angle: internal.mapFromValue(control.minValue, control.maxValue, control.startAngle, control.endAngle, control.value)

        function mapFromValue(inMin, inMax, outMin, outMax, inValue) {
            return (inValue - inMin) * (outMax - outMin) / (inMax - inMin) + outMin;
        }

        function updateAngle(angleVal) {
            if (angleVal < 0)
                angleVal += 360;

            if ((angleVal >= control.startAngle) && (angleVal <= control.endAngle)) {
                internal.setUpdatedValue = true;
                internal.angleProxy = Qt.binding(function() { return angleVal; });
                if(control.snap) {
                    var mappedValue = internal.mapFromValue(startAngle, endAngle, minValue, maxValue, internal.angleProxy)
                    var range = control.maxValue - control.minValue
                    var effectiveStep = 2
                    var actualVal = control.stepSize * Math.round(mappedValue / control.stepSize)
                    internal.snappedValue = actualVal
                }
                internal.setUpdatedValue = false;
            }
        }
    }

    // Track Shapes
    Shape {
        id: trackShape

        width: control.width
        height: control.height
        layer.enabled: true
        layer.samples: 8
        visible: !control.hideTrack

        ShapePath {
            id: trackShapePath

            strokeColor: control.trackColor
            fillColor: internal.transparentColor
            strokeWidth: control.trackWidth
            capStyle: control.capStyle

            PathAngleArc {
                radiusX: internal.baseRadius
                radiusY: internal.baseRadius
                centerX: control.width / 2
                centerY: control.height / 2
                startAngle: control.startAngle - 90
                sweepAngle: internal.actualSpanAngle
            }
        }



        Rectangle {
            id: numbers_l
            y: 98
            width: 159
            height: 140
            visible: false
            color: "transparent"
            rotation: 180
            Text {
                id: element5
                y: 45
                width: 26
                height: 13
                color: "#5b5b5b"
                text: qsTr("50")
                font.pixelSize: 12
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Medium
                font.family: "Hubot Sans"
                anchors.horizontalCenterOffset: -67
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                id: element6
                y: 0
                width: 22
                height: 12
                color: "#5b5b5b"
                text: qsTr("100")
                font.pixelSize: 12
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Medium
                font.family: "Hubot Sans"
                anchors.horizontalCenterOffset: 1
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                id: element7
                y: 45
                width: 25
                height: 13
                color: "#5b5b5b"
                text: qsTr("125")
                font.pixelSize: 12
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Medium
                font.family: "Hubot Sans"
                anchors.horizontalCenterOffset: 68
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                id: element8
                y: 123
                width: 23
                height: 14
                color: "#5b5b5b"
                text: qsTr("150")
                font.pixelSize: 12
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Medium
                font.family: "Hubot Sans"
                anchors.horizontalCenterOffset: 67
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                id: element9
                y: 126
                width: 20
                height: 14
                color: "#5b5b5b"
                text: qsTr("0")
                font.pixelSize: 12
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Medium
                font.family: "Hubot Sans"
                anchors.horizontalCenterOffset: -64
                anchors.horizontalCenter: parent.horizontalCenter
            }
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Item {
            id: item1
            width: control.width
            height: control.height
            visible: false

            Loader {
                id: loader
                width: control.width
                height: control.height
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                sourceComponent: component
            }
        }

    }

    // Progress Shape
    Shape {
        id: progressShape

        width: control.width
        height: control.height
        layer.enabled: true
        layer.samples: 8
        visible: !control.hideProgress


        ShapePath {
            id: progressShapePath

            strokeColor: control.progressColor
            fillColor: internal.transparentColor
            strokeWidth: control.progressWidth
            capStyle: control.capStyle

            PathAngleArc {
                radiusX: internal.baseRadius
                radiusY: internal.baseRadius
                centerX: control.width / 2
                centerY: control.height / 2
                startAngle: control.startAngle - 90
                sweepAngle: control.angle - control.startAngle
            }
        }
    }

    MouseArea {
        anchors.fill: parent
        enabled: control.interactive
        onClicked: {
            var outerRadius = Math.min(control.width, control.height)/ 2
            var innerRadius = outerRadius - Math.max(control.trackWidth, 20);
            var clickedDistance = (mouseX - internal.centerPt.x) * (mouseX - internal.centerPt.x) + (mouseY - internal.centerPt.y) * (mouseY - internal.centerPt.y);
            var innerRadius2 = (innerRadius * innerRadius);
            var outerRadius2 = (outerRadius * outerRadius);
            var isOutOfInnerRadius = clickedDistance > innerRadius2;
            var inInSideOuterRadius = clickedDistance <= outerRadius2;
            if (inInSideOuterRadius && isOutOfInnerRadius) {
                var angleDeg = Math.atan2(mouseY - internal.centerPt.y, mouseX - internal.centerPt.x) * 180 / Math.PI + 90;
                internal.updateAngle(angleDeg);
            }
        }
    }

    // Handle Item
    Item {
        id: handleItem

        x: control.width / 2 - width / 2
        y: control.height / 2 - height / 2
        // make sure that the slider handle is always on top as we can set custom track or progress items
        z: 2
        width: handleWidth
        height: handleHeight
        scale: handleItemScale
        antialiasing: true
        transform: [
            Translate {
                y: -(Math.min(control.width, control.height) / 2) + Math.max(control.trackWidth, control.progressWidth) / 2 + control.handleVerticalOffset
            },
            Rotation {
                angle: control.angle
                origin.x: handleItem.width / 2
                origin.y: handleItem.height / 2
            }
        ]

        MouseArea {
            id: trackMouse
            enabled: control.interactive

            function getVal() {
                var handlePoint = mapToItem(control, trackMouse.mouseX, trackMouse.mouseY);
                // angle in degrees
                var angleDeg = Math.atan2(handlePoint.y - internal.centerPt.y, handlePoint.x - internal.centerPt.x) * 180 / Math.PI + 90;
                internal.updateAngle(angleDeg);
            }

            anchors.fill: parent
            onPositionChanged: getVal()
            onClicked: getVal()
            cursorShape: Qt.ArrowCursor
        }

        Loader {
            id: handleLoader
            x: 0
            y: 0
            width: 91
            height: 71
            anchors.verticalCenter: parent.verticalCenter
            anchors.fill: parent
            anchors.horizontalCenter: parent.horizontalCenter

            sourceComponent: control.handle ? handle : handleComponent
        }
    }

    /// Default handle component
    Component {
        id: handleComponent

        SvgPathItem {
            id: needle_m
            y: 0
            width: 74
            height: 71
            rotation: -47
            strokeWidth: 1
            strokeColor: "transparent"
            path: "M 56.00798416137695 0.5048125386238098 C 56.85968780517578 -0.22338789701461792 58.132694244384766 -0.1562303900718689 58.903053283691406 0.6575415730476379 C 59.67341232299805 1.471313714981079 59.670745849609375 2.7460858821868896 58.89699172973633 3.5566303730010986 L 9.829493522644043 54.9571647644043 C 7.576091766357422 57.317710876464844 3.805184006690979 57.3098258972168 1.561669945716858 54.93988037109375 C -0.681843638420105 52.5699348449707 -0.48318612575531006 48.80425262451172 1.9972323179244995 46.68351745605469 L 56.00798416137695 0.5048125386238098 Z"
            fillColor: control.handleColor
            antialiasing: true
            anchors.horizontalCenterOffset: 25
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Component {
        id: component

        SvgPathItem {
            id: steps_l


            strokeWidth: 2
            strokeColor: "transparent"
            path: "M 108.17460632324219 0 C 108.72689056396484 0 109.17460632324219 0.44771522283554077 109.17460632324219 1 L 109.17460632324219 13.280423164367676 C 109.17460632324219 13.832707405090332 108.72689056396484 14.280423164367676 108.17460632324219 14.280423164367676 C 107.62232208251953 14.280423164367676 107.17460632324219 13.832707405090332 107.17460632324219 13.280423164367676 L 107.17460632324219 1 C 107.17460632324219 0.44771522283554077 107.62232208251953 0 108.17460632324219 0 Z M 185.9141387939453 33.55164337158203 C 186.30465698242188 33.942169189453125 186.30465698242188 34.57533264160156 185.9141387939453 34.965858459472656 L 182.56024169921875 38.319759368896484 C 182.1697235107422 38.71028518676758 181.5365447998047 38.71028518676758 181.14602661132812 38.319759368896484 C 180.75550842285156 37.92923355102539 180.75550842285156 37.29607009887695 181.14602661132812 36.90554428100586 L 184.4999237060547 33.55164337158203 C 184.89044189453125 33.16111755371094 185.52362060546875 33.16111755371094 185.9141387939453 33.55164337158203 Z M 13.4738187789917 54.99001693725586 C 13.749960899353027 54.511722564697266 14.361551284790039 54.34784698486328 14.83984375 54.62398910522461 L 23.988754272460938 59.90611267089844 C 24.4670467376709 60.182254791259766 24.63092041015625 60.793846130371094 24.354778289794922 61.27214050292969 C 24.078636169433594 61.75043487548828 23.4670467376709 61.914306640625 22.988754272460938 61.63816452026367 L 13.83984375 56.356040954589844 C 13.361551284790039 56.079898834228516 13.197676658630371 55.46831130981445 13.4738187789917 54.99001693725586 Z M 53.3369140625 15.126907348632812 C 53.815208435058594 14.850765228271484 54.42679977416992 15.014639854431152 54.70294189453125 15.492932319641113 L 57.07450866699219 19.600605010986328 C 57.350650787353516 20.07889747619629 57.18677520751953 20.690488815307617 56.70848083496094 20.966630935668945 C 56.230186462402344 21.242773056030273 55.61859893798828 21.07889747619629 55.34245681762695 20.600605010986328 L 52.970890045166016 16.49293327331543 C 52.69474792480469 16.01464080810547 52.858619689941406 15.40304946899414 53.3369140625 15.126907348632812 Z M 0 110.40740966796875 C -5.549674853000397e-8 109.8551254272461 0.4477151036262512 109.40740966796875 0.9999998807907104 109.40740966796875 L 5.465608596801758 109.40740966796875 C 6.017893314361572 109.40740966796875 6.465608596801758 109.8551254272461 6.465608596801758 110.40740966796875 C 6.465608596801758 110.9596939086914 6.017893314361572 111.40740966796875 5.465608596801758 111.40740966796875 L 1.0000001192092896 111.40740966796875 C 0.4477153420448303 111.40740966796875 5.549675208271765e-8 110.9596939086914 0 110.40740966796875 Z M 0 110.40740966796875 C -5.549674853000397e-8 109.8551254272461 0.4477151036262512 109.40740966796875 0.9999998807907104 109.40740966796875 L 5.465608596801758 109.40740966796875 C 6.017893314361572 109.40740966796875 6.465608596801758 109.8551254272461 6.465608596801758 110.40740966796875 C 6.465608596801758 110.9596939086914 6.017893314361572 111.40740966796875 5.465608596801758 111.40740966796875 L 1.0000001192092896 111.40740966796875 C 0.4477153420448303 111.40740966796875 5.549675208271765e-8 110.9596939086914 0 110.40740966796875 Z M 4.827043056488037 138.74635314941406 C 4.684101104736328 138.212890625 5.000683784484863 137.66455078125 5.534149646759033 137.5216064453125 L 10.115663528442383 136.2939910888672 C 10.649129867553711 136.1510467529297 11.197466850280762 136.46763610839844 11.340408325195312 137.0010986328125 C 11.483349800109863 137.53456115722656 11.166768074035645 138.08290100097656 10.633301734924316 138.22584533691406 L 6.051787853240967 139.45346069335938 C 5.518321990966797 139.59640502929688 4.969985008239746 139.27981567382812 4.827043056488037 138.74635314941406 Z M 79.60343170166016 4.246747970581055 C 80.13689422607422 4.103806018829346 80.68523406982422 4.420388221740723 80.82817840576172 4.953854560852051 L 82.0557861328125 9.535367965698242 C 82.19873046875 10.06883430480957 81.88214111328125 10.617171287536621 81.34867858886719 10.760112762451172 C 80.81521606445312 10.903054237365723 80.26688385009766 10.586472511291504 80.12393951416016 10.053006172180176 L 78.89632415771484 5.471492767333984 C 78.75337982177734 4.938026428222656 79.0699691772461 4.389689922332764 79.60343170166016 4.246747970581055 Z M 163.359375 16.243309020996094 C 163.83766174316406 16.519451141357422 164.0015411376953 17.131040573120117 163.72540283203125 17.609333038330078 L 161.3538360595703 21.71700668334961 C 161.07769775390625 22.19529914855957 160.46609497070312 22.359174728393555 159.98780822753906 22.083032608032227 C 159.509521484375 21.8068904876709 159.34564208984375 21.19529914855957 159.6217803955078 20.71700668334961 L 161.99334716796875 16.609333038330078 C 162.2694854736328 16.131040573120117 162.88108825683594 15.967166900634766 163.359375 16.243309020996094 Z M 3.711808443069458 82.37154388427734 C 3.854750156402588 81.83808135986328 4.403087615966797 81.52149200439453 4.936553478240967 81.66443634033203 L 9.518067359924316 82.89205169677734 C 10.051533699035645 83.03499603271484 10.368115425109863 83.58333587646484 10.225173950195312 84.1167984008789 C 10.082232475280762 84.65026092529297 9.533895492553711 84.96685028076172 9.000429153442383 84.82390594482422 L 4.418915271759033 83.5962905883789 C 3.885449171066284 83.4533462524414 3.568866729736328 82.9050064086914 3.711808443069458 82.37154388427734 Z M 138.2099609375 4.246747970581055 C 138.74342346191406 4.389689922332764 139.0600128173828 4.938026428222656 138.9170684814453 5.471492767333984 L 137.689453125 10.053006172180176 C 137.5465087890625 10.586472511291504 136.9981689453125 10.903055191040039 136.46470642089844 10.760113716125488 C 135.93124389648438 10.617172241210938 135.61465454101562 10.06883430480957 135.75759887695312 9.535367965698242 L 136.98521423339844 4.953854560852051 C 137.12815856933594 4.420388221740723 137.67649841308594 4.103806018829346 138.2099609375 4.246747970581055 Z M 202.1053924560547 56.10641860961914 C 202.38153076171875 56.584712982177734 202.2176513671875 57.19630432128906 201.73936462402344 57.47244644165039 L 192.5904541015625 62.75457000732422 C 192.11216735839844 63.03071212768555 191.5005645751953 62.86684036254883 191.22442626953125 62.388545989990234 C 190.9482879638672 61.91025161743164 191.11216735839844 61.29866027832031 191.5904541015625 61.022518157958984 L 200.73936462402344 55.740394592285156 C 201.2176513671875 55.46425247192383 201.82925415039062 55.62812423706055 202.1053924560547 56.10641860961914 Z M 30.781356811523438 32.43524169921875 C 31.1718807220459 32.044715881347656 31.805044174194336 32.044715881347656 32.1955680847168 32.43524169921875 L 35.549468994140625 35.78914260864258 C 35.93999481201172 36.17966842651367 35.93999481201172 36.81283187866211 35.549468994140625 37.2033576965332 C 35.15894317626953 37.5938835144043 34.52578353881836 37.5938835144043 34.135257720947266 37.2033576965332 L 30.781356811523438 33.849456787109375 C 30.390832901000977 33.45893096923828 30.390832901000977 32.825767517089844 30.781356811523438 32.43524169921875 Z M 187.87518310546875 156.49755859375 C 188.1513214111328 156.01927185058594 188.76292419433594 155.8553924560547 189.2412109375 156.13153076171875 L 198.39012145996094 161.41366577148438 C 198.868408203125 161.68980407714844 199.03228759765625 162.3013916015625 198.7561492919922 162.77967834472656 C 198.48001098632812 163.25796508789062 197.868408203125 163.42184448242188 197.39012145996094 163.1457061767578 L 188.2412109375 157.86358642578125 C 187.76292419433594 157.5874481201172 187.5990447998047 156.97584533691406 187.87518310546875 156.49755859375 Z M 206.53439331054688 110.40740966796875 C 206.53439331054688 109.8551254272461 206.9821014404297 109.40740966796875 207.53439331054688 109.40740966796875 L 212 109.40740966796875 C 212.5522918701172 109.40740966796875 213 109.8551254272461 213 110.40740966796875 C 213 110.9596939086914 212.5522918701172 111.40740966796875 212 111.40740966796875 L 207.53439331054688 111.40740966796875 C 206.9821014404297 111.40740966796875 206.53439331054688 110.9596939086914 206.53439331054688 110.40740966796875 Z M 204.1982879638672 84.50818634033203 C 204.0553436279297 83.97472381591797 204.37193298339844 83.42638397216797 204.9053955078125 83.28343963623047 L 209.48690795898438 82.05583190917969 C 210.02037048339844 81.91288757324219 210.56871032714844 82.22947692871094 210.71165466308594 82.762939453125 C 210.85459899902344 83.29640197753906 210.5380096435547 83.84473419189453 210.00454711914062 83.98767852783203 L 205.42303466796875 85.21529388427734 C 204.8895721435547 85.35823822021484 204.3412322998047 85.0416488647461 204.1982879638672 84.50818634033203 Z M 203.08189392089844 135.49440002441406 C 203.22483825683594 134.9609375 203.77317810058594 134.64434814453125 204.306640625 134.78729248046875 L 208.88815307617188 136.01490783691406 C 209.42161560058594 136.15785217285156 209.7382049560547 136.70619201660156 209.5952606201172 137.23965454101562 C 209.4523162841797 137.7731170654297 208.9039764404297 138.08970642089844 208.37051391601562 137.94676208496094 L 203.78900146484375 136.71914672851562 C 203.2555389404297 136.57620239257812 202.93894958496094 136.02786254882812 203.08189392089844 135.49440002441406 Z M 27.704893112182617 157.61398315429688 C 27.981035232543945 158.09226989746094 27.81715965270996 158.70387268066406 27.3388671875 158.98001098632812 L 18.189027786254883 164.26266479492188 C 17.710735321044922 164.53880310058594 17.099143981933594 164.3749237060547 16.823001861572266 163.89663696289062 C 16.546859741210938 163.41835021972656 16.710735321044922 162.8067626953125 17.189027786254883 162.53062438964844 L 26.3388671875 157.24795532226562 C 26.81715965270996 156.97181701660156 27.42875099182129 157.1356964111328 27.704893112182617 157.61398315429688 Z"
            fillColor: "#e0e0e0"
            antialiasing: true

        }
    }

}
