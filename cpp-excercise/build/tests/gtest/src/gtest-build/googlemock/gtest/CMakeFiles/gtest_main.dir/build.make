# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.27.9/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.27.9/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/adamborgula/dev/slido/slido-excercises/cpp-excercise/build/tests/gtest/src/gtest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/adamborgula/dev/slido/slido-excercises/cpp-excercise/build/tests/gtest/src/gtest-build

# Include any dependencies generated for this target.
include googlemock/gtest/CMakeFiles/gtest_main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include googlemock/gtest/CMakeFiles/gtest_main.dir/compiler_depend.make

# Include the progress variables for this target.
include googlemock/gtest/CMakeFiles/gtest_main.dir/progress.make

# Include the compile flags for this target's objects.
include googlemock/gtest/CMakeFiles/gtest_main.dir/flags.make

googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: googlemock/gtest/CMakeFiles/gtest_main.dir/flags.make
googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: /Users/adamborgula/dev/slido/slido-excercises/cpp-excercise/build/tests/gtest/src/gtest/googletest/src/gtest_main.cc
googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: googlemock/gtest/CMakeFiles/gtest_main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/adamborgula/dev/slido/slido-excercises/cpp-excercise/build/tests/gtest/src/gtest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"
	cd /Users/adamborgula/dev/slido/slido-excercises/cpp-excercise/build/tests/gtest/src/gtest-build/googlemock/gtest && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o -MF CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.d -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.o -c /Users/adamborgula/dev/slido/slido-excercises/cpp-excercise/build/tests/gtest/src/gtest/googletest/src/gtest_main.cc

googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gtest_main.dir/src/gtest_main.cc.i"
	cd /Users/adamborgula/dev/slido/slido-excercises/cpp-excercise/build/tests/gtest/src/gtest-build/googlemock/gtest && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adamborgula/dev/slido/slido-excercises/cpp-excercise/build/tests/gtest/src/gtest/googletest/src/gtest_main.cc > CMakeFiles/gtest_main.dir/src/gtest_main.cc.i

googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gtest_main.dir/src/gtest_main.cc.s"
	cd /Users/adamborgula/dev/slido/slido-excercises/cpp-excercise/build/tests/gtest/src/gtest-build/googlemock/gtest && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adamborgula/dev/slido/slido-excercises/cpp-excercise/build/tests/gtest/src/gtest/googletest/src/gtest_main.cc -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.s

# Object files for target gtest_main
gtest_main_OBJECTS = \
"CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"

# External object files for target gtest_main
gtest_main_EXTERNAL_OBJECTS =

googlemock/gtest/libgtest_main.a: googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o
googlemock/gtest/libgtest_main.a: googlemock/gtest/CMakeFiles/gtest_main.dir/build.make
googlemock/gtest/libgtest_main.a: googlemock/gtest/CMakeFiles/gtest_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/adamborgula/dev/slido/slido-excercises/cpp-excercise/build/tests/gtest/src/gtest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libgtest_main.a"
	cd /Users/adamborgula/dev/slido/slido-excercises/cpp-excercise/build/tests/gtest/src/gtest-build/googlemock/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean_target.cmake
	cd /Users/adamborgula/dev/slido/slido-excercises/cpp-excercise/build/tests/gtest/src/gtest-build/googlemock/gtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
googlemock/gtest/CMakeFiles/gtest_main.dir/build: googlemock/gtest/libgtest_main.a
.PHONY : googlemock/gtest/CMakeFiles/gtest_main.dir/build

googlemock/gtest/CMakeFiles/gtest_main.dir/clean:
	cd /Users/adamborgula/dev/slido/slido-excercises/cpp-excercise/build/tests/gtest/src/gtest-build/googlemock/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean.cmake
.PHONY : googlemock/gtest/CMakeFiles/gtest_main.dir/clean

googlemock/gtest/CMakeFiles/gtest_main.dir/depend:
	cd /Users/adamborgula/dev/slido/slido-excercises/cpp-excercise/build/tests/gtest/src/gtest-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/adamborgula/dev/slido/slido-excercises/cpp-excercise/build/tests/gtest/src/gtest /Users/adamborgula/dev/slido/slido-excercises/cpp-excercise/build/tests/gtest/src/gtest/googletest /Users/adamborgula/dev/slido/slido-excercises/cpp-excercise/build/tests/gtest/src/gtest-build /Users/adamborgula/dev/slido/slido-excercises/cpp-excercise/build/tests/gtest/src/gtest-build/googlemock/gtest /Users/adamborgula/dev/slido/slido-excercises/cpp-excercise/build/tests/gtest/src/gtest-build/googlemock/gtest/CMakeFiles/gtest_main.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : googlemock/gtest/CMakeFiles/gtest_main.dir/depend

