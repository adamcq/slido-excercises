cmake_minimum_required(VERSION 3.10)

project(AverageBenchmark)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

find_package(benchmark REQUIRED)

add_executable(AverageBenchmark benchmark.cpp)
target_link_libraries(AverageBenchmark PRIVATE benchmark::benchmark)