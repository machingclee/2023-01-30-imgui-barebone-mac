# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.25.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.25.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac

# Include any dependencies generated for this target.
include utils/src/CMakeFiles/utils.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include utils/src/CMakeFiles/utils.dir/compiler_depend.make

# Include the progress variables for this target.
include utils/src/CMakeFiles/utils.dir/progress.make

# Include the compile flags for this target's objects.
include utils/src/CMakeFiles/utils.dir/flags.make

utils/src/CMakeFiles/utils.dir/utils/capture_utils.cpp.o: utils/src/CMakeFiles/utils.dir/flags.make
utils/src/CMakeFiles/utils.dir/utils/capture_utils.cpp.o: utils/src/utils/capture_utils.cpp
utils/src/CMakeFiles/utils.dir/utils/capture_utils.cpp.o: utils/src/CMakeFiles/utils.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object utils/src/CMakeFiles/utils.dir/utils/capture_utils.cpp.o"
	cd /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT utils/src/CMakeFiles/utils.dir/utils/capture_utils.cpp.o -MF CMakeFiles/utils.dir/utils/capture_utils.cpp.o.d -o CMakeFiles/utils.dir/utils/capture_utils.cpp.o -c /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src/utils/capture_utils.cpp

utils/src/CMakeFiles/utils.dir/utils/capture_utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/utils/capture_utils.cpp.i"
	cd /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src/utils/capture_utils.cpp > CMakeFiles/utils.dir/utils/capture_utils.cpp.i

utils/src/CMakeFiles/utils.dir/utils/capture_utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/utils/capture_utils.cpp.s"
	cd /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src/utils/capture_utils.cpp -o CMakeFiles/utils.dir/utils/capture_utils.cpp.s

utils/src/CMakeFiles/utils.dir/utils/common.cpp.o: utils/src/CMakeFiles/utils.dir/flags.make
utils/src/CMakeFiles/utils.dir/utils/common.cpp.o: utils/src/utils/common.cpp
utils/src/CMakeFiles/utils.dir/utils/common.cpp.o: utils/src/CMakeFiles/utils.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object utils/src/CMakeFiles/utils.dir/utils/common.cpp.o"
	cd /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT utils/src/CMakeFiles/utils.dir/utils/common.cpp.o -MF CMakeFiles/utils.dir/utils/common.cpp.o.d -o CMakeFiles/utils.dir/utils/common.cpp.o -c /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src/utils/common.cpp

utils/src/CMakeFiles/utils.dir/utils/common.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/utils/common.cpp.i"
	cd /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src/utils/common.cpp > CMakeFiles/utils.dir/utils/common.cpp.i

utils/src/CMakeFiles/utils.dir/utils/common.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/utils/common.cpp.s"
	cd /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src/utils/common.cpp -o CMakeFiles/utils.dir/utils/common.cpp.s

utils/src/CMakeFiles/utils.dir/utils/web_utils.cpp.o: utils/src/CMakeFiles/utils.dir/flags.make
utils/src/CMakeFiles/utils.dir/utils/web_utils.cpp.o: utils/src/utils/web_utils.cpp
utils/src/CMakeFiles/utils.dir/utils/web_utils.cpp.o: utils/src/CMakeFiles/utils.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object utils/src/CMakeFiles/utils.dir/utils/web_utils.cpp.o"
	cd /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT utils/src/CMakeFiles/utils.dir/utils/web_utils.cpp.o -MF CMakeFiles/utils.dir/utils/web_utils.cpp.o.d -o CMakeFiles/utils.dir/utils/web_utils.cpp.o -c /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src/utils/web_utils.cpp

utils/src/CMakeFiles/utils.dir/utils/web_utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/utils/web_utils.cpp.i"
	cd /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src/utils/web_utils.cpp > CMakeFiles/utils.dir/utils/web_utils.cpp.i

utils/src/CMakeFiles/utils.dir/utils/web_utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/utils/web_utils.cpp.s"
	cd /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src/utils/web_utils.cpp -o CMakeFiles/utils.dir/utils/web_utils.cpp.s

utils/src/CMakeFiles/utils.dir/utils/list_dir.cpp.o: utils/src/CMakeFiles/utils.dir/flags.make
utils/src/CMakeFiles/utils.dir/utils/list_dir.cpp.o: utils/src/utils/list_dir.cpp
utils/src/CMakeFiles/utils.dir/utils/list_dir.cpp.o: utils/src/CMakeFiles/utils.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object utils/src/CMakeFiles/utils.dir/utils/list_dir.cpp.o"
	cd /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT utils/src/CMakeFiles/utils.dir/utils/list_dir.cpp.o -MF CMakeFiles/utils.dir/utils/list_dir.cpp.o.d -o CMakeFiles/utils.dir/utils/list_dir.cpp.o -c /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src/utils/list_dir.cpp

utils/src/CMakeFiles/utils.dir/utils/list_dir.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/utils/list_dir.cpp.i"
	cd /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src/utils/list_dir.cpp > CMakeFiles/utils.dir/utils/list_dir.cpp.i

utils/src/CMakeFiles/utils.dir/utils/list_dir.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/utils/list_dir.cpp.s"
	cd /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src/utils/list_dir.cpp -o CMakeFiles/utils.dir/utils/list_dir.cpp.s

utils/src/CMakeFiles/utils.dir/utils/split.cpp.o: utils/src/CMakeFiles/utils.dir/flags.make
utils/src/CMakeFiles/utils.dir/utils/split.cpp.o: utils/src/utils/split.cpp
utils/src/CMakeFiles/utils.dir/utils/split.cpp.o: utils/src/CMakeFiles/utils.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object utils/src/CMakeFiles/utils.dir/utils/split.cpp.o"
	cd /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT utils/src/CMakeFiles/utils.dir/utils/split.cpp.o -MF CMakeFiles/utils.dir/utils/split.cpp.o.d -o CMakeFiles/utils.dir/utils/split.cpp.o -c /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src/utils/split.cpp

utils/src/CMakeFiles/utils.dir/utils/split.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/utils/split.cpp.i"
	cd /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src/utils/split.cpp > CMakeFiles/utils.dir/utils/split.cpp.i

utils/src/CMakeFiles/utils.dir/utils/split.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/utils/split.cpp.s"
	cd /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src/utils/split.cpp -o CMakeFiles/utils.dir/utils/split.cpp.s

utils/src/CMakeFiles/utils.dir/utils/get_file_next_digit.cpp.o: utils/src/CMakeFiles/utils.dir/flags.make
utils/src/CMakeFiles/utils.dir/utils/get_file_next_digit.cpp.o: utils/src/utils/get_file_next_digit.cpp
utils/src/CMakeFiles/utils.dir/utils/get_file_next_digit.cpp.o: utils/src/CMakeFiles/utils.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object utils/src/CMakeFiles/utils.dir/utils/get_file_next_digit.cpp.o"
	cd /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT utils/src/CMakeFiles/utils.dir/utils/get_file_next_digit.cpp.o -MF CMakeFiles/utils.dir/utils/get_file_next_digit.cpp.o.d -o CMakeFiles/utils.dir/utils/get_file_next_digit.cpp.o -c /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src/utils/get_file_next_digit.cpp

utils/src/CMakeFiles/utils.dir/utils/get_file_next_digit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/utils/get_file_next_digit.cpp.i"
	cd /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src/utils/get_file_next_digit.cpp > CMakeFiles/utils.dir/utils/get_file_next_digit.cpp.i

utils/src/CMakeFiles/utils.dir/utils/get_file_next_digit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/utils/get_file_next_digit.cpp.s"
	cd /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src/utils/get_file_next_digit.cpp -o CMakeFiles/utils.dir/utils/get_file_next_digit.cpp.s

# Object files for target utils
utils_OBJECTS = \
"CMakeFiles/utils.dir/utils/capture_utils.cpp.o" \
"CMakeFiles/utils.dir/utils/common.cpp.o" \
"CMakeFiles/utils.dir/utils/web_utils.cpp.o" \
"CMakeFiles/utils.dir/utils/list_dir.cpp.o" \
"CMakeFiles/utils.dir/utils/split.cpp.o" \
"CMakeFiles/utils.dir/utils/get_file_next_digit.cpp.o"

# External object files for target utils
utils_EXTERNAL_OBJECTS =

utils/src/libutils.a: utils/src/CMakeFiles/utils.dir/utils/capture_utils.cpp.o
utils/src/libutils.a: utils/src/CMakeFiles/utils.dir/utils/common.cpp.o
utils/src/libutils.a: utils/src/CMakeFiles/utils.dir/utils/web_utils.cpp.o
utils/src/libutils.a: utils/src/CMakeFiles/utils.dir/utils/list_dir.cpp.o
utils/src/libutils.a: utils/src/CMakeFiles/utils.dir/utils/split.cpp.o
utils/src/libutils.a: utils/src/CMakeFiles/utils.dir/utils/get_file_next_digit.cpp.o
utils/src/libutils.a: utils/src/CMakeFiles/utils.dir/build.make
utils/src/libutils.a: utils/src/CMakeFiles/utils.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX static library libutils.a"
	cd /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src && $(CMAKE_COMMAND) -P CMakeFiles/utils.dir/cmake_clean_target.cmake
	cd /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/utils.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
utils/src/CMakeFiles/utils.dir/build: utils/src/libutils.a
.PHONY : utils/src/CMakeFiles/utils.dir/build

utils/src/CMakeFiles/utils.dir/clean:
	cd /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src && $(CMAKE_COMMAND) -P CMakeFiles/utils.dir/cmake_clean.cmake
.PHONY : utils/src/CMakeFiles/utils.dir/clean

utils/src/CMakeFiles/utils.dir/depend:
	cd /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src /Users/chingcheonglee/Repos/C++/2023-01-30-imgui-barebone-mac/utils/src/CMakeFiles/utils.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : utils/src/CMakeFiles/utils.dir/depend

