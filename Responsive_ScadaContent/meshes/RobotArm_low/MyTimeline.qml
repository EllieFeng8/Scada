import QtQuick
import QtQuick.Timeline

Timeline {
    id: timeline
    currentFrame: 0
    startFrame: 0
    endFrame: 20834
    enabled: true
    animations: TimelineAnimation {
        id: timelineAnimation
        duration: 20834
        from: 0
        to: 20834
        running: false
        loops: Animation.Infinite

    }
    KeyframeGroup {
        target: rightUpper_Hinge
        property: "position"
        keyframeSource: "animations/rightUpper_Hinge_position_0.qad"
    }
    KeyframeGroup {
        target: rightUpper_Hinge
        property: "rotation"
        keyframeSource: "animations/rightUpper_Hinge_rotation_0.qad"
    }
    KeyframeGroup {
        target: base
        property: "position"
        Keyframe {
            frame: 0
            value: Qt.vector3d(0, 0.00364393, 0)
        }
    }
    KeyframeGroup {
        target: left_Finger
        property: "position"
        keyframeSource: "animations/left_Finger_position_0.qad"
    }
    KeyframeGroup {
        target: left_Finger
        property: "rotation"
        keyframeSource: "animations/left_Finger_rotation_0.qad"
    }
    KeyframeGroup {
        target: arm1
        property: "position"
        Keyframe {
            frame: 0
            value: Qt.vector3d(0, 0.135882, 0)
        }
    }
    KeyframeGroup {
        target: arm1
        property: "rotation"
        keyframeSource: "animations/arm1_rotation_0.qad"
    }
    KeyframeGroup {
        target: right_Finger
        property: "position"
        keyframeSource: "animations/right_Finger_position_0.qad"
    }
    KeyframeGroup {
        target: right_Finger
        property: "rotation"
        keyframeSource: "animations/right_Finger_rotation_0.qad"
    }
    KeyframeGroup {
        target: arm2
        property: "position"
        keyframeSource: "animations/arm2_position_0.qad"
    }
    KeyframeGroup {
        target: arm2
        property: "rotation"
        keyframeSource: "animations/arm2_rotation_0.qad"
    }
    KeyframeGroup {
        target: arm3
        property: "position"
        keyframeSource: "animations/arm3_position_0.qad"
    }
    KeyframeGroup {
        target: arm3
        property: "rotation"
        keyframeSource: "animations/arm3_rotation_0.qad"
    }
    KeyframeGroup {
        target: arm4
        property: "position"
        keyframeSource: "animations/arm4_position_0.qad"
    }
    KeyframeGroup {
        target: arm4
        property: "rotation"
        keyframeSource: "animations/arm4_rotation_0.qad"
    }
    KeyframeGroup {
        target: rightLower_Hinge
        property: "position"
        keyframeSource: "animations/rightLower_Hinge_position_0.qad"
    }
    KeyframeGroup {
        target: rightLower_Hinge
        property: "rotation"
        keyframeSource: "animations/rightLower_Hinge_rotation_0.qad"
    }
    KeyframeGroup {
        target: leftUpper_Hinge
        property: "position"
        keyframeSource: "animations/leftUpper_Hinge_position_0.qad"
    }
    KeyframeGroup {
        target: leftUpper_Hinge
        property: "rotation"
        keyframeSource: "animations/leftUpper_Hinge_rotation_0.qad"
    }
    KeyframeGroup {
        target: leftLower_Hinge
        property: "position"
        keyframeSource: "animations/leftLower_Hinge_position_0.qad"
    }
    KeyframeGroup {
        target: leftLower_Hinge
        property: "rotation"
        keyframeSource: "animations/leftLower_Hinge_rotation_0.qad"
    }
}
