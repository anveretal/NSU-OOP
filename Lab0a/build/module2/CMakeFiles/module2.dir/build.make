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
include module2/CMakeFiles/module2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include module2/CMakeFiles/module2.dir/compiler_depend.make

# Include the progress variables for this target.
include module2/CMakeFiles/module2.dir/progress.make

# Include the compile flags for this target's objects.
include module2/CMakeFiles/module2.dir/flags.make

module2/CMakeFiles/module2.dir/module2.cpp.o: module2/CMakeFiles/module2.dir/flags.make
module2/CMakeFiles/module2.dir/module2.cpp.o: /Users/anvea/Documents/NSU/Предметы/Основы\ ООП/lab0/module2/module2.cpp
module2/CMakeFiles/module2.dir/module2.cpp.o: module2/CMakeFiles/module2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object module2/CMakeFiles/module2.dir/module2.cpp.o"
	cd "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/build/module2" && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT module2/CMakeFiles/module2.dir/module2.cpp.o -MF CMakeFiles/module2.dir/module2.cpp.o.d -o CMakeFiles/module2.dir/module2.cpp.o -c "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/module2/module2.cpp"

module2/CMakeFiles/module2.dir/module2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/module2.dir/module2.cpp.i"
	cd "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/build/module2" && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/module2/module2.cpp" > CMakeFiles/module2.dir/module2.cpp.i

module2/CMakeFiles/module2.dir/module2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/module2.dir/module2.cpp.s"
	cd "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/build/module2" && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/module2/module2.cpp" -o CMakeFiles/module2.dir/module2.cpp.s

# Object files for target module2
module2_OBJECTS = \
"CMakeFiles/module2.dir/module2.cpp.o"

# External object files for target module2
module2_EXTERNAL_OBJECTS =

module2/libmodule2.a: module2/CMakeFiles/module2.dir/module2.cpp.o
module2/libmodule2.a: module2/CMakeFiles/module2.dir/build.make
module2/libmodule2.a: module2/CMakeFiles/module2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libmodule2.a"
	cd "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/build/module2" && $(CMAKE_COMMAND) -P CMakeFiles/module2.dir/cmake_clean_target.cmake
	cd "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/build/module2" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/module2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
module2/CMakeFiles/module2.dir/build: module2/libmodule2.a
.PHONY : module2/CMakeFiles/module2.dir/build

module2/CMakeFiles/module2.dir/clean:
	cd "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/build/module2" && $(CMAKE_COMMAND) -P CMakeFiles/module2.dir/cmake_clean.cmake
.PHONY : module2/CMakeFiles/module2.dir/clean

module2/CMakeFiles/module2.dir/depend:
	cd "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0" "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/module2" "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/build" "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/build/module2" "/Users/anvea/Documents/NSU/Предметы/Основы ООП/lab0/build/module2/CMakeFiles/module2.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : module2/CMakeFiles/module2.dir/depend
