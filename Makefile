# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_COMMAND = "/cygdrive/c/Users/Asaf Santana/.CLion2016.3/system/cygwin_cmake/bin/cmake.exe"

# The command to remove a file.
RM = "/cygdrive/c/Users/Asaf Santana/.CLion2016.3/system/cygwin_cmake/bin/cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/cygdrive/c/Users/Asaf Santana/Desktop/SistemasOperacionais-RestauranteFuturistico-master"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/c/Users/Asaf Santana/Desktop/SistemasOperacionais-RestauranteFuturistico-master/cmake-build-debug"

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	"/cygdrive/c/Users/Asaf Santana/.CLion2016.3/system/cygwin_cmake/bin/cmake.exe" -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	"/cygdrive/c/Users/Asaf Santana/.CLion2016.3/system/cygwin_cmake/bin/cmake.exe" -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start "/cygdrive/c/Users/Asaf Santana/Desktop/SistemasOperacionais-RestauranteFuturistico-master/cmake-build-debug/CMakeFiles" "/cygdrive/c/Users/Asaf Santana/Desktop/SistemasOperacionais-RestauranteFuturistico-master/cmake-build-debug/CMakeFiles/progress.marks"
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start "/cygdrive/c/Users/Asaf Santana/Desktop/SistemasOperacionais-RestauranteFuturistico-master/cmake-build-debug/CMakeFiles" 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named CozinhaSistemasOperacionais

# Build rule for target.
CozinhaSistemasOperacionais: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 CozinhaSistemasOperacionais
.PHONY : CozinhaSistemasOperacionais

# fast build rule for target.
CozinhaSistemasOperacionais/fast:
	$(MAKE) -f CMakeFiles/CozinhaSistemasOperacionais.dir/build.make CMakeFiles/CozinhaSistemasOperacionais.dir/build
.PHONY : CozinhaSistemasOperacionais/fast

Controller/HostessConect.o: Controller/HostessConect.cpp.o

.PHONY : Controller/HostessConect.o

# target to build an object file
Controller/HostessConect.cpp.o:
	$(MAKE) -f CMakeFiles/CozinhaSistemasOperacionais.dir/build.make CMakeFiles/CozinhaSistemasOperacionais.dir/Controller/HostessConect.cpp.o
.PHONY : Controller/HostessConect.cpp.o

Controller/HostessConect.i: Controller/HostessConect.cpp.i

.PHONY : Controller/HostessConect.i

# target to preprocess a source file
Controller/HostessConect.cpp.i:
	$(MAKE) -f CMakeFiles/CozinhaSistemasOperacionais.dir/build.make CMakeFiles/CozinhaSistemasOperacionais.dir/Controller/HostessConect.cpp.i
.PHONY : Controller/HostessConect.cpp.i

Controller/HostessConect.s: Controller/HostessConect.cpp.s

.PHONY : Controller/HostessConect.s

# target to generate assembly for a file
Controller/HostessConect.cpp.s:
	$(MAKE) -f CMakeFiles/CozinhaSistemasOperacionais.dir/build.make CMakeFiles/CozinhaSistemasOperacionais.dir/Controller/HostessConect.cpp.s
.PHONY : Controller/HostessConect.cpp.s

Main/Main.o: Main/Main.cpp.o

.PHONY : Main/Main.o

# target to build an object file
Main/Main.cpp.o:
	$(MAKE) -f CMakeFiles/CozinhaSistemasOperacionais.dir/build.make CMakeFiles/CozinhaSistemasOperacionais.dir/Main/Main.cpp.o
.PHONY : Main/Main.cpp.o

Main/Main.i: Main/Main.cpp.i

.PHONY : Main/Main.i

# target to preprocess a source file
Main/Main.cpp.i:
	$(MAKE) -f CMakeFiles/CozinhaSistemasOperacionais.dir/build.make CMakeFiles/CozinhaSistemasOperacionais.dir/Main/Main.cpp.i
.PHONY : Main/Main.cpp.i

Main/Main.s: Main/Main.cpp.s

.PHONY : Main/Main.s

# target to generate assembly for a file
Main/Main.cpp.s:
	$(MAKE) -f CMakeFiles/CozinhaSistemasOperacionais.dir/build.make CMakeFiles/CozinhaSistemasOperacionais.dir/Main/Main.cpp.s
.PHONY : Main/Main.cpp.s

Model/ChefeCozinha.o: Model/ChefeCozinha.cpp.o

.PHONY : Model/ChefeCozinha.o

# target to build an object file
Model/ChefeCozinha.cpp.o:
	$(MAKE) -f CMakeFiles/CozinhaSistemasOperacionais.dir/build.make CMakeFiles/CozinhaSistemasOperacionais.dir/Model/ChefeCozinha.cpp.o
.PHONY : Model/ChefeCozinha.cpp.o

Model/ChefeCozinha.i: Model/ChefeCozinha.cpp.i

.PHONY : Model/ChefeCozinha.i

# target to preprocess a source file
Model/ChefeCozinha.cpp.i:
	$(MAKE) -f CMakeFiles/CozinhaSistemasOperacionais.dir/build.make CMakeFiles/CozinhaSistemasOperacionais.dir/Model/ChefeCozinha.cpp.i
.PHONY : Model/ChefeCozinha.cpp.i

Model/ChefeCozinha.s: Model/ChefeCozinha.cpp.s

.PHONY : Model/ChefeCozinha.s

# target to generate assembly for a file
Model/ChefeCozinha.cpp.s:
	$(MAKE) -f CMakeFiles/CozinhaSistemasOperacionais.dir/build.make CMakeFiles/CozinhaSistemasOperacionais.dir/Model/ChefeCozinha.cpp.s
.PHONY : Model/ChefeCozinha.cpp.s

Model/Mesa.o: Model/Mesa.cpp.o

.PHONY : Model/Mesa.o

# target to build an object file
Model/Mesa.cpp.o:
	$(MAKE) -f CMakeFiles/CozinhaSistemasOperacionais.dir/build.make CMakeFiles/CozinhaSistemasOperacionais.dir/Model/Mesa.cpp.o
.PHONY : Model/Mesa.cpp.o

Model/Mesa.i: Model/Mesa.cpp.i

.PHONY : Model/Mesa.i

# target to preprocess a source file
Model/Mesa.cpp.i:
	$(MAKE) -f CMakeFiles/CozinhaSistemasOperacionais.dir/build.make CMakeFiles/CozinhaSistemasOperacionais.dir/Model/Mesa.cpp.i
.PHONY : Model/Mesa.cpp.i

Model/Mesa.s: Model/Mesa.cpp.s

.PHONY : Model/Mesa.s

# target to generate assembly for a file
Model/Mesa.cpp.s:
	$(MAKE) -f CMakeFiles/CozinhaSistemasOperacionais.dir/build.make CMakeFiles/CozinhaSistemasOperacionais.dir/Model/Mesa.cpp.s
.PHONY : Model/Mesa.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... CozinhaSistemasOperacionais"
	@echo "... Controller/HostessConect.o"
	@echo "... Controller/HostessConect.i"
	@echo "... Controller/HostessConect.s"
	@echo "... Main/Main.o"
	@echo "... Main/Main.i"
	@echo "... Main/Main.s"
	@echo "... Model/ChefeCozinha.o"
	@echo "... Model/ChefeCozinha.i"
	@echo "... Model/ChefeCozinha.s"
	@echo "... Model/Mesa.o"
	@echo "... Model/Mesa.i"
	@echo "... Model/Mesa.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

