# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.25

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\janek\Projects\YuriFuck

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\janek\Projects\YuriFuck\build

# Include any dependencies generated for this target.
include CMakeFiles/BFInterpreter.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/BFInterpreter.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/BFInterpreter.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BFInterpreter.dir/flags.make

CMakeFiles/BFInterpreter.dir/src/main.cpp.obj: CMakeFiles/BFInterpreter.dir/flags.make
CMakeFiles/BFInterpreter.dir/src/main.cpp.obj: C:/Users/janek/Projects/YuriFuck/src/main.cpp
CMakeFiles/BFInterpreter.dir/src/main.cpp.obj: CMakeFiles/BFInterpreter.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\janek\Projects\YuriFuck\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/BFInterpreter.dir/src/main.cpp.obj"
	C:\PATH\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BFInterpreter.dir/src/main.cpp.obj -MF CMakeFiles\BFInterpreter.dir\src\main.cpp.obj.d -o CMakeFiles\BFInterpreter.dir\src\main.cpp.obj -c C:\Users\janek\Projects\YuriFuck\src\main.cpp

CMakeFiles/BFInterpreter.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BFInterpreter.dir/src/main.cpp.i"
	C:\PATH\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\janek\Projects\YuriFuck\src\main.cpp > CMakeFiles\BFInterpreter.dir\src\main.cpp.i

CMakeFiles/BFInterpreter.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BFInterpreter.dir/src/main.cpp.s"
	C:\PATH\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\janek\Projects\YuriFuck\src\main.cpp -o CMakeFiles\BFInterpreter.dir\src\main.cpp.s

# Object files for target BFInterpreter
BFInterpreter_OBJECTS = \
"CMakeFiles/BFInterpreter.dir/src/main.cpp.obj"

# External object files for target BFInterpreter
BFInterpreter_EXTERNAL_OBJECTS =

BFInterpreter.exe: CMakeFiles/BFInterpreter.dir/src/main.cpp.obj
BFInterpreter.exe: CMakeFiles/BFInterpreter.dir/build.make
BFInterpreter.exe: CMakeFiles/BFInterpreter.dir/linkLibs.rsp
BFInterpreter.exe: CMakeFiles/BFInterpreter.dir/objects1
BFInterpreter.exe: CMakeFiles/BFInterpreter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\janek\Projects\YuriFuck\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable BFInterpreter.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\BFInterpreter.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BFInterpreter.dir/build: BFInterpreter.exe
.PHONY : CMakeFiles/BFInterpreter.dir/build

CMakeFiles/BFInterpreter.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\BFInterpreter.dir\cmake_clean.cmake
.PHONY : CMakeFiles/BFInterpreter.dir/clean

CMakeFiles/BFInterpreter.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\janek\Projects\YuriFuck C:\Users\janek\Projects\YuriFuck C:\Users\janek\Projects\YuriFuck\build C:\Users\janek\Projects\YuriFuck\build C:\Users\janek\Projects\YuriFuck\build\CMakeFiles\BFInterpreter.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BFInterpreter.dir/depend

