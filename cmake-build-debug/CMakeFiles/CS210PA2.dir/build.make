# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/aarch64/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/aarch64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jaeyoonlee/CLionProjects/programming-assignment-2-jlee6128

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jaeyoonlee/CLionProjects/programming-assignment-2-jlee6128/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CS210PA2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/CS210PA2.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/CS210PA2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CS210PA2.dir/flags.make

CMakeFiles/CS210PA2.dir/main.cpp.o: CMakeFiles/CS210PA2.dir/flags.make
CMakeFiles/CS210PA2.dir/main.cpp.o: /Users/jaeyoonlee/CLionProjects/programming-assignment-2-jlee6128/main.cpp
CMakeFiles/CS210PA2.dir/main.cpp.o: CMakeFiles/CS210PA2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jaeyoonlee/CLionProjects/programming-assignment-2-jlee6128/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CS210PA2.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CS210PA2.dir/main.cpp.o -MF CMakeFiles/CS210PA2.dir/main.cpp.o.d -o CMakeFiles/CS210PA2.dir/main.cpp.o -c /Users/jaeyoonlee/CLionProjects/programming-assignment-2-jlee6128/main.cpp

CMakeFiles/CS210PA2.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CS210PA2.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jaeyoonlee/CLionProjects/programming-assignment-2-jlee6128/main.cpp > CMakeFiles/CS210PA2.dir/main.cpp.i

CMakeFiles/CS210PA2.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CS210PA2.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jaeyoonlee/CLionProjects/programming-assignment-2-jlee6128/main.cpp -o CMakeFiles/CS210PA2.dir/main.cpp.s

CMakeFiles/CS210PA2.dir/Story.cpp.o: CMakeFiles/CS210PA2.dir/flags.make
CMakeFiles/CS210PA2.dir/Story.cpp.o: /Users/jaeyoonlee/CLionProjects/programming-assignment-2-jlee6128/Story.cpp
CMakeFiles/CS210PA2.dir/Story.cpp.o: CMakeFiles/CS210PA2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jaeyoonlee/CLionProjects/programming-assignment-2-jlee6128/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CS210PA2.dir/Story.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CS210PA2.dir/Story.cpp.o -MF CMakeFiles/CS210PA2.dir/Story.cpp.o.d -o CMakeFiles/CS210PA2.dir/Story.cpp.o -c /Users/jaeyoonlee/CLionProjects/programming-assignment-2-jlee6128/Story.cpp

CMakeFiles/CS210PA2.dir/Story.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CS210PA2.dir/Story.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jaeyoonlee/CLionProjects/programming-assignment-2-jlee6128/Story.cpp > CMakeFiles/CS210PA2.dir/Story.cpp.i

CMakeFiles/CS210PA2.dir/Story.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CS210PA2.dir/Story.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jaeyoonlee/CLionProjects/programming-assignment-2-jlee6128/Story.cpp -o CMakeFiles/CS210PA2.dir/Story.cpp.s

# Object files for target CS210PA2
CS210PA2_OBJECTS = \
"CMakeFiles/CS210PA2.dir/main.cpp.o" \
"CMakeFiles/CS210PA2.dir/Story.cpp.o"

# External object files for target CS210PA2
CS210PA2_EXTERNAL_OBJECTS =

CS210PA2: CMakeFiles/CS210PA2.dir/main.cpp.o
CS210PA2: CMakeFiles/CS210PA2.dir/Story.cpp.o
CS210PA2: CMakeFiles/CS210PA2.dir/build.make
CS210PA2: CMakeFiles/CS210PA2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/jaeyoonlee/CLionProjects/programming-assignment-2-jlee6128/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable CS210PA2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CS210PA2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CS210PA2.dir/build: CS210PA2
.PHONY : CMakeFiles/CS210PA2.dir/build

CMakeFiles/CS210PA2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CS210PA2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CS210PA2.dir/clean

CMakeFiles/CS210PA2.dir/depend:
	cd /Users/jaeyoonlee/CLionProjects/programming-assignment-2-jlee6128/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jaeyoonlee/CLionProjects/programming-assignment-2-jlee6128 /Users/jaeyoonlee/CLionProjects/programming-assignment-2-jlee6128 /Users/jaeyoonlee/CLionProjects/programming-assignment-2-jlee6128/cmake-build-debug /Users/jaeyoonlee/CLionProjects/programming-assignment-2-jlee6128/cmake-build-debug /Users/jaeyoonlee/CLionProjects/programming-assignment-2-jlee6128/cmake-build-debug/CMakeFiles/CS210PA2.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/CS210PA2.dir/depend

