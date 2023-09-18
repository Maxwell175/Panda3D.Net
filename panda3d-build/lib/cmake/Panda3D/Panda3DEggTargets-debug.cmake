#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Panda3D::Egg::pandaegg" for configuration "Debug"
set_property(TARGET Panda3D::Egg::pandaegg APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Panda3D::Egg::pandaegg PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libpandaegg.so.1.11.0"
  IMPORTED_SONAME_DEBUG "libpandaegg.so.1.11"
  )

list(APPEND _cmake_import_check_targets Panda3D::Egg::pandaegg )
list(APPEND _cmake_import_check_files_for_Panda3D::Egg::pandaegg "${_IMPORT_PREFIX}/lib/libpandaegg.so.1.11.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
