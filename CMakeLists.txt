include(FetchContent)

cmake_minimum_required(VERSION 3.4.1...3.17.2)
set(CMAKE_REQUIRED_FLAGS "-std=c++17 -std=c11" CACHE STRING "")

project(SpiralOfTurtles)


FetchContent_Declare(
    ixwebsocket
    GIT_REPOSITORY https://github.com/TheOneJohiah/IXWebSocket.git
    GIT_TAG tag1test
    )
FetchContent_GetProperties(ixwebsocket)
if(NOT ixwebsocket_POPULATED)
    set(USE_TLS ON CACHE INTERNAL "Add TLS support")
    set(USE_MBED_TLS OFF CACHE INTERNAL "Use Mbed TLS")
    set(USE_OPEN_SSL ON CACHE INTERNAL "Use OpenSSL")
    set(IXWEBSOCKET_INSTALL OFF CACHE INTERNAL "Install IXWebSocket")
    FetchContent_Populate(ixwebsocket)
    add_subdirectory(${ixwebsocket_SOURCE_DIR} ${ixwebsocket_BINARY_DIR})
    set_target_properties(ixwebsocket PROPERTIES FOLDER External)
endif()

add_executable( ${PROJECT_NAME} websocket.cpp )

target_link_libraries(${PROJECT_NAME} PUBLIC ixwebsocket)