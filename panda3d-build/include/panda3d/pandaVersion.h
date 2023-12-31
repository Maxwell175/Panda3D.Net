/* Filename: pandaVersion.h
 * Created by:  drose (26Jan05)
 *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *
 * PANDA 3D SOFTWARE
 * Copyright (c) Carnegie Mellon University.  All rights reserved.
 *
 * All use of this software is subject to the terms of the revised BSD
 * license.  You should have received a copy of this license along
 * with this source code in a file named "LICENSE."
 *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

/*******************************************************************
 *  Generated automatically by CMake.
 ***************************** DO NOT EDIT *************************

   Do NOT attempt to edit the version number in this file.  This is a
   generated file, and your changes to this file will not persist.  To
   increment the version number, modify dtool/PandaVersion.cmake and
   re-run ppremake.

 ***************************** DO NOT EDIT *************************/

/* Include this file anywhere you need to determine the Panda version
   number at compile time.  If you need the runtime Panda version, use
   pandaSystem.h instead. */

/* Try to avoid including this file from another .h file; include it
   only from .cxx instead.  This helps prevent unnecessarily long
   rebuilds just because the version number changes; if this file is
   included in a .h file, then any other files which also include that
   .h file will need to be rebuilt when the version number changes. */

#define PANDA_MAJOR_VERSION 1
#define PANDA_MINOR_VERSION 11
#define PANDA_SEQUENCE_VERSION 0

/* Define if this is an "official" version, undefine otherwise. */
/* #undef PANDA_OFFICIAL_VERSION */

/* This is the panda numeric version as a single number, with three
   digits reserved for each component. */
#define PANDA_NUMERIC_VERSION 1011000

/* This is the panda version expressed as a string.  It ends in the
   letter "c" if this is not an "official" version (e.g. it was checked
   out from Git by the builder). */
#define PANDA_VERSION_STR "1.11.0c"

/* This is the build date expressed as a string.  It can be left undefined
   to have this set automatically at build time, but it may be desirable to
   override this to make the build process deterministic. */
/* #undef PANDA_BUILD_DATE_STR */

/* This is the Git commit we built Panda from, or an empty string if this isn't
   known. */
#define PANDA_GIT_COMMIT_STR "cb4597ebb84fe7228c7039e2f54c545b63d60046"

/* This is the version of the Panda3D ABI expressed as a string.
   This usually means the major and minor version. It should be the
   same for Panda3D versions that are supposed to be backward
   ABI compatible with each other. */
#define PANDA_ABI_VERSION_STR "1.11"

/* This is a string indicating who has provided this distribution. */
#define PANDA_DISTRIBUTOR "homebuilt"
