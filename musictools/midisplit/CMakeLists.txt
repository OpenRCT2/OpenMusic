cmake_minimum_required(VERSION 2.8.11)
project(midisplit)

find_package(PkgConfig)
pkg_search_module(SMF REQUIRED smf)

add_executable (midisplit main.c)
target_link_libraries(midisplit ${SMF_LIBRARIES})
target_include_directories(midisplit PUBLIC ${SMF_INCLUDE_DIRS})
target_compile_options(midisplit PUBLIC ${SMF_CFLAGS_OTHER})
