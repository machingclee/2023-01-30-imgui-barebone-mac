set(
  SOURCES
  imgui_demo.cpp
  imgui_draw.cpp
  imgui_tables.cpp
  imgui_widgets.cpp
  imgui.cpp
  imconfig.h
  imgui_internal.h
  imgui.h
  imstb_rectpack.h
  imstb_textedit.h
  imstb_truetype.h
)

add_library(${IMGUI_GLFW_OPENGL} ${SOURCES})
target_include_directories(${IMGUI_GLFW_OPENGL} PUBLIC .)