# Exports for Panda3D PKG:: packages

# Create imported target PKG::PYTHON
add_library(PKG::PYTHON INTERFACE IMPORTED)

set_target_properties(PKG::PYTHON PROPERTIES
  INTERFACE_LINK_LIBRARIES ""
)

# Create imported target PKG::OPENSSL
add_library(PKG::OPENSSL INTERFACE IMPORTED)

set_target_properties(PKG::OPENSSL PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include;/usr/include"
  INTERFACE_LINK_LIBRARIES "/usr/lib/libssl.so;/usr/lib/libcrypto.so"
)

# Create imported target PKG::ZLIB
add_library(PKG::ZLIB INTERFACE IMPORTED)

set_target_properties(PKG::ZLIB PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include"
  INTERFACE_LINK_LIBRARIES "/usr/lib/libz.so"
)

# Create imported target PKG::JPEG
add_library(PKG::JPEG INTERFACE IMPORTED)

set_target_properties(PKG::JPEG PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include"
  INTERFACE_LINK_LIBRARIES "/usr/lib/libjpeg.so"
)

# Create imported target PKG::PNG
add_library(PKG::PNG INTERFACE IMPORTED)

set_target_properties(PKG::PNG PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include;/usr/include;/usr/include"
  INTERFACE_LINK_LIBRARIES "/usr/lib/libpng.so;/usr/lib/libz.so"
)

# Create imported target PKG::TIFF
add_library(PKG::TIFF INTERFACE IMPORTED)

set_target_properties(PKG::TIFF PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include"
  INTERFACE_LINK_LIBRARIES "/usr/lib/libtiff.so"
)

# Create imported target PKG::OPENEXR
add_library(PKG::OPENEXR INTERFACE IMPORTED)

set_target_properties(PKG::OPENEXR PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_11;cxx_std_11;cxx_std_11;cxx_std_11;cxx_std_11"
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include;/usr/include;/usr/include/OpenEXR;/usr/include;/usr/include;/usr/include/Imath;/usr/include;/usr/include;/usr/include"
  INTERFACE_LINK_LIBRARIES "/usr/lib/libOpenEXR-3_2.so.31.3.2.0;/usr/lib/libImath-3_1.so.29.8.0;/usr/lib/libIex-3_2.so.31.3.2.0;/usr/lib/libIlmThread-3_2.so.31.3.2.0;/usr/lib/libOpenEXRCore-3_2.so.31.3.2.0;m"
)

# Create imported target PKG::SQUISH
add_library(PKG::SQUISH INTERFACE IMPORTED)

set_target_properties(PKG::SQUISH PROPERTIES
  INTERFACE_LINK_LIBRARIES ""
)

# Create imported target PKG::ASSIMP
add_library(PKG::ASSIMP INTERFACE IMPORTED)

set_target_properties(PKG::ASSIMP PROPERTIES
  INTERFACE_LINK_LIBRARIES ""
)

# Create imported target PKG::FCOLLADA
add_library(PKG::FCOLLADA INTERFACE IMPORTED)

set_target_properties(PKG::FCOLLADA PROPERTIES
  INTERFACE_LINK_LIBRARIES ""
)

# Create imported target PKG::EIGEN
add_library(PKG::EIGEN INTERFACE IMPORTED)

set_target_properties(PKG::EIGEN PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include/eigen3"
  INTERFACE_LINK_LIBRARIES ""
)

# Create imported target PKG::FFTW
add_library(PKG::FFTW INTERFACE IMPORTED)

set_target_properties(PKG::FFTW PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include"
  INTERFACE_LINK_LIBRARIES "/usr/lib/libfftw3.so"
)

# Create imported target PKG::FFMPEG
add_library(PKG::FFMPEG INTERFACE IMPORTED)

set_target_properties(PKG::FFMPEG PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include"
  INTERFACE_LINK_LIBRARIES "/usr/lib/libavcodec.so;/usr/lib/libavformat.so;/usr/lib/libavutil.so"
)

# Create imported target PKG::SWSCALE
add_library(PKG::SWSCALE INTERFACE IMPORTED)

set_target_properties(PKG::SWSCALE PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include"
  INTERFACE_LINK_LIBRARIES "/usr/lib/libswscale.so"
)

# Create imported target PKG::SWRESAMPLE
add_library(PKG::SWRESAMPLE INTERFACE IMPORTED)

set_target_properties(PKG::SWRESAMPLE PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include"
  INTERFACE_LINK_LIBRARIES "/usr/lib/libswresample.so"
)

# Create imported target PKG::VORBIS
add_library(PKG::VORBIS INTERFACE IMPORTED)

set_target_properties(PKG::VORBIS PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include;/usr/include"
  INTERFACE_LINK_LIBRARIES "/usr/lib/libvorbisfile.so;/usr/lib/libvorbis.so;/usr/lib/libogg.so.0.8.5"
)

# Create imported target PKG::OPUS
add_library(PKG::OPUS INTERFACE IMPORTED)

set_target_properties(PKG::OPUS PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include;/usr/include/opus;/usr/include"
  INTERFACE_LINK_LIBRARIES "/usr/lib/libopusfile.so;/usr/lib/libopus.so;/usr/lib/libogg.so.0.8.5"
)

# Create imported target PKG::FMODEX
add_library(PKG::FMODEX INTERFACE IMPORTED)

set_target_properties(PKG::FMODEX PROPERTIES
  INTERFACE_LINK_LIBRARIES ""
)

# Create imported target PKG::OPENAL
add_library(PKG::OPENAL INTERFACE IMPORTED)

set_target_properties(PKG::OPENAL PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include;/usr/include/AL;/usr/include;/usr/include/AL"
  INTERFACE_LINK_LIBRARIES "/usr/lib/libopenal.so.1.23.1"
)

# Create imported target PKG::FREETYPE
add_library(PKG::FREETYPE INTERFACE IMPORTED)

set_target_properties(PKG::FREETYPE PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include/freetype2"
  INTERFACE_LINK_LIBRARIES "/usr/lib/libfreetype.so"
)

# Create imported target PKG::HARFBUZZ
add_library(PKG::HARFBUZZ INTERFACE IMPORTED)

set_target_properties(PKG::HARFBUZZ PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include/harfbuzz"
  INTERFACE_LINK_LIBRARIES "/usr/lib/libharfbuzz.so"
)

# Create imported target PKG::GTK3
add_library(PKG::GTK3 INTERFACE IMPORTED)

set_target_properties(PKG::GTK3 PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include/gtk-3.0;/usr/include/pango-1.0;/usr/include/glib-2.0;/usr/lib/glib-2.0/include;/usr/include/sysprof-4;/usr/include/harfbuzz;/usr/include/freetype2;/usr/include/libpng16;/usr/include/libmount;/usr/include/blkid;/usr/include/fribidi;/usr/include/cairo;/usr/include/pixman-1;/usr/include/gdk-pixbuf-2.0;/usr/include/gio-unix-2.0;/usr/include/cloudproviders;/usr/include/atk-1.0;/usr/include/at-spi2-atk/2.0;/usr/include/at-spi-2.0;/usr/include/dbus-1.0;/usr/lib/dbus-1.0/include"
  INTERFACE_LINK_LIBRARIES "gtk-3;gdk-3;z;pangocairo-1.0;pango-1.0;harfbuzz;atk-1.0;cairo-gobject;cairo;gdk_pixbuf-2.0;gio-2.0;gobject-2.0;glib-2.0"
)

# Create imported target PKG::BULLET
add_library(PKG::BULLET INTERFACE IMPORTED)

set_target_properties(PKG::BULLET PROPERTIES
  INTERFACE_LINK_LIBRARIES ""
)

# Create imported target PKG::ODE
add_library(PKG::ODE INTERFACE IMPORTED)

set_target_properties(PKG::ODE PROPERTIES
  INTERFACE_LINK_LIBRARIES ""
)

# Create imported target PKG::SPEEDTREE
add_library(PKG::SPEEDTREE INTERFACE IMPORTED)

set_target_properties(PKG::SPEEDTREE PROPERTIES
  INTERFACE_LINK_LIBRARIES ""
)

# Create imported target PKG::GL
add_library(PKG::GL INTERFACE IMPORTED)

set_target_properties(PKG::GL PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include;/usr/include;/usr/include"
  INTERFACE_LINK_LIBRARIES "/usr/lib/libOpenGL.so;/usr/lib/libGLX.so"
)

# Create imported target PKG::GLES1
add_library(PKG::GLES1 INTERFACE IMPORTED)

set_target_properties(PKG::GLES1 PROPERTIES
  INTERFACE_LINK_LIBRARIES ""
)

# Create imported target PKG::GLES2
add_library(PKG::GLES2 INTERFACE IMPORTED)

set_target_properties(PKG::GLES2 PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include"
  INTERFACE_LINK_LIBRARIES "/usr/lib/libGLESv2.so"
)

# Create imported target PKG::DX9
add_library(PKG::DX9 INTERFACE IMPORTED)

set_target_properties(PKG::DX9 PROPERTIES
  INTERFACE_LINK_LIBRARIES ""
)

# Create imported target PKG::CG
add_library(PKG::CG INTERFACE IMPORTED)

set_target_properties(PKG::CG PROPERTIES
  INTERFACE_LINK_LIBRARIES ""
)

# Create imported target PKG::CGGL
add_library(PKG::CGGL INTERFACE IMPORTED)

set_target_properties(PKG::CGGL PROPERTIES
  INTERFACE_LINK_LIBRARIES ""
)

# Create imported target PKG::CGD3D9
add_library(PKG::CGD3D9 INTERFACE IMPORTED)

set_target_properties(PKG::CGD3D9 PROPERTIES
  INTERFACE_LINK_LIBRARIES ""
)

# Create imported target PKG::X11
add_library(PKG::X11 INTERFACE IMPORTED)

set_target_properties(PKG::X11 PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include"
  INTERFACE_LINK_LIBRARIES "/usr/lib/libSM.so;/usr/lib/libICE.so;/usr/lib/libX11.so;/usr/lib/libXext.so"
)

# Create imported target PKG::EGL
add_library(PKG::EGL INTERFACE IMPORTED)

set_target_properties(PKG::EGL PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include"
  INTERFACE_LINK_LIBRARIES "/usr/lib/libEGL.so"
)

# Create imported target PKG::OPENCV
add_library(PKG::OPENCV INTERFACE IMPORTED)

set_target_properties(PKG::OPENCV PROPERTIES
  INTERFACE_LINK_LIBRARIES ""
)

# Create imported target PKG::ARTOOLKIT
add_library(PKG::ARTOOLKIT INTERFACE IMPORTED)

set_target_properties(PKG::ARTOOLKIT PROPERTIES
  INTERFACE_LINK_LIBRARIES ""
)

# Create imported target PKG::VRPN
add_library(PKG::VRPN INTERFACE IMPORTED)

set_target_properties(PKG::VRPN PROPERTIES
  INTERFACE_LINK_LIBRARIES ""
)

# Create imported target PKG::MIMALLOC
add_library(PKG::MIMALLOC INTERFACE IMPORTED)

set_target_properties(PKG::MIMALLOC PROPERTIES
  INTERFACE_LINK_LIBRARIES ""
)

# Create imported target PKG::SDL
add_library(PKG::SDL INTERFACE IMPORTED)

set_target_properties(PKG::SDL PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include/SDL"
  INTERFACE_LINK_LIBRARIES "/usr/lib/libSDLmain.a;/usr/lib/libSDL.so"
)

# Create imported target PKG::THREADS
add_library(PKG::THREADS INTERFACE IMPORTED)

set_target_properties(PKG::THREADS PROPERTIES
  INTERFACE_LINK_LIBRARIES ""
)
