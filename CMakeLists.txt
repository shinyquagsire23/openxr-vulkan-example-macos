cmake_minimum_required(VERSION 3.0)
project(openxr-example)

if (POLICY CMP0072)
  cmake_policy (SET CMP0072 NEW)
endif(POLICY CMP0072)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

#find_package(X11 REQUIRED)
find_package(OpenGL REQUIRED)
find_package(GLEW 2.0 REQUIRED)
#find_package(glm REQUIRED)
find_package(Vulkan MODULE)

add_subdirectory(external/glm)
add_subdirectory(external/glfw)
INCLUDE(FindPkgConfig)
find_package(glfw3 REQUIRED)

add_executable(openxr-example 
    src/Buffer.cpp
    src/Buffer.h
    src/Context.cpp
    src/Context.h
    src/Headset.cpp
    src/Headset.h
    src/Main.cpp
    src/MirrorView.cpp
    src/MirrorView.h
    src/Pipeline.cpp
    src/Pipeline.h
    src/Renderer.cpp
    src/Renderer.h
    src/RenderProcess.cpp
    src/RenderProcess.h
    src/RenderTarget.cpp
    src/RenderTarget.h
    src/Util.cpp
    src/Util.h
    )

# First try openxr.pc from OpenXR SDK
include(FindPkgConfig)
pkg_search_module(OPENXR openxr)
if (OPENXR_FOUND)
  MESSAGE("OpenXR found with pkg-config")
  target_link_libraries(openxr-example PRIVATE ${OPENXR_LINK_LIBRARIES})
  MESSAGE("${OPENXR_LIBRARIES}")

# Second, try OpenXRConfig.cmake from OpenXR SDK
else()
  MESSAGE("OpenXR not found with pkg-config, trying cmake script")

  # current issue in upstream OpenXR cmake files requires us to find Threads on our own
  find_package(Threads REQUIRED)

  find_package(OpenXR REQUIRED)
  if (NOT OpenXR_FOUND)
     MESSAGE(FATAL_ERROR "OpenXR not found!")
  endif()

  target_include_directories(openxr-example PRIVATE ${OpenXR_INCLUDE_DIR})
  target_link_libraries(openxr-example PRIVATE OpenXR::openxr_loader)
endif()

target_link_libraries(openxr-example PRIVATE  ${OPENGL_LIBRARIES} ${SDL2_LINK_LIBRARIES} ${GLEW_LIBRARIES} m glm /usr/lib/x86_64-linux-gnu/libglfw.so.3 Vulkan::Vulkan) # /opt/homebrew/Caskroom/vulkan-sdk/1.2.162.1/macOS/lib/libMoltenVK.dylib
target_include_directories(openxr-example PRIVATE ${SDL2_INCLUDE_DIRS} ${GLEW_INCLUDE_DIRS})
#target_compile_definitions(openxr-example PRIVATE DEBUG)

if(MSVC)
  target_compile_options(openxr-example PRIVATE /W4 /WX)
else(MSVC)
  target_compile_options(openxr-example PRIVATE -g)
endif(MSVC)


install(TARGETS openxr-example RUNTIME DESTINATION bin)
