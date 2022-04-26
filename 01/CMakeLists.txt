cmake_minimum_required(VERSION 3.10)
project(Rasterizer)
set(CMAKE_CXX_STANDARD 17)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_executable(Rasterizer main.cpp rasterizer.hpp rasterizer.cpp Triangle.hpp Triangle.cpp)

target_include_directories(Rasterizer
    PRIVATE
        ${CONAN_INCLUDE_DIRS}
)
target_link_libraries(Rasterizer
    PRIVATE
        ${CONAN_LIBS}
)
