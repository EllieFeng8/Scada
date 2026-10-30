
find_package(Qt6 6.7 REQUIRED COMPONENTS Core Gui Qml Quick Quick3D Quick3DHelpers Quick3DPhysics)


qt_add_library(Adaptation STATIC)
qt6_add_qml_module(Adaptation
    URI "Adaptation"
    VERSION 1.0
    SOURCES
        fileio.cpp fileio.hpp
        query.cpp query.hpp
)

target_link_libraries(Adaptation PRIVATE
    Qt6::Gui
    Qt6::Quick
    tritonclientlib)

target_include_directories(
    Adaptation
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}
)

add_subdirectory(triton/interface)
