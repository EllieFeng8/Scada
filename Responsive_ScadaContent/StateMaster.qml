import QtQuick 2.15
import QtQuick.Controls 2.15



Item {
    id: mainStatemaster
    width: 1920
    height: 1080

    // display mode: light, dark
    enum DISPLAYMODE {LIGHTMODE, DARKMODE}
    // widget type
    enum WTYPE {
        WTYPE_EFFICIENCY,
        WTYPE_ENVIRONMENT,
        WTYPE_FINANCIAL,
        WTYPE_INVENTORY,
        WTYPE_MTBF,
        WTYPE_PERFORMANCE,
        WTYPE_RECYCLE,
        WTYPE_SERVICE,
        WTYPE_LINECHART,
        WTYPE_BARCHART,
        WTYPE_WORKSHOP
    }


    //editmode toggle
    property bool editmode: false
    property bool editday: false
    // day mode to toggle
    property bool __daymode: true //!processingService.nightmode
    property bool daymodeChanging: colorswitch.running
    // duration of the transition
    property real stateduration: 500
    // background colors
    property color background_D: "#e0e0e0"
    property color background_N: "#000000"
    property color __background_C: editmode? editday? background_D : background_N : background_N
    // font colors
    property color font_D: "#181818"
    property color font_N: "#efefef"
    property color __font_C: editmode? editday? font_D : font_N : font_N
    property color fontS_D: "#5b5b5b"
    property color fontS_N: "#9f9f9f"
    property color __fontS_C: editmode? editday? fontS_D : fontS_N : fontS_N
    // brand color
    property color brand_D: "#23B26A"
    property color brand_N: "#23B26A"
    property color __brand_C: editmode? editday? brand_D : brande_N : brand_N
    // rectangle dark
    property color dark_rect_D: "#9f9f9f"
    property color dark_rect_N: "#5b5b5b"
    property color __dark_rect_C: editmode? editday? dark_rect_D : dark_rect_N : dark_rect_N
    // grids
    property color grids_D: "#e0e0e0"
    property color grids_N: "#5b5b5b"
    property color __grids_C: editmode? editday? grids_D : grids_N : grids_N
    // lines
    property color lines_D: "#5b5b5b"
    property color lines_N: "#e0e0e0"
    property color __lines_C: editmode? editday? lines_D : lines_N : lines_N
    on__DaymodeChanged: colorswitch.running = true
    //notification colors
    property color good: "#23B26A"
    property color warning: "#F3AF3D"
    property color error: "#ff4154"
    property color buttondark: "#181818"
    //panel colors
    property color panelBackground_D: "#ffffff"
    property color panelBackground_N: "#181818"
    property color __panelBackground_C: editmode? editday? panelBackground_D : panelBackground_N : panelBackground_N

    //3D floor color
    property color lightColorFloor: "#e1e1e1"
    property color darkColorFloor: "#212529"
    property color __colorFloor: "#e1e1e1"
    //top Gradient
    property color lightGradient: "#d5d7df"
    property color darkGradient: "#212529"
    property color __gradient: "#ffffff"
    //App background
    property color appBackground_D: "#d5d7df"
    property color appBackground_N: "#212529"
    property color __appBackground_C: editmode? editday? panelBackground_D : panelBackground_N : panelBackground_N
    //Belt color
    property color lightColorBelt: "#f8f9fa"
    property color darkColorBelt: "#343a40"
    property color __beltcolor: "#f8f9fa"

    ParallelAnimation {
        id: colorswitch

        ColorAnimation {
            id:appBgSwitcher
            target: mainStatemaster
            property: "__appBackground_C"
            from: __daymode? appBackground_D:appBackground_N
            to: __daymode? appBackground_N:appBackground_D
            duration: stateduration
        }
        ColorAnimation {
            id:gradientSwitcher
            target: mainStatemaster
            property: "__gradient"
            from: __daymode? lightGradient:darkGradient
            to: __daymode? darkGradient:lightGradient
            duration: stateduration
        }

        ColorAnimation {
            id:backgroundSwitcher
            target: mainStatemaster
            property: "__background_C"
            from: __daymode? background_D : background_N
            to: __daymode? background_N : background_D
            duration: stateduration
        }
        ColorAnimation {
            id:fontSwitcher
            target: mainStatemaster
            property: "__font_C"
            from: __daymode? font_D : font_N
            to: __daymode? font_N : font_D
            duration: stateduration
        }
        ColorAnimation {
            id:fontSecondarySwitcher
            target: mainStatemaster
            property: "__fontS_C"
            from: __daymode? fontS_D : fontS_N
            to: __daymode? fontS_N : fontS_D
            duration: stateduration
        }
        ColorAnimation {
            id: brandSwitcher
            target: mainStatemaster
            property: "__brand_C"
            from: __daymode? brand_D : brand_N
            to: __daymode? brand_N : brand_D
            duration: stateduration
        }
        ColorAnimation {
            id: rectDarkSwitcher
            target: mainStatemaster
            property: "__dark_rect_C"
            from: __daymode? dark_rect_D : dark_rect_N
            to: __daymode? dark_rect_N : dark_rect_D
            duration: stateduration
        }
        ColorAnimation {
            id: gridsSwitcher
            target: mainStatemaster
            property: "__grids_C"
            from: __daymode? grids_D : grids_N
            to: __daymode? grids_N : grids_D
            duration: stateduration
        }
        ColorAnimation {
            id: linesSwitcher
            target: mainStatemaster
            property: "__lines_C"
            from: __daymode? lines_D : lines_N
            to: __daymode? lines_N : lines_D
            duration: stateduration
        }
        ColorAnimation {
            id: panelSwitcher
            target: mainStatemaster
            property: "__panelBackground_C"
            from: __daymode? panelBackground_D : panelBackground_N
            to: __daymode? panelBackground_N : panelBackground_D
            duration: stateduration
        }



    }
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#00000c"}
}
##^##*/
