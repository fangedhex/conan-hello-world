cmake_minimum_required(VERSION 2.8.12)
project(test-conan)

add_definitions("-std=c++11")

# Load Conan
include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_executable(test-conan src/main.cpp src/test.cpp)
target_link_libraries(test-conan pthread gtest gmock)
