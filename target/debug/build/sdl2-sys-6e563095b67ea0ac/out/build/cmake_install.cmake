# Install script for directory: C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "E:/rust_projects/particle-universe/target/debug/build/sdl2-sys-6e563095b67ea0ac/out")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "E:/rust_projects/particle-universe/target/debug/build/sdl2-sys-6e563095b67ea0ac/out/build/Release/SDL2.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "E:/rust_projects/particle-universe/target/debug/build/sdl2-sys-6e563095b67ea0ac/out/build/Release/SDL2.dll")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/rust_projects/particle-universe/target/debug/build/sdl2-sys-6e563095b67ea0ac/out/build/Release/SDL2main.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/rust_projects/particle-universe/target/debug/build/sdl2-sys-6e563095b67ea0ac/out/build/Release/SDL2_test.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2Targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2Targets.cmake"
         "E:/rust_projects/particle-universe/target/debug/build/sdl2-sys-6e563095b67ea0ac/out/build/CMakeFiles/Export/cmake/SDL2Targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2Targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2Targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "E:/rust_projects/particle-universe/target/debug/build/sdl2-sys-6e563095b67ea0ac/out/build/CMakeFiles/Export/cmake/SDL2Targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "E:/rust_projects/particle-universe/target/debug/build/sdl2-sys-6e563095b67ea0ac/out/build/CMakeFiles/Export/cmake/SDL2Targets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2mainTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2mainTargets.cmake"
         "E:/rust_projects/particle-universe/target/debug/build/sdl2-sys-6e563095b67ea0ac/out/build/CMakeFiles/Export/cmake/SDL2mainTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2mainTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2mainTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "E:/rust_projects/particle-universe/target/debug/build/sdl2-sys-6e563095b67ea0ac/out/build/CMakeFiles/Export/cmake/SDL2mainTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "E:/rust_projects/particle-universe/target/debug/build/sdl2-sys-6e563095b67ea0ac/out/build/CMakeFiles/Export/cmake/SDL2mainTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2testTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2testTargets.cmake"
         "E:/rust_projects/particle-universe/target/debug/build/sdl2-sys-6e563095b67ea0ac/out/build/CMakeFiles/Export/cmake/SDL2testTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2testTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2testTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "E:/rust_projects/particle-universe/target/debug/build/sdl2-sys-6e563095b67ea0ac/out/build/CMakeFiles/Export/cmake/SDL2testTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "E:/rust_projects/particle-universe/target/debug/build/sdl2-sys-6e563095b67ea0ac/out/build/CMakeFiles/Export/cmake/SDL2testTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES
    "E:/rust_projects/particle-universe/target/debug/build/sdl2-sys-6e563095b67ea0ac/out/build/SDL2Config.cmake"
    "E:/rust_projects/particle-universe/target/debug/build/sdl2-sys-6e563095b67ea0ac/out/build/SDL2ConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_assert.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_atomic.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_audio.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_bits.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_blendmode.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_clipboard.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_copying.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_cpuinfo.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_egl.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_endian.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_error.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_events.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_filesystem.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_gamecontroller.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_gesture.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_guid.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_haptic.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_hidapi.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_hints.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_joystick.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_keyboard.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_keycode.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_loadso.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_locale.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_log.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_main.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_messagebox.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_metal.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_misc.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_mouse.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_mutex.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_name.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_opengl.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_opengl_glext.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_opengles.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_opengles2.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_opengles2_gl2.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_opengles2_gl2ext.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_opengles2_gl2platform.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_opengles2_khrplatform.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_pixels.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_platform.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_power.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_quit.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_rect.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_render.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_rwops.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_scancode.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_sensor.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_shape.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_stdinc.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_surface.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_system.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_syswm.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_assert.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_common.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_compare.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_crc32.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_font.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_fuzzer.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_harness.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_images.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_log.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_md5.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_memory.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_random.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_thread.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_timer.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_touch.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_types.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_version.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_video.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_vulkan.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/begin_code.h"
      "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/close_code.h"
      "E:/rust_projects/particle-universe/target/debug/build/sdl2-sys-6e563095b67ea0ac/out/build/include/SDL_revision.h"
      "E:/rust_projects/particle-universe/target/debug/build/sdl2-sys-6e563095b67ea0ac/out/build/include-config-release/SDL_config.h"
      )
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/licenses/SDL2" TYPE FILE FILES "C:/Users/User/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/LICENSE.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "E:/rust_projects/particle-universe/target/debug/build/sdl2-sys-6e563095b67ea0ac/out/build/sdl2.pc")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "E:/rust_projects/particle-universe/target/debug/build/sdl2-sys-6e563095b67ea0ac/out/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
