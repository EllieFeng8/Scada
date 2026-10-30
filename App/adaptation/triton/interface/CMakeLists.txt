find_package(Qt6 REQUIRED COMPONENTS Core)
find_package(OpenCV REQUIRED)
find_package(CURL REQUIRED)

set(CLIENTLIB_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../clientlib/src/c++/library)
set(COMMONLIB_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../common/include)

add_library(tritonclientlib
                QueryRecognition.cpp
                QueryRecognition.h
                ${CLIENTLIB_DIR}/cencode.cc
                ${CLIENTLIB_DIR}/common.cc
                ${CLIENTLIB_DIR}/http_client.cc
                ${CLIENTLIB_DIR}/json_utils.cc
)

target_include_directories(tritonclientlib
                PRIVATE
                ${CLIENTLIB_DIR}
                ${COMMONLIB_DIR}
                ${OpenCV_INCLUDE_DIRS}
                )

target_link_libraries(tritonclientlib
                PRIVATE
                ${OpenCV_LIBS}
                CURL::libcurl
                b64
                )
