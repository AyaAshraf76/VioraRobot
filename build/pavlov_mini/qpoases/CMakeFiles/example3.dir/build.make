# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lenovo36/project_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lenovo36/project_ws/build

# Include any dependencies generated for this target.
include pavlov_mini/qpoases/CMakeFiles/example3.dir/depend.make

# Include the progress variables for this target.
include pavlov_mini/qpoases/CMakeFiles/example3.dir/progress.make

# Include the compile flags for this target's objects.
include pavlov_mini/qpoases/CMakeFiles/example3.dir/flags.make

pavlov_mini/qpoases/CMakeFiles/example3.dir/examples/example3.cpp.o: pavlov_mini/qpoases/CMakeFiles/example3.dir/flags.make
pavlov_mini/qpoases/CMakeFiles/example3.dir/examples/example3.cpp.o: /home/lenovo36/project_ws/src/pavlov_mini/qpoases/examples/example3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lenovo36/project_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object pavlov_mini/qpoases/CMakeFiles/example3.dir/examples/example3.cpp.o"
	cd /home/lenovo36/project_ws/build/pavlov_mini/qpoases && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example3.dir/examples/example3.cpp.o -c /home/lenovo36/project_ws/src/pavlov_mini/qpoases/examples/example3.cpp

pavlov_mini/qpoases/CMakeFiles/example3.dir/examples/example3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example3.dir/examples/example3.cpp.i"
	cd /home/lenovo36/project_ws/build/pavlov_mini/qpoases && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lenovo36/project_ws/src/pavlov_mini/qpoases/examples/example3.cpp > CMakeFiles/example3.dir/examples/example3.cpp.i

pavlov_mini/qpoases/CMakeFiles/example3.dir/examples/example3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example3.dir/examples/example3.cpp.s"
	cd /home/lenovo36/project_ws/build/pavlov_mini/qpoases && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lenovo36/project_ws/src/pavlov_mini/qpoases/examples/example3.cpp -o CMakeFiles/example3.dir/examples/example3.cpp.s

# Object files for target example3
example3_OBJECTS = \
"CMakeFiles/example3.dir/examples/example3.cpp.o"

# External object files for target example3
example3_EXTERNAL_OBJECTS =

/home/lenovo36/project_ws/devel/lib/qpoases/example3: pavlov_mini/qpoases/CMakeFiles/example3.dir/examples/example3.cpp.o
/home/lenovo36/project_ws/devel/lib/qpoases/example3: pavlov_mini/qpoases/CMakeFiles/example3.dir/build.make
/home/lenovo36/project_ws/devel/lib/qpoases/example3: /home/lenovo36/project_ws/devel/lib/libqpoases.so
/home/lenovo36/project_ws/devel/lib/qpoases/example3: pavlov_mini/qpoases/CMakeFiles/example3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lenovo36/project_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/lenovo36/project_ws/devel/lib/qpoases/example3"
	cd /home/lenovo36/project_ws/build/pavlov_mini/qpoases && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
pavlov_mini/qpoases/CMakeFiles/example3.dir/build: /home/lenovo36/project_ws/devel/lib/qpoases/example3

.PHONY : pavlov_mini/qpoases/CMakeFiles/example3.dir/build

pavlov_mini/qpoases/CMakeFiles/example3.dir/clean:
	cd /home/lenovo36/project_ws/build/pavlov_mini/qpoases && $(CMAKE_COMMAND) -P CMakeFiles/example3.dir/cmake_clean.cmake
.PHONY : pavlov_mini/qpoases/CMakeFiles/example3.dir/clean

pavlov_mini/qpoases/CMakeFiles/example3.dir/depend:
	cd /home/lenovo36/project_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lenovo36/project_ws/src /home/lenovo36/project_ws/src/pavlov_mini/qpoases /home/lenovo36/project_ws/build /home/lenovo36/project_ws/build/pavlov_mini/qpoases /home/lenovo36/project_ws/build/pavlov_mini/qpoases/CMakeFiles/example3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : pavlov_mini/qpoases/CMakeFiles/example3.dir/depend

