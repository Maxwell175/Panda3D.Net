#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Panda3D::OpenGLES2::pandagles2" for configuration "Debug"
set_property(TARGET Panda3D::OpenGLES2::pandagles2 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Panda3D::OpenGLES2::pandagles2 PROPERTIES
  IMPORTED_COMMON_LANGUAGE_RUNTIME_DEBUG ""
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libpandagles2.so"
  IMPORTED_NO_SONAME_DEBUG "TRUE"
  )

list(APPEND _cmake_import_check_targets Panda3D::OpenGLES2::pandagles2 )
list(APPEND _cmake_import_check_files_for_Panda3D::OpenGLES2::pandagles2 "${_IMPORT_PREFIX}/lib/libpandagles2.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
