cmake_minimum_required(VERSION 3.22)
project(ImguiMac LANGUAGES CXX C)
set(CMAKE_CXX_STANDARD 20)
set(IMGUI_SDL imgui_sdl)
set(MAIN main)

add_executable(${MAIN} main.cpp)

if (WIN32)
  target_link_libraries(${MAIN}
    d3d9.lib
    d3dcompiler.lib
    dxgi.lib
  )
elseif (APPLE)
    enable_language(OBJC)
    enable_language(OBJCXX)
    # mac: brew install glfw3
    find_library(OPENGL_LIBRARY OpenGL REQUIRED)
    find_library(COCOA_LIBRARY Cocoa REQUIRED)
    find_library(IOKIT_LIBRARY IOKit REQUIRED)
    find_library(COREVID_LIBRARY CoreVideo REQUIRED)
    find_package(SDL2 REQUIRED)
    message(${COCOA_LIBRARY})
    message(${IOKIT_LIBRARY})
    message(${COREVID_LIBRARY})

    target_link_directories(${MAIN} PUBLIC "/Users/chingcheonglee/Repos/C++Library/glfw/lib-arm64")

    target_link_libraries(
        ${MAIN}
        ${SDL2_LIBRARIES}
        ${OPENGL_LIBRARY}
        ${COCOA_LIBRARY}
        ${IOKIT_LIBRARY}
        ${COREVID_LIBRARY}
    )
    target_include_directories(${MAIN} PUBLIC ${SDL2_INCLUDE_DIRS})
elseif (UNIX AND NOT APPLE)
    # linux: sudo apt install libglfw3-dev
    target_link_libraries(${MAIN}
        GL
        dl
    )
endif()


add_subdirectory(imgui)
target_link_libraries(${MAIN} ${IMGUI_SDL})
set_source_files_properties(main.cpp PROPERTIES COMPILE_FLAGS "-x objective-c++")
