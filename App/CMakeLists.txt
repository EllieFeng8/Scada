target_sources(${CMAKE_PROJECT_NAME} PUBLIC
    "main.cpp"
)

# NOTE: App/qtmqttmanager is normally a git submodule
# (git@git.qt.io:sales-engineers/qtmqttmanager.git) but is empty in this
# checkout (extracted from a zip, not cloned). App/qtmqttmanager/CMakeLists.txt
# + QtMqttManager.{hpp,cpp} here are a temporary local stub so the app builds
# and runs; swap in the real submodule for an actual MQTT connection.
add_subdirectory(qtmqttmanager)
add_subdirectory(datamodel)

target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE
    Qt${QT_VERSION_MAJOR}::Core
    Qt${QT_VERSION_MAJOR}::Gui
    Qt${QT_VERSION_MAJOR}::Quick
    Qt${QT_VERSION_MAJOR}::Qml
    Qt${QT_VERSION_MAJOR}::Widgets
    QtMqttManager
    DataModel
)

if (ENABLE_AI_ADAPTATION)
    add_subdirectory(adaptation)
    target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE
        Adaptation
    )
endif()
