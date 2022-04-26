cmake_minimum_required(VERSION 3.10)
project(03)
set(CMAKE_CXX_STANDARD 17)
include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_executable(03 main.cpp rasterizer.hpp rasterizer.cpp global.hpp Triangle.hpp Triangle.cpp Texture.hpp Texture.cpp Shader.hpp OBJ_Loader.h)
target_include_directories(03
    PRIVATE
        ${CONAN_INCLUDE_DIRS}
)
target_link_libraries(03
    PRIVATE
        ${CONAN_LIBS}
)