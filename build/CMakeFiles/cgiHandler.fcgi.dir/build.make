# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_SOURCE_DIR = /home/pi/Desktop/server_program/cgiHandler

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Desktop/server_program/cgiHandler/build

# Include any dependencies generated for this target.
include CMakeFiles/cgiHandler.fcgi.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cgiHandler.fcgi.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cgiHandler.fcgi.dir/flags.make

CMakeFiles/cgiHandler.fcgi.dir/src/Ultrasonic_data_parse.cpp.o: CMakeFiles/cgiHandler.fcgi.dir/flags.make
CMakeFiles/cgiHandler.fcgi.dir/src/Ultrasonic_data_parse.cpp.o: ../src/Ultrasonic_data_parse.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/server_program/cgiHandler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cgiHandler.fcgi.dir/src/Ultrasonic_data_parse.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cgiHandler.fcgi.dir/src/Ultrasonic_data_parse.cpp.o -c /home/pi/Desktop/server_program/cgiHandler/src/Ultrasonic_data_parse.cpp

CMakeFiles/cgiHandler.fcgi.dir/src/Ultrasonic_data_parse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cgiHandler.fcgi.dir/src/Ultrasonic_data_parse.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/server_program/cgiHandler/src/Ultrasonic_data_parse.cpp > CMakeFiles/cgiHandler.fcgi.dir/src/Ultrasonic_data_parse.cpp.i

CMakeFiles/cgiHandler.fcgi.dir/src/Ultrasonic_data_parse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cgiHandler.fcgi.dir/src/Ultrasonic_data_parse.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/server_program/cgiHandler/src/Ultrasonic_data_parse.cpp -o CMakeFiles/cgiHandler.fcgi.dir/src/Ultrasonic_data_parse.cpp.s

CMakeFiles/cgiHandler.fcgi.dir/src/cgiHandler.cpp.o: CMakeFiles/cgiHandler.fcgi.dir/flags.make
CMakeFiles/cgiHandler.fcgi.dir/src/cgiHandler.cpp.o: ../src/cgiHandler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/server_program/cgiHandler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/cgiHandler.fcgi.dir/src/cgiHandler.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cgiHandler.fcgi.dir/src/cgiHandler.cpp.o -c /home/pi/Desktop/server_program/cgiHandler/src/cgiHandler.cpp

CMakeFiles/cgiHandler.fcgi.dir/src/cgiHandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cgiHandler.fcgi.dir/src/cgiHandler.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/server_program/cgiHandler/src/cgiHandler.cpp > CMakeFiles/cgiHandler.fcgi.dir/src/cgiHandler.cpp.i

CMakeFiles/cgiHandler.fcgi.dir/src/cgiHandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cgiHandler.fcgi.dir/src/cgiHandler.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/server_program/cgiHandler/src/cgiHandler.cpp -o CMakeFiles/cgiHandler.fcgi.dir/src/cgiHandler.cpp.s

CMakeFiles/cgiHandler.fcgi.dir/src/data_parser.cpp.o: CMakeFiles/cgiHandler.fcgi.dir/flags.make
CMakeFiles/cgiHandler.fcgi.dir/src/data_parser.cpp.o: ../src/data_parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/server_program/cgiHandler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/cgiHandler.fcgi.dir/src/data_parser.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cgiHandler.fcgi.dir/src/data_parser.cpp.o -c /home/pi/Desktop/server_program/cgiHandler/src/data_parser.cpp

CMakeFiles/cgiHandler.fcgi.dir/src/data_parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cgiHandler.fcgi.dir/src/data_parser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/server_program/cgiHandler/src/data_parser.cpp > CMakeFiles/cgiHandler.fcgi.dir/src/data_parser.cpp.i

CMakeFiles/cgiHandler.fcgi.dir/src/data_parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cgiHandler.fcgi.dir/src/data_parser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/server_program/cgiHandler/src/data_parser.cpp -o CMakeFiles/cgiHandler.fcgi.dir/src/data_parser.cpp.s

CMakeFiles/cgiHandler.fcgi.dir/src/serial_func_def.cpp.o: CMakeFiles/cgiHandler.fcgi.dir/flags.make
CMakeFiles/cgiHandler.fcgi.dir/src/serial_func_def.cpp.o: ../src/serial_func_def.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/server_program/cgiHandler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/cgiHandler.fcgi.dir/src/serial_func_def.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cgiHandler.fcgi.dir/src/serial_func_def.cpp.o -c /home/pi/Desktop/server_program/cgiHandler/src/serial_func_def.cpp

CMakeFiles/cgiHandler.fcgi.dir/src/serial_func_def.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cgiHandler.fcgi.dir/src/serial_func_def.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/server_program/cgiHandler/src/serial_func_def.cpp > CMakeFiles/cgiHandler.fcgi.dir/src/serial_func_def.cpp.i

CMakeFiles/cgiHandler.fcgi.dir/src/serial_func_def.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cgiHandler.fcgi.dir/src/serial_func_def.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/server_program/cgiHandler/src/serial_func_def.cpp -o CMakeFiles/cgiHandler.fcgi.dir/src/serial_func_def.cpp.s

# Object files for target cgiHandler.fcgi
cgiHandler_fcgi_OBJECTS = \
"CMakeFiles/cgiHandler.fcgi.dir/src/Ultrasonic_data_parse.cpp.o" \
"CMakeFiles/cgiHandler.fcgi.dir/src/cgiHandler.cpp.o" \
"CMakeFiles/cgiHandler.fcgi.dir/src/data_parser.cpp.o" \
"CMakeFiles/cgiHandler.fcgi.dir/src/serial_func_def.cpp.o"

# External object files for target cgiHandler.fcgi
cgiHandler_fcgi_EXTERNAL_OBJECTS =

../bin/cgiHandler.fcgi: CMakeFiles/cgiHandler.fcgi.dir/src/Ultrasonic_data_parse.cpp.o
../bin/cgiHandler.fcgi: CMakeFiles/cgiHandler.fcgi.dir/src/cgiHandler.cpp.o
../bin/cgiHandler.fcgi: CMakeFiles/cgiHandler.fcgi.dir/src/data_parser.cpp.o
../bin/cgiHandler.fcgi: CMakeFiles/cgiHandler.fcgi.dir/src/serial_func_def.cpp.o
../bin/cgiHandler.fcgi: CMakeFiles/cgiHandler.fcgi.dir/build.make
../bin/cgiHandler.fcgi: /usr/local/lib/libfastcgipp.so.3.1
../bin/cgiHandler.fcgi: CMakeFiles/cgiHandler.fcgi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/Desktop/server_program/cgiHandler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ../bin/cgiHandler.fcgi"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cgiHandler.fcgi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cgiHandler.fcgi.dir/build: ../bin/cgiHandler.fcgi

.PHONY : CMakeFiles/cgiHandler.fcgi.dir/build

CMakeFiles/cgiHandler.fcgi.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cgiHandler.fcgi.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cgiHandler.fcgi.dir/clean

CMakeFiles/cgiHandler.fcgi.dir/depend:
	cd /home/pi/Desktop/server_program/cgiHandler/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Desktop/server_program/cgiHandler /home/pi/Desktop/server_program/cgiHandler /home/pi/Desktop/server_program/cgiHandler/build /home/pi/Desktop/server_program/cgiHandler/build /home/pi/Desktop/server_program/cgiHandler/build/CMakeFiles/cgiHandler.fcgi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cgiHandler.fcgi.dir/depend
