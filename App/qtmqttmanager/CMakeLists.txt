# TEMP stub (build/run verification only, see chat): the real target lives in
# the git submodule git@git.qt.io:sales-engineers/qtmqttmanager.git, which is
# empty in this checkout. This minimal replacement lets App build and run.
qt_add_library(QtMqttManager STATIC
    QtMqttManager.hpp
    QtMqttManager.cpp
)

target_link_libraries(QtMqttManager PUBLIC
    Qt${QT_VERSION_MAJOR}::Core
)

target_include_directories(QtMqttManager PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
)
