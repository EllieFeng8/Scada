pragma Singleton
import QtQuick

QtObject {

    function setPerformance(list: ListModel, value: list<int>) {
        for (var i = 0; i < list.count; i++) {
            if (list.get(i).wtype === StateMaster.WTYPE.WTYPE_PERFORMANCE)
            {
                list.setProperty(i, "wvalue", value[0].toLocaleString(Qt.locale("en_US"), 'g', 4))
                list.setProperty(i, "wvaluechange", value[1].toString() + '%')
            }
        }
    }

    function setEfficiency(list: ListModel, value: list<int>) {
        for (var i = 0; i < list.count; i++) {
            if (list.get(i).wtype === StateMaster.WTYPE.WTYPE_EFFICIENCY)
            {
                list.setProperty(i, "wvalue", value[0].toLocaleString(Qt.locale("en_US"), 'g', 4))
                list.setProperty(i, "wvaluechange", value[1].toString() + '%')
            }
        }
    }
    function setRecycle(list: ListModel, value: list<int>) {
        for (var i = 0; i < list.count; i++) {
            if (list.get(i).wtype === StateMaster.WTYPE.WTYPE_RECYCLE)
            {
                list.setProperty(i, "wvalue", value[0].toLocaleString(Qt.locale("en_US"), 'g', 4) + "kg")
                list.setProperty(i, "wvaluechange", value[1].toString() + '%')
            }
        }
    }
    function setEnvironment(list: ListModel, value: list<int>) {
        for (var i = 0; i < list.count; i++) {
            if (list.get(i).wtype === StateMaster.WTYPE.WTYPE_ENVIRONMENT)
            {
                list.setProperty(i, "wvalue", value[0].toString() + '%')
                list.setProperty(i, "wvaluechange", value[1].toString() + '%')
            }
        }
    }
}
