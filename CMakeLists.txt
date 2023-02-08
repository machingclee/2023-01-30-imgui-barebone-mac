cmake_minimum_required(VERSION 3.0.0)
project(EyeCatching VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 20)
set(IMGUI_SDL imgui_sdl)

set(UTILS_LIB utils)
set(IMGUI_LIB imgui_lib)
set(CONFIG config)

add_executable(EyeCatching main.cpp)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})

include(cmake/find_opencv_and_torch.cmake)

if (WIN32)
    find_opencv_and_torch(
      "C:\\Users\\user\\Repos\\C++Libraries\\libtorch"
      "C:\\Users\\user\\Repos\\C++Libraries\\opencv\\build\\x64\\vc16"
    )

    message(STATUS "OpenCV_INCLUDE_DIRS = ${OpenCV_INCLUDE_DIRS}")
    message(STATUS "OpenCV_LIBS = ${OpenCV_LIBS}")

    target_link_libraries(EyeCatching
      d3d9.lib
      d3dcompiler.lib
      dxgi.lib
    )
elseif (APPLE)
    find_opencv_and_torch(
      "/Users/chingcheonglee/Repos/C++Library/libtorch"
      "/opt/homebrew/Cellar/opencv/4.7.0_1"
    )
    find_package(OpenCV REQUIRED)
    message(STATUS "OpenCV_INCLUDE_DIRS = ${OpenCV_INCLUDE_DIRS}")
    message(STATUS "OpenCV_LIBS = ${OpenCV_LIBS}")
    

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

    target_link_libraries(
        EyeCatching
        ${SDL2_LIBRARIES}
        ${OPENGL_LIBRARY}
        ${COCOA_LIBRARY}
        ${IOKIT_LIBRARY}
        ${COREVID_LIBRARY}
    )
    target_include_directories(EyeCatching PUBLIC ${SDL2_INCLUDE_DIRS})
endif()


add_subdirectory(imgui)
add_subdirectory(utils)
add_subdirectory(config)
add_subdirectory(mongoose)

target_link_libraries(EyeCatching ${IMGUI_SDL} ${UTILS_LIB} ${CONFIG})
target_compile_features(${UTILS_LIB} PUBLIC cxx_std_20)
