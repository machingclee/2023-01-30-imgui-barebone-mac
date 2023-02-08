set(
  SOURCES
  imgui_demo.cpp
  imgui_draw.cpp
  imgui_impl_sdl.cpp
  imgui_impl_sdlrenderer.cpp
  imgui_tables.cpp
  menu.cpp
  imgui_widgets.cpp
  imgui.cpp
  imconfig.h
  imgui_impl_sdl.h
  imgui_impl_sdlrenderer.h
  imgui_internal.h
  imgui.h
  imstb_rectpack.h
  imstb_textedit.h
  imstb_truetype.h
  settings.h
  imguipp.h
  imguipp.cpp
)

# set(
#   OBJ_FILES
#   imgui_impl_metal.h
#   imgui_impl_metal.mm
# )

# set_source_files_properties(${OBJ_FILES} PROPERTIES COMPILE_FLAGS "-x objective-c++")


add_library(${IMGUI_SDL} ${SOURCES})
target_include_directories(${IMGUI_SDL} PUBLIC .)
target_link_libraries(${IMGUI_SDL} PUBLIC ${SDL2_LIBRARIES} ${CONFIG} ${UTILS_LIB})