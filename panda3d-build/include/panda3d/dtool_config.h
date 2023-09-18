/* dtool_config.h.  Generated automatically by CMake. */
#ifndef DTOOL_CONFIG_H
#define DTOOL_CONFIG_H

/* Define if we have Eigen available. */
#define HAVE_EIGEN
#define LINMATH_ALIGN

/* Define if we have Python installed.  */
/* #undef HAVE_PYTHON */
/* #undef USE_DEBUG_PYTHON */
/* Define if we have Python as a framework (Mac OS X).  */
/* #undef PYTHON_FRAMEWORK */

/* Define if we have OpenAL installed as a framework. */
/* #undef HAVE_OPENAL_FRAMEWORK */

/* Define if we have Freetype 2.0 or better available. */
#define HAVE_FREETYPE

/* Define if we want to compile in a default font. */
#define COMPILE_IN_DEFAULT_FONT

/* Define to use doubles for most numbers, intead of single-precision floats. */
/* #undef STDFLOAT_DOUBLE */

/* Define if we have built libRocket available and built with Python support. */
/* #undef HAVE_ROCKET_PYTHON */

/* Define if we have ARToolKit available. */
/* #undef HAVE_ARTOOLKIT */

/* Define if we have libvorbisfile available. */
#define HAVE_VORBIS

/* Define if we have libopus available. */
#define HAVE_OPUS

/* Define if we have OpenSSL installed.  */
#define HAVE_OPENSSL

/* Define if we have libjpeg installed.  */
#define HAVE_JPEG

/* Define to build video-for-linux. */
#define HAVE_VIDEO4LINUX

/* Define if we have libpng installed.  */
#define HAVE_PNG

/* Define if we have libtiff installed.  */
#define HAVE_TIFF

/* Define if we have OpenEXR installed.  */
#define HAVE_OPENEXR

/* Define if we want to build these other image file formats. */
#define HAVE_SGI_RGB
#define HAVE_TGA
#define HAVE_IMG
#define HAVE_SOFTIMAGE_PIC
#define HAVE_BMP
#define HAVE_PNM

/* Define if we have CG installed.  */
#ifndef __aarch64__
/* #undef HAVE_CG */
#endif

/* Define if we have zlib installed.  */
#define HAVE_ZLIB

/* Define if we have OpenGL installed and want to build for GL.  */
/* #undef MIN_GL_VERSION_MAJOR */
/* #undef MIN_GL_VERSION_MINOR */

/* Define if we have OpenCV installed and want to build for OpenCV.  */
/* #undef HAVE_OPENCV */

/* The choice of generic vs. the specific dxerr library largely
   depends on which SDK you have installed. */
/* #undef USE_GENERIC_DXERR_LIBRARY */

/* Define if we have the SDL library. */
#define HAVE_SDL

/* Define if we have X11. */
#define HAVE_X11

/* Define if we want to compile the threading code.  */
#define HAVE_THREADS

/* Define if we want to use fast, user-space simulated threads.  */
/* #undef SIMPLE_THREADS */

/* Define to enable deadlock detection, mutex recursion checks, etc. */
/* #undef DEBUG_THREADS */

/* Define to implement mutexes and condition variables via a user-space spinlock. */
/* #undef MUTEX_SPINLOCK */

/* Define to enable the PandaFileStream implementation of pfstream etc. */
#define USE_PANDAFILESTREAM

/* Define if we want to compile the net code.  */
#define HAVE_NET

/* Define if we want to compile the audio code.  */
#define HAVE_AUDIO

/* Define if we want to use PStats.  */
#define DO_PSTATS

/* Define if we want to type-check downcasts.  */
#define DO_DCAST

/* Define if we want to provide collision system recording and
   visualization tools. */
#define DO_COLLISION_RECORDING

/* Define if we want to enable track-memory-usage.  */
#define DO_MEMORY_USAGE

/* Define if we want to enable min-lag and max-lag.  */
#define SIMULATE_NETWORK_DELAY

/* Define if we want to allow immediate mode OpenGL rendering.  */
/* #undef SUPPORT_IMMEDIATE_MODE */

/* Define if we want to support fixed-function OpenGL rendering. */
#define SUPPORT_FIXED_FUNCTION

/* Define if we have mimalloc available. */
/* #undef HAVE_MIMALLOC */

/* Define for one of the alternative malloc schemes. */
/* #undef USE_MEMORY_DLMALLOC */
/* #undef USE_MEMORY_MIMALLOC */
/* #undef USE_MEMORY_PTMALLOC2 */

/* Define if we want to compile in support for pipelining.  */
#define DO_PIPELINING

/* Define if we want to keep Notify debug messages around, or undefine
   to compile them out.  */
#define NOTIFY_DEBUG

/* The compiled-in character(s) to expect to separate different
   components of a path list (e.g. $PRC_PATH). */
#define DEFAULT_PATHSEP ":"

/* Many of the prc variables are exported by
   dtool/src/prc/prc_parameters.h.pp, instead of here.  Only those prc
   variables that must be visible outside of the prc directory are
   exported here. */

/* Define if you want to save the descriptions for ConfigVariables. */
#define PRC_SAVE_DESCRIPTIONS


/* Define if your processor stores words with the most significant
   byte first (like Motorola and SPARC, unlike Intel and VAX).  */
/* #undef WORDS_BIGENDIAN */

/* Define if we can trust the compiler not to insert extra bytes in
   structs between base structs and derived structs. */
/* #undef SIMPLE_STRUCT_POINTERS */

/* Define if we have Dinkumware STL installed.  */
/* #undef HAVE_DINKUM */

/* Define if we have STL hash_map etc. available  */
/* #undef HAVE_STL_HASH */

/* Define if you have the getopt function.  */
#define HAVE_GETOPT

/* Define if you have the getopt_long_only function.  */
#define HAVE_GETOPT_LONG_ONLY

/* Define if getopt appears in getopt.h.  */
#define PHAVE_GETOPT_H

/* Do the system headers define key ios typedefs like ios::openmode
   and ios::fmtflags? */
#define HAVE_IOS_TYPEDEFS

/* Define if you have the <io.h> header file.  */
/* #undef PHAVE_IO_H */

/* Define if you have the <iostream> header file.  */
#define PHAVE_IOSTREAM

/* Define if you have the <malloc.h> header file.  */
#define PHAVE_MALLOC_H

/* Define if you have the <sys/malloc.h> header file.  */
/* #undef PHAVE_SYS_MALLOC_H */

/* Define if you have the <alloca.h> header file.  */
#define PHAVE_ALLOCA_H

/* Define if you have the <locale.h> header file.  */
#define PHAVE_LOCALE_H

/* Define if you have the <string.h> header file.  */
#define PHAVE_STRING_H

/* Define if you have the <stdlib.h> header file.  */
#define PHAVE_STDLIB_H

/* Define if you have the <limits.h> header file.  */
#define PHAVE_LIMITS_H

/* Define if you have the <sstream> header file.  */
#define PHAVE_SSTREAM

/* Define if you have the <new> header file.  */
#define PHAVE_NEW

/* Define if you have the <sys/types.h> header file.  */
#define PHAVE_SYS_TYPES_H

/* Define if you have the <sys/time.h> header file.  */
#define PHAVE_SYS_TIME_H

/* Define if you have the <unistd.h> header file.  */
#define PHAVE_UNISTD_H

/* Do we have <linux/input.h> ? This enables us to use raw mouse input. */
#define PHAVE_LINUX_INPUT_H

/* Do we have <stdint.h>? */
#define PHAVE_STDINT_H

/* Do we have Posix threads? */
#define HAVE_POSIX_THREADS

/* Is the code being compiled with the Tau profiler's instrumentor? */
/* #undef USE_TAU */

// To activate the DELETED_CHAIN macros.
/* #undef USE_DELETED_CHAIN */

// If we are to build the native net interfaces.
#define WANT_NATIVE_NET

/* Static linkage instead of the normal dynamic linkage? */
/* #undef LINK_ALL_STATIC */

/* Platform-identifying defines. */
/* #undef IS_OSX */
#define IS_LINUX
/* #undef IS_FREEBSD */
/* #undef BUILD_IPHONE */

#endif
