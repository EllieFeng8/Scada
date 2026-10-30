set(MODULE_NAME "DataModel")

qt_add_library(
    ${MODULE_NAME}
    STATIC
)

qt_add_qml_module(
    ${MODULE_NAME}
    URI "DataModel"
    VERSION 1.0
    SOURCES
        datamodel.cpp
        datamodel.h
)

target_link_libraries(
    ${MODULE_NAME}
    PUBLIC
        Qt::Qml
)

target_include_directories(
    ${MODULE_NAME}
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}
)
