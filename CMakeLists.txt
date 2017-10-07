cmake_minimum_required(VERSION 3.6)
project(CozinhaSistemasOperacionais)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES Main/Main.cpp Model/Mesa.cpp Model/Mesa.h Model/ChefeCozinha.cpp Model/ChefeCozinha.h Controller/HostessConect.cpp Controller/HostessConect.h)
add_executable(CozinhaSistemasOperacionais ${SOURCE_FILES})