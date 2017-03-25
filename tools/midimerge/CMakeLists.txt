cmake_minimum_required(VERSION 2.8.11)
project(midimerge)

find_package(PkgConfig)
pkg_search_module(SMF REQUIRED smf)

add_executable (midimerge main.c)
target_link_libraries(midimerge ${SMF_LIBRARIES})
target_include_directories(midimerge PUBLIC ${SMF_INCLUDE_DIRS})
target_compile_options(midimerge PUBLIC ${SMF_CFLAGS_OTHER})
