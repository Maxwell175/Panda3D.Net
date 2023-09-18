#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Panda3D::OpenGL::pandagl" for configuration "Debug"
set_property(TARGET Panda3D::OpenGL::pandagl APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Panda3D::OpenGL::pandagl PROPERTIES
  IMPORTED_COMMON_LANGUAGE_RUNTIME_DEBUG ""
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libpandagl.so"
  IMPORTED_NO_SONAME_DEBUG "TRUE"
  )

list(APPEND _cmake_import_check_targets Panda3D::OpenGL::pandagl )
list(APPEND _cmake_import_check_files_for_Panda3D::OpenGL::pandagl "${_IMPORT_PREFIX}/lib/libpandagl.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
