#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Panda3D::Direct::p3dcparse" for configuration "Debug"
set_property(TARGET Panda3D::Direct::p3dcparse APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Panda3D::Direct::p3dcparse PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/p3dcparse"
  )

list(APPEND _cmake_import_check_targets Panda3D::Direct::p3dcparse )
list(APPEND _cmake_import_check_files_for_Panda3D::Direct::p3dcparse "${_IMPORT_PREFIX}/bin/p3dcparse" )

# Import target "Panda3D::Direct::p3direct" for configuration "Debug"
set_property(TARGET Panda3D::Direct::p3direct APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Panda3D::Direct::p3direct PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libp3direct.so.1.11.0"
  IMPORTED_SONAME_DEBUG "libp3direct.so.1.11"
  )

list(APPEND _cmake_import_check_targets Panda3D::Direct::p3direct )
list(APPEND _cmake_import_check_files_for_Panda3D::Direct::p3direct "${_IMPORT_PREFIX}/lib/libp3direct.so.1.11.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
