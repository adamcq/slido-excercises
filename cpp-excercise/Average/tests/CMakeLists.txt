cmake_minimum_required(VERSION 3.10)

project(AverageTests VERSION 1.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

find_package(GTest REQUIRED)

add_executable(AverageTests test.cpp)
target_link_libraries(AverageTests PRIVATE GTest::GTest GTest::Main)