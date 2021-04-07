cmake_minimum_required (VERSION 3.1)

project (test)


set (CMAKE_CXX_STANDARD 11)
set (CMAKE_CXX_STANDARD_REQUIRED ON)
set (CMAKE_CXX_EXTENSIONS OFF)

if (MSVC)
    if (MSVC_VERSION GREATER 1910)
        set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -permissive-")
    endif ()
    set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Za -Zc:rvalueCast")
endif ()


include_directories (../src)

add_executable (
    json2cbor ../src/json2cbor.cxx
)
set_target_properties (
    json2cbor PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/.out
    RUNTIME_OUTPUT_DIRECTORY_DEBUG ${PROJECT_SOURCE_DIR}/.out
    RUNTIME_OUTPUT_DIRECTORY_RELEASE ${PROJECT_SOURCE_DIR}/.out
)

add_executable (
    json2json ../src/json2json.cxx
)
set_target_properties (
    json2json PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/.out
    RUNTIME_OUTPUT_DIRECTORY_DEBUG ${PROJECT_SOURCE_DIR}/.out
    RUNTIME_OUTPUT_DIRECTORY_RELEASE ${PROJECT_SOURCE_DIR}/.out
)

add_executable (
    cbor2json ../src/cbor2json.cxx
)
set_target_properties (
    cbor2json PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/.out
    RUNTIME_OUTPUT_DIRECTORY_DEBUG ${PROJECT_SOURCE_DIR}/.out
    RUNTIME_OUTPUT_DIRECTORY_RELEASE ${PROJECT_SOURCE_DIR}/.out
)


enable_testing()

find_program (CMAKE_BASH bash)
find_program (CMAKE_DIFF diff)

if (CMAKE_BASH AND CMAKE_DIFF)
    add_test (
        NAME i2o/round-trip
        WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
        COMMAND ./round-trip.sh
    )
endif ()
