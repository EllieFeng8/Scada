target_sources(${CMAKE_PROJECT_NAME} PUBLIC
    "main.cpp"
)

# Application / window icon (the gold logo), shown in the taskbar, title bar and Explorer.
# Embed a PNG into Qt resources for the runtime window icon (QGuiApplication::setWindowIcon).
qt_add_resources(${CMAKE_PROJECT_NAME} "appicon"
    PREFIX "/"
    FILES
        icons/app_icon.png)

# Embed a multi-resolution .ico into the Windows executable (Explorer / pinned taskbar icon).
if (WIN32)
    enable_language(RC)
    target_sources(${CMAKE_PROJECT_NAME} PRIVATE app_icon.rc)
endif()

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
