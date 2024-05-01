cmake_minimum_required(VERSION 3.10)

project(AverageTests VERSION 1.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

cmake_path(GET CMAKE_CURRENT_SOURCE_DIR PARENT_PATH PARENT_DIR)
# include_directories(${PARENT_DIR}/MathFunctions)

# Setup testing
enable_testing()
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIR})

# GTEST DOWNLOAD
include(ExternalProject)
ExternalProject_Add(gtest
  URL https://github.com/google/googletest/archive/release-1.8.0.zip
  # Comment above line, and uncomment line below to use subversion.
  # SVN_REPOSITORY http://googletest.googlecode.com/svn/trunk/ 
  # Uncomment line below to freeze a revision (here the one for 1.7.0)
  # SVN_REVISION -r700
  
  PREFIX ${CMAKE_CURRENT_BINARY_DIR}/gtest
  INSTALL_COMMAND ""
)
ExternalProject_Get_Property(gtest source_dir binary_dir)
# END GTEST DOWNLOAD

add_executable(AverageTests test.cpp)

find_library(MATH_FUNCTIONS_LIB MathFunctions PATHS ${PARENT_DIR})
if (NOT MATH_FUNCTIONS_LIB)
    message(FATAL_ERROR "MathFunctions library not found")
endif()

target_link_libraries(AverageTests PUBLIC ${MATH_FUNCTIONS_LIB})

# Link test executable against gtest & gtest_main
target_link_libraries(AverageTests ${GTEST_LIBRARY_DEBUG} ${GTEST_MAIN_LIBRARY_DEBUG})
target_link_libraries(AverageTests PRIVATE GTest::GTest GTest::Main)

add_test(
    NAME AverageTests
    COMMAND AverageTests
)

# Add MathFunctions to Average's target_include_directories()
target_include_directories(AverageTests PUBLIC
                          "${PROJECT_BINARY_DIR}"
                          "${PARENT_DIR}/MathFunctions"
                          )