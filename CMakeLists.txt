cmake_minimum_required(VERSION 3.22)
set(CMAKE_CXX_STANDARD 20)
project(imgui_mac)

set(IMGUI_GLFW_OPENGL imgui_glfw_opengl)
set(MAIN main)

add_executable(${MAIN} main.cpp)
add_subdirectory(imgui)
add_subdirectory(glfw)
target_link_libraries(${MAIN} glfw ${IMGUI_GLFW_OPENGL})
if (WIN32)
  target_link_libraries(${MAIN}
    d3d9.lib
    d3dcompiler.lib
    dxgi.lib
  )
elseif (APPLE)
    # mac: brew install glfw3
    find_library(OPENGL_LIBRARY OpenGL REQUIRED)
    find_library(COCOA_LIBRARY Cocoa REQUIRED)
    find_library(IOKIT_LIBRARY IOKit REQUIRED)
    find_library(COREVID_LIBRARY CoreVideo REQUIRED)
    message(${COCOA_LIBRARY})
    message(${IOKIT_LIBRARY})
    message(${COREVID_LIBRARY})

    target_link_directories(${MAIN} PUBLIC "/Users/chingcheonglee/Repos/C++Library/glfw/lib-arm64")

    target_link_libraries(
        ${MAIN}
        ${OPENGL_LIBRARY}
        ${COCOA_LIBRARY}
        ${IOKIT_LIBRARY}
        ${COREVID_LIBRARY}
        glfw
    )
elseif (UNIX AND NOT APPLE)
    # linux: sudo apt install libglfw3-dev
    target_link_libraries(${MAIN}
        GL
        glfw
        dl
    )
endif()