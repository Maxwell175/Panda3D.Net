#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Panda3D::Contrib::p3ai" for configuration "Debug"
set_property(TARGET Panda3D::Contrib::p3ai APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Panda3D::Contrib::p3ai PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libp3ai.so.1.11.0"
  IMPORTED_SONAME_DEBUG "libp3ai.so.1.11"
  )

list(APPEND _cmake_import_check_targets Panda3D::Contrib::p3ai )
list(APPEND _cmake_import_check_files_for_Panda3D::Contrib::p3ai "${_IMPORT_PREFIX}/lib/libp3ai.so.1.11.0" )

# Import target "Panda3D::Contrib::p3rplight" for configuration "Debug"
set_property(TARGET Panda3D::Contrib::p3rplight APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Panda3D::Contrib::p3rplight PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libp3rplight.a"
  )

list(APPEND _cmake_import_check_targets Panda3D::Contrib::p3rplight )
list(APPEND _cmake_import_check_files_for_Panda3D::Contrib::p3rplight "${_IMPORT_PREFIX}/lib/libp3rplight.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
