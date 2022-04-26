cmake_minimum_required (VERSION 2.8.11)
project (Transformation)
set(CMAKE_CXX_STANDARD 11)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_executable (Transformation main.cpp)
target_include_directories(Transformation
    PRIVATE
        ${CONAN_INCLUDE_DIRS}
)
MESSAGE( STATUS "CONAN_INCLUDE_DIRS = ${CONAN_INCLUDE_DIRS}.")
