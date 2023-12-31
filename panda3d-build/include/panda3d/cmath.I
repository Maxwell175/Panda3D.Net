/**
 * PANDA 3D SOFTWARE
 * Copyright (c) Carnegie Mellon University.  All rights reserved.
 *
 * All use of this software is subject to the terms of the revised BSD
 * license.  You should have received a copy of this license along
 * with this source code in a file named "LICENSE."
 *
 * @file cmath.I
 * @author drose
 * @date 2000-05-19
 */

#ifdef __INTEL_COMPILER
// see float.h
#define FPU_CONTROLWORD_WRITEMASK    0xFFFFF        // if you look at defn of _CW_DEFAULT, all settings fall within 0xFFFFF
#define FPU_CONTROLWORD_NEW_SETTING  _CW_DEFAULT
#endif

/**
 *
 */
INLINE float
csqrt(float v) {
  return sqrtf(v);
}

/**
 *
 */
INLINE float
csin(float v) {
  return sinf(v);
}

/**
 *
 */
INLINE float
ccos(float v) {
  return cosf(v);
}

/**
 *
 */
INLINE float ctan(float v) {
  return tanf(v);
}

/**
 *
 */
INLINE void
csincos(float v, float *sin_result, float *cos_result) {
  // MS VC defines _M_IX86 for x86.  gcc should define _X86_
#if defined(_M_IX86) || defined(_X86_)
  // #define fsincos_opcode __asm _emit 0xd9 __asm _emit 0xfb
  __asm {
    mov eax, sin_result
      mov edx, cos_result
      fld v
      fsincos
      fstp DWORD ptr [edx]
      fstp DWORD ptr [eax]
      }
#elif defined(__APPLE__)
  __sincosf(v, sin_result, cos_result);
#elif defined(_GNU_SOURCE)
  sincosf(v, sin_result, cos_result);
#else
  *sin_result = sinf(v);
  *cos_result = cosf(v);
#endif
}

/**
 * Computes sin(x) / x, well-behaved as x approaches 0.
 */
INLINE float
csin_over_x(float v) {
  if (1.0f + v * v == 1.0f) {
    return 1.0f;
  } else {
    return csin(v) / v;
  }
}

/**
 *
 */
INLINE float
cabs(float v) {
  return fabs(v);
}

/**
 *
 */
INLINE float
catan(float v) {
  return atanf(v);
}

/**
 *
 */
INLINE float
catan2(float y, float x) {
  return atan2f(y, x);
}

/**
 *
 */
INLINE float
casin(float v) {
  return asinf(v);
}

/**
 *
 */
INLINE float
cacos(float v) {
  return acosf(v);
}

/**
 * This is similar to fmod(), but it behaves properly when x is negative: that
 * is, it always returns a value in the range [0, y), assuming y is positive.
 */
INLINE float
cmod(float x, float y) {
  return x - floor(x / y) * y;
}

/**
 *
 */
INLINE float
cpow(float x, float y) {
  return powf(x, y);
}


/**
 *
 */
INLINE double
cfloor(double f) {
  #ifdef __INTEL_COMPILER
    // intel floor doesnt work right if fpu mode is not double, so make
    // double-prec mode is on
    unsigned int saved_fpu_control_word=_controlfp(0x0,0x0);
    _controlfp(FPU_CONTROLWORD_NEW_SETTING,FPU_CONTROLWORD_WRITEMASK);
    double retval=floor(f);
    _controlfp(saved_fpu_control_word,FPU_CONTROLWORD_WRITEMASK);
    return retval;
  #else
    return floor(f);
  #endif
}

/**
 *
 */
INLINE double
cceil(double f) {
  #ifdef __INTEL_COMPILER
    // intel ceil doesnt work right if fpu mode is not double, so make double-
    // prec mode is on
    unsigned int saved_fpu_control_word=_controlfp(0x0,0x0);
    _controlfp(FPU_CONTROLWORD_NEW_SETTING,FPU_CONTROLWORD_WRITEMASK);
    double retval=ceil(f);
    _controlfp(saved_fpu_control_word,FPU_CONTROLWORD_WRITEMASK);
    return retval;
  #else
    return ceil(f);
  #endif
}

/**
 * Returns the fractional component of f: f - cfloor(f).
 */
INLINE double
cfrac(double f) {
  return f - cfloor(f);
}

/**
 *
 */
INLINE double
csqrt(double v) {
  return sqrt(v);
}

/**
 *
 */
INLINE double
csin(double v) {
  return sin(v);
}

/**
 *
 */
INLINE double
ccos(double v) {
  return cos(v);
}

/**
 *
 */
INLINE double
ctan(double v) {
  return tan(v);
}

/**
 *
 */
INLINE void
csincos(double v, double *sin_result, double *cos_result) {
#if defined(_M_IX86) || defined(_X86_)
  // #define fsincos_opcode __asm _emit 0xd9 __asm _emit 0xfb
  __asm {
    mov eax, sin_result
      mov edx, cos_result
      fld v
      fsincos
      fstp QWORD ptr [edx]
      fstp QWORD ptr [eax]
      }
#elif defined(__APPLE__)
  __sincos(v, sin_result, cos_result);
#elif defined(_GNU_SOURCE)
  sincos(v, sin_result, cos_result);
#else //!_X86_
  *sin_result = sin(v);
  *cos_result = cos(v);
#endif //!_X86_
}

/**
 * Computes sin(x) / x, well-behaved as x approaches 0.
 */
INLINE double
csin_over_x(double v) {
  if (1.0 + v * v == 1.0) {
    return 1.0;
  } else {
    return csin(v) / v;
  }
}

/**
 *
 */
INLINE double
cabs(double v) {
  return fabs(v);
}

/**
 *
 */
INLINE double
catan(double v) {
  return atan(v);
}

/**
 *
 */
INLINE double
catan2(double y, double x) {
  return atan2(y, x);
}

/**
 *
 */
INLINE double
casin(double v) {
  return asin(v);
}

/**
 *
 */
INLINE double
cacos(double v) {
  return acos(v);
}

/**
 * This is similar to fmod(), but it behaves properly when x is negative: that
 * is, it always returns a value in the range [0, y), assuming y is positive.
 */
INLINE double
cmod(double x, double y) {
  return x - cfloor(x / y) * y;
}

/**
 *
 */
INLINE double
cpow(double x, double y) {
  return pow(x, y);
}

/**
 *
 */
INLINE int
cpow(int x, int y) {
  int result = 1;

  if (y >= 0) {
    for(; y > 0; --y) {
      result *= x;
    }
    return result;

  } else {
    for(; y < 0; ++y) {
      result *= x;
    }
    return 1 / result;
  }
}

/**
 *
 */
INLINE bool
cnan(float v) {
#if __FINITE_MATH_ONLY__
  // GCC's isnan breaks when using -ffast-math.
  union { float f; uint32_t x; } u = { v };
  return ((u.x << 1) > 0xff000000u);
#elif !defined(_WIN32)
  return std::isnan(v);
#else
  return (_isnan(v) != 0);
#endif
}

/**
 *
 */
INLINE bool
cnan(double v) {
#if __FINITE_MATH_ONLY__
  // GCC's isnan breaks when using -ffast-math.
  union { double d; uint64_t x; } u = { v };
  return ((u.x << 1) > 0xffe0000000000000ull);
#elif !defined(_WIN32)
  return std::isnan(v);
#else
  return (_isnan(v) != 0);
#endif
}

/**
 *
 */
INLINE bool
cinf(float v) {
#if __FINITE_MATH_ONLY__
  // GCC's isinf breaks when using -ffast-math.
  union { float f; uint32_t x; } u = { v };
  return ((u.x << 1) == 0xff000000u);
#elif !defined(_WIN32)
  return std::isinf(v);
#else
  return (_isnan(v) == 0 && _finite(v) == 0);
#endif
}

/**
 *
 */
INLINE bool
cinf(double v) {
#if __FINITE_MATH_ONLY__
  // GCC's isinf breaks when using -ffast-math.
  union { double d; uint64_t x; } u = { v };
  return ((u.x << 1) == 0xffe0000000000000ull);
#elif !defined(_WIN32)
  return std::isinf(v);
#else
  return (_isnan(v) == 0 && _finite(v) == 0);
#endif
}

/**
 *
 */
INLINE float
make_nan(float) {
  return std::numeric_limits<float>::quiet_NaN();
}

/**
 *
 */
INLINE double
make_nan(double) {
  return std::numeric_limits<double>::quiet_NaN();
}

/**
 *
 */
INLINE float
make_inf(float) {
  return std::numeric_limits<float>::infinity();
}

/**
 *
 */
INLINE double
make_inf(double) {
  return std::numeric_limits<double>::infinity();
}

/**
 * This is similar to fmod(), but it behaves properly when x is negative: that
 * is, it always returns a value in the range [0, y), assuming y is positive.
 *
 * This integer-valued function is provided since the built-in modulo operator
 * % does not work properly for negative x.
 */
INLINE int
cmod(int x, int y) {
  if (x < 0) {
    return y - 1 - ((-x - 1) % y);
  } else {
    return x % y;
  }
}
