# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.28.3/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.28.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lzampier/Documents/cubo/M2_Cubo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lzampier/Documents/cubo/M2_Cubo

# Include any dependencies generated for this target.
include CMakeFiles/app.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/app.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/app.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/app.dir/flags.make

CMakeFiles/app.dir/Cubo/Origem.cpp.o: CMakeFiles/app.dir/flags.make
CMakeFiles/app.dir/Cubo/Origem.cpp.o: Cubo/Origem.cpp
CMakeFiles/app.dir/Cubo/Origem.cpp.o: CMakeFiles/app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/lzampier/Documents/cubo/M2_Cubo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/app.dir/Cubo/Origem.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/app.dir/Cubo/Origem.cpp.o -MF CMakeFiles/app.dir/Cubo/Origem.cpp.o.d -o CMakeFiles/app.dir/Cubo/Origem.cpp.o -c /Users/lzampier/Documents/cubo/M2_Cubo/Cubo/Origem.cpp

CMakeFiles/app.dir/Cubo/Origem.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/app.dir/Cubo/Origem.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lzampier/Documents/cubo/M2_Cubo/Cubo/Origem.cpp > CMakeFiles/app.dir/Cubo/Origem.cpp.i

CMakeFiles/app.dir/Cubo/Origem.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/app.dir/Cubo/Origem.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lzampier/Documents/cubo/M2_Cubo/Cubo/Origem.cpp -o CMakeFiles/app.dir/Cubo/Origem.cpp.s

CMakeFiles/app.dir/Cubo/shader.cpp.o: CMakeFiles/app.dir/flags.make
CMakeFiles/app.dir/Cubo/shader.cpp.o: Cubo/shader.cpp
CMakeFiles/app.dir/Cubo/shader.cpp.o: CMakeFiles/app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/lzampier/Documents/cubo/M2_Cubo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/app.dir/Cubo/shader.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/app.dir/Cubo/shader.cpp.o -MF CMakeFiles/app.dir/Cubo/shader.cpp.o.d -o CMakeFiles/app.dir/Cubo/shader.cpp.o -c /Users/lzampier/Documents/cubo/M2_Cubo/Cubo/shader.cpp

CMakeFiles/app.dir/Cubo/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/app.dir/Cubo/shader.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lzampier/Documents/cubo/M2_Cubo/Cubo/shader.cpp > CMakeFiles/app.dir/Cubo/shader.cpp.i

CMakeFiles/app.dir/Cubo/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/app.dir/Cubo/shader.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lzampier/Documents/cubo/M2_Cubo/Cubo/shader.cpp -o CMakeFiles/app.dir/Cubo/shader.cpp.s

CMakeFiles/app.dir/src/glad.c.o: CMakeFiles/app.dir/flags.make
CMakeFiles/app.dir/src/glad.c.o: src/glad.c
CMakeFiles/app.dir/src/glad.c.o: CMakeFiles/app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/lzampier/Documents/cubo/M2_Cubo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/app.dir/src/glad.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/app.dir/src/glad.c.o -MF CMakeFiles/app.dir/src/glad.c.o.d -o CMakeFiles/app.dir/src/glad.c.o -c /Users/lzampier/Documents/cubo/M2_Cubo/src/glad.c

CMakeFiles/app.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/app.dir/src/glad.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/lzampier/Documents/cubo/M2_Cubo/src/glad.c > CMakeFiles/app.dir/src/glad.c.i

CMakeFiles/app.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/app.dir/src/glad.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/lzampier/Documents/cubo/M2_Cubo/src/glad.c -o CMakeFiles/app.dir/src/glad.c.s

# Object files for target app
app_OBJECTS = \
"CMakeFiles/app.dir/Cubo/Origem.cpp.o" \
"CMakeFiles/app.dir/Cubo/shader.cpp.o" \
"CMakeFiles/app.dir/src/glad.c.o"

# External object files for target app
app_EXTERNAL_OBJECTS =

app: CMakeFiles/app.dir/Cubo/Origem.cpp.o
app: CMakeFiles/app.dir/Cubo/shader.cpp.o
app: CMakeFiles/app.dir/src/glad.c.o
app: CMakeFiles/app.dir/build.make
app: /usr/local/lib/libglfw3.a
app: CMakeFiles/app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/lzampier/Documents/cubo/M2_Cubo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable app"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/app.dir/build: app
.PHONY : CMakeFiles/app.dir/build

CMakeFiles/app.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/app.dir/cmake_clean.cmake
.PHONY : CMakeFiles/app.dir/clean

CMakeFiles/app.dir/depend:
	cd /Users/lzampier/Documents/cubo/M2_Cubo && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lzampier/Documents/cubo/M2_Cubo /Users/lzampier/Documents/cubo/M2_Cubo /Users/lzampier/Documents/cubo/M2_Cubo /Users/lzampier/Documents/cubo/M2_Cubo /Users/lzampier/Documents/cubo/M2_Cubo/CMakeFiles/app.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/app.dir/depend

