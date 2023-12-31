/* Filename: checkPandaVersion.h
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
 ***************************** DO NOT EDIT *************************/

/* Include this file in code that compiles with Panda to guarantee
   that it is linking with the same version of the Panda DLL's that it
   was compiled with. */

/* We guarantee this by defining an external symbol which is based on
   the version number.  If that symbol is defined, then our DLL's
   (probably) match.  Otherwise, we must be running with the wrong
   DLL; but the system linker will prevent the DLL from loading with
   an undefined symbol. */

#ifndef CHECKPANDAVERSION_H
#define CHECKPANDAVERSION_H

#include "dtoolbase.h"

extern EXPCL_DTOOL_DTOOLBASE int panda_version_1_11;

/* Just declaring the symbol isn't good enough.  We need to force the
   compiler and linker to preserve the external reference long enough
   to end up in the output DLL.  Therefore, we have to reference that
   symbol somehow.

   Forcing the compiler to include a reference in its output object
   file is easy enough: just define a function that makes use of it
   in some way.  The problem is the linker, which will enforce the
   C++ One-Definition Rule and get upset about said definition
   appearing in multiple places in the program.  We can appease the
   linker by forcing the compiler to emit a weak symbol.  Many
   compilers have syntax to request this explicitly, but since it
   varies from compiler to compiler, that wouldn't be very portable.

   Fortunately, the C++ ODR itself has some exceptions, where a
   definition can occur in multiple translation units *if and only if*
   it's the same definition each time.  In these cases, the compiler
   must emit a weak symbol, because the ODR does not guarantee that
   the same definition isn't repeated in any other translation units.
   One such exception is template instantiation, which we use thus: */
template<typename T>
class CheckPandaVersion {
public:
  int check_version() { return panda_version_1_11; }
};

template class CheckPandaVersion<void>;

#endif
