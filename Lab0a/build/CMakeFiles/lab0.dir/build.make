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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.3/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/build"

# Include any dependencies generated for this target.
include CMakeFiles/lab0.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/lab0.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/lab0.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab0.dir/flags.make

CMakeFiles/lab0.dir/main.cpp.o: CMakeFiles/lab0.dir/flags.make
CMakeFiles/lab0.dir/main.cpp.o: /Users/anvea/Documents/NSU/Предметы/Основы\ ООП/lab0/main.cpp
CMakeFiles/lab0.dir/main.cpp.o: CMakeFiles/lab0.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lab0.dir/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab0.dir/main.cpp.o -MF CMakeFiles/lab0.dir/main.cpp.o.d -o CMakeFiles/lab0.dir/main.cpp.o -c "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/main.cpp"

CMakeFiles/lab0.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/lab0.dir/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/main.cpp" > CMakeFiles/lab0.dir/main.cpp.i

CMakeFiles/lab0.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/lab0.dir/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/main.cpp" -o CMakeFiles/lab0.dir/main.cpp.s

# Object files for target lab0
lab0_OBJECTS = \
"CMakeFiles/lab0.dir/main.cpp.o"

# External object files for target lab0
lab0_EXTERNAL_OBJECTS =

lab0: CMakeFiles/lab0.dir/main.cpp.o
lab0: CMakeFiles/lab0.dir/build.make
lab0: module1/libmodule1.a
lab0: module2/libmodule2.a
lab0: CMakeFiles/lab0.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable lab0"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab0.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab0.dir/build: lab0
.PHONY : CMakeFiles/lab0.dir/build

CMakeFiles/lab0.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab0.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab0.dir/clean

CMakeFiles/lab0.dir/depend:
	cd "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0" "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0" "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/build" "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/build" "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/build/CMakeFiles/lab0.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/lab0.dir/depend
