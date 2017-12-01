cmake_minimum_required(VERSION 2.8.11)
project(midiprepare)

find_package(PkgConfig)
pkg_search_module(SMF REQUIRED smf)

add_executable(midiprepare main.c)
target_link_libraries(midiprepare ${SMF_LIBRARIES})
target_include_directories(midiprepare PUBLIC ${SMF_INCLUDE_DIRS})
target_compile_options(midiprepare PUBLIC ${SMF_CFLAGS_OTHER})
