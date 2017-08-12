find_package(PkgConfig)
pkg_search_module(FLUIDSYNTH REQUIRED fluidsynth)
pkg_search_module(SMF REQUIRED smf)

add_executable(musicrenderer main.cpp logurucache.cpp)
target_link_libraries(musicrenderer ${FLUIDSYNTH_LIBRARIES} ${SMF_LIBRARIES} pthread dl)
target_include_directories(musicrenderer PUBLIC ${FLUIDSYNTH_INCLUDE_DIRS} ${SMF_INCLUDE_DIRS})
target_compile_options(musicrenderer PUBLIC ${FLUIDSYNTH_CFLAGS_OTHER} ${SMF_CFLAGS_OTHER})
target_include_directories(musicrenderer PUBLIC ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/inih)
