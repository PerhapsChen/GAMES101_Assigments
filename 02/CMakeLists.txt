cmake_minimum_required(VERSION 3.10)
project(02)
set(CMAKE_CXX_STANDARD 17)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_executable(02 main.cpp rasterizer.hpp rasterizer.cpp global.hpp Triangle.hpp Triangle.cpp)


target_include_directories(02
    PRIVATE
        ${CONAN_INCLUDE_DIRS}
)
target_link_libraries(02
    PRIVATE
        ${CONAN_LIBS}
)
