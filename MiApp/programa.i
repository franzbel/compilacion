   // iostream standard header



   // istream standard header



   // ostream standard header



   // ios standard header



   // xlocnum internal header (from <locale>)



   // climits standard header







   /* yvals.h values header for conforming compilers on various systems */
   /* xkeycheck.h internal header */
/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */
   /*  _defs.h

    Common definitions for pointer size and calling conventions.

    Calling conventions:
    _RTLENTRY       Specifies the calling convention used by the RTL

    _USERENTRY      Specifies the calling convention the RTL expects user
                    compiled functions to use (for callbacks)

    Export (and size for DOS) information:
    _EXPCLASS       Exports class if building DLL version of library
                    For DOS16 also provides size information

    _EXPDATA        Exports data if building DLL version of library

    _EXPFUNC        Exports function if building DLL version of library
                    For DOS16 also provides size information

    _FAR            Promotes data pointers to far in DLLs (DOS16 only)

    Obsolete versions:
    _Cdecl          Use _RTLENTRY
    _CLASSTYPE      Use _EXPCLASS
    _FARFUNC        Use _EXPFUNC
    _FARCALL        Use _EXPFUNC and declare function explicity __far
*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1991, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */


/* $Revision: 35787 $ */
/* FIXME: Temporary workaround for issue with statics and #pragma startup in clang */
/* You can predefine (on the compile command line, for example):

_ADDED_C_LIB=0 -- to omit declarations for C extensions
_ALT_NS=1 -- to use namespace _Dinkum_std for C++
_ALT_NS=2 -- to use namespace _Dinkum_std for C++ and C
_ALT_NS=3 -- to use namespace _Dinkum_std for C++ and _Dinkum_std_c for C
_C_AS_CPP -- to compile C library as C++
_C_IN_NS -- to define C names in std/_Dinkum_std instead of global namespace
_C99 -- to turn ON C99 library support
_ABRCPP -- to turn ON Abridged C++ dialect (implies _ECPP)
_ECPP -- to turn ON Embedded C++ dialect
_HAS_ARRAY_OVERLOADS=0 -- to disable range testing for array parameters
_HAS_AUTO_PTR_ETC=0 -- to disable auto_ptr, old random_shuffle, etc.
_HAS_BACKWARD_COMPATIBILITY=1 -- to turn ON layout compatibility with old code
_HAS_CHAR16_T_LANUAGE_SUPPORT=1 -- to turn ON builtin char16_t/char32_t
_HAS_CPP0X=0 -- to turn OFF changes for C++0X (if present)
_HAS_DEBUG_COMPATIBILITY=1 -- to turn ON layout compatibility with debug code
_HAS_DELEGATING_CONSTRUCTORS=1 -- to turn ON use of delegating constructors
_HAS_EXPLICIT_OPERATORS=0 -- to turn OFF explicit keyword applied to operators
_HAS_FIXED_POINT=0 -- to turn OFF fixed-point extensions (if present)
_HAS_IMMUTABLE_SETS=0 -- to PERMIT alterable set elements
_HAS_NEW_SFINAE=1 -- to PERMIT use of template<class = test>
_HAS_NOEXCEPT=1 -- to PERMIT use of noexcept
_HAS_NULLPTR_T=1 -- to PERMIT use of nullptr_t
_HAS_REF_QUALIFIER=1 -- to PERMIT ref qualifiers
_HAS_SCOPED_ENUM=1 -- to PERMIT scoped enums
_HAS_STRICT_CONFORMANCE=1 -- to disable nonconforming extensions
_HAS_TEMPLATE_ALIAS=1 -- to PERMIT template aliases
_HAS_TEMPLATE_TEMPLATE=1 -- to PERMIT template templates
_HAS_TRADITIONAL_IOSTREAMS=0 -- to omit old iostreams functions
_HAS_TRADITIONAL_ITERATORS=1 -- for vector/string pointer iterators
_HAS_TRADITIONAL_POS_TYPE=1 -- for streampos same as streamoff
_HAS_TRADITIONAL_STL=0 -- to turn OFF old STL functions
_HAS_TR1=0 -- to turn OFF TR1 extensions (if present)
_HAS_TR1_IMPORTS=0 -- to turn OFF importing tr1 names (if present) into tr1
_HAS_VARIADIC_TEMPLATES=0 -- to turn OFF variadic templates (if present)
_NO_EX -- to turn OFF use of try/throw
_NO_LOCALES=1 -- to turn OFF named locales
_NO_MT -- to turn OFF thread synchronization
_NO_NS -- to turn OFF use of namespace declarations
__STDC_WANT_LIB_EXT1__=0 -- to disable C library extension 1
_STL_DB (or _STLP_DEBUG) -- to turn ON iterator/range debugging
_USE_EXISTING_SYSTEM_NAMES=0 -- to disable mappings (_Open to open)
__NO_LONG_LONG -- to define _Longlong as long, not long long

You can change (in this header AND ALL ITS COPIES):

_COMPILER_TLS -- from 0 to 1 if _TLS_QUAL is not nil
_EXFAIL -- from 1 to any nonzero value for EXIT_FAILURE
_FILE_OP_LOCKS -- from 0 to 1 for file atomic locks
_GLOBAL_LOCALE -- from 0 to 1 for shared locales instead of per-thread
_IOSTREAM_OP_LOCKS -- from 0 to 1 for iostream atomic locks
_TLS_QUAL -- from nil to compiler TLS qualifier, such as __declspec(thread)

Include directories needed to compile with Dinkum C:

C -- include/c
C99 -- include/c (define _C99)
Embedded C++ -- include/c include/embedded (define _ECPP)
Abridged C++ -- include/c include/embedded include (define _ABRCPP)
Standard C++ -- include/c include
Standard C++ with export -- include/c include/export include
	(--export --template_dir=lib/export)

Include directories needed to compile with native C:

C -- none
C99 -- N/A
Embedded C++ -- include/embedded (define _ECPP)
Abridged C++ -- include/embedded include (define _ABRCPP)
Standard C++ -- include
Standard C++ with export -- include/export include
	(--export --template_dir=lib/export)
 */
  /* DETERMINE MACHINE TYPE */
#pragma warn -inl
 /* DETERMINE _Ptrdifft AND _Sizet FROM MACHINE TYPE */






typedef long _Int32t;
typedef unsigned long _Uint32t;






typedef int _Ptrdifft;






typedef unsigned int _Sizet;
  /* COMPATIBILITY CONTROL */
  /* EXCEPTION CONTROL */
  /* NAMING PROPERTIES */
/* #define _STD_LINKAGE	define C names as extern "C++" */
/* #define _STD_USING	define C names in one of three namespaces */
  /* THREAD AND LOCALE CONTROL */







  /* THREAD-LOCAL STORAGE */
  /* NAMESPACE CONTROL */




namespace std {}
namespace std {
typedef bool _Bool;
}
   /*  stdarg.h

    Definitions for accessing parameters in functions that accept
    a variable number of arguments.

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34699 $ */
   /*  _stddef.h

    multi-includable Definitions for common types, and NULL

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34174 $ */
   /*  _null.h

    Definition of NULL.

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */


/* $Revision: 23293 $ */








/* Full locale support is on by default now.  To get the previous behavior,
   define __SIMPLE_LOCALES__
*/
typedef int ssize_t;




namespace std {


/* Define __STD to expand to std:: or nothing depending on being in C++. */






/*
   Define the size_t type in the std namespace if in C++ or globally if in C.
   If we're in C++, make the _SIZE_T macro expand to std::size_t
*/






   typedef unsigned int size_t;
typedef size_t rsize_t;




typedef int errno_t;
typedef int ptrdiff_t;
/*
   Define the wint_t type in the std namespace if in C++ or globally if in C.
   If we're in C++, make the _WINT_T macro expand to std::wint_t
*/


typedef wchar_t wint_t;
typedef wchar_t wctype_t;




typedef double max_align_t;




typedef decltype(nullptr) nullptr_t;



extern "C" {

extern unsigned long __threadid(void);



}
} // std






     using std::ptrdiff_t;
     using std::__threadid;
     using std::size_t;
     using std::wint_t;
     using std::wctype_t;


     using std::errno_t;
     using std::rsize_t;



namespace std {





typedef __builtin_va_list va_list;
} // std






     using std::va_list;
  /* MAKE MINGW LOOK LIKE WIN32 HEREAFTER */
  /* FLOATING-POINT PROPERTIES */





  /* INTEGER PROPERTIES */
typedef long long _Longlong;
typedef unsigned long long _ULonglong;
namespace std {
namespace tr1 { // TR1 ADDITIONS
using ::_Longlong;
using ::_ULonglong;
} // namespace tr1
}




  /* wchar_t AND wint_t PROPERTIES */
typedef wchar_t _Wchart;
typedef wchar_t _Wintt;
  /* POINTER PROPERTIES */


  /* signal PROPERTIES */
  /* stdarg PROPERTIES */
typedef va_list _Va_list;
namespace std {
  /* stdlib PROPERTIES */


extern "C" {
         void _Atexit(void ( *)(void));
}

  /* stdio PROPERTIES */
typedef char _Sysch_t;

  /* STORAGE ALIGNMENT PROPERTIES */
  /* time PROPERTIES */


}

  /* uchar PROPERTIES */
  /* MULTITHREAD PROPERTIES */
  /* LOCK MACROS */
namespace std {
enum _Uninitialized
 { // tag for suppressing initialization
 _Noinit
 };

extern "C++" { // in case of _C_AS_CPP
  // CLASS _Lockit
class _Lockit
 { // lock while object in existence -- MUST NEST
public:

 _Lockit()
  { // do nothing
  }

 explicit _Lockit(int)
  { // do nothing
  }

 ~_Lockit()
  { // do nothing
  }
//private:
 _Lockit(const _Lockit&); // not defined
 _Lockit& operator=(const _Lockit&); // not defined

private:
 int _Locktype;
 };


class _Mutex
 { // lock under program control
public:
 _Mutex(_Uninitialized)
     { // do nothing
     }

 _Mutex()
     { // do nothing
     }

 void _Lock()
  { // do nothing
  }

 void _Unlock()
  { // do nothing
  }
 };
} // extern "C++"
}
/*
 * Copyright (c) 1992-2013 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V6.40:1422+V6.50 */



   /* Limits.h - stub redirector for _lim.h
*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 2002, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */



   /*  _lim.h - Internal version of "C" limits.h header

    Defines implementation specific limits on type values.

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */







   /*  _stddef.h

    multi-includable Definitions for common types, and NULL

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34174 $ */



/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */

   // cmath standard header



   /* yvals.h values header for conforming compilers on various systems */
/*
 * Copyright (c) 1992-2013 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V6.40:1422+V6.50 */
namespace std {
extern "C" { /* C has extern "C" linkage */
float (atan2f)(float, float);
float (cosf)(float);
float (expf)(float);
float (ldexpf)(float, int);
float (logf)(float);
float (powf)(float, float);
float (sinf)(float);
float (sqrtf)(float);
float (tanf)(float);
}
}




   /*  math.h

    Definitions for the math floating point package.

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 35726 $ */







   /* xtgmath.h internal header */





   // xtr1common internal header



   /* yvals.h values header for conforming compilers on various systems */
/*
 * Copyright (c) 1992-2013 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V6.40:1422+V6.50 */

   // cstdlib standard header



   /* yvals.h values header for conforming compilers on various systems */
/*
 * Copyright (c) 1992-2013 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V6.40:1422+V6.50 */
   /*  stdlib.h

    Definitions for common types, variables, and functions.

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 36114 $ */






   /*  _stddef.h

    multi-includable Definitions for common types, and NULL

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34174 $ */
extern "C"{
} // extern "C"



namespace std {




#pragma pack(push, 1)





typedef struct {
        int quot;
        int rem;
} div_t;




typedef struct {
        long quot;
        long rem;
} ldiv_t;




typedef struct {
        long long quot;
        long long rem;
} lldiv_t;


/* If using cnames and c++, we need to scope to std.
   bts 117437
 */







/* Maximum value returned by "rand" function
*/


/* Maximum value returned by "_lrand" function (also used by random() macro)
*/





typedef void ( * atexit_t)(void);

/*
  These 2 constants are defined in MS's stdlib.h.
*/






extern "C" {



typedef void ( *constraint_handler_t)(const char * __msg,
            void * __ptr,
            errno_t __error);

constraint_handler_t set_constraint_handler_s(constraint_handler_t __handler);
void abort_handler_s(const char * __msg,
     void * __ptr,
     errno_t __error);
void ignore_handler_s(const char * __msg,
      void * __ptr,
      errno_t __error);

errno_t getenv_s(size_t * len, char * value,
        rsize_t maxsize, const char * name);
errno_t wgetenv_s(size_t * len, wchar_t * value,
         rsize_t maxsize, const wchar_t * name);



void __declspec(noreturn) abort(void);
int abs(int __x);


int atexit(void ( * __func)(void));
double atof(const char * __s);
int atoi(const char * __s);
long atol(const char * __s);
void * calloc(std::size_t __nitems, std::size_t __size);
div_t div(int __numer, int __denom);
void __declspec(noreturn) exit(int __status);
void free(void * __block);
char * getenv(const char * __name);
long labs(long __x);
long long llabs(long long __x);
ldiv_t ldiv(long __numer, long __denom);
lldiv_t lldiv(long long __numer, long long __denom);
void * malloc(std::size_t __size);
int mblen(const char * __s, std::size_t __n);
std::size_t mbstowcs(wchar_t *__pwcs, const char * __s,
                                     std::size_t __n);
std::size_t _mbstrlen(const char *__s);
int mbtowc(wchar_t *__pwc, const char * __s, std::size_t __n);
int mbtowc_cp(wchar_t *__pwc, const char * __s, std::size_t __n, const unsigned _codepage);
int rand(void);



void * realloc(void * __block, std::size_t __size);
void srand(unsigned __seed);

float strtof(const char * __s, char * *__endptr);

double strtod(const char * __s, char * *__endptr);
long strtol(const char * __s, char * *__endptr, int __radix);
long long strtoll(const char * __s, char * *__endptr, int __radix);

long double _strtold(const char * __s, char * *__endptr);

long double strtold(const char * __s, char * *__endptr);
unsigned long strtoul(const char * __s, char * *__endptr, int __radix);
unsigned long long strtoull(const char * __s, char * *__endptr, int __radix);
int system(const char * __command);

std::size_t wcstombs(char * __s, const wchar_t *__pwcs,std::size_t __n);
int wctomb(char * __s, wchar_t __wc);
int wctomb_cp(char * __s, wchar_t __wc, const unsigned _codepage);
double _wtof(const wchar_t * __s);
int _wtoi(const wchar_t * __s);
long _wtol(const wchar_t * __s);
long double _wtold(const wchar_t * __s);

float wcstof(const wchar_t * __s, wchar_t * *__endptr);

double wcstod(const wchar_t * __s, wchar_t * *__endptr);
long double wcstold(const wchar_t * __s, wchar_t * *__endptr);
long wcstol(const wchar_t * __s, wchar_t * *__endptr, int __radix);
long long wcstoll(const wchar_t * __s, wchar_t * *__endptr, int __radix);

long double _wcstold(const wchar_t * __s, wchar_t * *__endptr);

unsigned long wcstoul(const wchar_t * __s, wchar_t * *__endptr, int __radix);
unsigned long long wcstoull(const wchar_t * __s, wchar_t * *__endptr, int __radix);
int _wsystem(const wchar_t * __command);
wchar_t * _itow(int __value, wchar_t *__string, int __radix);
wchar_t * _ltow(long __value, wchar_t *__string, int __radix);
wchar_t * _ultow(unsigned long __value, wchar_t *__string, int __radix);



__int64 _atoi64(const char * __s);
char * _i64toa(__int64 __value, char *__strP, int __radix);
char * _ui64toa(unsigned __int64 __value, char *__strP, int __radix);
__int64 _wtoi64(const wchar_t * __s);
wchar_t * _i64tow(__int64 __value, wchar_t *__strP, int __radix);
wchar_t * _ui64tow(unsigned __int64 __value, wchar_t *__strP, int __radix);

char * ltoa(long __value, char * __string, int __radix);
char * ecvt(double __value, int __ndig, int * __dec, int * __sign);
char * fcvt(double __value, int __ndig, int * __dec, int * __sign);
char * gcvt(double __value, int __ndec, char * __buf);



/* Variables */
extern int __mb_cur_max;



/* Values for _osmode */







/* MSC compatible routines: */

void _seterrormode(int __mode);



extern char ** _environ;
extern wchar_t ** _wenviron;
extern int _fileinfo;
extern int _fmode;
extern unsigned char _osmajor;
extern unsigned char _osminor;
extern unsigned char _osmode;
extern unsigned int _osversion;
extern int _cmdline_escapes;

extern char * _sys_errlist[];
extern int _sys_nerr;







}





inline int atoi(const char *__s)
{
    return (int)atol(__s);
}






/* Constants for MSC pathname functions */
extern "C" {


long double _atold(const char * __s);

unsigned char _crotl(unsigned char __value, int __count);
unsigned char _crotr(unsigned char __value, int __count);

char * _ecvt(double __value, int __ndig, int * __dec,
                                     int * __sign);
void __declspec(noreturn) _exit(int __status);
char * _fcvt(double __value, int __ndig, int * __dec,
                                     int * __sign);
char * _fullpath(char * __buf, const char * __path,
                                     std::size_t __maxlen);
char * _gcvt(double __value, int __ndec,
                                     char * __buf);
char * itoa(int __value, char * __string,
                                     int __radix);
long _lrand(void);
unsigned long _lrotl(unsigned long __val, int __count);
unsigned long _lrotr(unsigned long __val, int __count);

char * _ltoa(long __value, char * __string,
                                     int __radix);
void _makepath(char * __path,
                                     const char * __drive,
                                     const char * __dir,
                                     const char * __name,
                                     const char * __ext );
int putenv(const char * __name);

unsigned short _rotl(unsigned short __value, int __count);
unsigned short _rotr(unsigned short __value, int __count);

void _searchenv(const char * __file,
                                     const char * __varname,
                                     char *__pathname);
void _searchstr(const char * __file,
                                     const char * __ipath,
                                     char *__pathname);
void _splitpath(const char * __path,
                                     char * __drive,
                                     char * __dir,
                                     char * __name,
                                     char * __ext );


void swab(const char * __from, char * __to, ssize_t __nbytes);


char * ultoa(unsigned long __value, char * __string,
                                     int __radix);
void perror(const char * __s);

void _wperror(const wchar_t * __s);
wchar_t * _wfullpath(wchar_t * __buf,const wchar_t * __path,
                                     std::size_t __maxlen);
void _wmakepath(wchar_t * __path,
                                     const wchar_t * __drive,
                                     const wchar_t * __dir,
                                     const wchar_t * __name,
                                     const wchar_t * __ext );
void _wsplitpath(const wchar_t * __path,
                                     wchar_t * __drive,
                                     wchar_t * __dir,
                                     wchar_t * __name,
                                     wchar_t * __ext );

void _wsearchenv(const wchar_t * __file,
                                     const wchar_t * __varname,
                                     wchar_t *__pathname);
void _wsearchstr(const wchar_t * __file,
                                     const wchar_t * __ipath,
                                     wchar_t *__pathname);
wchar_t * _wgetenv(const wchar_t * __name);
int _wputenv(const wchar_t * __name);


}





inline int random(int __num) { return __num ? (int)(_lrand()%(__num)) : 0; }
extern "C" {

long time(long *);

}
/* Need prototype of time() for C++ randomize() */
inline void randomize(void)
{
    srand((unsigned) time(0));
}
/* argv & argc definitions */


extern "C"{



    extern int _argc;
    extern char ** _argv;



    extern wchar_t ** _wargv;

} /* __cplusplus */





/* restore default packing */
#pragma pack(pop)








} // std





   /*  search.h

    Definitions for search functions.

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1991, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 25325 $ */





   /*  _stddef.h

    multi-includable Definitions for common types, and NULL

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34174 $ */
namespace std {
extern "C" {

void * bsearch(const void * __key, const void * __base,
       std::size_t __nelem, std::size_t __width,
       int ( *fcmp)(const void *, const void *));

void * lfind(const void * __key, const void * __base,
    std::size_t *__num, std::size_t __width,
                                int ( *fcmp)(const void *, const void *));

void * lsearch(const void * __key, void * __base,
      std::size_t *__num, std::size_t __width,
      int ( *fcmp)(const void *, const void *));

void qsort(void * __base, std::size_t __nelem, std::size_t __width,
     int ( *__fcmp)(const void *, const void *));


void * bsearch_s(const void * __key, const void * __base,
         rsize_t __nelem, rsize_t __width,
         int ( *__fcmp)(const void *, const void *, void *),
         void *__context);

errno_t qsort_s(void * __base, rsize_t __nelem, rsize_t __width,
        int ( *__fcmp)(const void *, const void *, void *),
        void *__context);



}
}

   /*  errno.h

    Defines the system error variable errno and the error
    numbers set by system calls. Errors which exist in Unix(tm)
    but not MSDOS have value -1.

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34051 $ */





   /*  _stddef.h

    multi-includable Definitions for common types, and NULL

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34174 $ */



namespace std {
extern "C" {
/*  Dos Error Codes */
  /* values from Dinkumware */
extern int _doserrno;


extern "C" {

extern int * __errno(void);

}
extern int _sys_nerr;
extern char * _sys_errlist[];
} // "C"
} // std


/* Add overloaded functions from 26.5 here */



namespace std {
inline long abs(long __x) { return labs(__x); }
inline long long abs(long long __x) { return llabs(__x); }
inline ldiv_t div(long __x, long __y) { return ldiv(__x,__y); }
inline lldiv_t div(long long __x, long long __y) { return lldiv(__x,__y); }
}
/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */


namespace std {
 // STRUCT _Nil
struct _Nil
 { // empty struct, for unused argument types
 };

 // TEMPLATE CLASS integral_constant
template<class _Ty,
 _Ty _Val>
 struct integral_constant
 { // convenient template for integral constant types
 static const _Ty value = _Val;

 typedef _Ty value_type;
 typedef integral_constant<_Ty, _Val> type;

            operator value_type() const
  { // return stored value
  return (value);
  }

            value_type operator()() const
  { // return stored value
  return (value);
  }
 };

typedef integral_constant<bool, true> true_type;
typedef integral_constant<bool, false> false_type;

 // ALIAS TEMPLATE bool_constant
template<bool _Val>
 using bool_constant = integral_constant<bool, _Val>;

 // TEMPLATE CLASS _Cat_base
template<bool _Val>
 struct _Cat_base
  : integral_constant<bool, _Val>
 { // base class for type predicates
 };

 // TEMPLATE CLASS enable_if
template<bool _Test,
 class _Ty = void>
 struct enable_if
 { // type is undefined for assumed !_Test
 };

template<class _Ty>
 struct enable_if<true, _Ty>
 { // type is _Ty for _Test
 typedef _Ty type;
 };

 // TEMPLATE CLASS conditional
template<bool _Test,
 class _Ty1,
 class _Ty2>
 struct conditional
 { // type is _Ty2 for assumed !_Test
 typedef _Ty2 type;
 };

template<class _Ty1,
 class _Ty2>
 struct conditional<true, _Ty1, _Ty2>
 { // type is _Ty1 for _Test
 typedef _Ty1 type;
 };

 // TEMPLATE CLASS is_same
template<class _Ty1,
 class _Ty2>
 struct is_same
  : false_type
 { // determine whether _Ty1 and _Ty2 are the same type
 };

template<class _Ty1>
 struct is_same<_Ty1, _Ty1>
  : true_type
 { // determine whether _Ty1 and _Ty2 are the same type
 };

 // TEMPLATE CLASS remove_const
template<class _Ty>
 struct remove_const
 { // remove top level const qualifier
 typedef _Ty type;
 };

template<class _Ty>
 struct remove_const<const _Ty>
 { // remove top level const qualifier
 typedef _Ty type;
 };

template<class _Ty>
 struct remove_const<const _Ty[]>
 { // remove top level const qualifier
 typedef _Ty type[];
 };

template<class _Ty, size_t _Nx>
 struct remove_const<const _Ty[_Nx]>
 { // remove top level const qualifier
 typedef _Ty type[_Nx];
 };

 // TEMPLATE CLASS remove_volatile
template<class _Ty>
 struct remove_volatile
 { // remove top level volatile qualifier
 typedef _Ty type;
 };

template<class _Ty>
 struct remove_volatile<volatile _Ty>
 { // remove top level volatile qualifier
 typedef _Ty type;
 };

template<class _Ty>
 struct remove_volatile<volatile _Ty[]>
 { // remove top level volatile qualifier
 typedef _Ty type[];
 };

template<class _Ty, size_t _Nx>
 struct remove_volatile<volatile _Ty[_Nx]>
 { // remove top level volatile qualifier
 typedef _Ty type[_Nx];
 };

 // TEMPLATE CLASS remove_cv
template<class _Ty>
 struct remove_cv
 { // remove top level const and volatile qualifiers
 typedef typename remove_const<typename remove_volatile<_Ty>::type>::type
  type;
 };

 // TEMPLATE CLASS _Is_integral
template<class _Ty>
 struct _Is_integral
  : false_type
 { // determine whether _Ty is integral
 };

template<>
 struct _Is_integral<bool>
  : true_type
 { // determine whether _Ty is integral
 };

template<>
 struct _Is_integral<char>
  : true_type
 { // determine whether _Ty is integral
 };

template<>
 struct _Is_integral<unsigned char>
  : true_type
 { // determine whether _Ty is integral
 };

template<>
 struct _Is_integral<signed char>
  : true_type
 { // determine whether _Ty is integral
 };

template<>
 struct _Is_integral<wchar_t>
  : true_type
 { // determine whether _Ty is integral
 };

template<>
 struct _Is_integral<unsigned short>
  : true_type
 { // determine whether _Ty is integral
 };

template<>
 struct _Is_integral<signed short>
  : true_type
 { // determine whether _Ty is integral
 };

template<>
 struct _Is_integral<unsigned int>
  : true_type
 { // determine whether _Ty is integral
 };

template<>
 struct _Is_integral<signed int>
  : true_type
 { // determine whether _Ty is integral
 };

template<>
 struct _Is_integral<unsigned long>
  : true_type
 { // determine whether _Ty is integral
 };

template<>
 struct _Is_integral<signed long>
  : true_type
 { // determine whether _Ty is integral
 };


template<>
 struct _Is_integral<char16_t>
  : true_type
 { // determine whether _Ty is integral
 };

template<>
 struct _Is_integral<char32_t>
  : true_type
 { // determine whether _Ty is integral
 };



template<>
 struct _Is_integral<long long>
  : true_type
 { // determine whether _Ty is integral
 };

template<>
 struct _Is_integral<unsigned long long>
  : true_type
 { // determine whether _Ty is integral
 };


 // TEMPLATE CLASS is_integral
template<class _Ty>
 struct is_integral
  : _Is_integral<typename remove_cv<_Ty>::type>
 { // determine whether _Ty is integral
 };

 // TEMPLATE CLASS _Is_floating_point
template<class _Ty>
 struct _Is_floating_point
  : false_type
 { // determine whether _Ty is floating point
 };

template<>
 struct _Is_floating_point<float>
  : true_type
 { // determine whether _Ty is floating point
 };

template<>
 struct _Is_floating_point<double>
  : true_type
 { // determine whether _Ty is floating point
 };

template<>
 struct _Is_floating_point<long double>
  : true_type
 { // determine whether _Ty is floating point
 };

 // TEMPLATE CLASS is_floating_point
template<class _Ty>
 struct is_floating_point
  : _Is_floating_point<typename remove_cv<_Ty>::type>
 { // determine whether _Ty is floating point
 };

 // TEMPLATE CLASS is_arithmetic
template<class _Ty>
 struct is_arithmetic
  : _Cat_base<is_integral<_Ty>::value
   || is_floating_point<_Ty>::value>
 { // determine whether _Ty is an arithmetic type
 };

 // TEMPLATE CLASS remove_reference
template<class _Ty>
 struct remove_reference
 { // remove reference
 typedef _Ty type;
 };

template<class _Ty>
 struct remove_reference<_Ty&>
 { // remove reference
 typedef _Ty type;
 };


template<class _Ty>
 struct remove_reference<_Ty&&>
 { // remove rvalue reference
 typedef _Ty type;
 };


 // TYPE TESTING MACROS
struct _Wrap_int
 { // wraps int so that int argument is favored over _Wrap_int
 _Wrap_int(int)
  { // do nothing
  }
 };

template<class _Ty>
 struct _Identity
 { // map _Ty to type unchanged, without operator()
 typedef _Ty type;
 };
}


/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */


namespace std {
template<class _Ty>
 struct _Promote_to_float
 { // promote integral to double
 typedef typename conditional<is_integral<_Ty>::value,
  double, _Ty>::type type;
 };

template<class _Ty1,
 class _Ty2>
 struct _Common_float_type
 { // find type for two-argument math function
 typedef typename _Promote_to_float<_Ty1>::type _Ty1f;
 typedef typename _Promote_to_float<_Ty2>::type _Ty2f;
 typedef typename conditional<is_same<_Ty1f, long double>::value
  || is_same<_Ty2f, long double>::value, long double,
  typename conditional<is_same<_Ty1f, double>::value
   || is_same<_Ty2f, double>::value, double,
   float>::type>::type type;
 };
}
namespace std {
extern "C" double pow(double, double);
float pow(float, float);
long double pow(long double, long double);

template<class _Ty1,
 class _Ty2> inline
 typename ::std:: enable_if< ::std:: is_arithmetic<_Ty1>::value
  && ::std:: is_arithmetic<_Ty2>::value,
  typename ::std:: _Common_float_type<_Ty1, _Ty2>::type>::type
 pow(const _Ty1 _Left, const _Ty2 _Right)
 { // bring mixed types to a common type
 typedef typename ::std:: _Common_float_type<_Ty1, _Ty2>::type type;
 return (::std:: pow(type(_Left), type(_Right)));
 }

//_GENERIC_MATH1(abs, _CRTDEFAULT)	// has integer overloads
extern "C" double acos(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type acos(_Ty _Left) { return (::std:: acos((double)_Left)); }
extern "C" double asin(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type asin(_Ty _Left) { return (::std:: asin((double)_Left)); }
extern "C" double atan(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type atan(_Ty _Left) { return (::std:: atan((double)_Left)); }
extern "C" double atan2( double, double); template<class _Ty1, class _Ty2> inline typename ::std:: enable_if< ::std:: is_arithmetic<_Ty1>::value && ::std:: is_arithmetic<_Ty2>::value, typename ::std:: _Common_float_type<_Ty1, _Ty2>::type>::type atan2(_Ty1 _Left, _Ty2 _Right) { typedef typename ::std:: _Common_float_type<_Ty1, _Ty2>::type type; return (::std:: atan2((type)_Left, (type)_Right)); }
extern "C" double ceil(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type ceil(_Ty _Left) { return (::std:: ceil((double)_Left)); }
extern "C" double cos(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type cos(_Ty _Left) { return (::std:: cos((double)_Left)); }
extern "C" double cosh(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type cosh(_Ty _Left) { return (::std:: cosh((double)_Left)); }
extern "C" double exp(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type exp(_Ty _Left) { return (::std:: exp((double)_Left)); }
extern "C" double floor(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type floor(_Ty _Left) { return (::std:: floor((double)_Left)); }
extern "C" double fmod( double, double); template<class _Ty1, class _Ty2> inline typename ::std:: enable_if< ::std:: is_arithmetic<_Ty1>::value && ::std:: is_arithmetic<_Ty2>::value, typename ::std:: _Common_float_type<_Ty1, _Ty2>::type>::type fmod(_Ty1 _Left, _Ty2 _Right) { typedef typename ::std:: _Common_float_type<_Ty1, _Ty2>::type type; return (::std:: fmod((type)_Left, (type)_Right)); }
extern "C" double frexp(double, int *); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type frexp(_Ty _Left, int * _Arg2) { return (::std:: frexp((double)_Left, _Arg2)); }
extern "C" double ldexp(double, int); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type ldexp(_Ty _Left, int _Arg2) { return (::std:: ldexp((double)_Left, _Arg2)); }
extern "C" double log(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type log(_Ty _Left) { return (::std:: log((double)_Left)); }
extern "C" double log10(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type log10(_Ty _Left) { return (::std:: log10((double)_Left)); }
//_GENERIC_MATH1(modf, _CRTDEFAULT)		// types must match
//_GENERIC_MATH2(pow, _CRTDEFAULT)	// hand crafted
extern "C" double sin(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type sin(_Ty _Left) { return (::std:: sin((double)_Left)); }
extern "C" double sinh(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type sinh(_Ty _Left) { return (::std:: sinh((double)_Left)); }
extern "C" double sqrt(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type sqrt(_Ty _Left) { return (::std:: sqrt((double)_Left)); }
extern "C" double tan(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type tan(_Ty _Left) { return (::std:: tan((double)_Left)); }
extern "C" double tanh(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type tanh(_Ty _Left) { return (::std:: tanh((double)_Left)); }

  // C99 MATH FUNCTIONS
  // TEMPLATE FUNCTION fma


template<class _Ty1,
 class _Ty2,
 class _Ty3> inline
 typename ::std:: _Common_float_type<_Ty1,
  typename ::std:: _Common_float_type<_Ty2, _Ty3>::type>::type
 fma(_Ty1 _Left, _Ty2 _Middle, _Ty3 _Right)
 { // bring mixed types to a common type
 typedef typename ::std:: _Common_float_type<_Ty1,
  typename ::std:: _Common_float_type<_Ty2, _Ty3>::type>::type type;
 return (::std:: fma((type)_Left, (type)_Middle, (type)_Right));
 }

  // TEMPLATE FUNCTION remquo


template<class _Ty1,
 class _Ty2> inline
 typename ::std:: _Common_float_type<_Ty1, _Ty2>::type
 remquo(_Ty1 _Left, _Ty2 _Right, int *_Pquo)
 { // bring mixed types to a common type
 typedef typename ::std:: _Common_float_type<_Ty1, _Ty2>::type type;
 return (::std:: remquo((type)_Left, (type)_Right, _Pquo));
 }

extern "C" double acosh(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type acosh(_Ty _Left) { return (::std:: acosh((double)_Left)); }
extern "C" double asinh(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type asinh(_Ty _Left) { return (::std:: asinh((double)_Left)); }
extern "C" double atanh(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type atanh(_Ty _Left) { return (::std:: atanh((double)_Left)); }
extern "C" double cbrt(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type cbrt(_Ty _Left) { return (::std:: cbrt((double)_Left)); }
extern "C" double copysign( double, double); template<class _Ty1, class _Ty2> inline typename ::std:: enable_if< ::std:: is_arithmetic<_Ty1>::value && ::std:: is_arithmetic<_Ty2>::value, typename ::std:: _Common_float_type<_Ty1, _Ty2>::type>::type copysign(_Ty1 _Left, _Ty2 _Right) { typedef typename ::std:: _Common_float_type<_Ty1, _Ty2>::type type; return (::std:: copysign((type)_Left, (type)_Right)); }
extern "C" double erf(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type erf(_Ty _Left) { return (::std:: erf((double)_Left)); }
extern "C" double erfc(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type erfc(_Ty _Left) { return (::std:: erfc((double)_Left)); }
extern "C" double expm1(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type expm1(_Ty _Left) { return (::std:: expm1((double)_Left)); }
extern "C" double exp2(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type exp2(_Ty _Left) { return (::std:: exp2((double)_Left)); }
extern "C" double fdim( double, double); template<class _Ty1, class _Ty2> inline typename ::std:: enable_if< ::std:: is_arithmetic<_Ty1>::value && ::std:: is_arithmetic<_Ty2>::value, typename ::std:: _Common_float_type<_Ty1, _Ty2>::type>::type fdim(_Ty1 _Left, _Ty2 _Right) { typedef typename ::std:: _Common_float_type<_Ty1, _Ty2>::type type; return (::std:: fdim((type)_Left, (type)_Right)); }
//_GENERIC_MATH3(fma, _CRTSPECIAL)	// hand crafted
extern "C" double fmax( double, double); template<class _Ty1, class _Ty2> inline typename ::std:: enable_if< ::std:: is_arithmetic<_Ty1>::value && ::std:: is_arithmetic<_Ty2>::value, typename ::std:: _Common_float_type<_Ty1, _Ty2>::type>::type fmax(_Ty1 _Left, _Ty2 _Right) { typedef typename ::std:: _Common_float_type<_Ty1, _Ty2>::type type; return (::std:: fmax((type)_Left, (type)_Right)); }
extern "C" double fmin( double, double); template<class _Ty1, class _Ty2> inline typename ::std:: enable_if< ::std:: is_arithmetic<_Ty1>::value && ::std:: is_arithmetic<_Ty2>::value, typename ::std:: _Common_float_type<_Ty1, _Ty2>::type>::type fmin(_Ty1 _Left, _Ty2 _Right) { typedef typename ::std:: _Common_float_type<_Ty1, _Ty2>::type type; return (::std:: fmin((type)_Left, (type)_Right)); }
extern "C" double hypot( double, double); template<class _Ty1, class _Ty2> inline typename ::std:: enable_if< ::std:: is_arithmetic<_Ty1>::value && ::std:: is_arithmetic<_Ty2>::value, typename ::std:: _Common_float_type<_Ty1, _Ty2>::type>::type hypot(_Ty1 _Left, _Ty2 _Right) { typedef typename ::std:: _Common_float_type<_Ty1, _Ty2>::type type; return (::std:: hypot((type)_Left, (type)_Right)); }
extern "C" int ilogb(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, int>::type ilogb(_Ty _Left) { return (::std:: ilogb((double)_Left)); }
extern "C" double lgamma(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type lgamma(_Ty _Left) { return (::std:: lgamma((double)_Left)); }
extern "C" long long llrint(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, long long>::type llrint(_Ty _Left) { return (::std:: llrint((double)_Left)); }
extern "C" long long llround(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, long long>::type llround(_Ty _Left) { return (::std:: llround((double)_Left)); }
extern "C" double log1p(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type log1p(_Ty _Left) { return (::std:: log1p((double)_Left)); }
extern "C" double log2(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type log2(_Ty _Left) { return (::std:: log2((double)_Left)); }
extern "C" double logb(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type logb(_Ty _Left) { return (::std:: logb((double)_Left)); }
extern "C" long lrint(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, long>::type lrint(_Ty _Left) { return (::std:: lrint((double)_Left)); }
extern "C" long lround(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, long>::type lround(_Ty _Left) { return (::std:: lround((double)_Left)); }
extern "C" double nearbyint(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type nearbyint(_Ty _Left) { return (::std:: nearbyint((double)_Left)); }
extern "C" double nextafter( double, double); template<class _Ty1, class _Ty2> inline typename ::std:: enable_if< ::std:: is_arithmetic<_Ty1>::value && ::std:: is_arithmetic<_Ty2>::value, typename ::std:: _Common_float_type<_Ty1, _Ty2>::type>::type nextafter(_Ty1 _Left, _Ty2 _Right) { typedef typename ::std:: _Common_float_type<_Ty1, _Ty2>::type type; return (::std:: nextafter((type)_Left, (type)_Right)); }
extern "C" double nexttoward(double, long double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type nexttoward(_Ty _Left, long double _Arg2) { return (::std:: nexttoward((double)_Left, _Arg2)); }
extern "C" double remainder( double, double); template<class _Ty1, class _Ty2> inline typename ::std:: enable_if< ::std:: is_arithmetic<_Ty1>::value && ::std:: is_arithmetic<_Ty2>::value, typename ::std:: _Common_float_type<_Ty1, _Ty2>::type>::type remainder(_Ty1 _Left, _Ty2 _Right) { typedef typename ::std:: _Common_float_type<_Ty1, _Ty2>::type type; return (::std:: remainder((type)_Left, (type)_Right)); }
//_GENERIC_MATH2X(remquo, _CRTSPECIAL)	// hand crafted
extern "C" double rint(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type rint(_Ty _Left) { return (::std:: rint((double)_Left)); }
extern "C" double round(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type round(_Ty _Left) { return (::std:: round((double)_Left)); }
extern "C" double scalbln(double, long); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type scalbln(_Ty _Left, long _Arg2) { return (::std:: scalbln((double)_Left, _Arg2)); }
extern "C" double scalbn(double, int); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type scalbn(_Ty _Left, int _Arg2) { return (::std:: scalbn((double)_Left, _Arg2)); }
extern "C" double tgamma(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type tgamma(_Ty _Left) { return (::std:: tgamma((double)_Left)); }
extern "C" double trunc(double); template<class _Ty> inline typename ::std:: enable_if< ::std:: is_integral<_Ty>::value, double>::type trunc(_Ty _Left) { return (::std:: trunc((double)_Left)); }
}




/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */




   /*  _stddef.h

    multi-includable Definitions for common types, and NULL

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34174 $ */








#pragma pack(push, 1)







 extern "C" {
/* matherr and struct _exception must not be availible in __STDC__ nor
   can they be in namespace std since user's won't be able to override them
   there.
*/


/* In "C" mode, (but not in standard C mode) we can allow the old name of
   'exception' for this structure.
 */







struct _exception
{
    int type;
    char *name;
    double arg1, arg2, retval;
};

struct _exceptionl
{
    int type;
    char *name;
    long double arg1, arg2, retval;
};

typedef enum
{
    DOMAIN = 1, /* argument domain error -- log (-1)        */
    SING, /* argument singularity  -- pow (0,-2))     */
    OVERFLOW, /* overflow range error  -- exp (1000)      */
    UNDERFLOW, /* underflow range error -- exp (-1000)     */
    TLOSS, /* total loss of significance -- sin(10e70) */
    PLOSS, /* partial loss of signif. -- not used      */
    STACKFAULT /* floating point unit stack overflow       */
} _mexcep;

int _matherr(struct _exception *__e);
int _matherrl(struct _exceptionl *__e);


} // extern "C"



    /* use class complex instead of _cabs in C++ (now in STL 2.0) */
  namespace std {



/* Constants rounded for 21 decimals. */
extern "C" {


extern double _huge_dble;
extern long double _huge_ldble;
float atan2f(float, float);
float ceilf(float);
float cosf(float);
float expf(float);
float floorf(float);
float ldexpf(float, int);
float logf(float);
float powf(float, float);
float sinf(float);
float sqrtf(float);
float tanf(float);


float acosf(float);
float asinf(float);
float atanf(float);
float coshf(float);
float fabsf(float);
float fmodf(float, float);
float frexpf(float, int *);
float hypotf(float, float);
float log10f(float);
float modff(float, float *);
float sinhf(float);
float tanhf(float);

float nanf(const char*);
double nan(const char*);
long double nanl(const char*);

float roundf(float);
double round(double);
long double roundl(long double);

float acoshf(float);
float asinhf(float);
float atanhf(float);
double acosh(double);
double asinh(double);
double atanh(double);
long double acoshl(long double);
long double asinhl(long double);
long double atanhl(long double);

float exp2f(float __x);
double exp2(double __x);
long double exp2l(long double __x);

float expm1f (float __x);
double expm1 (double __x);
long double expm1l (long double __x);

float log2f(float);
double log2(double);
long double log2l(long double);

float log1pf(float);
double log1p(double);
long double log1pl(long double);

float copysignf(float, float);
double copysign(double, double);
long double copysignl(long double, long double);




double acos (double __x);
double asin (double __x);
double atan (double __x);
double atan2 (double __y, double __x);
double ceil (double __x);
double cos (double __x);
double cosh (double __x);
double exp (double __x);
double fabs (double __x);
double floor (double __x);
double fmod (double __x, double __y);
double frexp (double __x, int * __exponent);
double hypot (double __x, double __y);
double ldexp (double __x, int __exponent);
double log (double __x);
double log10 (double __x);
double modf (double __x, double * __ipart);
double pow (double __x, double __y);
double sin (double __x);
double sinh (double __x);
double sqrt (double __x);
double tan (double __x);
double tanh (double __x);

long double acosl (long double __x);
long double asinl (long double __x);
long double atan2l (long double __x, long double __y);
long double atanl (long double __x);
long double ceill (long double __x);
long double coshl (long double __x);
long double cosl (long double __x);
long double expl (long double __x);
long double fabsl (long double __x);
long double floorl (long double __x);
long double fmodl (long double __x, long double __y);
long double frexpl (long double __x, int * __exponent);
long double hypotl (long double __x, long double __y);
long double ldexpl (long double __x, int __exponent);
long double log10l (long double __x);
long double logl (long double __x);
long double modfl (long double __x, long double * __ipart);
long double powl (long double __x, long double __y);
long double sinhl (long double __x);
long double sinl (long double __x);
long double sqrtl (long double __x);
long double tanhl (long double __x);
long double tanl (long double __x);

double atof (const char * __s);
int abs(int __x);


long labs (long __x);
double pow10 (int __p);

long double _atold (const char * __s);


double poly (double __x, int __degree, double __coeffs []);
long double polyl (long double __x, int __degree, long double __coeffs []);
long double pow10l (int __p);


__int64 _atoi64(const char * __s);
char * _i64toa(__int64 __value, char *__strP, int __radix);
char * _ui64toa(unsigned __int64 __value, char *__strP, int __radix);
__int64 _wtoi64(const wchar_t * __s);
wchar_t * _i64tow(__int64 __value, wchar_t *__strP, int __radix);
wchar_t * _ui64tow(unsigned __int64 __value, wchar_t *__strP, int __radix);

double _wtof(const wchar_t * __s);
int _wtoi(const wchar_t * __s);
long _wtol(const wchar_t * __s);
long double _wtold(const wchar_t * __s);



/* Add overloaded functions from 26.5 here */


extern "C++" {
inline float abs (float __x) { return (float)fabs((double)__x); }
inline float acos (float __x) { return (float)acos((double)__x); }
inline float asin (float __x) { return (float)asin((double)__x); }
inline float atan (float __x) { return (float)atan((double)__x); }
inline float atan2(float __x, float __y) { return (float)atan2((double)__x,(double)__y); }
inline float ceil (float __x) { return (float)ceil((double)__x); }
inline float cos (float __x) { return (float)cos((double)__x); }
inline float cosh (float __x) { return (float)cosh((double)__x); }
inline float exp (float __x) { return (float)exp((double)__x); }
inline float fabs (float __x) { return (float)fabs((double)__x); }
inline float floor(float __x) { return (float)floor((double)__x); }
inline float fmod (float __x, float __y) { return (float)fmod((double) __x,(double) __y); }
inline float frexp(float __x, int *__y) { return (float)frexp((double)__x,__y); }
inline float hypot(float __x, float __y) { return (float)hypot((double) __x,(double) __y); }
inline float ldexp(float __x, int __y) { return (float)ldexp((double)__x,__y); }
inline float log (float __x) { return (float)log((double)__x); }
inline float log10(float __x) { return (float)log10((double)__x); }
inline float pow (float __x, float __y) { return (float)pow((double)__x,(double)__y); }
inline float pow (float __x, int __y) { return (float)pow((double)__x,(double)__y); }
inline float sin (float __x) { return (float)sin((double)__x); }
inline float sinh (float __x) { return (float)sinh((double)__x); }
inline float sqrt (float __x) { return (float)sqrt((double)__x); }
inline float tan (float __x) { return (float)tan((double)__x); }
inline float tanh (float __x) { return (float)tanh((double)__x); }

inline float modf (float __x, float *__y)
{
  double __d;
  float __f = (float)modf((double)__x, &__d);
  *__y = (float) __d;
  return __f;
}

inline double abs(double __x) { return fabs(__x); }
inline double pow(double __x, int __y) { return pow(__x,(double)__y); }

inline long double abs (long double __x) { return fabsl(__x); }
inline long double acos (long double __x) { return acosl(__x); }
inline long double asin (long double __x) { return asinl(__x); }
inline long double atan (long double __x) { return atanl(__x); }
inline long double atan2(long double __x, long double __y) { return atan2l(__x,__y); }
inline long double ceil (long double __x) { return ceill(__x); }
inline long double cos (long double __x) { return cosl(__x); }
inline long double cosh (long double __x) { return coshl(__x); }
inline long double exp (long double __x) { return expl(__x); }
inline long double fabs (long double __x) { return fabsl(__x); }
inline long double floor(long double __x) { return floorl(__x); }
inline long double fmod (long double __x, long double __y) { return fmodl(__x,__y); }
inline long double hypot(long double __x, long double __y) { return hypotl(__x,__y); }
inline long double frexp(long double __x, int *__y) { return frexpl(__x,__y); }
inline long double ldexp(long double __x, int __y) { return ldexpl(__x,__y); }
inline long double log (long double __x) { return logl(__x); }
inline long double log10(long double __x) { return log10l(__x); }
inline long double modf (long double __x, long double *__y) { return modfl(__x,__y); }
inline long double pow (long double __x, long double __y) { return powl(__x,__y); }
inline long double pow (long double __x, int __y) { return powl(__x,(double)__y); }
inline long double sin (long double __x) { return sinl(__x); }
inline long double sinh (long double __x) { return sinhl(__x); }
inline long double sqrt (long double __x) { return sqrtl(__x); }
inline long double tan (long double __x) { return tanl(__x); }
inline long double tanh (long double __x) { return tanhl(__x); }


}




} // extern "C"
} // std




/* restore default packing */
#pragma pack(pop)







   /* xtgmath.h internal header */
/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */
/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */

   // cstdio standard header



   /* yvals.h values header for conforming compilers on various systems */
/*
 * Copyright (c) 1992-2013 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V6.40:1422+V6.50 */




   /*  stdio.h

    Definitions for stream input/output.

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 33996 $ */






   /*  _stddef.h

    multi-includable Definitions for common types, and NULL

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34174 $ */



   /*  _nfile.h

    Maximum number of open files

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1991, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */


/* $Revision: 33126 $ */





   /*  stdarg.h

    Definitions for accessing parameters in functions that accept
    a variable number of arguments.

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34699 $ */








namespace std {
#pragma pack(push, 1)



/* Definition of the file position type
*/
typedef long fpos_t;


 typedef long off_t;


/* An external reference to _floatconvert (using #pragma extref _floatconvert)
 * forces floating point format conversions to be linked.
 */
extern int _floatconvert;

/* Bufferisation type to be used as 3rd argument for "setvbuf" function
*/




/*  "flags" bits definitions
*/
/* End-of-file constant definition
*/





/* Default buffer size use by "setbuf" function
*/


/* Size of an arry large enough to hold a temporary file name string
*/




/* Constants to be used as 3rd argument for "fseek" function
*/




/* Number of unique file names that shall be generated by "tmpnam" function
*/




/* Definition of the control structure for streams
*/
typedef struct
{
        unsigned char *curp; /* Current active pointer     */
        unsigned char *buffer; /* Data transfer buffer       */
        int level; /* fill/empty level of buffer */
        int bsize; /* Buffer size                */
        unsigned short istemp; /* Temporary file indicator   */
        unsigned short flags; /* File status flags          */
        wchar_t hold; /* Ungetc char if no buffer   */
        char fd; /* File descriptor            */
        unsigned char token; /* Used for validity checking */
} FILE; /* This is the FILE object    */


/* Number of files that can be open simultaneously
*/
extern "C" {


/* Standard I/O predefined streams
*/
extern FILE _streams[];
extern unsigned _nfile;
/* __getStream() is used internally with CG only, but prototyped here for
  consistancy with the 16-bit version.
*/
FILE * __getStream( int );

}




extern "C" {







errno_t tmpfile_s(FILE * * streamptr);
errno_t tmpnam_s(char *__s, rsize_t __maxsize);
errno_t _wtmpnam_s(wchar_t *__s, rsize_t __maxsize);
errno_t fopen_s(FILE * * streamptr,
         const char *filename, const char *type);
errno_t _wfopen_s(FILE * * streamptr,
           const wchar_t *filename, const wchar_t *type);
errno_t freopen_s(FILE * * newstreamptr,
           const char * filename,
           const char * type,
           FILE * fp);
errno_t _wfreopen_s(FILE * * newstreamptr,
      const wchar_t * filename,
      const wchar_t * type,
      FILE * fp);
int fprintf_s(FILE * F, const char * fmt, ...);
int fwprintf_s(FILE * F, const wchar_t * fmt, ...);
int printf_s(const char * __format, ...);
int wprintf_s(const wchar_t * __format, ...);

int sprintf_s(char * __buffer, rsize_t __n,
           const char * __format, ...);
int swprintf_s(wchar_t * __buffer, rsize_t __n,
     const wchar_t * __format, ...);

int vsprintf_s(char * __buffer, rsize_t __n,
     const char * __format,
     va_list);
int vswprintf_s(wchar_t * __buffer, rsize_t __n,
      const wchar_t * __format,
      va_list);
int vprintf_s(const char * __format, va_list);
int vwprintf_s(const wchar_t * __format, va_list);
int snprintf_s(char * __buffer, rsize_t __nsize,
     const char * __format, ...);
int snwprintf_s(wchar_t * __buffer, rsize_t __nsize,
      const wchar_t * __format, ...);
int vfprintf_s(FILE * __stream, const char * __format,
     va_list);
int vfwprintf_s(FILE * __stream, const wchar_t * __format,
      va_list);
int vsnprintf_s(char * __buffer, rsize_t __nsize,
      const char * __format, va_list);
int vsnwprintf_s(wchar_t * __buffer, rsize_t __nsize,
       const wchar_t * __format, va_list);
char * gets_s(char * __s, rsize_t __n);
wchar_t* _getws_s(wchar_t * __s, rsize_t __n);
int sscanf_s(const char * __buffer,
          const char * __format, ...);
int swscanf_s(const wchar_t * __buffer,
           const wchar_t * __format, ...);
int fscanf_s(FILE * __stream, const char * __format, ...);
int fwscanf_s(FILE * __stream, const wchar_t * __format, ...);
int scanf_s(const char * __format, ...);
int wscanf_s(const wchar_t * __format, ...);
int vsscanf_s(const char * __buffer, const char * __format,
           va_list);
int vswscanf_s(const wchar_t * __buffer, const wchar_t * __format,
     va_list);
int vfscanf_s(FILE * __stream, const char * __format,
           va_list);
int vfwscanf_s(FILE * __stream, const wchar_t * __format,
     va_list);
int vscanf_s(const char * __format, va_list);
int vwscanf_s(const wchar_t * __format, va_list);
void clearerr(FILE * __stream);
int fclose(FILE * __stream);
int fflush(FILE * __stream);
int fgetc(FILE * __stream);
std::wint_t fgetwc(FILE * __stream);
int fgetpos(FILE * __stream, fpos_t*__pos);
char * fgets(char * __s, int __n, FILE * __stream);
wchar_t* fgetws(wchar_t * __s, int __n, FILE * __stream);
FILE * fopen(const char * __path, const char * __mode);
FILE * _wfopen(const wchar_t * __path,
                                 const wchar_t * __mode);
int fprintf(FILE * __stream, const char * __format, ...);
int fwprintf(FILE * __stream, const wchar_t *__format, ...);
int fputc(int __c, FILE * __stream);
std::wint_t fputwc(std::wint_t __c, FILE * __stream);
int fputs(const char * __s, FILE * __stream);
int fputws(const wchar_t * __s, FILE * __stream);
std::size_t fread(void * __ptr, std::size_t __size, std::size_t __n,
                                 FILE * __stream);
FILE * freopen(const char * __path, const char * __mode,
                                 FILE * __stream);
FILE * _wfreopen(const wchar_t * __path, const wchar_t * __mode,
                                 FILE * __stream);
int fscanf(FILE * __stream, const char * __format, ...);
int fwscanf(FILE *__stream, const wchar_t *__format, ...);
int fseek(FILE * __stream, long __offset, int __whence);
int _fseeki64(FILE * __stream, __int64 __offset, int __whence);
int fsetpos(FILE * __stream, const fpos_t*__pos);
long ftell(FILE * __stream);
__int64 _ftelli64(FILE * __stream);
std::size_t fwrite(const void * __ptr, std::size_t __size, std::size_t __n,
                                 FILE * __stream);
char * gets(char * __s);
wchar_t* _getws(wchar_t * __s);
int _pclose(FILE *__stream);
void perror(const char * __s);
void _wperror(const wchar_t * __s);
FILE * _popen(const char * __command, const char * __mode);
FILE * _wpopen(const wchar_t * __command,
                                 const wchar_t * __mode);

int printf(const char * __format, ...) __attribute__((format (printf, 1, 2)));
int wprintf(const wchar_t * __format, ...);
int puts(const char * __s);
int _putws(const wchar_t * __s);

int remove(const char * __path);
int _wremove(const wchar_t * __path);
int rename(const char * __oldname,const char * __newname);
int _wrename(const wchar_t * __oldname,const wchar_t * __newname);
void rewind(FILE * __stream);
int scanf(const char * __format, ...);
int wscanf(const wchar_t * __format, ...);
void setbuf(FILE * __stream, char * __buf);
int setvbuf(FILE * __stream, char * __buf,
                                 int __type, std::size_t __size);
int sprintf(char * __buffer, const char * __format, ...) __attribute__((format (printf, 2, 3)));
int swprintf(wchar_t * __buffer, const wchar_t * __format, ...);


}
extern "C++" {
int swprintf(wchar_t * s, std::size_t __nsize, const wchar_t * format, ...);
}
extern "C" {


int snprintf(char * __buffer, std::size_t __nsize,
                                 const char * __format, ...) __attribute__((format (printf, 3, 4)));
int snwprintf(wchar_t * __buffer, std::size_t __nsize,
                                 const wchar_t * __format, ...);

int _snprintf(char * __buffer, std::size_t __nsize,
                                 const char * __format, ...) __attribute__((format (printf, 3, 4)));
int _snwprintf(wchar_t * __buffer, std::size_t __nsize,
                                 const wchar_t * __format, ...);

int sscanf(const char * __buffer,
                                 const char * __format, ...);
int swscanf(const wchar_t * __buffer,
                                 const wchar_t * __format, ...);
char * strerror(int __errnum);
FILE * tmpfile(void);
char * tmpnam(char * __s);
wchar_t * _wtmpnam(wchar_t * __s);
int ungetc(int __c, FILE * __stream);
std::wint_t ungetwc(std::wint_t __c, FILE * __stream);
int vfprintf(FILE * __stream, const char * __format,
                                 va_list) __attribute__((format (printf, 2, 0)));
int vfscanf(FILE * __stream, const char * __format,
                                 va_list);
int vprintf(const char * __format, va_list) __attribute__((format (printf, 1, 0)));
int vscanf(const char * __format, va_list);
int vsprintf(char * __buffer, const char * __format,
          va_list) __attribute__((format (printf, 2, 0)));
int vsnprintf(char * __buffer, std::size_t __nsize, const char * __format,
           va_list) __attribute__((format (printf, 3, 0)));
int vsscanf(const char * __buffer, const char * __format,
                                 va_list);
int vfwprintf(FILE * __stream, const wchar_t * __format,
                                 va_list);
int vfwscanf(FILE * __stream, const wchar_t * __format,
                                 va_list);
int vwprintf(const wchar_t * __format, va_list);
int vwscanf(const wchar_t * __format, va_list);
int vswprintf(wchar_t * __buffer, const wchar_t * __format,
                                 va_list);
int vsnwprintf(wchar_t * __buffer, std::size_t __nsize, const wchar_t * __format,
                                 va_list);
int vswscanf(const wchar_t * __buffer, const wchar_t * __format,
                                 va_list);
int _unlink(const char * __path);
int _wunlink(const wchar_t * __path);

int _vsnprintf(char * __buffer, std::size_t __nsize, const char * __format,
     va_list) __attribute__((format (printf, 3, 0)));
int _vsnwprintf(wchar_t * __buffer, std::size_t __nsize, const wchar_t * __format,
                                 va_list);


int getc(FILE * __fp);
std::wint_t getwc(FILE * __fp);
int getchar(void);
std::wint_t getwchar(void);
int putchar(const int __c);
std::wint_t putwchar(const std::wint_t __c);
int putc(const int __c, FILE * __fp);
std::wint_t putwc(const std::wint_t __c, FILE * __fp);
int feof(FILE * __fp);
int ferror(FILE * __fp);
int _fileno(FILE *__fp);
int _flushall(void);
int _fcloseall(void);
FILE * _fdopen(int __handle, const char * __type);
FILE * _wfdopen(int __handle, const wchar_t * __type);
int _fgetchar(void);
std::wint_t _fgetwchar(void);
int _fputchar(int __c);
std::wint_t _fputwchar(std::wint_t __c);
FILE * _fsopen (const char * __path, const char * __mode, int __shflag);
FILE * _wfsopen (const wchar_t * __path,
                                 const wchar_t * __mode, int __shflag);



int _sopen (const char *__path, int __access, int __shflag,
                                 ... /* unsigned mode */);

int _wsopen (const wchar_t *__path, int __access, int __shflag,
                                 ... /* unsigned mode */);
int _getw(FILE * __stream);
int _putw(int __w, FILE * __stream);
int _rmtmp(void);
char * _strerror(const char * __s);
char * _tempnam(const char * __dir, const char * __pfx);
wchar_t * _wtempnam(const wchar_t * __dir, const wchar_t * __pfx);
int _fgetc(FILE * __stream); /* used by getc() macro */
std::wint_t _fgetwc(FILE * __stream);
int _fputc(char __c, FILE * __stream); /* used by putc() macro */
std::wint_t _fputwc(wchar_t __c, FILE * __stream);

int flushall(void);
FILE * fdopen(int __handle, const char * __type);
int fputchar(int __c);
int fgetchar(void);
int fileno(FILE * __fp);
int fcloseall(void);
int fseeko(FILE * __stream, off_t __offset, int __whence);
off_t ftello(FILE * __stream);
char * tempnam(const char * __dir, const char * __pfx);
int rmtmp(void);
int unlink(const char * __path);
int getw(FILE * __stream);
int putw(int __w, FILE * __stream);
int sopen (const char *__path, int __access, int __shflag,
                                 ... /* unsigned mode */);


}


/*  The following macros provide for common functions */





inline int ferror(FILE *__f) { return __f->flags & 0x0010 /* Error indicator       */; }
inline int feof(FILE *__f) { return __f->flags & 0x0020 /* EOF indicator         */; }
inline int _fileno(FILE *__f) { return __f->fd; }
inline int fileno(FILE *__f) { return _fileno(__f); }
/* restore default packing */
#pragma pack(pop)








} // std






     using std::FILE;
     using std::__getStream;
     using std::_fcloseall;
     using std::_fdopen;
     using std::_fgetc;
     using std::_fgetchar;
     using std::_fgetwc;
     using std::_fgetwchar;
     using std::_fileno;
     using std::_floatconvert;
     using std::_flushall;
     using std::_fputc;
     using std::_fputchar;
     using std::_fputwc;
     using std::_fputwchar;
     using std::_fsopen;
     using std::_getw;
     using std::_getws;
     using std::_pclose;
     using std::_popen;
     using std::_putw;
     using std::_putws;
     using std::_rmtmp;
     using std::_sopen;
     using std::_streams;
     using std::_strerror;
     using std::_tempnam;
     using std::_unlink;
     using std::_wfdopen;
     using std::_wfopen;
     using std::_wfreopen;
     using std::_wfsopen;
     using std::_wperror;
     using std::_wpopen;
     using std::_wremove;
     using std::_wrename;
     using std::_wsopen;
     using std::_wtempnam;
     using std::_wtmpnam;
     using std::_wunlink;
     using std::clearerr;
     using std::fclose;
     using std::feof;
     using std::ferror;
     using std::fflush;
     using std::fgetc;
     using std::fgetpos;
     using std::fgets;
     using std::fgetwc;
     using std::fgetws;
     using std::fopen;
     using std::fpos_t;
     using std::fprintf;
     using std::fputc;
     using std::fputs;
     using std::fputwc;
     using std::fputws;
     using std::fread;
     using std::freopen;
     using std::fscanf;
     using std::fseek;
     using std::_fseeki64;
     using std::fsetpos;
     using std::ftell;
     using std::_ftelli64;
     using std::fwprintf;
     using std::fwrite;
     using std::fwscanf;
     using std::getc;
     using std::getchar;
     using std::gets;
     using std::getwc;
     using std::getwchar;
     using std::perror;
     using std::printf;
     using std::putc;
     using std::putchar;
     using std::puts;
     using std::putwc;
     using std::putwchar;
     using std::remove;
     using std::rename;
     using std::rewind;
     using std::scanf;
     using std::setbuf;
     using std::setvbuf;
     using std::snprintf;
     using std::snwprintf;
     using std::sprintf;
     using std::sscanf;
     using std::strerror;
     using std::swprintf;
     using std::swscanf;
     using std::tmpfile;
     using std::tmpnam;
     using std::ungetc;
     using std::ungetwc;
     using std::vfprintf;
     using std::vfscanf;
     using std::vfwprintf;
     using std::vfwscanf;
     using std::vprintf;
     using std::vscanf;
     using std::vsnprintf;
     using std::vsnwprintf;
     using std::vsprintf;
     using std::vsscanf;
     using std::vswprintf;
     using std::vswscanf;
     using std::vwprintf;
     using std::vwscanf;
     using std::wprintf;
     using std::wscanf;


using std::_getws_s;
using std::_wfopen_s;
using std::_wfreopen_s;
using std::_wtmpnam_s;
using std::fopen_s;
using std::fprintf_s;
using std::freopen_s;
using std::fscanf_s;
using std::fwprintf_s;
using std::fwscanf_s;
using std::gets_s;
using std::printf_s;
using std::scanf_s;
using std::snprintf_s;
using std::snwprintf_s;
using std::sprintf_s;
using std::sscanf_s;
using std::swprintf_s;
using std::swscanf_s;
using std::tmpfile_s;
using std::tmpnam_s;
using std::vfprintf_s;
using std::vfscanf_s;
using std::vfwprintf_s;
using std::vfwscanf_s;
using std::vprintf_s;
using std::vscanf_s;
using std::vsnprintf_s;
using std::vsnwprintf_s;
using std::vsprintf_s;
using std::vsscanf_s;
using std::vswprintf_s;
using std::vswscanf_s;
using std::vwprintf_s;
using std::vwscanf_s;
using std::wprintf_s;
using std::wscanf_s;



     using std::off_t;
     using std::_snprintf;
     using std::_snwprintf;
     using std::_vsnprintf;
     using std::_vsnwprintf;
     using std::fcloseall;
     using std::fdopen;
     using std::fgetchar;
     using std::fileno;
     using std::flushall;
     using std::fputchar;
     using std::fseeko;
     using std::ftello;
     using std::getw;
     using std::putw;
     using std::rmtmp;
     using std::sopen;
     using std::tempnam;
     using std::unlink;







// undef common macro overrides
namespace std {
extern "C" { /* C has extern "C" linkage */
int fwide(FILE *, int);
}
}
typedef FILE _Filet;
/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */


   // streambuf standard header



   // xiosbase internal header (from <ios>)



   // xlocale internal header (from <locale>)




   // cstring standard header



   /* yvals.h values header for conforming compilers on various systems */
/*
 * Copyright (c) 1992-2013 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V6.40:1422+V6.50 */




   /* string.h - stub redirector for _str.h
*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 2002, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */



   /*  _str.h internal version of "C" string.h functions

    Definitions for string functions.

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34027 $ */






   /*  _stddef.h

    multi-includable Definitions for common types, and NULL

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34174 $ */





   /* Locale.h - stub redirector for _loc.h
*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 2002, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */



   /*  _loc.h - Internal version of "C" locale.h header file

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */


/* $Revision: 34254 $ */





   /*  _stddef.h

    multi-includable Definitions for common types, and NULL

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34174 $ */
namespace std {
struct lconv {

   char *decimal_point;
   char *thousands_sep;
   char *grouping;
   char *int_curr_symbol;
   char *currency_symbol;
   char *mon_decimal_point;
   char *mon_thousands_sep;
   char *mon_grouping;
   char *positive_sign;
   char *negative_sign;
   char int_frac_digits;
   char frac_digits;
   char p_cs_precedes;
   char p_sep_by_space;
   char n_cs_precedes;
   char n_sep_by_space;
   char p_sign_posn;
   char n_sign_posn;
};


#pragma pack(push, 1)


extern "C" {





char * setlocale( int __category, const char *__locale );
wchar_t * _wsetlocale( int __category, const wchar_t *__locale );

char * _lsetlocale( int __category, const char *__locale );
struct lconv * localeconv( void );
struct lconv * _llocaleconv( void );
wchar_t * _lwsetlocale( int __category, const wchar_t *__locale );

}


#pragma pack(pop)



inline char * setlocale( int __category, const char *__locale )
    { return _lsetlocale( __category, __locale); }
inline wchar_t * _wsetlocale( int __category, const wchar_t *__locale )
    { return _lwsetlocale( __category, __locale); }
} // std






    using std::lconv;
    using std::setlocale;
    using std::_lsetlocale;
    using std::localeconv;
    using std::_llocaleconv;
    using std::_wsetlocale;
    using std::_lwsetlocale;
extern "C" {



namespace std {
std::size_t strnlen_s(const char *__s, std::size_t __maxlen);
std::size_t wcsnlen_s(const wchar_t *__s, std::size_t __maxlen);
errno_t strerror_s(char *__s, rsize_t __maxsize, errno_t __errnum);
errno_t _wcserror_s(wchar_t *__s, rsize_t __maxsize, errno_t __errnum);
size_t strerrorlen_s(errno_t errnum);
errno_t strncpy_s(char * dest, rsize_t destmax,
        const char * src, rsize_t n);
errno_t wcsncpy_s(wchar_t * dest, rsize_t destmax,
        const wchar_t * src, rsize_t n);
errno_t strcpy_s(char * dest, rsize_t destmax,
       const char * src);
errno_t wcscpy_s(wchar_t * dest, rsize_t destmax,
       const wchar_t * src);
errno_t strncat_s(char * dest, rsize_t destmax,
        const char * src, rsize_t n);
errno_t wcsncat_s(wchar_t * dest, rsize_t destmax,
        const wchar_t * src, rsize_t n);
errno_t strcat_s(char * dest, rsize_t destmax,
       const char * src);
errno_t wcscat_s(wchar_t * dest, rsize_t destmax,
       const wchar_t * src);
char * strtok_s(char * __s1, rsize_t * __s1max,
       const char * __s2, char ** __ptr);
wchar_t * wcstok_s(wchar_t * __s1, rsize_t * __s1max,
       const wchar_t * __s2, wchar_t ** __ptr);


std::size_t wcslen(const wchar_t *__s);
wchar_t * wcscpy(wchar_t *__dst, const wchar_t *__src);
wchar_t * wcscat(wchar_t *__dest, const wchar_t *__src);
int wcscmp(const wchar_t *__s1, const wchar_t *__s2);
int wcscoll(const wchar_t * __s1, const wchar_t * __s2);
std::size_t wcscspn(const wchar_t *__s1, const wchar_t *__s2);
wchar_t * _wcsdup(const wchar_t *__s);
int wcsncmp(const wchar_t *__s1, const wchar_t *__s2, std::size_t __maxlen);
wchar_t * wcsncpy(wchar_t *__dest, const wchar_t *__src, std::size_t __maxlen);
wchar_t * _wcsnset(wchar_t *__s, wchar_t __ch, std::size_t __n);
wchar_t * wcspbrk(const wchar_t *__s1, const wchar_t *__s2);
wchar_t * wcsrchr(const wchar_t *__s, wchar_t __c);
wchar_t * _wcsrev(wchar_t *__s);
wchar_t * _wcsset(wchar_t*__s, wchar_t __ch);
std::size_t wcsspn(const wchar_t *__s1, const wchar_t *__s2);
wchar_t * wcsstr(const wchar_t *__s1, const wchar_t *__s2);
wchar_t * wcstok(wchar_t *__s1, const wchar_t *__s2);
wchar_t * wcsncat(wchar_t *__dest, const wchar_t *__src, std::size_t __maxlen);
wchar_t * wcspcpy(wchar_t *__dest, const wchar_t *__src);
wchar_t * _wcspcpy(wchar_t *__dest, const wchar_t *__src);
int _wcsicmp(const wchar_t *__s1, const wchar_t *__s2);
int _wcsnicmp(const wchar_t *__s1, const wchar_t *__s2, std::size_t __maxlen);
wchar_t * _wcslwr(wchar_t *__s);
wchar_t * _wcsupr(wchar_t *__s);
wchar_t * _lwcslwr(wchar_t *__s);
wchar_t * _lwcsupr(wchar_t *__s);
wchar_t * __wcserror(const wchar_t *__s);
wchar_t * _wcserror(int __errnum);


wchar_t * wcschr(const wchar_t *__s, wchar_t __c);







char * strcat(char *__dest, const char *__src);
int strcmp(const char *__s1, const char *__s2);
char * strcpy(char *__dest, const char *__src);
std::size_t strlen(const char *__s);
char * strncat(char *__dest, const char *__src,
                                        std::size_t __maxlen);
int strncmp(const char *__s1, const char *__s2,
                                        std::size_t __maxlen);
char * strncpy(char *__dest, const char *__src,
                                        std::size_t __maxlen);
std::size_t strcspn(const char *__s1, const char *__s2);
char * strerror(int __errnum);
std::size_t strspn(const char *__s1, const char *__s2);
char * strtok(char *__s1, const char *__s2);
char * _strerror(const char *__s);


/* compatibility with other compilers */



char * _lstrlwr(char *__s);
char * _lstrupr(char *__s);
char * stpcpy(char *__dest, const char *__src);
char * _stpcpy(char *__dest, const char *__src);
char * strdup(const char *__s);
int stricmp(const char *__s1, const char *__s2);
char * strlwr(char *__s);
int strnicmp(const char *__s1, const char *__s2,
                                           std::size_t __maxlen);
char * strnset(char *__s, int __ch, std::size_t __n);
char * strrev(char *__s);
char * strset(char *__s, int __ch);
char * strupr(char *__s);



extern "C++"
{
          char * strchr(char * __s, int __c);
    const char * strchr(const char * __s, int __c);
          char * strrchr(char *__s, int __c);
    const char * strrchr(const char *__s, int __c);
          char * strpbrk(char *__s1, const char *__s2);
    const char * strpbrk(const char *__s1, const char *__s2);
          char * strstr(char *__s1, const char *__s2);
    const char * strstr(const char *__s1, const char *__s2);




}
int _lstrcoll(const char * __s1, const char * __s2);
int _lstricoll(const char * __s1, const char * __s2);
int _lstrncoll(const char * __s1, const char * __s2, const int __len);
int _lstrnicoll(const char * __s1, const char * __s2, int __len);
std::size_t _lstrxfrm(char * __s1, const char * __s2,std::size_t __n );
int _stricoll(const char * __s1, const char * __s2);
int _strncoll(const char * __s1, const char * __s2, std::size_t __n);
int _strnicoll(const char * __s1, const char * __s2, int __len);





int strcoll(const char * __s1, const char * __s2);
std::size_t strxfrm(char * __s1, const char * __s2,std::size_t __n );





int _lwcscoll(const wchar_t * __s1, const wchar_t * __s2);
int _lwcsicoll(const wchar_t * __s1, const wchar_t * __s2);
int _lwcsncoll(const wchar_t * __s1, const wchar_t * __s2, const int __len);
int _lwcsnicoll(const wchar_t * __s1, const wchar_t * __s2, int __len);
std::size_t _lwcsxfrm(wchar_t * __s1, const wchar_t * __s2,std::size_t __n );
int wcscoll(const wchar_t * __s1, const wchar_t * __s2);
int _wcsicoll(const wchar_t * __s1, const wchar_t * __s2);
int _wcsncoll(const wchar_t * __s1, const wchar_t * __s2, std::size_t __n);
int _wcsnicoll(const wchar_t * __s1, const wchar_t * __s2, int __len);
std::size_t wcsxfrm(wchar_t * __s1, const wchar_t * __s2, std::size_t __n );
inline char * strupr(char *__s)
    { return _lstrupr(__s); }
inline char * strlwr(char *__s)
    { return _lstrlwr(__s); }
inline int stricoll(const char * __s1, const char * __s2)
    { return _lstricoll(__s1, __s2); }
inline int strncoll(const char * __s1, const char * __s2, const int __len)
    { return _lstrncoll( __s1, __s2, __len); }
inline int strnicoll(const char * __s1, const char * __s2, int __len)
    { return _lstrnicoll(__s1, __s2, __len); }

inline int strcoll(const char * __s1, const char * __s2)
    { return _lstrcoll(__s1, __s2); }
inline std::size_t strxfrm(char * __s1, const char * __s2, std::size_t __n )
    { return _lstrxfrm(__s1, __s2, __n); }
} /* std */



} /* extern "C" */





   /*  mem.h

    Memory manipulation functions

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34027 $ */





   /*  _stddef.h

    multi-includable Definitions for common types, and NULL

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34174 $ */
extern "C" {



namespace std {



errno_t memcpy_s(void * __dest, rsize_t __destmax,
         const void * __src, rsize_t __n);
errno_t memmove_s(void * __dest, rsize_t __destmax,
          const void * __src, rsize_t __n);
errno_t wmemcpy_s(wchar_t * __dest, rsize_t __destmax,
          const wchar_t * __src, rsize_t __n);
errno_t wmemmove_s(wchar_t * __dest, rsize_t __destmax,
           const wchar_t * __src, rsize_t __n);


void * memccpy(void *__dest, const void *__src,
                                        int __c, std::size_t __n);
int memcmp(const void *__s1, const void *__s2,
                                       std::size_t __n);
void * memcpy(void *__dest, const void *__src,
                                       std::size_t __n);
int memicmp(const void *__s1, const void *__s2,
                                        std::size_t __n);
void * memmove(void *__dest, const void *__src,
                                        std::size_t __n);
void * memset(void *__s, int __c, std::size_t __n);

wchar_t * wmemset(wchar_t *__s, int __c, std::size_t __n);
wchar_t * wmemcpy(wchar_t *__dest, const wchar_t *__src, std::size_t __n);
wchar_t * wmemmove(wchar_t *__dest, const wchar_t *__src, std::size_t __n);
wchar_t * wmemchr(const wchar_t *__s, int __c, std::size_t __n);
int wmemcmp(const wchar_t *__s1, const wchar_t *__s2, std::size_t __n);

/* Old names */
wchar_t * _wmemset(wchar_t *__s, int __c, std::size_t __n);
wchar_t * _wmemcpy(wchar_t *__dest, const wchar_t *__src, std::size_t __n);


extern "C++"
{
          void * memchr(void *__s, int __c, std::size_t __n);
    const void * memchr(const void *__s, int __c, std::size_t __n);
          wchar_t * _wmemchr(wchar_t *__s, int __c, std::size_t __n);
    const wchar_t * _wmemchr(const wchar_t *__s, int __c, std::size_t __n);
}
} /* std */
} /* extern "C" */
    using std::_wmemchr;
    using std::_wmemcpy;
    using std::_wmemset;
    using std::wmemmove;
    using std::wmemchr;
    using std::wmemcmp;
    using std::wmemcpy;
    using std::wmemset;
    using std::memccpy;
    using std::memicmp;
    using std::memmove;
    using std::memchr;
    using std::memcmp;
    using std::memcpy;
    using std::memset;


    using std::memcpy_s;
    using std::memmove_s;
    using std::wmemcpy_s;
    using std::wmemmove_s;





    using std::_lstrlwr;
    using std::_lstrupr;
    using std::_stpcpy;
    using std::strdup;
    using std::stricmp;
    using std::strlwr;
    using std::strnicmp;
    using std::strrev;
    using std::strupr;
    using std::_lstrcoll;
    using std::_lstricoll;
    using std::_lstrncoll;
    using std::_lstrnicoll;
    using std::_lstrxfrm;
    using std::_lwcscoll;
    using std::_lwcsicoll;
    using std::_lwcslwr;
    using std::_lwcsncoll;
    using std::_lwcsnicoll;
    using std::_lwcsupr;
    using std::_lwcsxfrm;
    using std::_stricoll;
    using std::_strncoll;
    using std::_strnicoll;
    using std::_wcsdup;
    using std::_wcsicmp;
    using std::_wcsicoll;
    using std::_wcslwr;
    using std::_wcsncoll;
    using std::_wcsnicmp;
    using std::_wcsnicoll;
    using std::_wcsnset;
    using std::_wcspcpy;
    using std::_wcsrev;
    using std::_wcsset;
    using std::_wcsupr;


    using std::strnset;
    using std::stpcpy;
    using std::strset;
    using std::_strerror;
    using std::_wcserror;
    using std::__wcserror;


    using std::strcat;
    using std::strchr;
    using std::strcmp;
    using std::strcpy;
    using std::strlen;
    using std::strncat;
    using std::strncmp;
    using std::strncpy;
    using std::strrchr;

    using std::strcspn;
    using std::strerror;
    using std::strpbrk;
    using std::strspn;
    using std::strstr;
    using std::strtok;
    using std::strxfrm;
    using std::strcoll;

    using std::wcscat;
    using std::wcschr;
    using std::wcscmp;
    using std::wcscoll;
    using std::wcscpy;
    using std::wcscspn;
    using std::wcslen;
    using std::wcsncat;
    using std::wcsncmp;
    using std::wcsncpy;
    using std::wcspbrk;
    using std::wcspcpy;
    using std::wcsrchr;
    using std::wcsspn;
    using std::wcsstr;
    using std::wcstok;
    using std::wcsxfrm;


    using std::_wcserror_s;
    using std::strcat_s;
    using std::strcpy_s;
    using std::strerror_s;
    using std::strerrorlen_s;
    using std::strncat_s;
    using std::strncpy_s;
    using std::strnlen_s;
    using std::strtok_s;
    using std::wcscat_s;
    using std::wcscpy_s;
    using std::wcsncat_s;
    using std::wcsncpy_s;
    using std::wcsnlen_s;
    using std::wcstok_s;








namespace std {
inline void * memchr(void *_Str, int _Ch, size_t _Size)
 { /* find first occurrence of c in s[n] */
 const unsigned char _Uch = _Ch;
 const unsigned char *_Ustr = (const unsigned char *)_Str;

 for (; 0 < _Size; ++_Ustr, --_Size)
  if (*_Ustr == _Uch)
   return ((void *)_Ustr);
 return (0);
 }

inline const void * memchr(const void *_Str, int _Ch, size_t _Size)
 { /* find first occurrence of c in s[n] */
 return (memchr((void *)_Str, _Ch, _Size));
 }
}
/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */

   // stdexcept standard header



   // exception standard header



   // xstddef internal header



   // cstddef standard header
   /* yvals.h values header for conforming compilers on various systems */
/*
 * Copyright (c) 1992-2013 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V6.40:1422+V6.50 */




   /*  stddef.h

    Definitions for common types, and NULL

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 19389 $ */





/*  All the work is done in _stddef.h, so that it may be included in the other
    standard C headers */


   /*  _stddef.h

    multi-includable Definitions for common types, and NULL

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34174 $ */
/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */




   // initializer_list standard header




namespace std {
  // TEMPLATE CLASS initializer_list
template<class _Elem>
 class initializer_list
 { // list of pointers to elements
public:
 typedef _Elem value_type;
 typedef const _Elem& reference;
 typedef const _Elem& const_reference;
 typedef size_t size_type;

 typedef const _Elem* iterator;
 typedef const _Elem* const_iterator;

            initializer_list()
  : _First(0), _Last(0)
  { // empty list
  }

            initializer_list(const _Elem *_First_arg,
  const _Elem *_Last_arg)
  : _First(_First_arg), _Last(_Last_arg)
  { // construct with pointers
  }

 initializer_list(const _Elem *_First_arg, size_t _Count)
  : _First(_First_arg), _Last(_First_arg + _Count)
  { // construct with pointers
  }

            const _Elem *begin() const
  { // get beginning of list
  return (_First);
  }

            const _Elem *end() const
  { // get end of list
  return (_Last);
  }

            size_t size() const
  { // get length of list
  return ((size_t)(_Last - _First));
  }

private:
 const _Elem *_First;
 const _Elem *_Last;
 };
}
namespace std {
  // TEMPLATE FUNCTION begin
template<class _Elem> inline
            const _Elem *begin(
  ::std:: initializer_list<_Elem> _Ilist)
 { // get beginning of sequence
 return (_Ilist.begin());
 }

  // TEMPLATE FUNCTION end
template<class _Elem> inline
            const _Elem *end(
  ::std:: initializer_list<_Elem> _Ilist)
 { // get end of sequence
 return (_Ilist.end());
 }
}


/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */
namespace std {
  // EXCEPTION MACROS
  // MISCELLANEOUS MACROS


  // BITMASK MACROS
  // TYPE DEFINITIONS
template<bool,
 class _Ty1,
 class _Ty2>
 struct _If
 { // type is _Ty2 for assumed false
 typedef _Ty2 type;
 };

template<class _Ty1,
 class _Ty2>
 struct _If<true, _Ty1, _Ty2>
 { // type is _Ty1 for assumed true
 typedef _Ty1 type;
 };

template<class _Ty>
 struct _Always_false
 { // false value that probably won't be optimized away
 static const bool value = false;
 };
  //	FUNCTIONAL STUFF (from <functional>)
  // TEMPLATE STRUCT unary_function
template<class _Arg,
 class _Result>
 struct unary_function
 { // base class for unary functions
 typedef _Arg argument_type;
 typedef _Result result_type;
 };

  // TEMPLATE STRUCT binary_function
template<class _Arg1,
 class _Arg2,
 class _Result>
 struct binary_function
 { // base class for binary functions
 typedef _Arg1 first_argument_type;
 typedef _Arg2 second_argument_type;
 typedef _Result result_type;
 };

  // TEMPLATE STRUCT plus
template<class _Ty = void>
 struct plus
 { // functor for operator+
 typedef _Ty first_argument_type;
 typedef _Ty second_argument_type;
 typedef _Ty result_type;

            _Ty operator()(const _Ty& _Left, const _Ty& _Right) const
  { // apply operator+ to operands
  return (_Left + _Right);
  }
 };

  // TEMPLATE STRUCT minus
template<class _Ty = void>
 struct minus
 { // functor for operator-
 typedef _Ty first_argument_type;
 typedef _Ty second_argument_type;
 typedef _Ty result_type;

            _Ty operator()(const _Ty& _Left, const _Ty& _Right) const
  { // apply operator- to operands
  return (_Left - _Right);
  }
 };

  // TEMPLATE STRUCT multiplies
template<class _Ty = void>
 struct multiplies
 { // functor for operator*
 typedef _Ty first_argument_type;
 typedef _Ty second_argument_type;
 typedef _Ty result_type;

            _Ty operator()(const _Ty& _Left, const _Ty& _Right) const
  { // apply operator* to operands
  return (_Left * _Right);
  }
 };

  // TEMPLATE STRUCT equal_to
template<class _Ty = void>
 struct equal_to
 { // functor for operator==
 typedef _Ty first_argument_type;
 typedef _Ty second_argument_type;
 typedef bool result_type;

            bool operator()(const _Ty& _Left, const _Ty& _Right) const
  { // apply operator== to operands
  return (_Left == _Right);
  }
 };

  // TEMPLATE STRUCT less
template<class _Ty = void>
 struct less
 { // functor for operator<
 typedef _Ty first_argument_type;
 typedef _Ty second_argument_type;
 typedef bool result_type;

            bool operator()(const _Ty& _Left, const _Ty& _Right) const
  { // apply operator< to operands
  return (_Left < _Right);
  }
 };


  // is_transparent MACHINERY
typedef int _Is_trans; // type for is_transparent

  // TEMPLATE STRUCT SPECIALIZATION plus
template<>
 struct plus<void>
 { // transparent functor for operator+
 typedef _Is_trans is_transparent;

 template<class _Ty1,
  class _Ty2>
             auto operator()(_Ty1&& _Left, _Ty2&& _Right) const
  -> decltype(static_cast<_Ty1 &&>(_Left)
   + static_cast<_Ty2 &&>(_Right))
  { // transparently apply operator+ to operands
  return (static_cast<_Ty1 &&>(_Left)
   + static_cast<_Ty2 &&>(_Right));
  }
 };

  // TEMPLATE STRUCT SPECIALIZATION minus
template<>
 struct minus<void>
 { // transparent functor for operator-
 typedef _Is_trans is_transparent;

 template<class _Ty1,
  class _Ty2>
             auto operator()(_Ty1&& _Left, _Ty2&& _Right) const
  -> decltype(static_cast<_Ty1 &&>(_Left)
   - static_cast<_Ty2 &&>(_Right))
  { // transparently apply operator- to operands
  return (static_cast<_Ty1 &&>(_Left)
   - static_cast<_Ty2 &&>(_Right));
  }
 };

  // TEMPLATE STRUCT SPECIALIZATION multiplies
template<>
 struct multiplies<void>
 { // transparent functor for operator*
 typedef _Is_trans is_transparent;

 template<class _Ty1,
  class _Ty2>
             auto operator()(_Ty1&& _Left, _Ty2&& _Right) const
  -> decltype(static_cast<_Ty1 &&>(_Left)
   * static_cast<_Ty2 &&>(_Right))
  { // transparently apply operator* to operands
  return (static_cast<_Ty1 &&>(_Left)
   * static_cast<_Ty2 &&>(_Right));
  }
 };

  // TEMPLATE STRUCT SPECIALIZATION equal_to
template<>
 struct equal_to<void>
 { // transparent functor for operator==
 typedef _Is_trans is_transparent;

 template<class _Ty1,
  class _Ty2>
             auto operator()(_Ty1&& _Left, _Ty2&& _Right) const
  -> decltype(static_cast<_Ty1 &&>(_Left)
   == static_cast<_Ty2 &&>(_Right))
  { // transparently apply operator== to operands
  return (static_cast<_Ty1 &&>(_Left)
   == static_cast<_Ty2 &&>(_Right));
  }
 };

  // TEMPLATE STRUCT SPECIALIZATION less
template<>
 struct less<void>
 { // transparent functor for operator<
 typedef _Is_trans is_transparent;

 template<class _Ty1,
  class _Ty2>
             auto operator()(_Ty1&& _Left, _Ty2&& _Right) const
  -> decltype(static_cast<_Ty1 &&>(_Left)
   < static_cast<_Ty2 &&>(_Right))
  { // transparently apply operator< to operands
  return (static_cast<_Ty1 &&>(_Left)
   < static_cast<_Ty2 &&>(_Right));
  }
 };
}



namespace std {
 // FUNCTION _Hash_seq
inline size_t _Hash_seq(const unsigned char *_First, size_t _Count)
 { // FNV-1a hash function for bytes in [_First, _First + _Count)






 static_assert(sizeof(size_t) == 4, "This code is for 32-bit size_t.");
 const size_t _FNV_offset_basis = 2166136261U;
 const size_t _FNV_prime = 16777619U;


 size_t _Val = _FNV_offset_basis;
 for (size_t _Next = 0; _Next < _Count; ++_Next)
  { // fold in another byte
  _Val ^= (size_t)_First[_Next];
  _Val *= _FNV_prime;
  }
 return (_Val);
 }

 // TEMPLATE STRUCT _Bitwise_hash
template<class _Kty>
 struct _Bitwise_hash
 { // hash functor for plain old data
 typedef _Kty argument_type;
 typedef size_t result_type;

 size_t operator()(const _Kty& _Keyval) const
  { // hash _Keyval to size_t value by pseudorandomizing transform
  return (_Hash_seq((const unsigned char *)&_Keyval, sizeof (_Kty)));
  }
 };

 // TEMPLATE STRUCT hash
template<class _Kty>
 struct hash
  : public _Bitwise_hash<_Kty>
 { // hash functor for enums
 };
template<>
 struct hash<bool>
  : public _Bitwise_hash<bool>
 { // hash functor for bool
 };

template<>
 struct hash<char>
  : public _Bitwise_hash<char>
 { // hash functor for char
 };

template<>
 struct hash<signed char>
  : public _Bitwise_hash<signed char>
 { // hash functor for signed char
 };

template<>
 struct hash<unsigned char>
  : public _Bitwise_hash<unsigned char>
 { // hash functor for unsigned char
 };


template<>
 struct hash<char16_t>
  : public _Bitwise_hash<char16_t>
 { // hash functor for char16_t
 };

template<>
 struct hash<char32_t>
  : public _Bitwise_hash<char32_t>
 { // hash functor for char32_t
 };


template<>
 struct hash<wchar_t>
  : public _Bitwise_hash<wchar_t>
 { // hash functor for wchar_t
 };

template<>
 struct hash<short>
  : public _Bitwise_hash<short>
 { // hash functor for short
 };

template<>
 struct hash<unsigned short>
  : public _Bitwise_hash<unsigned short>
 { // hash functor for unsigned short
 };

template<>
 struct hash<int>
  : public _Bitwise_hash<int>
 { // hash functor for int
 };

template<>
 struct hash<unsigned int>
  : public _Bitwise_hash<unsigned int>
 { // hash functor for unsigned int
 };

template<>
 struct hash<long>
  : public _Bitwise_hash<long>
 { // hash functor for long
 };

template<>
 struct hash<unsigned long>
  : public _Bitwise_hash<unsigned long>
 { // hash functor for unsigned long
 };

template<>
 struct hash<long long>
  : public _Bitwise_hash<long long>
 { // hash functor for long long
 };

template<>
 struct hash<unsigned long long>
  : public _Bitwise_hash<unsigned long long>
 { // hash functor for unsigned long long
 };

template<>
 struct hash<float>
  : public _Bitwise_hash<float>
 { // hash functor for float
 typedef float _Kty;
 typedef _Bitwise_hash<_Kty> _Mybase;

 size_t operator()(const _Kty& _Keyval) const
  { // hash _Keyval to size_t value by pseudorandomizing transform
  return (_Mybase::operator()(
   _Keyval == 0 ? 0 : _Keyval)); // map -0 to 0
  }
 };

template<>
 struct hash<double>
  : public _Bitwise_hash<double>
 { // hash functor for double
 typedef double _Kty;
 typedef _Bitwise_hash<_Kty> _Mybase;

 size_t operator()(const _Kty& _Keyval) const
  { // hash _Keyval to size_t value by pseudorandomizing transform
  return (_Mybase::operator()(
   _Keyval == 0 ? 0 : _Keyval)); // map -0 to 0
  }
 };

template<>
 struct hash<long double>
  : public _Bitwise_hash<long double>
 { // hash functor for long double
 typedef long double _Kty;
 typedef _Bitwise_hash<_Kty> _Mybase;

 size_t operator()(const _Kty& _Keyval) const
  { // hash _Keyval to size_t value by pseudorandomizing transform
  return (_Mybase::operator()(
   _Keyval == 0 ? 0 : _Keyval)); // map -0 to 0
  }
 };

template<class _Ty>
 struct hash<_Ty *>
  : public _Bitwise_hash<_Ty *>
 { // hash functor for _Ty *
 };
} // namespace std
namespace std {
namespace tr1 { // TR1 ADDITIONS
using ::std:: hash;
} // namespace tr1
}
namespace std {
 // TEMPLATE CLASS _Arg_types
template<class... _Types>
 struct _Arg_types
 { // provide argument_type, etc. (sometimes)
 };

template<class _Ty1>
 struct _Arg_types<_Ty1>
 { // provide argument_type, etc. (sometimes)
 typedef _Ty1 argument_type;
 };

template<class _Ty1,
 class _Ty2>
 struct _Arg_types<_Ty1, _Ty2>
 { // provide argument_type, etc. (sometimes)
 typedef _Ty1 first_argument_type;
 typedef _Ty2 second_argument_type;
 };

 // TEMPLATE CLASS is_function
template<class _Ty>
 struct _Is_function
 { // determine whether _Ty is a function
 typedef false_type _Bool_type;
 };
template<class _Ret, class... _Types> struct _Is_function<_Ret /* for empty macro argument */ (_Types...)> : _Arg_types<_Types...> { /* determine whether _Ty is a function */ typedef true_type _Bool_type; typedef _Ret result_type; };


template<class _Ret,
 class... _Types>
 struct _Is_function<_Ret (_Types..., ...)>
 { // no calling conventions for ellipsis
 typedef true_type _Bool_type;
 typedef _Ret result_type;
 };

template<class _Ty>
 struct is_function
  : _Is_function<_Ty>::_Bool_type
 { // determine whether _Ty is a function
 };

  // TEMPLATE FUNCTION addressof
template<class _Ty> inline
 _Ty *_Addressof(_Ty& _Val, true_type)
 { // return address of function _Val
 return (_Val);
 }

template<class _Ty> inline
 _Ty *_Addressof(_Ty& _Val, false_type)
 { // return address of object _Val
 return (reinterpret_cast<_Ty *>(
  &const_cast<char&>(
  reinterpret_cast<const volatile char&>(_Val))));
 }

template<class _Ty> inline
 _Ty *addressof(_Ty& _Val)
 { // return address of _Val
 return (_Addressof(_Val, is_function<_Ty>()));
 }
}


/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */


namespace std {
  // FORWARD REFERENCES
class exception;
typedef void (*_Prhand)(const exception&);
extern _Prhand _Raise_handler;
         void _Throw(const exception&);
  // CLASS exception
class exception
 { // base of all library exceptions, gcc version
public:
 static _Prhand _Set_raise_handler(_Prhand _Pnew);

 exception() throw ()
  { // default constructor
  }

 explicit exception(const char *) throw ()
  { // construct from message string
  }

 virtual ~exception() ;


 virtual const char *what() const;
 };

  // CLASS bad_exception
class bad_exception
 : public exception
 { // base of all bad exceptions, gcc version
public:
 bad_exception() throw ()
  { // construct with no message string
  }





 virtual ~bad_exception()
  { // destroy the object
  }
 };


  // TYPES
typedef void (*terminate_handler)();
typedef void (*unexpected_handler)();

  // FUNCTION DECLARATIONS
         terminate_handler get_terminate() ;
         terminate_handler set_terminate(terminate_handler) throw ();
         unexpected_handler get_unexpected() ;
         unexpected_handler set_unexpected(unexpected_handler) throw ();
         bool uncaught_exception() throw ();
         void terminate();
         void unexpected();

inline unexpected_handler get_unexpected()
 { // get unexpected handler -- UNSAFE
 unexpected_handler _Hand = set_unexpected(0);
 set_unexpected(_Hand);
 return (_Hand);
 }

inline terminate_handler get_terminate()
 { // get terminate handler -- UNSAFE
 terminate_handler _Hand = set_terminate(0);
 set_terminate(_Hand);
 return (_Hand);
 }
}



   // xxexception internal header for exception_ptr



extern "C" {
extern void * __cxa_current_primary_exception() throw();
extern void __cxa_rethrow_primary_exception(void* primary_exception);
}

namespace std {
typedef void *exception_ptr;

 // FUNCTIONS FOR exception_ptr
inline exception_ptr current_exception()
 { // return pointer to current exception

 return (__cxa_current_primary_exception());



 }

inline void rethrow_exception(exception_ptr _Ex)
 { // rethrow exception

        __cxa_rethrow_primary_exception(_Ex);
        terminate();





 }
}

namespace std {
 // FUNCTION make_exception_ptr
template<class _Excep> inline
 exception_ptr make_exception_ptr(_Excep _Ex)
 { // copy exception pointer
 try {
 throw _Ex;
 } catch (...) {
 int _Zero = 0;
 if (_Zero == 0) // to quiet diagnostics
  return (current_exception());
 }
 return (exception_ptr()); // to quiet diagnostics
 }

 // CLASS nested_exception
class nested_exception
 { // wraps an exception_ptr
public:
 nested_exception() throw ()
  : _Myptr(current_exception())
  { // default construct
  }
 nested_exception(const nested_exception& _Right)
  : _Myptr(_Right._Myptr)
  { // copy construct
  }

 nested_exception& operator=(
  const nested_exception& _Right)
  { // copy _right
  _Myptr = _Right._Myptr;
  return (*this);
  }

 virtual ~nested_exception()
  { // delete the object
  }


 exception_ptr nested_ptr() const
  { // get stored pointer
  return (_Myptr);
  }

 void rethrow_nested() const // _NO_RETURN
  { // rethrow stored exception
  rethrow_exception(_Myptr);
  }

private:
 exception_ptr _Myptr;
 };

 // TEMPLATE FUNCTION throw_with_nested
template<class _Ty>
 struct _Wrapped_with_nested
  : _Ty, nested_exception
 { // wrap _Ty and current_exception()
 _Wrapped_with_nested(const _Ty && _Val)
  : _Ty((_Ty &&)(_Val))
  { // construct with _Val
  }
 };

template<class _Ty> inline
 void _Throw_with_nested0(_Ty && _Val, ...) // _NO_RETURN
 { // throw _Val
 throw (_Ty &&)(_Val);
 }

template<class _Ty> inline
 void _Throw_with_nested0(_Ty && _Val,
  const _Wrapped_with_nested<_Ty>*) // _NO_RETURN
 { // throw wrapped object holding _Val and current exception
 throw _Wrapped_with_nested<_Ty>((_Ty &&)(_Val));
 }

template<class _Ty> inline
 void _Throw_with_nested(_Ty && _Val,
  const volatile void *) // _NO_RETURN
 { // throw wrapped object holding _Val and current exception
 _Throw_with_nested0(_Val, 0);
 }

template<class _Ty> inline
 void _Throw_with_nested(_Ty && _Val,
  const volatile nested_exception *) // _NO_RETURN
 { // throw _Val
 throw (_Ty &&)(_Val);
 }

template<class _Ty> inline
 void throw_with_nested(_Ty && _Val) // _NO_RETURN
 { // throw _Val
 _Throw_with_nested(_Val, &_Val);
 }

 // TEMPLATE FUNCTION rethrow_if_nested
inline void _Rethrow_if_nested(const nested_exception *_Val)
 { // throw exception captured by _Val's nested_exception base

    if (_Val->nested_ptr())

 _Val->rethrow_nested();
 }

inline void _Rethrow_if_nested(const void *)
 { // do nothing: no nested_exception base
 }

template<class _Ex> inline
 void rethrow_if_nested(const _Ex& _Val)
 { // throw exception captured by _Val's nested_exception base, if any
 _Rethrow_if_nested(&_Val);
 }
}


/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */
/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */

   // xstring internal header (from <string>)



   // xmemory0 internal header (from <memory>)



   // cstdint standard header



   /* yvals.h values header for conforming compilers on various systems */
/*
 * Copyright (c) 1992-2013 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V6.40:1422+V6.50 */




   /*  stdint.h

    Integer types - c99 7.18
*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 2002, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */






namespace std {


/* 7.18.1.1 Exact-width integer types */

typedef __int8 int8_t;
typedef __int16 int16_t;
typedef __int32 int32_t;
typedef __int64 int64_t;

typedef unsigned __int8 uint8_t;
typedef unsigned __int16 uint16_t;
typedef unsigned __int32 uint32_t;
typedef unsigned __int64 uint64_t;



/* 7.18.1.2 Minimum-width integer types */

typedef __int8 int_least8_t;
typedef __int16 int_least16_t;
typedef __int32 int_least32_t;
typedef __int64 int_least64_t;

typedef unsigned __int8 uint_least8_t;
typedef unsigned __int16 uint_least16_t;
typedef unsigned __int32 uint_least32_t;
typedef unsigned __int64 uint_least64_t;



/* 7.18.1.3 Fastest minimum-width integer types */

typedef __int8 int_fast8_t;
typedef __int16 int_fast16_t;
typedef __int32 int_fast32_t;
typedef __int64 int_fast64_t;

typedef unsigned __int8 uint_fast8_t;
typedef unsigned __int16 uint_fast16_t;
typedef unsigned __int32 uint_fast32_t;
typedef unsigned __int64 uint_fast64_t;



/* 7.18.1.4 Integer types capable of holding object pointers */





typedef int32_t intptr_t;
typedef uint32_t uintptr_t;



/* 7.18.1.5 Greatest-width integer types */

typedef int64_t intmax_t;
typedef uint64_t uintmax_t;


} /* namespace std */





/* 7.18.2.1 Limits of exact-width integer types */
/* 7.18.2.2 Limits of minimum-width integer types */
/* 7.18.2.3 Limits of fastest minimum-width integer types */
/* 7.18.2.4 Limits of integer types capable of holding object pointers */
/* 7.18.2.5 Limits of greatest-width integer types */







/* 7.18.3 Limits of other integer types */
/* 7.18.4.1 Macros for minimum-width integer constants */
/* 7.18.4.2 Macros for greatest-width integer constants */
using std::int8_t;
using std::int16_t;
using std::int32_t;
using std::int64_t;
using std::uint8_t;
using std::uint16_t;
using std::uint32_t;
using std::uint64_t;

using std::int_least8_t;
using std::int_least16_t;
using std::int_least32_t;
using std::int_least64_t;
using std::uint_least8_t;
using std::uint_least16_t;
using std::uint_least32_t;
using std::uint_least64_t;

using std::int_fast8_t;
using std::int_fast16_t;
using std::int_fast32_t;
using std::int_fast64_t;
using std::uint_fast8_t;
using std::uint_fast16_t;
using std::uint_fast32_t;
using std::uint_fast64_t;

using std::intptr_t;
using std::uintptr_t;

using std::intmax_t;
using std::uintmax_t;
/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */


   // limits standard header



   /* ymath.h internal header */



   /* yvals.h values header for conforming compilers on various systems */
/*
 * Copyright (c) 1992-2013 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V6.40:1422+V6.50 */

namespace std {
 extern "C" { /* C has extern "C" linkage */

  /* MACROS FOR _FPP_TYPE */
  /* MACROS FOR _Dtest RETURN (0 => ZERO) */





  /* MACROS FOR _Feraise ARGUMENT */
void _Feraise(int);

typedef union
 { /* pun float types as integer array */
 unsigned short _Word[8];
 float _Float;
 double _Double;
 long double _Long_double;
 } _Dconst;

  /* double DECLARATIONS */
          double _Cosh(double, double);
          short _Dtest(double *);
          double _Sinh(double, double);
          double _Divide(double, double);
          short _Exp(double *, double, long);
          double _Log(double, int);
          double _Recip(double);
          double _Sin(double, unsigned int);
          double _Sinx(double, unsigned int, int);

          extern const _Dconst _Denorm, _Hugeval, _Inf,
 _Nan, _Snan;

  /* float DECLARATIONS */
          float _FCosh(float, float);
          short _FDtest(float *);
          float _FSinh(float, float);
          float _FDivide(float, float);
          short _FExp(float *, float, long);
          float _FLog(float, int);
          float _FRecip(float);
          float _FSin(float, unsigned int);
          float _FSinx(float, unsigned int, int);

          extern const _Dconst _FDenorm, _FInf, _FNan, _FSnan;

  /* long double DECLARATIONS */
          long double _LCosh(long double, long double);
          short _LDtest(long double *);
          long double _LSinh(long double, long double);
          long double _LDivide(long double, long double);
          short _LExp(long double *, long double, long);
          long double _LLog(long double, int);
          long double _LRecip(long double);
          long double _LSin(long double, unsigned int);
          long double _LSinx(long double, unsigned int, int);

          extern const _Dconst _LDenorm, _LInf, _LNan, _LSnan;







float fmodf(float, float);
float logf(float);


}
}


/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */

   // cfloat standard header








   /* yvals.h values header for conforming compilers on various systems */
/*
 * Copyright (c) 1992-2013 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V6.40:1422+V6.50 */

   /*  float.h

    Defines implementation specific macros for dealing with
    floating point.

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 33167 $ */





   /*  _stddef.h

    multi-includable Definitions for common types, and NULL

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34174 $ */



namespace std {
/* smallest positive IEEE normal numbers */
extern "C" {


extern float _max_flt;
extern double _max_dble;

extern long double _max_ldble;
extern long double _tiny_ldble;


unsigned int _clear87(void);
unsigned int _control87(unsigned int __newcw, unsigned int __mask);
void _fpreset(void);
unsigned int _status87(void);

/* Microsoft C compatible IEEE functions */

double _chgsign(double __d);
double _copysign(double __da, double __db);
int _finite(double __d);
int _fpclass(double __d);
int _isinf(double __d);
int _isnan(double __d);
double _logb(double __d);
double _scalb(double __d, long __exp);
double _nextafter(double __da, double __db);

long double _chgsignl(long double __ld);
long double _copysignl(long double __lda, long double __ldb);
int _finitel(long double __ld);
int _fpclassl(long double __ld);
int _isnanl(long double __ld);
long double _logbl(long double __ld);
long double _scalbl(long double __ld, long __exp);
long double _nextafterl(long double __lda, long double __ldb);





/* Return values for _fpclass() and _fpclassl() */
} // "C"




/* 387 Status Word format   */
/* 387 Control Word format */
} // std


/* 387 Initial Control Word */
/* use affine infinity, mask underflow and precision exceptions */


extern unsigned int _default87;


namespace std {


/*
    SIGFPE signal error types (for integer & float exceptions).
*/
/*
            SIGSEGV signal error types.
*/





/*
            SIGILL signal error types.
*/
} // std






     using std::_chgsign;
     using std::_chgsignl;
     using std::_clear87;
     using std::_control87;
     using std::_copysign;
     using std::_copysignl;
     using std::_finite;
     using std::_finitel;
     using std::_fpclass;
     using std::_fpclassl;
     using std::_fpreset;
     using std::_isnan;
     using std::_isnanl;
     using std::_logb;
     using std::_logbl;
     using std::_max_dble;
     using std::_max_flt;

     using std::_max_ldble;
     using std::_tiny_ldble;

     using std::_nextafter;
     using std::_nextafterl;
     using std::_scalb;
     using std::_scalbl;
     using std::_status87;
/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */



   // cwchar standard header



   /* yvals.h values header for conforming compilers on various systems */
/*
 * Copyright (c) 1992-2013 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V6.40:1422+V6.50 */




   /* WCHAR.H - Most of this stuff is in TCHAR.H, so we include that */

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1997, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */


/* $Revision: 27436 $ */






   /*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1995, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34601 $ */






   /*  _stddef.h

    multi-includable Definitions for common types, and NULL

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34174 $ */


/*
    This file is parsed with a tool that will spit out a table of
    function mappings for the online help.  The format is as follows:

    Inside a single-line slash-star comment, there will be a command:

    @+(col_name[,col]) ..descrip..   Define (start) current column block(s)
    @-                               Stop the current block(s)
    @:..descrip..                    Change description for the current block(s)
    @!:portable_name                 Adds in a brute force entry with no equiv.
    @!(portable_name,cur_col_name)   Adds in a brute force entry

    The lines following these commands will then be processed:
      #define portable_name cur_col_name
      typedef cur_col_name portable_name

    #defines that are macros (have parens) or are more than two words are
    ignored.
*/


   /*  _str.h internal version of "C" string.h functions

    Definitions for string functions.

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34027 $ */
   /*  mem.h

    Memory manipulation functions

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34027 $ */







extern "C" {





namespace std {


/* @+(SBCS) Types */




typedef char _TCHAR;
typedef signed char _TSCHAR;
typedef unsigned char _TUCHAR;
typedef char _TXCHAR;
typedef int _TINT;





} // std


/* @: misc. functions */
/* @: program specific functions */






/* @: path/environment specific functions */
/* @: directory functions */
/* @: stdio functions */
/* @: time functions */
/* @: I/O functions */
/* @: string conversion functions */
/* @: generic string functions  */
/* @: directory functions */






/* @: process execution functions */
/* @: unformated I/O */
/* @: formated I/O functions */
/* @: stat functions */




/* @: setlocale functions */



/* @: memory functions */
/* @: generic text macros */
/* @!:__T */
/* @!:_TEXT */
/* @!:_T */
/* ------------------- SBCS functions ----------------------- */


/* @+(SBCS) string functions */
/* A few MBCS-like functions */
/* @!:_istlegal */
/* @!:_istlead */
/* @!:_istleadbyte */
inline std::size_t _tclen(const char *__s ){return (1); }
inline void _tccpy(char *__s1, const char *__s2) {*(__s1) = *(__s2); }
inline int _tccmp(const char *__s1, const char *__s2){ return (int) ( ((unsigned char*)__s1)-((unsigned char*)__s2)); }



/* @: logical-character functions */






/* @: ctype functions */
inline char * strinc(const char * __s) { return (char *)(__s+1); }
inline char * strdec(const char * __s1, const char * __s2) { return (char *)((__s1 >= __s2) ? 0 : (__s2-1)); }

inline char * _strinc(const char * __s) { return (char *)(__s+1); }
inline char * _strdec(const char * __s1, const char * __s2) { return (char *)((__s1 >= __s2) ? 0 : (__s2-1)); }
inline unsigned int _strnextc(const char *__s) { return (unsigned int) (__s ? __s[0] : 0); }
inline char * _strninc(const char * __s, std::size_t __n) { return (char *)(__s+__n); }
inline std::size_t _strncnt( const char * __s, std::size_t __n) { std::size_t __len; __len = std::strlen(__s); return (__len>__n) ? __n : __len; }
inline char * _strspnp( const char * __s1, const char * __s2) { return (*(__s1 += std::strspn(__s1,__s2))!='\0') ? (char*)__s1 : 0; }





/* @- */
}
    using std::_TCHAR;
    using std::_TSCHAR;
    using std::_TUCHAR;
    using std::_TXCHAR;
    using std::_TINT;
typedef int mbstate_t;


namespace std {
extern "C" {


/* Not currently implemented */
#pragma argsused
__inline int fwide(FILE *__fp, int __mode) { return __mode; }


} // extern
} // std





    using std::fwide;
namespace std {
struct tm;
}

namespace std {
extern "C" { /* C has extern "C" linkage */
using ::std:: tm;

typedef int _Mbstatet;
typedef int mbstate_t;

//size_t wcslen(const wchar_t *);
//const wchar_t *wmemchr(const wchar_t *, wchar_t, size_t);
int wmemcmp(const wchar_t *, const wchar_t *, size_t);
//wchar_t *wmemcpy(wchar_t *, const wchar_t *, size_t);
wchar_t *wmemmove(wchar_t *, const wchar_t *, size_t);
//wchar_t *wmemset(wchar_t *, wchar_t, size_t);

wint_t btowc(int);
size_t mbrtowc(wchar_t *, const char *, size_t, mbstate_t *);
size_t mbrtowc_cp(wchar_t *, const char *, size_t, mbstate_t *, const unsigned int);
int wctob(wint_t);
size_t wcrtomb(char *, wchar_t, mbstate_t *);
size_t wcrtomb_cp(char *, wchar_t, mbstate_t *, const unsigned int);
}
}
/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 +codepage*/



namespace std {
//	ASSUMES:
//	wraparound 2's complement integer arithmetic w/o traps
//	all CHAR_BITs of each byte used by integers
//	IEC559 (IEEE 754) floating-point arithmetic
//	long double is 53, 64, or 113 bits
//	floating-point errors can trap
//	tinyness detected before floating-point rounding
//	64-bit long long (if _LONGLONG defined)

//	floating-point values:
//	MAX = (1 - 2^-PREC) * 2^MAXEXP
//	MIN = 2^(MINEXP - 1)
//	EPS = 2^(1 - PREC)
//	DEN = 2^(MINEXP - PREC)
  // ENUM float_denorm_style
typedef enum
 { // constants for different IEEE float denormalization styles
 denorm_indeterminate = -1,
 denorm_absent = 0,
 denorm_present = 1}
  float_denorm_style;

  // ENUM float_round_style
typedef enum
 { // constants for different IEEE rounding styles
 round_indeterminate = -1,
 round_toward_zero = 0,
 round_to_nearest = 1,
 round_toward_infinity = 2,
 round_toward_neg_infinity = 3}
  float_round_style;

  // STRUCT _Num_base
struct _Num_base
 { // base for all types, with common defaults
 static const float_denorm_style has_denorm = (float_denorm_style)(denorm_absent);
 static const bool has_denorm_loss = (bool)(false);
 static const bool has_infinity = (bool)(false);
 static const bool has_quiet_NaN = (bool)(false);
 static const bool has_signaling_NaN = (bool)(false);
 static const bool is_bounded = (bool)(false);
 static const bool is_exact = (bool)(false);
 static const bool is_iec559 = (bool)(false);
 static const bool is_integer = (bool)(false);
 static const bool is_modulo = (bool)(false);
 static const bool is_signed = (bool)(false);
 static const bool is_specialized = (bool)(false);
 static const bool tinyness_before = (bool)(false);
 static const bool traps = (bool)(false);
 static const float_round_style round_style = (float_round_style)(round_toward_zero);
 static const int digits = (int)(0);
 static const int digits10 = (int)(0);


 static const int max_digits10 = (int)(0);


 static const int max_exponent = (int)(0);
 static const int max_exponent10 = (int)(0);
 static const int min_exponent = (int)(0);
 static const int min_exponent10 = (int)(0);
 static const int radix = (int)(0);
 };

  // TEMPLATE CLASS numeric_limits
template<class _Ty>
 class numeric_limits
  : public _Num_base
 { // numeric limits for arbitrary type _Ty (say little or nothing)
public:
 static _Ty (min)() throw ()
  { // return minimum value
  return (_Ty());
  }

 static _Ty (max)() throw ()
  { // return maximum value
  return (_Ty());
  }


 static _Ty lowest() throw ()
  { // return most negative value
  return (_Ty());
  }


 static _Ty epsilon() throw ()
  { // return smallest effective increment from 1.0
  return (_Ty());
  }

 static _Ty round_error() throw ()
  { // return largest rounding error
  return (_Ty());
  }

 static _Ty denorm_min() throw ()
  { // return minimum denormalized value
  return (_Ty());
  }

 static _Ty infinity() throw ()
  { // return positive infinity
  return (_Ty());
  }

 static _Ty quiet_NaN() throw ()
  { // return non-signaling NaN
  return (_Ty());
  }

 static _Ty signaling_NaN() throw ()
  { // return signaling NaN
  return (_Ty());
  }
 };

template<class _Ty>
 class numeric_limits<const _Ty>
  : public numeric_limits<_Ty>
 { // numeric limits for const types
 };

template<class _Ty>
 class numeric_limits<volatile _Ty>
  : public numeric_limits<_Ty>
 { // numeric limits for volatile types
 };

template<class _Ty>
 class numeric_limits<const volatile _Ty>
  : public numeric_limits<_Ty>
 { // numeric limits for const volatile types
 };

  // STRUCT _Num_int_base
struct _Num_int_base
 : public _Num_base
 { // base for integer types
 static const bool is_bounded = (bool)(true);
 static const bool is_exact = (bool)(true);
 static const bool is_integer = (bool)(true);
 static const bool is_modulo = (bool)(true);
 static const bool is_specialized = (bool)(true);
 static const int radix = (int)(2);
 };

  // STRUCT _Num_float_base
struct _Num_float_base
 : public _Num_base
 { // base for floating-point types
 static const float_denorm_style has_denorm = (float_denorm_style)(denorm_present);
 static const bool has_denorm_loss = (bool)(true);
 static const bool has_infinity = (bool)(true);
 static const bool has_quiet_NaN = (bool)(true);
 static const bool has_signaling_NaN = (bool)(true);
 static const bool is_bounded = (bool)(true);
 static const bool is_exact = (bool)(false);
 static const bool is_iec559 = (bool)(true);
 static const bool is_integer = (bool)(false);
 static const bool is_modulo = (bool)(false);
 static const bool is_signed = (bool)(true);
 static const bool is_specialized = (bool)(true);
 static const bool tinyness_before = (bool)(true);
 static const bool traps = (bool)(false);
 static const float_round_style round_style = (float_round_style)(round_to_nearest);
 static const int radix = (int)(2);
 };

  // CLASS numeric_limits<char>
template<> class numeric_limits<char>
 : public _Num_int_base
 { // limits for type char
public:
 typedef char _Ty;

 static _Ty (min)() throw ()
  { // return minimum value
  return ((-128) /* minimum signed   char value */ /* minimum char value */);
  }

 static _Ty (max)() throw ()
  { // return maximum value
  return (127 /* maximum signed   char value */ /* maximum char value */);
  }


 static _Ty lowest() throw ()
  { // return most negative value
  return ((min)());
  }


 static _Ty epsilon() throw ()
  { // return smallest effective increment from 1.0
  return (0);
  }

 static _Ty round_error() throw ()
  { // return largest rounding error
  return (0);
  }

 static _Ty denorm_min() throw ()
  { // return minimum denormalized value
  return (0);
  }

 static _Ty infinity() throw ()
  { // return positive infinity
  return (0);
  }

 static _Ty quiet_NaN() throw ()
  { // return non-signaling NaN
  return (0);
  }

 static _Ty signaling_NaN() throw ()
  { // return signaling NaN
  return (0);
  }

 static const bool is_signed = (bool)((-128) /* minimum signed   char value */ /* minimum char value */ != 0);
 static const int digits = (int)(8 /* number of bits in a char */ - ((-128) /* minimum signed   char value */ /* minimum char value */ != 0 ? 1 : 0));
 static const int digits10 = (int)((8 /* number of bits in a char */ - ((-128) /* minimum signed   char value */ /* minimum char value */ != 0 ? 1 : 0)) * 301L / 1000);

 };

  // CLASS numeric_limits<wchar_t>
template<> class numeric_limits<wchar_t>
 : public _Num_int_base
 { // limits for type wchar_t
public:
 typedef wchar_t _Ty;

 static _Ty (min)() throw ()
  { // return minimum value
  return ((_Ty)0);
  }

 static _Ty (max)() throw ()
  { // return maximum value
  return ((_Ty)0xffff);
  }


 static _Ty lowest() throw ()
  { // return most negative value
  return ((min)());
  }


 static _Ty epsilon() throw ()
  { // return smallest effective increment from 1.0
  return (0);
  }

 static _Ty round_error() throw ()
  { // return largest rounding error
  return (0);
  }

 static _Ty denorm_min() throw ()
  { // return minimum denormalized value
  return (0);
  }

 static _Ty infinity() throw ()
  { // return positive infinity
  return (0);
  }

 static _Ty quiet_NaN() throw ()
  { // return non-signaling NaN
  return (0);
  }

 static _Ty signaling_NaN() throw ()
  { // return signaling NaN
  return (0);
  }

 static const bool is_signed = (bool)(0 != 0);
 static const int digits = (int)(8 /* number of bits in a char */ * sizeof (wchar_t) - (0 != 0 ? 1 : 0));

 static const int digits10 = (int)((8 /* number of bits in a char */ * sizeof (wchar_t) - (0 != 0 ? 1 : 0)) * 301L / 1000);

 };

  // CLASS numeric_limits<bool>
template<> class numeric_limits<bool>
 : public _Num_int_base
 { // limits for type bool
public:
 typedef bool _Ty;

 static _Ty (min)() throw ()
  { // return minimum value
  return (false);
  }

 static _Ty (max)() throw ()
  { // return maximum value
  return (true);
  }


 static _Ty lowest() throw ()
  { // return most negative value
  return ((min)());
  }


 static _Ty epsilon() throw ()
  { // return smallest effective increment from 1.0
  return (0);
  }

 static _Ty round_error() throw ()
  { // return largest rounding error
  return (0);
  }

 static _Ty denorm_min() throw ()
  { // return minimum denormalized value
  return (0);
  }

 static _Ty infinity() throw ()
  { // return positive infinity
  return (0);
  }

 static _Ty quiet_NaN() throw ()
  { // return non-signaling NaN
  return (0);
  }

 static _Ty signaling_NaN() throw ()
  { // return signaling NaN
  return (0);
  }

 static const bool is_modulo = (bool)(false);
 static const bool is_signed = (bool)(false);
 static const int digits = (int)(1);
 static const int digits10 = (int)(0);
 };

  // CLASS numeric_limits<signed char>
template<> class numeric_limits<signed char>
 : public _Num_int_base
 { // limits for type signed char
public:
 typedef signed char _Ty;

 static _Ty (min)() throw ()
  { // return minimum value
  return ((-128) /* minimum signed   char value */);
  }

 static _Ty (max)() throw ()
  { // return maximum value
  return (127 /* maximum signed   char value */);
  }


 static _Ty lowest() throw ()
  { // return most negative value
  return ((min)());
  }


 static _Ty epsilon() throw ()
  { // return smallest effective increment from 1.0
  return (0);
  }

 static _Ty round_error() throw ()
  { // return largest rounding error
  return (0);
  }

 static _Ty denorm_min() throw ()
  { // return minimum denormalized value
  return (0);
  }

 static _Ty infinity() throw ()
  { // return positive infinity
  return (0);
  }

 static _Ty quiet_NaN() throw ()
  { // return non-signaling NaN
  return (0);
  }

 static _Ty signaling_NaN() throw ()
  { // return signaling NaN
  return (0);
  }

 static const bool is_signed = (bool)(true);
 static const int digits = (int)(8 /* number of bits in a char */ - 1);
 static const int digits10 = (int)((8 /* number of bits in a char */ - 1) * 301L / 1000);
 };

  // CLASS numeric_limits<unsigned char>
template<> class numeric_limits<unsigned char>
 : public _Num_int_base
 { // limits for type unsigned char
public:
 typedef unsigned char _Ty;

 static _Ty (min)() throw ()
  { // return minimum value
  return (0);
  }

 static _Ty (max)() throw ()
  { // return maximum value
  return (255 /* maximum unsigned char value */);
  }


 static _Ty lowest() throw ()
  { // return most negative value
  return ((min)());
  }


 static _Ty epsilon() throw ()
  { // return smallest effective increment from 1.0
  return (0);
  }

 static _Ty round_error() throw ()
  { // return largest rounding error
  return (0);
  }

 static _Ty denorm_min() throw ()
  { // return minimum denormalized value
  return (0);
  }

 static _Ty infinity() throw ()
  { // return positive infinity
  return (0);
  }

 static _Ty quiet_NaN() throw ()
  { // return non-signaling NaN
  return (0);
  }

 static _Ty signaling_NaN() throw ()
  { // return signaling NaN
  return (0);
  }

 static const bool is_signed = (bool)(false);
 static const int digits = (int)(8 /* number of bits in a char */);
 static const int digits10 = (int)(8 /* number of bits in a char */ * 301L / 1000);
 };

  // CLASS numeric_limits<short>
template<> class numeric_limits<short>
 : public _Num_int_base
 { // limits for type short
public:
 typedef short _Ty;

 static _Ty (min)() throw ()
  { // return minimum value
  return ((-32767-1) /* minimum signed   short value */);
  }

 static _Ty (max)() throw ()
  { // return maximum value
  return (32767 /* maximum signed   short value */);
  }


 static _Ty lowest() throw ()
  { // return most negative value
  return ((min)());
  }


 static _Ty epsilon() throw ()
  { // return smallest effective increment from 1.0
  return (0);
  }

 static _Ty round_error() throw ()
  { // return largest rounding error
  return (0);
  }

 static _Ty denorm_min() throw ()
  { // return minimum denormalized value
  return (0);
  }

 static _Ty infinity() throw ()
  { // return positive infinity
  return (0);
  }

 static _Ty quiet_NaN() throw ()
  { // return non-signaling NaN
  return (0);
  }

 static _Ty signaling_NaN() throw ()
  { // return signaling NaN
  return (0);
  }

 static const bool is_signed = (bool)(true);
 static const int digits = (int)(8 /* number of bits in a char */ * sizeof (short) - 1);
 static const int digits10 = (int)((8 /* number of bits in a char */ * sizeof (short) - 1) * 301L / 1000);

 };

  // CLASS numeric_limits<unsigned short>
template<> class numeric_limits<unsigned short>
 : public _Num_int_base
 { // limits for type unsigned short
public:
 typedef unsigned short _Ty;

 static _Ty (min)() throw ()
  { // return minimum value
  return (0);
  }

 static _Ty (max)() throw ()
  { // return maximum value
  return (65535U /* maximum unsigned short value */);
  }


 static _Ty lowest() throw ()
  { // return most negative value
  return ((min)());
  }


 static _Ty epsilon() throw ()
  { // return smallest effective increment from 1.0
  return (0);
  }

 static _Ty round_error() throw ()
  { // return largest rounding error
  return (0);
  }

 static _Ty denorm_min() throw ()
  { // return minimum denormalized value
  return (0);
  }

 static _Ty infinity() throw ()
  { // return positive infinity
  return (0);
  }

 static _Ty quiet_NaN() throw ()
  { // return non-signaling NaN
  return (0);
  }

 static _Ty signaling_NaN() throw ()
  { // return signaling NaN
  return (0);
  }

 static const bool is_signed = (bool)(false);
 static const int digits = (int)(8 /* number of bits in a char */ * sizeof (unsigned short));
 static const int digits10 = (int)(8 /* number of bits in a char */ * sizeof (unsigned short) * 301L / 1000);

 };


  // CLASS numeric_limits<char16_t>
template<> class numeric_limits<char16_t>
 : public _Num_int_base
 { // limits for type char16_t
public:
 typedef char16_t _Ty;

 static _Ty (min)() throw ()
  { // return minimum value
  return (0);
  }

 static _Ty (max)() throw ()
  { // return maximum value
  return (65535U /* maximum unsigned short value */);
  }

 static _Ty lowest() throw ()
  { // return most negative value
  return ((min)());
  }

 static _Ty epsilon() throw ()
  { // return smallest effective increment from 1.0
  return (0);
  }

 static _Ty round_error() throw ()
  { // return largest rounding error
  return (0);
  }

 static _Ty denorm_min() throw ()
  { // return minimum denormalized value
  return (0);
  }

 static _Ty infinity() throw ()
  { // return positive infinity
  return (0);
  }

 static _Ty quiet_NaN() throw ()
  { // return non-signaling NaN
  return (0);
  }

 static _Ty signaling_NaN() throw ()
  { // return signaling NaN
  return (0);
  }

 static const bool is_signed = (bool)(false);
 static const int digits = (int)(8 /* number of bits in a char */ * sizeof (char16_t));
 static const int digits10 = (int)(8 /* number of bits in a char */ * sizeof (char16_t) * 301L / 1000);

 };


  // CLASS numeric_limits<int>
template<> class numeric_limits<int>
 : public _Num_int_base
 { // limits for type int
public:
 typedef int _Ty;

 static _Ty (min)() throw ()
  { // return minimum value
  return ((-2147483647L-1) /* minimum signed   long value */ /* minimum signed   int value */);
  }

 static _Ty (max)() throw ()
  { // return maximum value
  return (2147483647L /* maximum signed   long value */ /* maximum signed   int value */);
  }


 static _Ty lowest() throw ()
  { // return most negative value
  return ((min)());
  }


 static _Ty epsilon() throw ()
  { // return smallest effective increment from 1.0
  return (0);
  }

 static _Ty round_error() throw ()
  { // return largest rounding error
  return (0);
  }

 static _Ty denorm_min() throw ()
  { // return minimum denormalized value
  return (0);
  }

 static _Ty infinity() throw ()
  { // return positive infinity
  return (0);
  }

 static _Ty quiet_NaN() throw ()
  { // return non-signaling NaN
  return (0);
  }

 static _Ty signaling_NaN() throw ()
  { // return signaling NaN
  return (0);
  }

 static const bool is_signed = (bool)(true);
 static const int digits = (int)(8 /* number of bits in a char */ * sizeof (int) - 1);
 static const int digits10 = (int)((8 /* number of bits in a char */ * sizeof (int) - 1) * 301L / 1000);

 };

  // CLASS numeric_limits<unsigned int>
template<> class numeric_limits<unsigned int>
 : public _Num_int_base
 { // limits for type unsigned int
public:
 typedef unsigned int _Ty;

 static _Ty (min)() throw ()
  { // return minimum value
  return (0);
  }

 static _Ty (max)() throw ()
  { // return maximum value
  return (4294967295UL /* maximum unsigned long value */ /* maximum unsigned int value */);
  }


 static _Ty lowest() throw ()
  { // return most negative value
  return ((min)());
  }


 static _Ty epsilon() throw ()
  { // return smallest effective increment from 1.0
  return (0);
  }

 static _Ty round_error() throw ()
  { // return largest rounding error
  return (0);
  }

 static _Ty denorm_min() throw ()
  { // return minimum denormalized value
  return (0);
  }

 static _Ty infinity() throw ()
  { // return positive infinity
  return (0);
  }

 static _Ty quiet_NaN() throw ()
  { // return non-signaling NaN
  return (0);
  }

 static _Ty signaling_NaN() throw ()
  { // return signaling NaN
  return (0);
  }

 static const bool is_signed = (bool)(false);
 static const int digits = (int)(8 /* number of bits in a char */ * sizeof (unsigned int));
 static const int digits10 = (int)(8 /* number of bits in a char */ * sizeof (unsigned int) * 301L / 1000);

 };

  // CLASS numeric_limits<long>
template<> class numeric_limits<long>
 : public _Num_int_base
 { // limits for type long
public:
 typedef long _Ty;

 static _Ty (min)() throw ()
  { // return minimum value
  return ((-2147483647L-1) /* minimum signed   long value */);
  }

 static _Ty (max)() throw ()
  { // return maximum value
  return (2147483647L /* maximum signed   long value */);
  }


 static _Ty lowest() throw ()
  { // return most negative value
  return ((min)());
  }


 static _Ty epsilon() throw ()
  { // return smallest effective increment from 1.0
  return (0);
  }

 static _Ty round_error() throw ()
  { // return largest rounding error
  return (0);
  }

 static _Ty denorm_min() throw ()
  { // return minimum denormalized value
  return (0);
  }

 static _Ty infinity() throw ()
  { // return positive infinity
  return (0);
  }

 static _Ty quiet_NaN() throw ()
  { // return non-signaling NaN
  return (0);
  }

 static _Ty signaling_NaN() throw ()
  { // return signaling NaN
  return (0);
  }

 static const bool is_signed = (bool)(true);
 static const int digits = (int)(8 /* number of bits in a char */ * sizeof (long) - 1);
 static const int digits10 = (int)((8 /* number of bits in a char */ * sizeof (long) - 1) * 301L / 1000);

 };

  // CLASS numeric_limits<unsigned long>
template<> class numeric_limits<unsigned long>
 : public _Num_int_base
 { // limits for type unsigned long
public:
 typedef unsigned long _Ty;

 static _Ty (min)() throw ()
  { // return minimum value
  return (0);
  }

 static _Ty (max)() throw ()
  { // return maximum value
  return (4294967295UL /* maximum unsigned long value */);
  }


 static _Ty lowest() throw ()
  { // return most negative value
  return ((min)());
  }


 static _Ty epsilon() throw ()
  { // return smallest effective increment from 1.0
  return (0);
  }

 static _Ty round_error() throw ()
  { // return largest rounding error
  return (0);
  }

 static _Ty denorm_min() throw ()
  { // return minimum denormalized value
  return (0);
  }

 static _Ty infinity() throw ()
  { // return positive infinity
  return (0);
  }

 static _Ty quiet_NaN() throw ()
  { // return non-signaling NaN
  return (0);
  }

 static _Ty signaling_NaN() throw ()
  { // return signaling NaN
  return (0);
  }

 static const bool is_signed = (bool)(false);
 static const int digits = (int)(8 /* number of bits in a char */ * sizeof (unsigned long));
 static const int digits10 = (int)(8 /* number of bits in a char */ * sizeof (unsigned long) * 301L / 1000);

 };


  // CLASS numeric_limits<char32_t>
template<> class numeric_limits<char32_t>
 : public _Num_int_base
 { // limits for type char32_t
public:
 typedef char32_t _Ty;

 static _Ty (min)() throw ()
  { // return minimum value
  return (0);
  }

 static _Ty (max)() throw ()
  { // return maximum value
  return (4294967295UL /* maximum unsigned long value */ /* maximum unsigned int value */);
  }

 static _Ty lowest() throw ()
  { // return most negative value
  return ((min)());
  }

 static _Ty epsilon() throw ()
  { // return smallest effective increment from 1.0
  return (0);
  }

 static _Ty round_error() throw ()
  { // return largest rounding error
  return (0);
  }

 static _Ty denorm_min() throw ()
  { // return minimum denormalized value
  return (0);
  }

 static _Ty infinity() throw ()
  { // return positive infinity
  return (0);
  }

 static _Ty quiet_NaN() throw ()
  { // return non-signaling NaN
  return (0);
  }

 static _Ty signaling_NaN() throw ()
  { // return signaling NaN
  return (0);
  }

 static const bool is_signed = (bool)(false);
 static const int digits = (int)(8 /* number of bits in a char */ * sizeof (char32_t));
 static const int digits10 = (int)(8 /* number of bits in a char */ * sizeof (char32_t) * 301L / 1000);

 };



  // CLASS numeric_limits<_LONGLONG>
template<> class numeric_limits<long long>
 : public _Num_int_base
 { // limits for type long long
public:
 typedef long long _Ty;

 static _Ty (min)() throw ()
  { // return minimum value
  return (-0x7fffffffffffffffLL - 1 /* 0 if not 2's complement */);
  }

 static _Ty (max)() throw ()
  { // return maximum value
  return (0x7fffffffffffffffLL);
  }


 static _Ty lowest() throw ()
  { // return most negative value
  return ((min)());
  }


 static _Ty epsilon() throw ()
  { // return smallest effective increment from 1.0
  return (0);
  }

 static _Ty round_error() throw ()
  { // return largest rounding error
  return (0);
  }

 static _Ty denorm_min() throw ()
  { // return minimum denormalized value
  return (0);
  }

 static _Ty infinity() throw ()
  { // return positive infinity
  return (0);
  }

 static _Ty quiet_NaN() throw ()
  { // return non-signaling NaN
  return (0);
  }

 static _Ty signaling_NaN() throw ()
  { // return signaling NaN
  return (0);
  }

 static const bool is_signed = (bool)(true);
 static const int digits = (int)(8 /* number of bits in a char */ * sizeof (long long) - 1);
 static const int digits10 = (int)((8 /* number of bits in a char */ * sizeof (long long) - 1) * 301L / 1000);

 };

  // CLASS numeric_limits<_ULONGLONG>
template<> class numeric_limits<unsigned long long>
 : public _Num_int_base
 { // limits for type unsigned long long
public:
 typedef unsigned long long _Ty;

 static _Ty (min)() throw ()
  { // return minimum value
  return (0);
  }

 static _Ty (max)() throw ()
  { // return maximum value
  return (0xffffffffffffffffULL);
  }


 static _Ty lowest() throw ()
  { // return most negative value
  return ((min)());
  }


 static _Ty epsilon() throw ()
  { // return smallest effective increment from 1.0
  return (0);
  }

 static _Ty round_error() throw ()
  { // return largest rounding error
  return (0);
  }

 static _Ty denorm_min() throw ()
  { // return minimum denormalized value
  return (0);
  }

 static _Ty infinity() throw ()
  { // return positive infinity
  return (0);
  }

 static _Ty quiet_NaN() throw ()
  { // return non-signaling NaN
  return (0);
  }

 static _Ty signaling_NaN() throw ()
  { // return signaling NaN
  return (0);
  }

 static const bool is_signed = (bool)(false);
 static const int digits = (int)(8 /* number of bits in a char */ * sizeof (unsigned long long));
 static const int digits10 = (int)(8 /* number of bits in a char */ * sizeof (unsigned long long) * 301L / 1000);

 };


  // CLASS numeric_limits<float>
template<> class numeric_limits<float>
 : public _Num_float_base
 { // limits for type float
public:
 typedef float _Ty;

 static _Ty (min)() throw ()
  { // return minimum value
  return (1.175494351E-38F);
  }

 static _Ty (max)() throw ()
  { // return maximum value
  return (3.402823466E+38F);
  }


 static _Ty lowest() throw ()
  { // return most negative value
  return (-(max)());
  }


 static _Ty epsilon() throw ()
  { // return smallest effective increment from 1.0
  return (1.192092896E-07F);
  }

 static _Ty round_error() throw ()
  { // return largest rounding error
  return (0.5F);
  }

 static _Ty denorm_min() throw ()
  { // return minimum denormalized value
  return (1.401298464E-45F);
  }

 static _Ty infinity() throw ()
  { // return positive infinity
  return ((_Ty(1) / _Ty(0)));
  }

 static _Ty quiet_NaN() throw ()
  { // return non-signaling NaN
  return (::std:: _FNan._Float);
  }

 static _Ty signaling_NaN() throw ()
  { // return signaling NaN
  return (::std:: _FSnan._Float);
  }

 static const int digits = (int)(24);
 static const int digits10 = (int)(6);


 static const int max_digits10 = (int)(2 + 24 * 301L / 1000);


 static const int max_exponent = (int)((int)+128);
 static const int max_exponent10 = (int)((int)+38);
 static const int min_exponent = (int)((int)-125);
 static const int min_exponent10 = (int)((int)-37);
 };

  // CLASS numeric_limits<double>
template<> class numeric_limits<double>
 : public _Num_float_base
 { // limits for type double
public:
 typedef double _Ty;

 static _Ty (min)() throw ()
  { // return minimum value
  return (2.2250738585072014E-308);
  }

 static _Ty (max)() throw ()
  { // return maximum value
  return (1.7976931348623157E+308);
  }


 static _Ty lowest() throw ()
  { // return most negative value
  return (-(max)());
  }


 static _Ty epsilon() throw ()
  { // return smallest effective increment from 1.0
  return (2.2204460492503131E-016);
  }

 static _Ty round_error() throw ()
  { // return largest rounding error
  return (0.5);
  }

 static _Ty denorm_min() throw ()
  { // return minimum denormalized value
  return (4.9406564584124654E-324);
  }

 static _Ty infinity() throw ()
  { // return positive infinity
  return ((_Ty(1) / _Ty(0)));
  }

 static _Ty quiet_NaN() throw ()
  { // return non-signaling NaN
  return (::std:: _Nan._Double);
  }

 static _Ty signaling_NaN() throw ()
  { // return signaling NaN
  return (::std:: _Snan._Double);
  }

 static const int digits = (int)(53);
 static const int digits10 = (int)(15);


 static const int max_digits10 = (int)(2 + 53 * 301L / 1000);


 static const int max_exponent = (int)((int)+1024);
 static const int max_exponent10 = (int)((int)+308);
 static const int min_exponent = (int)((int)-1021);
 static const int min_exponent10 = (int)((int)-307);
 };

  // CLASS numeric_limits<long double>
template<> class numeric_limits<long double>
 : public _Num_float_base
 { // limits for type long double
public:
 typedef long double _Ty;

 static _Ty (min)() throw ()
  { // return minimum value
  return (3.362103143112093506263E-4932L);
  }

 static _Ty (max)() throw ()
  { // return maximum value
  return (1.189731495357231765021E+4932L);
  }


 static _Ty lowest() throw ()
  { // return most negative value
  return (-(max)());
  }


 static _Ty epsilon() throw ()
  { // return smallest effective increment from 1.0
  return (1.084202172485504434007E-19L);
  }

 static _Ty round_error() throw ()
  { // return largest rounding error
  return (0.5L);
  }

 static _Ty denorm_min() throw ()
  { // return minimum denormalized value
  return (3.645199531882474602528E-4951L);
  }

 static _Ty infinity() throw ()
  { // return positive infinity
  return ((_Ty(1) / _Ty(0)));
  }

 static _Ty quiet_NaN() throw ()
  { // return non-signaling NaN
  return (::std:: _LNan._Long_double);
  }

 static _Ty signaling_NaN() throw ()
  { // return signaling NaN
  return (::std:: _LSnan._Long_double);
  }

 static const int digits = (int)(64);
 static const int digits10 = (int)(18);


 static const int max_digits10 = (int)(2 + 64 * 301L / 1000);


 static const int max_exponent = (int)((int)+16384);
 static const int max_exponent10 = (int)((int)+4932);
 static const int min_exponent = (int)((int)-16381);
 static const int min_exponent10 = (int)((int)-4931);
 };



}


/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */

   // new standard header





namespace std {




  // CLASS bad_alloc
class bad_alloc
 : public ::std:: exception
 { // base of all bad allocation exceptions
public:
 bad_alloc() throw ()
  { // construct with no message string
  }

 bad_alloc(const char *_Message) throw ()
  { // construct from message string
  }

 virtual const char *what() const throw ()
  { // report a bad allocation
  return ("bad allocation");
  }


//	virtual ~bad_alloc() _NOEXCEPT
//		{	// destroy the object
//		}
 };


  // CLASS bad_array_new_length
class bad_array_new_length
 : public bad_alloc
 { // bad array new exception
public:
 bad_array_new_length() throw ()
  : bad_alloc("bad array new length")
  { // default construct
  }
 };



}
namespace std {
  // SUPPORT TYPES
typedef void ( *new_handler)(); // handler for operator new failures

struct nothrow_t
 { // placement new tag type to suppress exceptions
 };

extern const nothrow_t nothrow; // constant for placement new tag

  // FUNCTION AND OBJECT DECLARATIONS
         new_handler get_new_handler()
          ; // get new handler
         new_handler set_new_handler(new_handler)
 throw (); // establish alternate new handler
}

  // new AND delete DECLARATIONS (NB: NOT IN std)
void operator delete(void *); // delete allocated storage





void * operator new(::std:: size_t)
 throw (::std:: bad_alloc); // allocate or throw exception




void * operator new(::std:: size_t, const ::std:: nothrow_t&)
 throw (); // allocate or return null pointer

inline void * operator new(::std:: size_t, void *_Where) throw ()
 { // construct with placement at _Where
 return (_Where);
 }
void operator delete[](void *); // delete allocated array





void * operator new[](::std:: size_t)
 throw (::std:: bad_alloc); // allocate or throw exception




void * operator new[](::std:: size_t, const ::std:: nothrow_t&)
 throw (); // allocate array or return null pointer

inline void * operator new[](::std:: size_t, void *_Where) throw ()
 { // construct array with placement at _Where
 return (_Where);
 }

void operator delete(void *, const ::std:: nothrow_t&)
 throw (); // delete if nothrow new fails -- REPLACEABLE

void operator delete[](void *, const ::std:: nothrow_t&)
 throw (); // delete if nothrow array new fails -- REPLACEABLE

void operator delete(void *, void *) throw ();
//	{	// delete if placement new fails
//	}

void operator delete[](void *, void *) throw ();
//	{	// delete if placement array new fails
//	}


/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */

   // xutility internal header





   // utility standard header




   // iosfwd standard header







namespace std {
  // STREAM POSITIONING TYPES (from <streambuf>)
typedef _Longlong streamoff;
typedef _Longlong streamsize;






extern fpos_t _Fpz;
extern const streamoff _BADOFF;

  // TEMPLATE CLASS fpos (from <streambuf>)
template<class _Statetype>
 class fpos
 { // store arbitrary file position
 typedef fpos<_Statetype> _Myt;

public:
        fpos(streamoff _Off = 0)
  : _Myoff(_Off), _Fpos(_Fpz), _Mystate()
  { // construct with stream offset
  }

        fpos(_Statetype _State, fpos_t _Fileposition)
  : _Myoff(0), _Fpos(_Fileposition), _Mystate(_State)
  { // construct with conversion state and C file position
  }

 _Statetype state() const
  { // return conversion state
  return (_Mystate);
  }

 void state(_Statetype _State)
  { // set conversion state
  _Mystate = _State;
  }

 fpos_t seekpos() const
  { // return C file position
  return (_Fpos);
  }

        operator streamoff() const
  { // return offset
  return ((streamoff)(_Myoff + ((long)(_Fpos))));
  }

 streamoff operator-(const _Myt& _Right) const
  { // return difference of file positions as an offset
  return ((streamoff)*this - (streamoff)_Right);
  }

 _Myt& operator+=(streamoff _Off)
  { // add offset
  _Myoff += _Off;
  return (*this);
  }

 _Myt& operator-=(streamoff _Off)
  { // subtract offset
  _Myoff -= _Off;
  return (*this);
  }

 _Myt operator+(streamoff _Off) const
  { // return this + offset
  _Myt _Tmp = *this;
  return (_Tmp += _Off);
  }

 _Myt operator-(streamoff _Off) const
  { // return this - offset
  _Myt _Tmp = *this;
  return (_Tmp -= _Off);
  }

 bool operator==(const _Myt& _Right) const
  { // test for file position equality
  return ((streamoff)*this == (streamoff)_Right);
  }

 bool operator==(streamoff _Right) const
  { // test for file position equality with streamoff
  return ((streamoff)*this == _Right);
  }

 bool operator!=(const _Myt& _Right) const
  { // test for file position inequality
  return (!(*this == _Right));
  }

private:
 streamoff _Myoff; // stream offset
 fpos_t _Fpos; // C file position
 _Statetype _Mystate; // current conversion state
 };
typedef fpos<_Mbstatet> streampos;


typedef streampos wstreampos;

  // TEMPLATE STRUCT _Char_traits (FROM <string>)
template<class _Elem,
 class _Int_type>
 struct _Char_traits
 { // properties of a string or stream element
 typedef _Elem char_type;
 typedef _Int_type int_type;
 typedef streampos pos_type;
 typedef streamoff off_type;
 typedef _Mbstatet state_type;

           static int compare(
  const _Elem *_First1,
  const _Elem *_First2, size_t _Count)
  { // compare [_First1, _First1 + _Count) with [_First2, ...)
  for (; 0 < _Count; --_Count, ++_First1, ++_First2)
   if (!eq(*_First1, *_First2))
    return (lt(*_First1, *_First2) ? -1 : +1);
  return (0);
  }

           static size_t length(const _Elem *_First)
  { // find length of null-terminated sequence
  size_t _Count;
  for (_Count = 0; !eq(*_First, _Elem()); ++_First)
   ++_Count;
  return (_Count);
  }

           static _Elem * copy(
  _Elem *_First1,
  const _Elem *_First2, size_t _Count)
  { // copy [_First2, _First2 + _Count) to [_First1, ...)
  _Elem *_Next = _First1;
  for (; 0 < _Count; --_Count, ++_Next, ++_First2)
   assign(*_Next, *_First2);
  return (_First1);
  }

           static const _Elem * find(
  const _Elem *_First,
  size_t _Count, const _Elem& _Ch)
  { // look for _Ch in [_First, _First + _Count)
  for (; 0 < _Count; --_Count, ++_First)
   if (eq(*_First, _Ch))
    return (_First);
  return (0);
  }

           static _Elem * move(
  _Elem *_First1,
  const _Elem *_First2, size_t _Count)
  { // copy [_First2, _First2 + _Count) to [_First1, ...)
  _Elem *_Next = _First1;
  if (_First2 < _Next && _Next < _First2 + _Count)
   for (_Next += _Count, _First2 += _Count; 0 < _Count; --_Count)
    assign(*--_Next, *--_First2);
  else
   for (; 0 < _Count; --_Count, ++_Next, ++_First2)
    assign(*_Next, *_First2);
  return (_First1);
  }

           static _Elem * assign(
  _Elem *_First,
  size_t _Count, _Elem _Ch)
  { // assign _Count * _Ch to [_First, ...)
  _Elem *_Next = _First;
  for (; 0 < _Count; --_Count, ++_Next)
   assign(*_Next, _Ch);
  return (_First);
  }

 static void assign(_Elem& _Left, const _Elem& _Right)
  { // assign an element
  _Left = _Right;
  }

 static bool eq(const _Elem& _Left,
  const _Elem& _Right)
  { // test for element equality
  return (_Left == _Right);
  }

 static bool lt(const _Elem& _Left,
  const _Elem& _Right)
  { // test if _Left precedes _Right
  return (_Left < _Right);
  }

 static _Elem to_char_type(
  const int_type& _Meta)
  { // convert metacharacter to character
  return ((_Elem)_Meta);
  }

 static int_type to_int_type(
  const _Elem& _Ch)
  { // convert character to metacharacter
  return ((int_type)_Ch);
  }

 static bool eq_int_type(const int_type& _Left,
  const int_type& _Right)
  { // test for metacharacter equality
  return (_Left == _Right);
  }

 static int_type not_eof(
  const int_type& _Meta)
  { // return anything but EOF
  return (_Meta != eof() ? (int_type)_Meta : (int_type)!eof());
  }

 static int_type eof()
  { // return end-of-file metacharacter
  return ((int_type)(-1) /* End of file indicator */);
  }
 };

  // TEMPLATE STRUCT char_traits
template<class _Elem>
 struct char_traits
  : public _Char_traits<_Elem, long>
 { // properties of a string or stream unknown element
 };


  // STRUCT char_traits<char16_t>
template<>
 struct char_traits<char16_t>
 : public _Char_traits<char16_t, unsigned short>
 { // properties of a string or stream char16_t element
 };

typedef streampos u16streampos;

  // STRUCT char_traits<char32_t>
template<>
 struct char_traits<char32_t>
 : public _Char_traits<char32_t, unsigned>
 { // properties of a string or stream char32_t element
 };

typedef streampos u32streampos;


  // STRUCT char_traits<wchar_t>
template<>
 struct char_traits<wchar_t>
 { // properties of a string or stream wchar_t element
 typedef wchar_t _Elem;
 typedef _Elem char_type; // for overloads
 typedef wint_t int_type;
 typedef streampos pos_type;
 typedef streamoff off_type;
 typedef _Mbstatet state_type;

 static int compare(const _Elem *_First1, const _Elem *_First2,
  size_t _Count)
  { // compare [_First1, _First1 + _Count) with [_First2, ...)
  return (_Count == 0 ? 0
   : ::std:: wmemcmp(_First1, _First2, _Count));
  }

 static size_t length(const _Elem *_First)
  { // find length of null-terminated sequence
  return (*_First == 0 ? 0
   : ::std:: wcslen(_First));
  }

 static _Elem * copy(_Elem *_First1, const _Elem *_First2,
  size_t _Count)
  { // copy [_First2, _First2 + _Count) to [_First1, ...)
  return (_Count == 0 ? _First1
   : (_Elem *)::std:: wmemcpy(_First1, _First2, _Count));
  }

 static const _Elem * find(const _Elem *_First, size_t _Count,
  const _Elem& _Ch)
  { // look for _Ch in [_First, _First + _Count)
  return (_Count == 0 ? (const _Elem *)0
   : (const _Elem *)::std:: wmemchr(_First, _Ch, _Count));
  }

 static _Elem * move(_Elem *_First1, const _Elem *_First2,
  size_t _Count)
  { // copy [_First2, _First2 + _Count) to [_First1, ...)
  return (_Count == 0 ? _First1
   : (_Elem *)::std:: wmemmove(_First1, _First2, _Count));
  }

 static _Elem * assign(_Elem *_First, size_t _Count,
  _Elem _Ch)
  { // assign _Count * _Ch to [_First, ...)
  return ((_Elem *)::std:: wmemset(_First, _Ch, _Count));
  }

 static void assign(_Elem& _Left, const _Elem& _Right)
  { // assign an element
  _Left = _Right;
  }

 static bool eq(const _Elem& _Left,
  const _Elem& _Right)
  { // test for element equality
  return (_Left == _Right);
  }

 static bool lt(const _Elem& _Left,
  const _Elem& _Right)
  { // test if _Left precedes _Right
  return (_Left < _Right);
  }

 static _Elem to_char_type(
  const int_type& _Meta)
  { // convert metacharacter to character
  return (_Meta);
  }

 static int_type to_int_type(
  const _Elem& _Ch)
  { // convert character to metacharacter
  return (_Ch);
  }

 static bool eq_int_type(const int_type& _Left,
  const int_type& _Right)
  { // test for metacharacter equality
  return (_Left == _Right);
  }

 static int_type not_eof(
  const int_type& _Meta)
  { // return anything but EOF
  return (_Meta != eof() ? _Meta : !eof());
  }

 static int_type eof()
  { // return end-of-file metacharacter
  return ((std::wint_t)(0xFFFF) /* wide-character end of file indicator */);
  }
 };

  // STRUCT char_traits<char> (FROM <string>)
template<> struct char_traits<char>
 { // properties of a string or stream char element
 typedef char _Elem;
 typedef _Elem char_type;
 typedef int int_type;
 typedef streampos pos_type;
 typedef streamoff off_type;
 typedef _Mbstatet state_type;

 static int compare(const _Elem *_First1, const _Elem *_First2,
  size_t _Count)
  { // compare [_First1, _First1 + _Count) with [_First2, ...)
  return (_Count == 0 ? 0
   : ::std:: memcmp(_First1, _First2, _Count));
  }

 static size_t length(const _Elem *_First)
  { // find length of null-terminated string
  return (*_First == 0 ? 0
   : ::std:: strlen(_First));
  }

 static _Elem * copy(_Elem *_First1, const _Elem *_First2,
  size_t _Count)
  { // copy [_First2, _First2 + _Count) to [_First1, ...)
  return (_Count == 0 ? _First1
   : (_Elem *)::std:: memcpy(_First1, _First2, _Count));
  }

 static const _Elem * find(const _Elem *_First, size_t _Count,
  const _Elem& _Ch)
  { // look for _Ch in [_First, _First + _Count)
  return (_Count == 0 ? (const _Elem *)0
   : (const _Elem *)::std:: memchr(_First, _Ch, _Count));
  }

 static _Elem * move(_Elem *_First1, const _Elem *_First2,
  size_t _Count)
  { // copy [_First2, _First2 + _Count) to [_First1, ...)
  return (_Count == 0 ? _First1
   : (_Elem *)::std:: memmove(_First1, _First2, _Count));
  }

 static _Elem * assign(_Elem *_First, size_t _Count,
  _Elem _Ch)
  { // assign _Count * _Ch to [_First, ...)
  return ((_Elem *)::std:: memset(_First, _Ch, _Count));
  }

 static void assign(_Elem& _Left, const _Elem& _Right)
  { // assign an element
  _Left = _Right;
  }

 static bool eq(const _Elem& _Left,
  const _Elem& _Right)
  { // test for element equality
  return (_Left == _Right);
  }

 static bool lt(const _Elem& _Left,
  const _Elem& _Right)
  { // test if _Left precedes _Right
  return ((unsigned char)_Left < (unsigned char)_Right);
  }

 static _Elem to_char_type(
  const int_type& _Meta)
  { // convert metacharacter to character
  return ((_Elem)_Meta);
  }

 static int_type to_int_type(
  const _Elem& _Ch)
  { // convert character to metacharacter
  return ((unsigned char)_Ch);
  }

 static bool eq_int_type(const int_type& _Left,
  const int_type& _Right)
  { // test for metacharacter equality
  return (_Left == _Right);
  }

 static int_type not_eof(
  const int_type& _Meta)
  { // return anything but EOF
  return (_Meta != eof() ? _Meta : !eof());
  }

 static int_type eof()
  { // return end-of-file metacharacter
  return ((-1) /* End of file indicator */);
  }
 };

  // FORWARD REFERENCES
template<class _Ty>
 class allocator;
class ios_base;
template<class _Elem,
 class _Traits = char_traits<_Elem> >
 class basic_ios;
template<class _Elem,
 class _Traits = char_traits<_Elem> >
 class istreambuf_iterator;
template<class _Elem,
 class _Traits = char_traits<_Elem> >
 class ostreambuf_iterator;
template<class _Elem,
 class _Traits = char_traits<_Elem> >
 class basic_streambuf;
template<class _Elem,
 class _Traits = char_traits<_Elem> >
 class basic_istream;
template<class _Elem,
 class _Traits = char_traits<_Elem> >
 class basic_ostream;
template<class _Elem,
 class _Traits = char_traits<_Elem> >
 class basic_iostream;
template<class _Elem,
 class _Traits = char_traits<_Elem>,
 class _Alloc = allocator<_Elem> >
 class basic_stringbuf;
template<class _Elem,
 class _Traits = char_traits<_Elem>,
 class _Alloc = allocator<_Elem> >
 class basic_istringstream;
template<class _Elem,
 class _Traits = char_traits<_Elem>,
 class _Alloc = allocator<_Elem> >
 class basic_ostringstream;
template<class _Elem,
 class _Traits = char_traits<_Elem>,
 class _Alloc = allocator<_Elem> >
 class basic_stringstream;
template<class _Elem,
 class _Traits = char_traits<_Elem> >
 class basic_filebuf;
template<class _Elem,
 class _Traits = char_traits<_Elem> >
 class basic_ifstream;
template<class _Elem,
 class _Traits = char_traits<_Elem> >
 class basic_ofstream;
template<class _Elem,
 class _Traits = char_traits<_Elem> >
 class basic_fstream;

  // char TYPEDEFS
typedef basic_ios<char, char_traits<char> > ios;
typedef basic_streambuf<char, char_traits<char> > streambuf;
typedef basic_istream<char, char_traits<char> > istream;
typedef basic_ostream<char, char_traits<char> > ostream;
typedef basic_iostream<char, char_traits<char> > iostream;
typedef basic_stringbuf<char, char_traits<char>,
 allocator<char> > stringbuf;
typedef basic_istringstream<char, char_traits<char>,
 allocator<char> > istringstream;
typedef basic_ostringstream<char, char_traits<char>,
 allocator<char> > ostringstream;
typedef basic_stringstream<char, char_traits<char>,
 allocator<char> > stringstream;
typedef basic_filebuf<char, char_traits<char> > filebuf;
typedef basic_ifstream<char, char_traits<char> > ifstream;
typedef basic_ofstream<char, char_traits<char> > ofstream;
typedef basic_fstream<char, char_traits<char> > fstream;


typedef basic_filebuf<char, char_traits<char> > stdiobuf;
typedef basic_fstream<char, char_traits<char> > stdiostream;


  // wchat_t TYPEDEFS
typedef basic_ios<wchar_t, char_traits<wchar_t> > wios;
typedef basic_streambuf<wchar_t, char_traits<wchar_t> >
 wstreambuf;
typedef basic_istream<wchar_t, char_traits<wchar_t> > wistream;
typedef basic_ostream<wchar_t, char_traits<wchar_t> > wostream;
typedef basic_iostream<wchar_t, char_traits<wchar_t> > wiostream;
typedef basic_stringbuf<wchar_t, char_traits<wchar_t>,
 allocator<wchar_t> > wstringbuf;
typedef basic_istringstream<wchar_t, char_traits<wchar_t>,
 allocator<wchar_t> > wistringstream;
typedef basic_ostringstream<wchar_t, char_traits<wchar_t>,
 allocator<wchar_t> > wostringstream;
typedef basic_stringstream<wchar_t, char_traits<wchar_t>,
 allocator<wchar_t> > wstringstream;
typedef basic_filebuf<wchar_t, char_traits<wchar_t> > wfilebuf;
typedef basic_ifstream<wchar_t, char_traits<wchar_t> > wifstream;
typedef basic_ofstream<wchar_t, char_traits<wchar_t> > wofstream;
typedef basic_fstream<wchar_t, char_traits<wchar_t> > wfstream;
}




using ::std:: ios;
using ::std:: streambuf;
using ::std:: istream;
using ::std:: ostream;
using ::std:: iostream;

using ::std:: filebuf;
using ::std:: ifstream;
using ::std:: ofstream;
using ::std:: fstream;

using ::std:: stdiobuf;
using ::std:: stdiostream;





/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */

   // type_traits standard header




 // COMPILER SUPPORT MACROS
  // GCC SUPPORT


//  #define _IS_CONVERTIBLE(_From, _To)	//	: _Cat_base<is_void<_From>::value && is_void<_To>::value //		|| _Is_convertible<_From, _To,//			!is_void<_From>::value && !is_function<_From>::value>::value>
// optional




// _IS_CONSTRUCTIBLE(_Ty, _Args...)
// _IS_NOTHROW_CONSTRUCTIBLE(_Ty, _Args...)
// _IS_TRIVIALLY_CONSTRUCTIBLE(_Ty, _Args...)
  // ADDITIONAL INTRINSICS
// _IS_ASSIGNABLE(_To, _From)






// _IS_NOTHROW_ASSIGNABLE(_To, _From)
// _IS_NOTHROW_DESTRUCTIBLE(_Ty)

// _IS_TRIVIALLY_ASSIGNABLE(_To, _From)
// _IS_TRIVIALLY_DESTRUCTIBLE(_Ty)


namespace std {
 // TEMPLATE CLASS _Ptr_traits
template<class _Ty>
 struct _Ptr_traits
 { // basic definition
 };

template<class _Ty>
 struct _Ptr_traits<_Ty *>
 { // pointer properties
 static const bool _Is_const = false;
 static const bool _Is_volatile = false;
 };

template<class _Ty>
 struct _Ptr_traits<const _Ty *>
 { // pointer to const properties
 static const bool _Is_const = true;
 static const bool _Is_volatile = false;
 };

template<class _Ty>
 struct _Ptr_traits<volatile _Ty *>
 { // pointer to volatile properties
 static const bool _Is_const = false;
 static const bool _Is_volatile = true;
 };

template<class _Ty>
 struct _Ptr_traits<const volatile _Ty *>
 { // pointer to const volatile properties
 static const bool _Is_const = true;
 static const bool _Is_volatile = true;
 };

template<class _Ty>
 struct _Is_memfunptr
 { // base class for member function pointer predicates
 typedef false_type _Bool_type;
 };
template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret ( _Arg0::*)(_Types...) > : _Arg_types< _Arg0 *, _Types...> { /* base class for member function pointer predicates */ typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret ( _Arg0::*)(_Types...) const > : _Arg_types<const _Arg0 *, _Types...> { /* base class for member function pointer predicates */ typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret ( _Arg0::*)(_Types...) volatile > : _Arg_types<volatile _Arg0 *, _Types...> { /* base class for member function pointer predicates */ typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret ( _Arg0::*)(_Types...) const volatile > : _Arg_types<const volatile _Arg0 *, _Types...> { /* base class for member function pointer predicates */ typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; };
template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (_Arg0::*)(_Types..., ...) > { /* no calling conventions for ellipsis */ typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (_Arg0::*)(_Types..., ...) const > { /* no calling conventions for ellipsis */ typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (_Arg0::*)(_Types..., ...) volatile > { /* no calling conventions for ellipsis */ typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (_Arg0::*)(_Types..., ...) const volatile > { /* no calling conventions for ellipsis */ typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; };


 // Type modifiers
 // TEMPLATE CLASS add_const
template<class _Ty>
 struct add_const
 { // add top level const qualifier
 typedef const _Ty type;
 };

 // TEMPLATE CLASS add_volatile
template<class _Ty>
 struct add_volatile
 { // add top level volatile qualifier
 typedef volatile _Ty type;
 };

 // TEMPLATE CLASS add_cv
template<class _Ty>
 struct add_cv
 { // add top level const and volatile qualifiers
 typedef const volatile _Ty type;
 };

 // TEMPLATE CLASS add_lvalue_reference
template<class _Ty>
 struct add_lvalue_reference
 { // add lvalue reference
 typedef _Ty& type;
 };
template<> struct add_lvalue_reference</* for empty macro argument */ void> { /* add lvalue reference */ typedef /* for empty macro argument */ void type; }; template<> struct add_lvalue_reference<const void> { /* add lvalue reference */ typedef const void type; }; template<> struct add_lvalue_reference<volatile void> { /* add lvalue reference */ typedef volatile void type; }; template<> struct add_lvalue_reference<const volatile void> { /* add lvalue reference */ typedef const volatile void type; };


 // TEMPLATE CLASS add_rvalue_reference
template<class _Ty>
 struct add_rvalue_reference
 { // add rvalue reference
 typedef typename remove_reference<_Ty>::type && type;
 };

template<class _Ty>
 struct add_rvalue_reference<_Ty&>
 { // add rvalue reference
 typedef _Ty& type;
 };
template<> struct add_rvalue_reference</* for empty macro argument */ void> { /* add rvalue reference */ typedef /* for empty macro argument */ void type; }; template<> struct add_rvalue_reference<const void> { /* add rvalue reference */ typedef const void type; }; template<> struct add_rvalue_reference<volatile void> { /* add rvalue reference */ typedef volatile void type; }; template<> struct add_rvalue_reference<const volatile void> { /* add rvalue reference */ typedef const volatile void type; };


 // TEMPLATE FUNCTION declval
template<class _Ty>
 typename add_rvalue_reference<_Ty>::type
  declval() ;

 // TEMPLATE CLASS remove_extent
template<class _Ty>
 struct remove_extent
 { // remove array extent
 typedef _Ty type;
 };

template<class _Ty, size_t _Ix>
 struct remove_extent<_Ty[_Ix]>
 { // remove array extent
 typedef _Ty type;
 };

template<class _Ty>
 struct remove_extent<_Ty[]>
 { // remove array extent
 typedef _Ty type;
 };

 // TEMPLATE CLASS remove_all_extents
template<class _Ty>
 struct remove_all_extents
 { // remove all array extents
 typedef _Ty type;
 };

template<class _Ty, size_t _Ix>
 struct remove_all_extents<_Ty[_Ix]>
 { // remove all array extents
 typedef typename remove_all_extents<_Ty>::type type;
 };

template<class _Ty>
 struct remove_all_extents<_Ty[]>
 { // remove all array extents
 typedef typename remove_all_extents<_Ty>::type type;
 };

 // TEMPLATE CLASS remove_pointer
template<class _Ty>
 struct remove_pointer
 { // remove pointer
 typedef _Ty type;
 };
template<class _Ty> struct remove_pointer<_Ty */* for empty macro argument */> { /* remove pointer */ typedef _Ty type; }; template<class _Ty> struct remove_pointer<_Ty *const> { /* remove pointer */ typedef _Ty type; }; template<class _Ty> struct remove_pointer<_Ty *volatile> { /* remove pointer */ typedef _Ty type; }; template<class _Ty> struct remove_pointer<_Ty *const volatile> { /* remove pointer */ typedef _Ty type; };


 // TEMPLATE CLASS add_pointer
template<class _Ty>
 struct add_pointer
 { // add pointer
 typedef typename remove_reference<_Ty>::type *type;
 };

 // TYPE PREDICATES
 // TEMPLATE CLASS is_void
template<class _Ty>
 struct _Is_void
  : false_type
 { // determine whether _Ty is void
 };

template<>
 struct _Is_void<void>
  : true_type
 { // determine whether _Ty is void
 };

template<class _Ty>
 struct is_void
  : _Is_void<typename remove_cv<_Ty>::type>
 { // determine whether _Ty is void
 };

 // TEMPLATE CLASS is_array
template<class _Ty>
 struct is_array
  : false_type
 { // determine whether _Ty is an array
 };

template<class _Ty, size_t _Nx>
 struct is_array<_Ty[_Nx]>
  : true_type
 { // determine whether _Ty is an array
 };

template<class _Ty>
 struct is_array<_Ty[]>
  : true_type
 { // determine whether _Ty is an array
 };


 // TEMPLATE CLASS is_lvalue_reference
template<class _Ty>
 struct is_lvalue_reference
  : false_type
 { // determine whether _Ty is an lvalue reference
 };

template<class _Ty>
 struct is_lvalue_reference<_Ty&>
  : true_type
 { // determine whether _Ty is an lvalue reference
 };

 // TEMPLATE CLASS is_rvalue_reference
template<class _Ty>
 struct is_rvalue_reference
  : false_type
 { // determine whether _Ty is an rvalue reference
 };

template<class _Ty>
 struct is_rvalue_reference<_Ty&&>
  : true_type
 { // determine whether _Ty is an rvalue reference
 };

 // TEMPLATE CLASS is_reference
template<class _Ty>
 struct is_reference
  : _Cat_base<is_lvalue_reference<_Ty>::value
  || is_rvalue_reference<_Ty>::value>
 { // determine whether _Ty is a reference
 };
 // TEMPLATE CLASS is_member_object_pointer
template<class _Ty,
 bool _Pmf = _Is_memfunptr<_Ty>::_Bool_type::value>
 struct _Is_member_object_pointer
  : false_type
 { // determine whether _Ty is a pointer to member object
 };

template<class _Ty1,
 class _Ty2>
 struct _Is_member_object_pointer<_Ty1 _Ty2::*, false>
  : true_type
 { // determine whether _Ty is a pointer to member object
 typedef _Ty2 _Class_type;
 };

template<class _Ty>
 struct is_member_object_pointer
  : _Is_member_object_pointer<typename remove_cv<_Ty>::type>::type
 { // determine whether _Ty is a pointer to member object
 };

 // TEMPLATE CLASS is_member_function_pointer
template<class _Ty>
 struct is_member_function_pointer
  : _Is_memfunptr<typename remove_cv<_Ty>::type>::_Bool_type
 { // determine whether _Ty is a pointer to member function
 };

 // TEMPLATE CLASS is_pointer
template<class _Ty>
 struct _Is_pointer
  : false_type
 { // determine whether _Ty is a pointer
 };

template<class _Ty>
 struct _Is_pointer<_Ty *>
  : _Cat_base<!is_member_object_pointer<_Ty *>::value
  && !is_member_function_pointer<_Ty *>::value>
 { // determine whether _Ty is a pointer
 };

template<class _Ty>
 struct is_pointer
  : _Is_pointer<typename remove_cv<_Ty>::type>
 { // determine whether _Ty is a pointer
 };

 // TEMPLATE CLASS is_null_pointer


template<class _Ty>
 struct is_null_pointer
  : _Cat_base<is_same<typename remove_cv<_Ty>::type, nullptr_t>::value>
 { // determine whether _Ty is nullptr_t
 };
 // TEMPLATE CLASS is_union
template<class _Ty>
 struct is_union : _Cat_base<__is_union(_Ty)>
 { // determine whether _Ty is a union
 };

 // TEMPLATE CLASS is_class
template<class _Ty>
 struct is_class : _Cat_base<__is_class(_Ty)>
 { // determine whether _Ty is a class
 };

 // TEMPLATE CLASS is_fundamental
template<class _Ty>
 struct is_fundamental
  : _Cat_base<is_arithmetic<_Ty>::value
  || is_void<_Ty>::value
  || is_null_pointer<_Ty>::value>
 { // determine whether _Ty is a fundamental type
 };

 // TEMPLATE CLASS is_object
template<class _Ty>
 struct is_object
  : _Cat_base<!is_function<_Ty>::value
  && !is_reference<_Ty>::value
  && !is_void<_Ty>::value>
 { // determine whether _Ty is an object type
 };

 // TEMPLATE CLASS is_convertible

  // TEMPLATE STRUCT _Is_convertible
template<class _Ty>
 struct decay;

template<bool,
 class _From,
 class _To>
 struct _Is_convertible
  : false_type
 { // determines whether _From is convertible to _To
 };

template<class _From,
 class _To>
 struct _Is_convertible<true, _From, _To>
 { // determines whether _From is convertible to _To
 template<class _Ufrom>
  static typename add_rvalue_reference<_Ufrom>::type _Create();


 template<class _Uto>
  static auto _Fn(int, _Uto)
   -> true_type;
 template<class _Uto>
  static auto _Fn(_Wrap_int, ...)
   -> false_type;

 typedef decltype(_Fn<_To>(0, _Create<_From>())) type;
 };


template<class _From,
 class _To>
 struct is_convertible






  :_Cat_base<__is_convertible_to(_From, _To)>


 { // determine whether _From is convertible to _To
 };
 // TEMPLATE CLASS is_enum
template<class _Ty>
 struct is_enum
  : _Cat_base<__is_enum(_Ty)>
 { // determine whether _Ty is an enumerated type
 };

 // TEMPLATE CLASS is_compound
template<class _Ty>
 struct is_compound
  : _Cat_base<!is_fundamental<_Ty>::value>
 { // determine whether _Ty is a compound type
 };

 // TEMPLATE CLASS is_member_pointer
template<class _Ty>
 struct is_member_pointer
  : _Cat_base<is_member_object_pointer<_Ty>::value
  || is_member_function_pointer<_Ty>::value>
 { // determine whether _Ty is a pointer to member
 };

 // TEMPLATE CLASS is_scalar
template<class _Ty>
 struct is_scalar
  : _Cat_base<is_arithmetic<_Ty>::value
  || is_enum<_Ty>::value
  || is_pointer<_Ty>::value
  || is_member_pointer<_Ty>::value
  || is_null_pointer<_Ty>::value>
 { // determine whether _Ty is a scalar type
 };

 // TEMPLATE CLASS is_const
template<class _Ty>
 struct is_const
  : _Cat_base<_Ptr_traits<_Ty *>::_Is_const
  && !is_function<_Ty>::value>
 { // determine whether _Ty is const qualified
 };

template<class _Ty, size_t _Nx>
 struct is_const<_Ty[_Nx]>
  : false_type
 { // determine whether _Ty is const qualified
 };

template<class _Ty, size_t _Nx>
 struct is_const<const _Ty[_Nx]>
  : true_type
 { // determine whether _Ty is const qualified
 };

template<class _Ty>
 struct is_const<_Ty&>
  : false_type
 { // determine whether _Ty is const qualified
 };

template<class _Ty>
 struct is_const<_Ty&&>
  : false_type
 { // determine whether _Ty is const qualified
 };

 // TEMPLATE CLASS is_volatile
template<class _Ty>
 struct is_volatile
  : _Cat_base<_Ptr_traits<_Ty *>::_Is_volatile
  && !is_function<_Ty>::value>
 { // determine whether _Ty is volatile qualified
 };

template<class _Ty>
 struct is_volatile<_Ty&>
  : false_type
 { // determine whether _Ty is volatile qualified
 };

template<class _Ty>
 struct is_volatile<_Ty&&>
  : false_type
 { // determine whether _Ty is volatile qualified
 };

 // TEMPLATE CLASS is_pod
template<class _Ty>
 struct _Is_pod : _Cat_base<is_scalar<_Ty>::value || __is_pod(_Ty)>
 { // determine whether _Ty is a POD type
 };

template<class _Ty>
 struct is_pod
  : _Is_pod<typename remove_all_extents<_Ty>::type>
 { // determine whether _Ty is a POD type
 };

 // TEMPLATE CLASS is_empty
template<class _Ty>
 struct is_empty : _Cat_base<__is_empty(_Ty)>
 { // determine whether _Ty is an empty class
 };

 // TEMPLATE CLASS is_polymorphic
template<class _Ty>
 struct is_polymorphic : _Cat_base<__is_polymorphic(_Ty)>
 { // determine whether _Ty is a polymorphic type
 };

 // TEMPLATE CLASS is_abstract
template<class _Ty>
 struct is_abstract : _Cat_base<__is_abstract(_Ty)>
 { // determine whether _Ty is an abstract class
 };

 // TEMPLATE CLASS is_standard_layout
template<class _Ty>
 struct is_standard_layout : is_pod<_Ty>
 { // determine whether _Ty is standard layout
 };

 // TEMPLATE CLASS is_literal_type
template<class _Ty>
 struct is_literal_type : _Cat_base<is_scalar<_Ty>::value>
 { // determine whether _Ty is a literal type
 };

 // TEMPLATE CLASS is_trivial
template<class _Ty>
 struct is_trivial : is_pod<_Ty>
 { // determine whether _Ty is trivial
 };

 // TEMPLATE CLASS has_virtual_destructor
template<class _Ty>
 struct has_virtual_destructor
  : _Cat_base<__has_virtual_destructor(_Ty)>
 { // determine whether _Ty has a virtual destructor
 };

  // CONSTRUCTIBLE/ASSIGNABLE TRAITS
 // TEMPLATE CLASS is_constructible
template<bool,
 class _Ty,
 class... _Args>
 struct _Is_constructible
  : false_type
 { // not constructible if not object type
 };

template<class _Ty,
 class... _Args>
 struct _Is_constructible<true, _Ty, _Args...>
 { // tests for valid constructor -- APPROXIMATION

 template<class _Uty>
  static auto _Fn(int)
   -> decltype(_Uty(::std:: declval<_Args>()...), true_type());
 template<class _Uty>
  static auto _Fn(_Wrap_int)
   -> false_type;

 typedef decltype(_Fn<_Ty>(0)) type;




 };

template<class _Ty,
 class... _Args>
 struct is_constructible
  : _Is_constructible<is_object<_Ty>::value
    && (!is_scalar<_Ty>::value || sizeof...(_Args) <= 1),
   typename remove_all_extents<_Ty>::type,
   _Args...>::type
 { // determine whether _Ty(_Args...) is constructible
 };


 // TEMPLATE CLASS is_copy_constructible
template<class _Ty>
 struct is_copy_constructible
  : _Cat_base<!is_array<_Ty>::value
   && is_constructible<
    typename remove_volatile<
     typename remove_reference<_Ty>::type>::type,
    typename add_lvalue_reference<
    typename add_const<
    typename remove_volatile<_Ty>::type>::type>::type>::value>
 { // determine whether _Ty has a copy constructor
 };

 // TEMPLATE CLASS is_default_constructible
template<class _Ty>
 struct is_default_constructible
  : is_constructible<_Ty>::type
 { // determine whether _Ty has a default constructor
 };

 // TEMPLATE CLASS is_move_constructible
template<class _Ty>
 struct is_move_constructible
  : is_constructible<
   typename remove_reference<_Ty>::type,
   typename add_rvalue_reference<_Ty>::type
  >::type
 { // determine whether _Ty has a move constructor
 };

 // TEMPLATE CLASS is_assignable
template<bool,
 class _To,
 class _From>
 struct _Is_assignable
  : false_type
 { // invalid assign expression
 };

template<class _To,
 class _From>
 struct _Is_assignable<true, _To, _From>
 { // tests for valid assign expression

 template<class _Uty>
  static auto _Fn(int)
   -> decltype((::std:: declval<_Uty>() = ::std:: declval<_From>()),
    true_type());

 template<class _Uty>
  static auto _Fn(_Wrap_int)
   -> false_type;

 typedef decltype(_Fn<_To>(0)) type;
 };

template<class _To,
 class _From>
 struct is_assignable
  : _Is_assignable<
   is_object<typename remove_reference<_To>::type>::value
   && !is_array<typename remove_reference<_To>::type>::value
   && is_object<typename remove_reference<_From>::type>::value
   && !is_array<typename remove_reference<_From>::type>::value,
   _To, _From>::type
//		_IS_ASSIGNABLE(_To, _From)
 { // determine whether _From can be assigned to _To
 };

 // TEMPLATE CLASS is_copy_assignable
template<class _Ty>
 struct is_copy_assignable
  : is_assignable<typename add_lvalue_reference<
    typename remove_volatile<_Ty>::type>::type,
   typename add_lvalue_reference<
    typename add_const<
     typename remove_volatile<_Ty>::type>::type>::type>::type
 { // determine whether _Ty has a copy assignment operator
 };

 // TEMPLATE CLASS is_move_assignable
template<class _Ty>
 struct is_move_assignable
  : is_assignable<typename add_lvalue_reference<
    typename remove_volatile<_Ty>::type>::type,
   typename add_rvalue_reference<
    typename remove_volatile<_Ty>::type>::type>::type
 { // determine whether _Ty has a move assignment operator
 };

 // TEMPLATE CLASS is_destructible
template<class _Ty>
 struct _Is_destructible
  : true_type /* APPROXIMATION*/
 { // determine whether _Ty has a destructor
 };

template<>
 struct _Is_destructible<void>
  : false_type
 { // void is not destructible
 };

template<class _Ty>
 struct is_destructible
  : _Is_destructible<typename remove_cv<_Ty>::type>
 { // determine whether _Ty has a destructor
 };

  // TRIVIAL TRAITS
 // TEMPLATE CLASS is_trivially_constructible
template<class _Ty,
 class... _Args>
 struct is_trivially_constructible
  : is_constructible<_Ty, _Args...> // APPROXIMATION
//		_IS_TRIVIALLY_CONSTRUCTIBLE(_Ty, _Args...)
 { // determine whether _Ty(_Args...) is trivially constructible
 };

template<class _Ty>
 struct is_trivially_constructible<_Ty, _Ty>
  : _Cat_base<!is_array<_Ty>::value && __has_trivial_copy(_Ty)>
//		_IS_TRIVIALLY_CONSTRUCTIBLE(_Ty, _Ty)
 { // determine whether _Ty(_Arg) is trivially copy constructible
 };

template<class _Ty>
 struct is_trivially_constructible<_Ty>
  : _Cat_base<is_pod<_Ty>::value || !is_array<_Ty>::value && __has_trivial_constructor(_Ty)>
//		_IS_TRIVIALLY_CONSTRUCTIBLE(_Ty)
 { // determine whether _Ty(_Arg) is trivially default constructible
 };


 // TEMPLATE CLASS is_trivially_copy_constructible
template<class _Ty>
 struct is_trivially_copy_constructible
  : _Cat_base<!is_array<_Ty>::value && __has_trivial_copy(_Ty)>
 { // determine whether _Ty has a trivial copy constructor
 };

 // TEMPLATE CLASS is_trivially_copyable
template<class _Ty>
 struct is_trivially_copyable
  : is_trivially_copy_constructible<_Ty>::type
 { // determine whether _Ty is trivially copyable
 };

 // TEMPLATE CLASS is_trivially_default_constructible
template<class _Ty>
 struct is_trivially_default_constructible
  : is_trivially_constructible<_Ty>::type
 { // determine whether _Ty has a trivial default constructor
 };

 // TEMPLATE CLASS is_trivially_move_constructible
template<class _Ty>
 struct is_trivially_move_constructible
  : _Cat_base<!is_array<_Ty>::value && is_trivially_constructible< typename remove_volatile<_Ty>::type, typename add_rvalue_reference< typename remove_volatile<_Ty>::type>::type>::value>
 { // determine whether _Ty has a trivial move constructor
 };

 // TEMPLATE CLASS is_trivially_assignable
template<class _To,
 class _From>
 struct is_trivially_assignable
  : is_assignable<_To, _From>::type // APPROXIMATION
 { // determine whether _From can be assigned to _To, trivially
 };

 // TEMPLATE CLASS is_trivially_copy_assignable
template<class _Ty>
 struct is_trivially_copy_assignable
  : _Cat_base<!is_array<_Ty>::value && (is_pod<typename remove_reference<_Ty>::type>::value || __has_trivial_assign(typename remove_reference<_Ty>::type))>
 { // determine whether _Ty has a trivial copy assignment operator
 };

 // TEMPLATE CLASS is_trivially_move_assignable
template<class _Ty>
 struct is_trivially_move_assignable
  : is_trivially_assignable<typename add_lvalue_reference< typename remove_volatile<_Ty>::type>::type, typename add_rvalue_reference< typename remove_volatile<_Ty>::type>::type>::type
 { // determine whether _Ty has a trivial move assignment operator
 };

 // TEMPLATE CLASS is_trivially_destructible
template<class _Ty>
 struct is_trivially_destructible
  : _Cat_base<is_pod<_Ty>::value || __has_trivial_destructor(_Ty)>
 { // determine whether _Ty has a trivial destructor
 };

  // NOTHROW TRAITS
 // TEMPLATE CLASS is_nothrow_constructible
template<class _Ty,
 class... _Args>
 struct is_nothrow_constructible
  : is_constructible<_Ty, _Args...> // APPROXIMATION
//		_IS_NOTHROW_CONSTRUCTIBLE(_Ty, _Args...)
 { // determine whether _Ty(_Args...) is nothrow constructible
 };

template<class _Ty>
 struct is_nothrow_constructible<_Ty, _Ty>
  : _Cat_base<!is_array<_Ty>::value && (is_pod<typename remove_reference<_Ty>::type>::value || __has_nothrow_copy(typename remove_reference<_Ty>::type))>
//		_IS_NOTHROW_CONSTRUCTIBLE(_Ty, _Ty)
 { // determine whether _Ty(_Arg) is nothrow copy constructible
 };

template<class _Ty>
 struct is_nothrow_constructible<_Ty>
  : _Cat_base<__has_nothrow_constructor(_Ty)>
//		_IS_NOTHROW_CONSTRUCTIBLE(_Ty)
 { // determine whether _Ty(_Arg) is nothrow default constructible
 };


 // TEMPLATE CLASS is_nothrow_copy_constructible
template<class _Ty>
 struct is_nothrow_copy_constructible
  : _Cat_base<!is_array<_Ty>::value
   && is_nothrow_constructible<
    typename remove_volatile<_Ty>::type,
    typename add_lvalue_reference<
    typename add_const<
     typename remove_volatile<_Ty>::type>::type>::type>::value>
 { // determine whether _Ty has a nothrow copy constructor
 };

 // TEMPLATE CLASS is_nothrow_default_constructible
template<class _Ty>
 struct is_nothrow_default_constructible
  : is_nothrow_constructible<_Ty>::type
 { // determine whether _Ty has a nothrow default constructor
 };

 // TEMPLATE CLASS is_nothrow_move_constructible
template<class _Ty>
 struct is_nothrow_move_constructible
  : _Cat_base<!is_array<_Ty>::value
   && is_nothrow_constructible<
    typename remove_volatile<_Ty>::type,
    typename add_rvalue_reference<
    typename remove_volatile<_Ty>::type>::type>::value>
 { // determine whether _Ty has a nothrow move constructor
 };

 // TEMPLATE CLASS is_nothrow_assignable
template<class _To,
 class _From>
 struct is_nothrow_assignable
  : _Cat_base<!is_array<_To>::value && (is_pod<typename remove_reference<_To>::type>::value || __has_nothrow_assign(typename remove_reference<_To>::type))> // APPROXIMATION
 { // determine whether _From can be assigned to _To, nothrow
 };

 // TEMPLATE CLASS is_nothrow_copy_assignable
template<class _Ty>
 struct is_nothrow_copy_assignable
  : _Cat_base<!is_array<_Ty>::value && (is_pod<typename remove_reference<_Ty>::type>::value || __has_nothrow_assign(typename remove_reference<_Ty>::type))>
 { // determine whether _Ty has a nothrow copy assignment operator
 };

 // TEMPLATE CLASS is_nothrow_move_assignable
template<class _Ty>
 struct is_nothrow_move_assignable
  : is_nothrow_assignable<typename add_lvalue_reference< typename remove_volatile<_Ty>::type>::type, typename add_rvalue_reference< typename remove_volatile<_Ty>::type>::type>::type
 { // determine whether _Ty has a nothrow move assignment operator
 };

 // TEMPLATE CLASS is_nothrow_destructible
template<class _Ty>
 struct _Is_nothrow_destructible
  : true_type // APPROXIMATION
 { // determine whether _Ty has a nothrow destructor
 };

template<>
 struct _Is_nothrow_destructible<void>
  : false_type
 { // void is not destructible
 };

template<class _Ty>
 struct is_nothrow_destructible
  : _Is_nothrow_destructible<typename remove_cv<_Ty>::type>
 { // determine whether _Ty has a nothrow destructor
 };

 // TEMPLATE CLASS add_reference -- retained
template<class _Ty>
 struct add_reference
 { // add reference
 typedef typename remove_reference<_Ty>::type& type;
 };
template<> struct add_reference</* for empty macro argument */ void> { /* add reference */ typedef /* for empty macro argument */ void type; }; template<> struct add_reference<const void> { /* add reference */ typedef const void type; }; template<> struct add_reference<volatile void> { /* add reference */ typedef volatile void type; }; template<> struct add_reference<const volatile void> { /* add reference */ typedef const volatile void type; };


 // TEMPLATE CLASS has_copy_constructor -- retained
template<class _Ty>
 struct has_copy_constructor
  : is_copy_constructible<_Ty>::type
 { // determine whether _Ty has a copy constructor
 };

 // TEMPLATE CLASS has_default_constructor -- retained
template<class _Ty>
 struct has_default_constructor
  : is_default_constructible<_Ty>::type
 { // determine whether _Ty has a default constructor
 };

 // TEMPLATE CLASS has_move_constructor -- retained
template<class _Ty>
 struct has_move_constructor
  : is_move_constructible<_Ty>::type
 { // determine whether _Ty has a move constructor
 };

 // TEMPLATE CLASS has_copy_assign -- retained
template<class _Ty>
 struct has_copy_assign
  : is_copy_assignable<_Ty>::type
 { // determine whether _Ty has a copy assignment operator
 };

 // TEMPLATE CLASS has_move_assign -- retained
template<class _Ty>
 struct has_move_assign
  : is_move_assignable<_Ty>::type
 { // determine whether _Ty has a move assignment operator
 };

 // TEMPLATE CLASS has_trivial_copy_constructor -- retained
template<class _Ty>
 struct has_trivial_copy_constructor
  : is_trivially_copy_constructible<_Ty>::type
 { // determine whether _Ty has a trivial copy constructor
 };

 // TEMPLATE CLASS has_trivial_default_constructor -- retained
template<class _Ty>
 struct has_trivial_default_constructor
  : is_trivially_default_constructible<_Ty>::type
 { // determine whether _Ty has a trivial constructor
 };

 // TEMPLATE CLASS has_trivial_move_constructor -- retained
template<class _Ty>
 struct has_trivial_move_constructor
  : is_trivially_move_constructible<_Ty>::type
 { // determine whether _Ty has a trivial move constructor
 };

 // TEMPLATE CLASS has_trivial_copy_assign -- retained
template<class _Ty>
 struct has_trivial_copy_assign
  : is_trivially_copy_assignable<_Ty>::type
 { // determine whether _Ty has a trivial copy assignment operator
 };

 // TEMPLATE CLASS has_trivial_move_assign -- retained
template<class _Ty>
 struct has_trivial_move_assign
  : is_trivially_move_assignable<_Ty>::type
 { // determine whether _Ty has a trivial move assignment operator
 };

 // TEMPLATE CLASS has_nothrow_copy_constructor -- retained
template<class _Ty>
 struct has_nothrow_copy_constructor
  : _Cat_base<!is_array<_Ty>::value && (is_pod<typename remove_reference<_Ty>::type>::value || __has_nothrow_copy(typename remove_reference<_Ty>::type))>
 { // determine whether _Ty has a nothrow copy constructor
 };

 // TEMPLATE CLASS has_nothrow_default_constructor -- retained
template<class _Ty>
 struct has_nothrow_default_constructor
  : is_nothrow_default_constructible<_Ty>::type
 { // determine whether _Ty has a nothrow default constructor
 };

 // TEMPLATE CLASS has_nothrow_move_constructor -- retained
template<class _Ty>
 struct has_nothrow_move_constructor
  : is_nothrow_move_constructible<_Ty>::type
 { // determine whether _Ty has a nothrow move constructor
 };

 // TEMPLATE CLASS has_nothrow_copy_assign -- retained
template<class _Ty>
 struct has_nothrow_copy_assign
  : is_nothrow_copy_assignable<_Ty>::type
 { // determine whether _Ty has a nothrow copy assignment operator
 };

 // TEMPLATE CLASS has_nothrow_move_assign -- retained
template<class _Ty>
 struct has_nothrow_move_assign
  : is_nothrow_move_assignable<_Ty>::type
 { // determine whether _Ty has a nothrow move assignment operator
 };

 // TEMPLATE CLASS has_trivial_constructor -- retained
template<class _Ty>
 struct has_trivial_constructor
  : _Cat_base<is_pod<_Ty>::value || !is_array<_Ty>::value && __has_trivial_constructor(_Ty)>
 { // determine whether _Ty has a trivial default constructor
 };

 // TEMPLATE CLASS has_trivial_copy -- retained
template<class _Ty>
 struct has_trivial_copy
  : _Cat_base<!is_array<_Ty>::value && __has_trivial_copy(_Ty)>
 { // determine whether _Ty has a trivial copy constructor
 };

 // TEMPLATE CLASS has_trivial_assign -- retained
template<class _Ty>
 struct has_trivial_assign
  : _Cat_base<!is_array<_Ty>::value && (is_pod<typename remove_reference<_Ty>::type>::value || __has_trivial_assign(typename remove_reference<_Ty>::type))>
 { // determine whether _Ty has a trivial assignment operator
 };

 // TEMPLATE CLASS has_trivial_destructor -- retained
template<class _Ty>
 struct has_trivial_destructor
  : _Cat_base<is_pod<_Ty>::value || __has_trivial_destructor(_Ty)>
 { // determine whether _Ty has a trivial destructor
 };

 // TEMPLATE CLASS has_nothrow_constructor -- retained
template<class _Ty>
 struct has_nothrow_constructor
  : _Cat_base<__has_nothrow_constructor(_Ty)>
 { // determine whether _Ty has a nothrow default constructor
 };

 // TEMPLATE CLASS has_nothrow_copy -- retained
template<class _Ty>
 struct has_nothrow_copy
  : _Cat_base<!is_array<_Ty>::value && (is_pod<typename remove_reference<_Ty>::type>::value || __has_nothrow_copy(typename remove_reference<_Ty>::type))>
 { // determine whether _Ty has a nothrow copy constructor
 };

 // TEMPLATE CLASS has_nothrow_assign -- retained
template<class _Ty>
 struct has_nothrow_assign
  : _Cat_base<!is_array<_Ty>::value && (is_pod<typename remove_reference<_Ty>::type>::value || __has_nothrow_assign(typename remove_reference<_Ty>::type))>
 { // determine whether _Ty has a nothrow assignment operator
 };

 // TEMPLATE CLASS is_signed
template<class _Ty,
 bool = is_integral<_Ty>::value>
 struct _Sign_base
 { // determine whether integral _Ty is a signed or unsigned type
 typedef typename remove_cv<_Ty>::type _Uty;
 typedef _Cat_base<_Uty(-1) < _Uty(0)> _Signed;
 typedef _Cat_base<_Uty(0) < _Uty(-1)> _Unsigned;
 };

template<class _Ty>
 struct _Sign_base<_Ty, false>
 { // floating-point _Ty is signed
  // non-arithmetic _Ty is neither signed nor unsigned
 typedef is_floating_point<_Ty> _Signed;
 typedef false_type _Unsigned;
 };

template<class _Ty>
 struct is_signed
  : _Sign_base<_Ty>::_Signed
 { // determine whether _Ty is a signed type
 };

 // TEMPLATE CLASS is_unsigned
template<class _Ty>
 struct is_unsigned
  : _Sign_base<_Ty>::_Unsigned
 { // determine whether _Ty is an unsigned type
 };

 // TEMPLATE CLASS _Change_sign
template<class _Ty>
 struct _Change_sign
 { // signed/unsigned partners to _Ty
 _Change_sign()
  { // check asserts
 static_assert(((is_integral<_Ty>::value || is_enum<_Ty>::value) && !is_same<_Ty, bool>::value), "make_signed<T>/make_unsigned<T> require that T shall be a (possibly " "cv-qualified) integral type or enumeration but not a bool type.");




  }

 typedef
  typename _If<is_same<_Ty, signed char>::value
   || is_same<_Ty, unsigned char >::value, signed char,
  typename _If<is_same<_Ty, short >::value
   || is_same<_Ty, unsigned short >::value, short,
  typename _If<is_same<_Ty, int >::value
   || is_same<_Ty, unsigned int >::value, int,
  typename _If<is_same<_Ty, long >::value
   || is_same<_Ty, unsigned long >::value, long,
  typename _If<is_same<_Ty, long long >::value
   || is_same<_Ty, unsigned long long>::value, long long,
  typename _If<sizeof (_Ty) == sizeof (signed char), signed char,
  typename _If<sizeof (_Ty) == sizeof (short ), short,
  typename _If<sizeof (_Ty) == sizeof (int ), int,
  typename _If<sizeof (_Ty) == sizeof (long ), long,
   long long
  >::type>::type>::type>::type>::type>::type>::type>::type>::type
   _Signed;

 typedef
  typename _If<is_same<_Signed, signed char>::value, unsigned char,
  typename _If<is_same<_Signed, short >::value, unsigned short,
  typename _If<is_same<_Signed, int >::value, unsigned int,
  typename _If<is_same<_Signed, long >::value, unsigned long,
   unsigned long long
  >::type>::type>::type>::type
   _Unsigned;
 };

template<class _Ty>
 struct _Change_sign<const _Ty>
 { // signed/unsigned partners to _Ty
 typedef const typename _Change_sign<_Ty>::_Signed _Signed;
 typedef const typename _Change_sign<_Ty>::_Unsigned _Unsigned;
 };

template<class _Ty>
 struct _Change_sign<volatile _Ty>
 { // signed/unsigned partners to _Ty
 typedef volatile typename _Change_sign<_Ty>::_Signed _Signed;
 typedef volatile typename _Change_sign<_Ty>::_Unsigned _Unsigned;
 };

template<class _Ty>
 struct _Change_sign<const volatile _Ty>
 { // signed/unsigned partners to _Ty
 typedef const volatile typename _Change_sign<_Ty>::_Signed _Signed;
 typedef const volatile typename _Change_sign<_Ty>::_Unsigned _Unsigned;
 };

 // TEMPLATE CLASS make_signed
template<class _Ty>
 struct make_signed
 { // signed partner to _Ty
 typedef typename _Change_sign<_Ty>::_Signed type;
 };

 // TEMPLATE CLASS make_unsigned
template<class _Ty>
 struct make_unsigned
 { // unsigned partner to _Ty
 typedef typename _Change_sign<_Ty>::_Unsigned type;
 };

 // TEMPLATE CLASS alignment_of
template<class _Ty>
 struct alignment_of
  : integral_constant<size_t, __alignof__(_Ty)>
 { // determine alignment of _Ty
 };


 // TEMPLATE CLASS aligned_storage




template<class _Ty,
 size_t _Len>
 union _Align_type
 { // union with size _Len bytes and alignment of _Ty
 _Ty _Val;
 char _Pad[_Len];
 };

template<size_t _Len,
 size_t _Align,
 class _Ty,
 bool _Ok>
 struct _Aligned;

template<size_t _Len,
 size_t _Align,
 class _Ty>
 struct _Aligned<_Len, _Align, _Ty, true>
 { // define type with size _Len and alignment _Ty
 typedef _Align_type<_Ty, _Len> type;
 };

template<size_t _Len,
 size_t _Align>
 struct _Aligned<_Len, _Align, double, false>
 { // define type with size _Len and alignment _Ty
 typedef _Align_type<max_align_t, _Len> type;
 };

template<size_t _Len,
 size_t _Align>
 struct _Aligned<_Len, _Align, int, false>
 { // define type with size _Len and alignment _Ty
 typedef typename _Aligned<_Len, _Align, double, _Align <= alignment_of<double>::value>::type type;
 };

template<size_t _Len,
 size_t _Align>
 struct _Aligned<_Len, _Align, short, false>
 { // define type with size _Len and alignment _Ty
 typedef typename _Aligned<_Len, _Align, int, _Align <= alignment_of<int>::value>::type type;
 };

template<size_t _Len,
 size_t _Align>
 struct _Aligned<_Len, _Align, char, false>
 { // define type with size _Len and alignment _Ty
 typedef typename _Aligned<_Len, _Align, short, _Align <= alignment_of<short>::value>::type type;
 };

template<size_t _Len,
 size_t _Align = alignment_of<max_align_t>::value>
 struct aligned_storage
 { // define type with size _Len and alignment _Align
 typedef typename _Aligned<_Len, _Align, char, _Align <= alignment_of<char>::value>::type type;
 };





 // TEMPLATE CLASS aligned_union
template<size_t... _Vals>
 struct _Maximum;

template<>
 struct _Maximum<>
 { // maximum of nothing is 0
 static const size_t value = 0;
 };

template<size_t _Val>
 struct _Maximum<_Val>
 { // maximum of _Val is _Val
 static const size_t value = _Val;
 };

template<size_t _First,
 size_t _Second,
 size_t... _Rest>
 struct _Maximum<_First, _Second, _Rest...>
  : _Maximum<(_First < _Second ? _Second : _First), _Rest...>
 { // find maximum value in _First, _Second, _Rest...
 };

template<size_t _Len,
 class... _Types>
 struct aligned_union
 { // define type with size at least _Len, for storing anything in _Types
 static const size_t _Max_len = _Maximum<
  _Len, sizeof(_Types)...>::value; // NOT sizeof...(_Types)
 static const size_t alignment_value = _Maximum<
  alignment_of<_Types>::value...>::value;
 typedef typename aligned_storage<_Max_len, alignment_value>::type type;
 };

 // TEMPLATE CLASS underlying_type
template<class _Ty>
 struct underlying_type
 { // determine type underlying type for enum
 typedef int type;
 };


 // TEMPLATE CLASS rank
template<class _Ty>
 struct rank
  : integral_constant<size_t, 0>
 { // determine number of dimensions of array _Ty
 };

template<class _Ty, size_t _Ix>
 struct rank<_Ty[_Ix]>
  : integral_constant<size_t, rank<_Ty>::value + 1>
 { // determine number of dimensions of array _Ty
 };

template<class _Ty>
 struct rank<_Ty[]>
  : integral_constant<size_t, rank<_Ty>::value + 1>
 { // determine number of dimensions of array _Ty
 };

 // TEMPLATE CLASS extent
template<class _Ty, unsigned int _Nx>
 struct _Extent
  : integral_constant<size_t, 0>
 { // determine extent of dimension _Nx of array _Ty
 };

template<class _Ty, size_t _Ix>
 struct _Extent<_Ty[_Ix], 0>
  : integral_constant<size_t, _Ix>
 { // determine extent of dimension _Nx of array _Ty
 };

template<class _Ty, unsigned int _Nx, size_t _Ix>
 struct _Extent<_Ty[_Ix], _Nx>
  : _Extent<_Ty, _Nx - 1>
 { // determine extent of dimension _Nx of array _Ty
 };

template<class _Ty, unsigned int _Nx>
 struct _Extent<_Ty[], _Nx>
  : _Extent<_Ty, _Nx - 1>
 { // determine extent of dimension _Nx of array _Ty
 };

template<class _Ty, unsigned int _Nx = 0>
 struct extent
  : _Extent<_Ty, _Nx>
 { // determine extent of dimension _Nx of array _Ty
 };

 // TEMPLATE CLASS is_base_of
template<class _Base,
 class _Der>
 struct is_base_of : _Cat_base<__is_base_of(_Base, _Der)>
 { // determine whether _Base is a base of or the same as _Der
 };

 // TEMPLATE CLASS decay
template<class _Ty>
 struct decay
 { // determines decayed version of _Ty
 typedef typename remove_reference<_Ty>::type _Ty1;

 typedef typename _If<is_array<_Ty1>::value,
  typename remove_extent<_Ty1>::type *,
  typename _If<is_function<_Ty1>::value,
   typename add_pointer<_Ty1>::type,
   typename remove_cv<_Ty1>::type>::type>::type type;
 };


namespace tr1 { // TR1 additions
using ::std:: add_const;
using ::std:: add_cv;
using ::std:: add_pointer;
using ::std:: add_volatile;
using ::std:: aligned_storage;
using ::std:: alignment_of;
using ::std:: conditional;
using ::std:: decay;
using ::std:: enable_if;
using ::std:: extent;
using ::std:: false_type;
using ::std:: has_virtual_destructor;
using ::std:: integral_constant;
using ::std:: is_abstract;
using ::std:: is_arithmetic;
using ::std:: is_array;
using ::std:: is_base_of;
using ::std:: is_class;
using ::std:: is_compound;
using ::std:: is_const;
using ::std:: is_convertible;
using ::std:: is_empty;
using ::std:: is_enum;
using ::std:: is_floating_point;
using ::std:: is_function;
using ::std:: is_fundamental;
using ::std:: is_integral;
using ::std:: is_member_function_pointer;
using ::std:: is_member_object_pointer;
using ::std:: is_member_pointer;
using ::std:: is_object;
using ::std:: is_pod;
using ::std:: is_pointer;
using ::std:: is_polymorphic;
using ::std:: is_reference;
using ::std:: is_same;
using ::std:: is_scalar;
using ::std:: is_signed;
using ::std:: is_union;
using ::std:: is_unsigned;
using ::std:: is_void;
using ::std:: is_volatile;
using ::std:: make_signed;
using ::std:: make_unsigned;
using ::std:: rank;
using ::std:: remove_all_extents;
using ::std:: remove_const;
using ::std:: remove_cv;
using ::std:: remove_extent;
using ::std:: remove_pointer;
using ::std:: remove_reference;
using ::std:: remove_volatile;
using ::std:: true_type;

using ::std:: add_reference; // retained
using ::std:: has_nothrow_assign; // retained
using ::std:: has_nothrow_constructor; // retained
using ::std:: has_nothrow_copy; // retained
using ::std:: has_trivial_assign; // retained
using ::std:: has_trivial_constructor; // retained
using ::std:: has_trivial_copy; // retained
using ::std:: has_trivial_destructor; // retained
 } // namespace tr1



  // TEMPLATE STRUCT common_type
template<class... _Ty>
 struct common_type;

template<class _Ty>
 struct common_type<_Ty>
 { // type is typename decay<_Ty>::type for one argument
 typedef typename decay<_Ty>::type type;
 };

template<class _Ty0,
 class _Ty1>
 struct common_type<_Ty0, _Ty1>
 { // type is common type of _Ty0 and _Ty1 for two arguments
 typedef typename decay<
  decltype(_Always_false<_Ty0>::value
   ? ::std:: declval<_Ty0>()
   : ::std:: declval<_Ty1>())
 >::type type;
 };

template<class _Ty0,
 class _Ty1,
 class... _Ty>
 struct common_type<_Ty0, _Ty1, _Ty...>
 { // type is defined recursively for more than two arguments
 typedef typename common_type<
  typename common_type<_Ty0, _Ty1>::type, _Ty...
 >::type type;
 };


 // TEMPLATE STRUCT integer_sequence
template<class _Ty,
 _Ty... _Vals>
 struct integer_sequence
 { // sequence of integer parameters
 static_assert(is_integral<_Ty>::value, "integer_sequence<T, I...> requires T to be an integral type.");


 typedef integer_sequence<_Ty, _Vals...> type;
 typedef _Ty value_type;

 static size_t size()
  { // get length of parameter list
  return (sizeof...(_Vals));
  }
 };

 // ALIAS TEMPLATE make_integer_sequence
template<bool _Negative,
 bool _Zero,
 class _Int_con,
 class _Int_seq>
 struct _Make_seq
 { // explodes gracefully below 0
 static_assert(!_Negative, "make_integer_sequence<T, N> requires N to be non-negative.");

 };

template<class _Ty,
 _Ty... _Vals>
 struct _Make_seq<false, true,
  integral_constant<_Ty, 0>,
  integer_sequence<_Ty, _Vals...> >
  : integer_sequence<_Ty, _Vals...>
 { // ends recursion at 0
 };

template<class _Ty,
 _Ty _Ix,
 _Ty... _Vals>
 struct _Make_seq<false, false,
  integral_constant<_Ty, _Ix>,
  integer_sequence<_Ty, _Vals...> >
  : _Make_seq<false, _Ix == 1,
   integral_constant<_Ty, _Ix - 1>,
   integer_sequence<_Ty, _Ix - 1, _Vals...> >
 { // counts down to 0
 };


template<class _Ty,
 _Ty _Size>
 using make_integer_sequence = typename _Make_seq<_Size < 0, _Size == 0,
  integral_constant<_Ty, _Size>, integer_sequence<_Ty> >::type;

template<size_t... _Vals>
 using index_sequence = integer_sequence<size_t, _Vals...>;

template<size_t _Size>
 using make_index_sequence = make_integer_sequence<size_t, _Size>;

template<class... _Types>
 using index_sequence_for = make_index_sequence<sizeof...(_Types)>;
 // TEMPLATE CLASS identity
template<class _Ty>
 struct identity
 { // map _Ty to type unchanged
 typedef _Ty type;

 const _Ty& operator()(const _Ty& _Left) const
  { // apply identity operator to operand
  return (_Left);
  }
 };

 // TEMPLATE FUNCTION forward
template<class _Ty> inline
            _Ty&& forward(
  typename remove_reference<_Ty>::type& _Arg)
 { // forward an lvalue as either an lvalue or an rvalue
 return (static_cast<_Ty&&>(_Arg));
 }

template<class _Ty> inline
            _Ty&& forward(
  typename remove_reference<_Ty>::type&& _Arg)
 { // forward an rvalue as an rvalue
 static_assert(!is_lvalue_reference<_Ty>::value, "bad forward call");
 return (static_cast<_Ty&&>(_Arg));
 }

  // TEMPLATE FUNCTION move
template<class _Ty> inline
            typename remove_reference<_Ty>::type&&
  move(_Ty&& _Arg)
 { // forward _Arg as movable
 return (static_cast<typename remove_reference<_Ty>::type&&>(_Arg));
 }

  // TEMPLATE FUNCTION _Move
template<class _Ty> inline
            typename remove_reference<_Ty>::type&&
  _Move(_Ty&& _Arg)
 { // forward _Arg as movable
 return (static_cast<typename remove_reference<_Ty>::type&&>(_Arg));
 }

  // TEMPLATE FUNCTION move_if_noexcept
template<class _Ty> inline
            typename _If<!is_nothrow_move_constructible<_Ty>::value
  && is_copy_constructible<_Ty>::value,
   const _Ty&, _Ty&&>::type
 move_if_noexcept(_Ty& _Arg)
 { // forward _Arg as movable, sometimes
 return (::std:: move(_Arg));
 }

 // TEMPLATE FUNCTION _Decay_copy
template<class _Ty> inline
 typename decay<_Ty>::type _Decay_copy(_Ty && _Arg)
 { // forward _Arg as value of decayed type
 return (::std:: forward<_Ty>(_Arg));
 }

 // TEMPLATE STRUCT _Param_tester
template<class...>
 struct _Param_tester
 { // test if parameters are valid
 typedef void type;
 };

 // ALIAS TEMPLATE void_t
template<class... _Types> // TRANSITION, needs CWG 1558
 using void_t = typename _Param_tester<_Types...>::type;

 // TEMPLATE FUNCTION invoke
struct _Invoker_pmf_object
 { // INVOKE a pointer to member function on an object
 template<class _Decayed,
  class _Ty1,
  class... _Types2>
  static auto _Call(_Decayed _Pmf, _Ty1&& _Arg1, _Types2&&... _Args2)
  -> decltype((::std:: forward<_Ty1>(_Arg1).*_Pmf)(
   ::std:: forward<_Types2>(_Args2)...))
  { // INVOKE a pointer to member function on an object
  return ((::std:: forward<_Ty1>(_Arg1).*_Pmf)(
   ::std:: forward<_Types2>(_Args2)...));
  }
 };

struct _Invoker_pmf_pointer
 { // INVOKE a pointer to member function on a [smart] pointer
 template<class _Decayed,
  class _Ty1,
  class... _Types2>
  static auto _Call(_Decayed _Pmf, _Ty1&& _Arg1, _Types2&&... _Args2)
  -> decltype(((*::std:: forward<_Ty1>(_Arg1)).*_Pmf)(
   ::std:: forward<_Types2>(_Args2)...))
  { // INVOKE a pointer to member function on a [smart] pointer
  return (((*::std:: forward<_Ty1>(_Arg1)).*_Pmf)(
   ::std:: forward<_Types2>(_Args2)...));
  }
 };

struct _Invoker_pmd_object
 { // INVOKE a pointer to member data on an object
 template<class _Decayed,
  class _Ty1>
  static auto _Call(_Decayed _Pmd, _Ty1&& _Arg1)
  -> decltype(::std:: forward<_Ty1>(_Arg1).*_Pmd)
  { // INVOKE a pointer to member data on an object
  return (::std:: forward<_Ty1>(_Arg1).*_Pmd);
  }
 };

struct _Invoker_pmd_pointer
 { // INVOKE a pointer to member data on a [smart] pointer
 template<class _Decayed,
  class _Ty1>
  static auto _Call(_Decayed _Pmd, _Ty1&& _Arg1)
  -> decltype((*::std:: forward<_Ty1>(_Arg1)).*_Pmd)
  { // INVOKE a pointer to member data on a [smart] pointer
  return ((*::std:: forward<_Ty1>(_Arg1)).*_Pmd);
  }
 };

struct _Invoker_functor
 { // INVOKE a function object
 template<class _Callable,
  class... _Types>
  static auto _Call(_Callable&& _Obj, _Types&&... _Args)
  -> decltype(::std:: forward<_Callable>(_Obj)(
   ::std:: forward<_Types>(_Args)...))
  { // INVOKE a function object
  return (::std:: forward<_Callable>(_Obj)(
   ::std:: forward<_Types>(_Args)...));
  }
 };

template<class _Callable,
 class _Ty1,
 class _Decayed = typename decay<_Callable>::type,
 bool _Is_pmf = is_member_function_pointer<_Decayed>::value,
 bool _Is_pmd = is_member_object_pointer<_Decayed>::value>
 struct _Invoker1;

template<class _Callable,
 class _Ty1,
 class _Decayed>
 struct _Invoker1<_Callable, _Ty1, _Decayed, true, false>
  : _If<is_base_of<
   typename _Is_memfunptr<_Decayed>::_Class_type,
   typename decay<_Ty1>::type>::value,
  _Invoker_pmf_object,
  _Invoker_pmf_pointer>::type
 { // pointer to member function
 };

template<class _Callable,
 class _Ty1,
 class _Decayed>
 struct _Invoker1<_Callable, _Ty1, _Decayed, false, true>
  : _If<is_base_of<
   typename _Is_member_object_pointer<_Decayed>::_Class_type,
   typename decay<_Ty1>::type>::value,
  _Invoker_pmd_object,
  _Invoker_pmd_pointer>::type
 { // pointer to member data
 };

template<class _Callable,
 class _Ty1,
 class _Decayed>
 struct _Invoker1<_Callable, _Ty1, _Decayed, false, false>
  : _Invoker_functor
 { // function object
 };

template<class _Callable,
 class... _Types>
 struct _Invoker;

template<class _Callable>
 struct _Invoker<_Callable>
  : _Invoker_functor
 { // zero arguments
 };

template<class _Callable,
 class _Ty1,
 class... _Types2>
 struct _Invoker<_Callable, _Ty1, _Types2...>
  : _Invoker1<_Callable, _Ty1>
 { // one or more arguments
 };

template<class _Callable,
 class... _Types> inline
 auto invoke(_Callable&& _Obj, _Types&&... _Args)
 -> decltype(_Invoker<_Callable, _Types...>::_Call(
  ::std:: forward<_Callable>(_Obj), ::std:: forward<_Types>(_Args)...))
 { // INVOKE a callable object
 return (_Invoker<_Callable, _Types...>::_Call(
  ::std:: forward<_Callable>(_Obj), ::std:: forward<_Types>(_Args)...));
 }

template<class _Rx,
 bool = is_void<_Rx>::value>
 struct _Forced
 { // tag to give INVOKE an explicit return type
 };

struct _Unforced
 { // tag to distinguish bind() from bind<R>()
 };

template<class _Cv_void,
 class... _Valtys> inline
 void _Invoke_ret(_Forced<_Cv_void, true>, _Valtys&&... _Vals)
 { // INVOKE, "implicitly" converted to void
 ::std:: invoke(::std:: forward<_Valtys>(_Vals)...);
 }

template<class _Rx,
 class... _Valtys> inline
 _Rx _Invoke_ret(_Forced<_Rx, false>, _Valtys&&... _Vals)
 { // INVOKE, implicitly converted to _Rx
 return (::std:: invoke(::std:: forward<_Valtys>(_Vals)...));
 }

template<class... _Valtys> inline
 auto _Invoke_ret(_Forced<_Unforced, false>, _Valtys&&... _Vals)
 -> decltype(::std:: invoke(::std:: forward<_Valtys>(_Vals)...))
 { // INVOKE, unchanged
 return (::std:: invoke(::std:: forward<_Valtys>(_Vals)...));
 }

 // TEMPLATE CLASS result_of
template<class _Fty>
 struct result_of
 { // explain usage
 static_assert(_Always_false<_Fty>::value,
  "result_of<CallableType> is invalid; use "
  "result_of<CallableType(zero or more argument types)> instead.");
 };
template<class _Fty, class... _Args> struct result_of<_Fty /* for empty macro argument */ (_Args...)> { /* template to determine result of call operation */ typedef decltype(::std:: invoke(::std:: declval<_Fty>(), ::std:: declval<_Args>()...)) type; };


 // TEMPLATE STRUCT _Weak_types
template<class _Ty,
 class = void>
 struct _Weak_result_type
 { // default definition
 };

template<class _Ty>
 struct _Weak_result_type<_Ty, typename _Param_tester<
  typename _Ty::result_type>::type>
 { // defined if _Ty::result_type exists
 typedef typename _Ty::result_type result_type;
 };

template<class _Ty,
 class = void>
 struct _Weak_argument_type
  : _Weak_result_type<_Ty>
 { // default definition
 };

template<class _Ty>
 struct _Weak_argument_type<_Ty, typename _Param_tester<
  typename _Ty::argument_type>::type>
  : _Weak_result_type<_Ty>
 { // defined if _Ty::argument_type exists
 typedef typename _Ty::argument_type argument_type;
 };

template<class _Ty,
 class = void>
 struct _Weak_binary_args
  : _Weak_argument_type<_Ty>
 { // default definition
 };

template<class _Ty>
 struct _Weak_binary_args<_Ty, typename _Param_tester<
  typename _Ty::first_argument_type,
  typename _Ty::second_argument_type>::type>
  : _Weak_argument_type<_Ty>
 { // defined if both types exist
 typedef typename _Ty::first_argument_type first_argument_type;
 typedef typename _Ty::second_argument_type second_argument_type;
 };

template<class _Ty>
 struct _Weak_types
 { // provide nested types (sometimes)
 typedef _Is_function<typename remove_pointer<_Ty>::type> _Is_f_or_pf;
 typedef _Is_memfunptr<typename remove_cv<_Ty>::type> _Is_pmf;
 typedef typename _If<_Is_f_or_pf::_Bool_type::value, _Is_f_or_pf,
  typename _If<_Is_pmf::_Bool_type::value, _Is_pmf,
  _Weak_binary_args<_Ty> >::type>::type type;
 };

 // TEMPLATE CLASS reference_wrapper
template<class _Ty>
 class reference_wrapper
  : public _Weak_types<_Ty>::type
 { // stand-in for an assignable reference
public:
 static_assert(is_object<_Ty>::value || is_function<_Ty>::value,
  "reference_wrapper<T> requires T to be an object type "
  "or a function type.");

 typedef _Ty type;

 reference_wrapper(_Ty& _Val)
  : _Ptr(::std:: addressof(_Val))
  { // construct
  }

 operator _Ty&() const
  { // return reference
  return (*_Ptr);
  }

 _Ty& get() const
  { // return reference
  return (*_Ptr);
  }

 template<class... _Types>
  auto operator()(_Types&&... _Args) const
  -> decltype(::std:: invoke(this->get(), ::std:: forward<_Types>(_Args)...))
  { // invoke object/function
  return (::std:: invoke(get(), ::std:: forward<_Types>(_Args)...));
  }

 reference_wrapper(_Ty&&) = delete;

private:
 _Ty *_Ptr;
 };

 // TEMPLATE FUNCTIONS ref AND cref
template<class _Ty> inline
 reference_wrapper<_Ty>
  ref(_Ty& _Val)
 { // create reference_wrapper<_Ty> object
 return (reference_wrapper<_Ty>(_Val));
 }

template<class _Ty>
 void ref(const _Ty&&) = delete;

template<class _Ty> inline
 reference_wrapper<_Ty>
  ref(reference_wrapper<_Ty> _Val)
 { // create reference_wrapper<_Ty> object
 return (::std:: ref(_Val.get()));
 }

template<class _Ty> inline
 reference_wrapper<const _Ty>
  cref(const _Ty& _Val)
 { // create reference_wrapper<const _Ty> object
 return (reference_wrapper<const _Ty>(_Val));
 }

template<class _Ty>
 void cref(const _Ty&&) = delete;

template<class _Ty> inline
 reference_wrapper<const _Ty>
  cref(reference_wrapper<_Ty> _Val)
 { // create reference_wrapper<const _Ty> object
 return (::std:: cref(_Val.get()));
 }

 // TEMPLATE CLASS _Unrefwrap
template<class _Ty>
 struct _Unrefwrap_helper
 { // leave unchanged if not a reference_wrapper
 typedef _Ty type;
 static const bool _Is_refwrap = false;
 };

template<class _Ty>
 struct _Unrefwrap_helper<reference_wrapper<_Ty> >
 { // make a reference from a reference_wrapper
 typedef _Ty& type;
 static const bool _Is_refwrap = true;
 };

template<class _Ty>
 struct _Unrefwrap
 { // decay, then unwrap a reference_wrapper
 typedef typename decay<_Ty>::type _Ty1;
 typedef typename _Unrefwrap_helper<_Ty1>::type type;
 static const bool _Is_refwrap = _Unrefwrap_helper<_Ty1>::_Is_refwrap;
 };


namespace tr1 { // TR1 additions
using ::std:: cref;
using ::std:: ref;
using ::std:: reference_wrapper;
using ::std:: result_of;
 } // namespace tr1



  // ALIAS TEMPLATES
template<class _Ty>
 using remove_const_t = typename remove_const<_Ty>::type;

template<class _Ty>
 using remove_volatile_t = typename remove_volatile<_Ty>::type;

template<class _Ty>
 using remove_cv_t = typename remove_cv<_Ty>::type;

template<class _Ty>
 using add_const_t = typename add_const<_Ty>::type;

template<class _Ty>
 using add_volatile_t = typename add_volatile<_Ty>::type;

template<class _Ty>
 using add_cv_t = typename add_cv<_Ty>::type;

template<class _Ty>
 using remove_reference_t = typename remove_reference<_Ty>::type;

template<class _Ty>
 using add_lvalue_reference_t = typename add_lvalue_reference<_Ty>::type;

template<class _Ty>
 using add_rvalue_reference_t = typename add_rvalue_reference<_Ty>::type;

template<class _Ty>
 using make_signed_t = typename make_signed<_Ty>::type;

template<class _Ty>
 using make_unsigned_t = typename make_unsigned<_Ty>::type;

template<class _Ty>
 using remove_extent_t = typename remove_extent<_Ty>::type;

template<class _Ty>
 using remove_all_extents_t = typename remove_all_extents<_Ty>::type;

template<class _Ty>
 using remove_pointer_t = typename remove_pointer<_Ty>::type;

template<class _Ty>
 using add_pointer_t = typename add_pointer<_Ty>::type;

template<size_t _Len,
 size_t _Align = alignment_of<max_align_t>::value>
 using aligned_storage_t = typename aligned_storage<_Len, _Align>::type;

template<size_t _Len,
 class... _Types>
 using aligned_union_t = typename aligned_union<_Len, _Types...>::type;

template<class _Ty>
 using decay_t = typename decay<_Ty>::type;

template<bool _Test,
 class _Ty = void>
 using enable_if_t = typename enable_if<_Test, _Ty>::type;

template<bool _Test,
 class _Ty1,
 class _Ty2>
 using conditional_t = typename conditional<_Test, _Ty1, _Ty2>::type;

template<class... _Ty>
 using common_type_t = typename common_type<_Ty...>::type;

template<class _Ty>
 using underlying_type_t = typename underlying_type<_Ty>::type;

template<class _Ty>
 using result_of_t = typename result_of<_Ty>::type;

}


/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */


namespace std {
  // TEMPLATE FUNCTION iter_swap (from <xutility>)
template<class _Ty> inline
 void swap(_Ty&, _Ty&)

                                             ;

template<class _FwdIt1,
 class _FwdIt2> inline
 void iter_swap(_FwdIt1 _Left, _FwdIt2 _Right)
 { // swap *_Left and *_Right
 swap(*_Left, *_Right);
 }

  // TEMPLATE FUNCTION swap
template<class _Ty,
 size_t _Size> inline
 void swap(_Ty (&_Left)[_Size], _Ty (&_Right)[_Size])

 { // exchange arrays stored at _Left and _Right
 if (&_Left != &_Right)
  { // worth swapping, swap ranges
  _Ty *_First1 = _Left;
  _Ty *_Last1 = _First1 + _Size;
  _Ty *_First2 = _Right;
  for (; _First1 != _Last1; ++_First1, ++_First2)
   ::std:: iter_swap(_First1, _First2);
  }
 }

template<class _Ty> inline
 void swap(_Ty& _Left, _Ty& _Right)


 { // exchange values stored at _Left and _Right
 _Ty _Tmp = _Move(_Left);
 _Left = _Move(_Right);
 _Right = _Move(_Tmp);
 }

  // TEMPLATE FUNCTION _Swap_adl
template<class _Ty> inline
 void _Swap_adl(_Ty& _Left, _Ty& _Right)

 { // exchange values stored at _Left and _Right, using ADL
 swap(_Left, _Right);
 }

  // STRUCT piecewise_construct_t
struct piecewise_construct_t
 { // tag type for pair tuple arguments
 };




const piecewise_construct_t piecewise_construct =
 piecewise_construct_t();


  // TEMPLATE STRUCT pair


template<class...>
 class tuple;
template<class _Ty1,
 class _Ty2>
 struct pair
 { // store a pair of values
 typedef pair<_Ty1, _Ty2> _Myt;
 typedef _Ty1 first_type;
 typedef _Ty2 second_type;

            pair()
  : first(), second()
  { // default construct
  }

            pair(const _Ty1& _Val1, const _Ty2& _Val2)
  : first(_Val1), second(_Val2)
  { // construct from specified values
  }
 pair(const pair&) = default;
 pair(pair&&) = default;



 template<class _Other1,
  class _Other2,
  class = typename enable_if<is_convertible<const _Other1&, _Ty1>::value
   && is_convertible<const _Other2&, _Ty2>::value,
   void>::type>
             pair(const pair<_Other1, _Other2>& _Right)
  : first(_Right.first), second(_Right.second)
  { // construct from compatible pair
  }
 template<class _Other1,
  class _Other2>
  _Myt& operator=(const pair<_Other1, _Other2>& _Right)
  { // assign from compatible pair
  first = _Right.first;
  second = _Right.second;
  return (*this);
  }




 template<class _Tuple1,
  class _Tuple2,
  size_t... _Indexes1,
  size_t... _Indexes2> inline
  pair(_Tuple1& _Val1,
   _Tuple2& _Val2,
   integer_sequence<size_t, _Indexes1...>,
   integer_sequence<size_t, _Indexes2...>);
 template<class... _Types1,
  class... _Types2> inline
  pair(piecewise_construct_t,
   tuple<_Types1...> _Val1,
   tuple<_Types2...> _Val2);
 template<class _Other1,
  class _Other2,
  class = typename enable_if<is_convertible<_Other1, _Ty1>::value
   && is_convertible<_Other2, _Ty2>::value,
   void>::type>
             pair(_Other1&& _Val1, _Other2&& _Val2)


  : first(::std:: forward<_Other1>(_Val1)),
    second(::std:: forward<_Other2>(_Val2))
  { // construct from moved values
  }

 template<class _Other1,
  class _Other2,
  class = typename enable_if<is_convertible<_Other1, _Ty1>::value
   && is_convertible<_Other2, _Ty2>::value,
   void>::type>
             pair(pair<_Other1, _Other2>&& _Right)


  : first(::std:: forward<_Other1>(_Right.first)),
   second(::std:: forward<_Other2>(_Right.second))
  { // construct from moved compatible pair
  }
 template<class _Other1,
  class _Other2>
  _Myt& operator=(pair<_Other1, _Other2>&& _Right)
  { // assign from moved compatible pair
  first = ::std:: forward<_Other1>(_Right.first);
  second = ::std:: forward<_Other2>(_Right.second);
  return (*this);
  }

 _Myt& operator=(_Myt&& _Right)


  { // assign from moved pair
  first = ::std:: forward<_Ty1>(_Right.first);
  second = ::std:: forward<_Ty2>(_Right.second);
  return (*this);
  }


 void swap(_Myt& _Right)


  { // exchange contents with _Right
  if (this != &_Right)
   { // different, worth swapping
   _Swap_adl(first, _Right.first);
   _Swap_adl(second, _Right.second);
   }
  }

 _Myt& operator=(const _Myt& _Right)
  { // assign from copied pair
  first = _Right.first;
  second = _Right.second;
  return (*this);
  }

 _Ty1 first; // the first stored value
 _Ty2 second; // the second stored value
 };

  // pair TEMPLATE FUNCTIONS
template<class _Ty1,
 class _Ty2> inline
 void swap(pair<_Ty1, _Ty2>& _Left, pair<_Ty1, _Ty2>& _Right)

 { // swap _Left and _Right pairs
 _Left.swap(_Right);
 }

template<class _Ty1,
 class _Ty2> inline
            bool operator==(const pair<_Ty1, _Ty2>& _Left,
  const pair<_Ty1, _Ty2>& _Right)
 { // test for pair equality
 return (_Left.first == _Right.first && _Left.second == _Right.second);
 }

template<class _Ty1,
 class _Ty2> inline
            bool operator!=(const pair<_Ty1, _Ty2>& _Left,
  const pair<_Ty1, _Ty2>& _Right)
 { // test for pair inequality
 return (!(_Left == _Right));
 }

template<class _Ty1,
 class _Ty2> inline
            bool operator<(const pair<_Ty1, _Ty2>& _Left,
  const pair<_Ty1, _Ty2>& _Right)
 { // test if _Left < _Right for pairs
 return (_Left.first < _Right.first ||
  (!(_Right.first < _Left.first) && _Left.second < _Right.second));
 }

template<class _Ty1,
 class _Ty2> inline
            bool operator>(const pair<_Ty1, _Ty2>& _Left,
  const pair<_Ty1, _Ty2>& _Right)
 { // test if _Left > _Right for pairs
 return (_Right < _Left);
 }

template<class _Ty1,
 class _Ty2> inline
            bool operator<=(const pair<_Ty1, _Ty2>& _Left,
  const pair<_Ty1, _Ty2>& _Right)
 { // test if _Left <= _Right for pairs
 return (!(_Right < _Left));
 }

template<class _Ty1,
 class _Ty2> inline
            bool operator>=(const pair<_Ty1, _Ty2>& _Left,
  const pair<_Ty1, _Ty2>& _Right)
 { // test if _Left >= _Right for pairs
 return (!(_Left < _Right));
 }

 // TEMPLATE FUNCTION make_pair


template<class _Ty1,
 class _Ty2> inline
            pair<typename _Unrefwrap<_Ty1>::type,
  typename _Unrefwrap<_Ty2>::type>
  make_pair(_Ty1&& _Val1, _Ty2&& _Val2)
 { // return pair composed from arguments
 typedef pair<typename _Unrefwrap<_Ty1>::type,
  typename _Unrefwrap<_Ty2>::type> _Mypair;
 return (_Mypair(::std:: forward<_Ty1>(_Val1),
  ::std:: forward<_Ty2>(_Val2)));
 }
  // TEMPLATE OPERATORS
 namespace rel_ops
  { // nested namespace to hide relational operators from std
template<class _Ty> inline
 bool operator!=(const _Ty& _Left, const _Ty& _Right)
 { // test for inequality, in terms of equality
 return (!(_Left == _Right));
 }

template<class _Ty> inline
 bool operator>(const _Ty& _Left, const _Ty& _Right)
 { // test if _Left > _Right, in terms of operator<
 return (_Right < _Left);
 }

template<class _Ty> inline
 bool operator<=(const _Ty& _Left, const _Ty& _Right)
 { // test if _Left <= _Right, in terms of operator<
 return (!(_Right < _Left));
 }

template<class _Ty> inline
 bool operator>=(const _Ty& _Left, const _Ty& _Right)
 { // test if _Left >= _Right, in terms of operator<
 return (!(_Left < _Right));
 }
  }

}


namespace std {
template<class _Ty,
 size_t _Size>
 class array;

 // TEMPLATE STRUCT tuple_size
template<class _Tuple>
 struct tuple_size
 { // size of non-tuple
 static_assert(_Always_false<_Tuple>::value, "The C++ Standard doesn't define tuple_size for this type.");

 };

template<class _Ty,
 size_t _Size>
 struct tuple_size<array<_Ty, _Size> >
  : integral_constant<size_t, _Size>
 { // struct to determine number of elements in array
 };

template<class _Ty1,
 class _Ty2>
 struct tuple_size<pair<_Ty1, _Ty2> >
 : integral_constant<size_t, 2>
 { // size of pair
 };


template<class... _Types>
 struct tuple_size<tuple<_Types...> >
 : integral_constant<size_t, sizeof...(_Types)>
 { // size of tuple
 };
template<class _Tuple>
 struct tuple_size<const _Tuple>
 : tuple_size<_Tuple>
 { // size of const tuple
 };

template<class _Tuple>
 struct tuple_size<volatile _Tuple>
 : tuple_size<_Tuple>
 { // size of volatile tuple
 };

template<class _Tuple>
 struct tuple_size<const volatile _Tuple>
 : tuple_size<_Tuple>
 { // size of const volatile tuple
 };

 // CLASS tuple_element (find element by index)
template<size_t _Index,
 class _Tuple>
 struct tuple_element
 { // struct to enforce bounds checking
 static_assert(_Always_false<_Tuple>::value, "tuple_element index out of bounds");

 };

template<size_t _Idx,
 class _Ty,
 size_t _Size>
 struct tuple_element<_Idx, array<_Ty, _Size> >
 { // struct to determine type of element _Idx in array
 tuple_element()
  { // default construct
  static_assert(_Idx < _Size, "array index out of bounds");
  }

 typedef _Ty type;
 };

template<class _Ty1,
 class _Ty2>
 struct tuple_element<0, pair<_Ty1, _Ty2> >
 { // struct to determine type of element 0 in pair
 typedef _Ty1 type;
 };

template<class _Ty1,
 class _Ty2>
 struct tuple_element<1, pair<_Ty1, _Ty2> >
 { // struct to determine type of element 1 in pair
 typedef _Ty2 type;
 };


template<class _This,
 class... _Rest>
 struct tuple_element<0, tuple<_This, _Rest...> >
 { // select first element
 typedef _This type;
 typedef tuple<_This, _Rest...> _Ttype;
 };

template<size_t _Index,
 class _This,
 class... _Rest>
 struct tuple_element<_Index, tuple<_This, _Rest...> >
  : public tuple_element<_Index - 1, tuple<_Rest...> >
 { // recursive tuple_element definition
 };
template<size_t _Index,
 class _Tuple>
 struct tuple_element<_Index, const _Tuple>
  : public tuple_element<_Index, _Tuple>
 { // tuple_element for const
 typedef tuple_element<_Index, _Tuple> _Mybase;
 typedef typename add_const<typename _Mybase::type>::type type;
 };

template<size_t _Index,
 class _Tuple>
 struct tuple_element<_Index, volatile _Tuple>
  : public tuple_element<_Index, _Tuple>
 { // tuple_element for volatile
 typedef tuple_element<_Index, _Tuple> _Mybase;
 typedef typename add_volatile<typename _Mybase::type>::type type;
 };

template<size_t _Index,
 class _Tuple>
 struct tuple_element<_Index, const volatile _Tuple>
  : public tuple_element<_Index, _Tuple>
 { // tuple_element for const volatile
 typedef tuple_element<_Index, _Tuple> _Mybase;
 typedef typename add_cv<typename _Mybase::type>::type type;
 };


template<size_t _Index,
 class _Tuple>
 using tuple_element_t = typename tuple_element<_Index, _Tuple>::type;


 // TUPLE INTERFACE TO pair
template<class _Ret,
 class _Pair> inline
            _Ret _Pair_get(_Pair& _Pr,
  integral_constant<size_t, 0>)
 { // get reference to element 0 in pair _Pr
 return (_Pr.first);
 }

template<class _Ret,
 class _Pair> inline
            _Ret _Pair_get(_Pair& _Pr,
  integral_constant<size_t, 1>)
 { // get reference to element 1 in pair _Pr
 return (_Pr.second);
 }

template<size_t _Idx,
 class _Ty1,
 class _Ty2> inline
            typename tuple_element<_Idx, pair<_Ty1, _Ty2> >::type&
  get(pair<_Ty1, _Ty2>& _Pr)
 { // get reference to element at _Idx in pair _Pr
 typedef typename tuple_element<_Idx, pair<_Ty1, _Ty2> >::type& _Rtype;
 return (_Pair_get<_Rtype>(_Pr, integral_constant<size_t, _Idx>()));
 }

template<class _Ty1,
 class _Ty2> inline
            _Ty1& get(pair<_Ty1, _Ty2>& _Pr)
 { // get reference to element _Ty1 in pair _Pr
 return (::std:: get<0>(_Pr));
 }

template<class _Ty2,
 class _Ty1> inline
            _Ty2& get(pair<_Ty1, _Ty2>& _Pr)
 { // get reference to element _Ty2 in pair _Pr
 return (::std:: get<1>(_Pr));
 }

template<size_t _Idx,
 class _Ty1,
 class _Ty2> inline
            const typename tuple_element<_Idx, pair<_Ty1, _Ty2> >::type&
  get(const pair<_Ty1, _Ty2>& _Pr)
 { // get const reference to element at _Idx in pair _Pr
 typedef const typename tuple_element<_Idx, pair<_Ty1, _Ty2> >::type&
  _Ctype;
 return (_Pair_get<_Ctype>(_Pr, integral_constant<size_t, _Idx>()));
 }

template<class _Ty1,
 class _Ty2> inline
            const _Ty1& get(const pair<_Ty1, _Ty2>& _Pr)
 { // get const reference to element _Ty1 in pair _Pr
 return (::std:: get<0>(_Pr));
 }

template<class _Ty2,
 class _Ty1> inline
            const _Ty2& get(const pair<_Ty1, _Ty2>& _Pr)
 { // get const reference to element _Ty2 in pair _Pr
 return (::std:: get<1>(_Pr));
 }


template<size_t _Idx,
 class _Ty1,
 class _Ty2> inline
            typename tuple_element<_Idx, pair<_Ty1, _Ty2> >::type&&
  get(pair<_Ty1, _Ty2>&& _Pr)
 { // get rvalue reference to element at _Idx in pair _Pr
 typedef typename tuple_element<_Idx, pair<_Ty1, _Ty2> >::type&& _RRtype;
 return (::std:: forward<_RRtype>(::std:: get<_Idx>(_Pr)));
 }

template<class _Ty1,
 class _Ty2> inline
            _Ty1&& get(pair<_Ty1, _Ty2>&& _Pr)
 { // get rvalue reference to element _Ty1 in pair _Pr
 return (::std:: get<0>(::std:: move(_Pr)));
 }

template<class _Ty2,
 class _Ty1> inline
            _Ty2&& get(pair<_Ty1, _Ty2>&& _Pr)
 { // get rvalue reference to element _Ty2 in pair _Pr
 return (::std:: get<1>(::std:: move(_Pr)));
 }


 // TEMPLATE FUNCTION exchange


template<class _Ty,
 class _Other = _Ty> inline
 _Ty exchange(_Ty& _Val, _Other && _New_val)
 { // assign _New_val to _Val, return previous _Val
 _Ty _Old_val = ::std:: move(_Val);
 _Val = ::std:: forward<_Other>(_New_val);
 return (_Old_val);
 }
}



namespace std {
namespace tr1 { // TR1 additions
using ::std:: get;
using ::std:: tuple_element;
using ::std:: tuple_size;
} // namespace tr1
}




/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */



namespace std {
  // MACRO _ITERATOR_DEBUG_LEVEL
  // MACRO _DEBUG_ERROR
  // CLASSES _Container_base*, _Iterator_base*
struct _Container_proxy;
struct _Container_base12;
struct _Iterator_base12;

struct _Container_base0
 { // base of all containers
 void _Orphan_all()
  { // orphan all iterators
  }

 void _Swap_all(_Container_base0&)
  { // swap all iterators
  }


 _Container_proxy *_Myproxy;

 };

struct _Iterator_base0
 { // base of all iterators
 void _Adopt(const void *)
  { // adopt this iterator by parent
  }

 const _Container_base0 *_Getcont() const
  { // get owning container
  return (0);
  }


 _Container_proxy *_Myproxy;
 _Iterator_base12 *_Mynextiter;

 };

  // CLASS _Container_proxy
struct _Container_proxy
 { // store head of iterator chain and back pointer
 _Container_proxy()
  : _Mycont(0), _Myfirstiter(0)
  { // construct from pointers
  }

 const _Container_base12 *_Mycont;
 _Iterator_base12 *_Myfirstiter;
 };

struct _Container_base12
 { // store pointer to _Container_proxy
public:
 _Container_base12()
  : _Myproxy(0)
  { // construct childless container
  }

 _Container_base12(const _Container_base12&)
  : _Myproxy(0)
  { // copy a container
  }

 _Container_base12& operator=(const _Container_base12&)
  { // assign a container
  return (*this);
  }

 ~_Container_base12()
  { // destroy the container
  _Orphan_all();
  }

 _Iterator_base12 **_Getpfirst() const
  { // get address of iterator chain
  return (_Myproxy == 0 ? 0 : &_Myproxy->_Myfirstiter);
  }

 void _Orphan_all(); // orphan all iterators
 void _Swap_all(_Container_base12&); // swap all iterators

 _Container_proxy *_Myproxy;
 };

struct _Iterator_base12
 { // store links to container proxy, next iterator
public:
 _Iterator_base12()
  : _Myproxy(0), _Mynextiter(0)
  { // construct orphaned iterator
  }

 _Iterator_base12(const _Iterator_base12& _Right)
  : _Myproxy(0), _Mynextiter(0)
  { // copy an iterator
  *this = _Right;
  }

 _Iterator_base12& operator=(const _Iterator_base12& _Right)
  { // assign an iterator
  if (_Myproxy == _Right._Myproxy)
   ;
  else if (_Right._Myproxy != 0)
   _Adopt(_Right._Myproxy->_Mycont);
  else
   { // becoming invalid, disown current parent




   }
  return (*this);
  }

 ~_Iterator_base12()
  { // destroy the iterator




  }

 void _Adopt(const _Container_base12 *_Parent)
  { // adopt this iterator by parent
  if (_Parent == 0)
   { // no future parent, just disown current parent




   }
  else
   { // have a parent, do adoption
   _Container_proxy *_Parent_proxy = _Parent->_Myproxy;
   _Myproxy = _Parent_proxy;

   }
  }

 void _Clrcont()
  { // disown owning container
  _Myproxy = 0;
  }

 const _Container_base12 *_Getcont() const
  { // get owning container
  return (_Myproxy == 0 ? 0 : _Myproxy->_Mycont);
  }

 _Iterator_base12 **_Getpnext()
  { // get address of remaining iterator chain
  return (&_Mynextiter);
  }

 void _Orphan_me()
  { // cut ties with parent
  }

 _Container_proxy *_Myproxy;
 _Iterator_base12 *_Mynextiter;
 };

  // MEMBER FUNCTIONS FOR _Container_base12
inline void _Container_base12::_Orphan_all()
 { // orphan all iterators
 }

inline void _Container_base12::_Swap_all(_Container_base12& _Right)
 { // swap all iterators




 _Container_proxy *_Temp = _Myproxy;
 _Myproxy = _Right._Myproxy;
 _Right._Myproxy = _Temp;

 if (_Myproxy != 0)
  _Myproxy->_Mycont = (_Container_base12 *)this;
 if (_Right._Myproxy != 0)
  _Right._Myproxy->_Mycont = (_Container_base12 *)&_Right;
 }


typedef _Container_base0 _Container_base;
typedef _Iterator_base0 _Iterator_base;






 // TEMPLATE CLASS _Compressed_pair
struct _Zero_then_variadic_args_t
 { // tag type for value-initializing first,
 }; // constructing second from remaining args

struct _One_then_variadic_args_t
 { // tag type for constructing first from one arg,
 }; // constructing second from remaining args

template<class _Ty1,
 class _Ty2,
 bool = is_empty<_Ty1>::value>
 class _Compressed_pair
  : private _Ty1
 { // store a pair of values, deriving from empty first
private:
 _Ty2 _Myval2;

public:

 template<class... _Other2>
             explicit _Compressed_pair(_Zero_then_variadic_args_t,
   _Other2&&... _Val2)
  : _Ty1(), _Myval2(::std:: forward<_Other2>(_Val2)...)
  { // construct from forwarded values
  }

 template<class _Other1,
  class... _Other2>
  _Compressed_pair(_One_then_variadic_args_t,
   _Other1&& _Val1, _Other2&&... _Val2)
  : _Ty1(::std:: forward<_Other1>(_Val1)),
   _Myval2(::std:: forward<_Other2>(_Val2)...)
  { // construct from forwarded values
  }
 _Ty1& _Get_first()
  { // return reference to first
  return (*this);
  }

 const _Ty1& _Get_first() const
  { // return const reference to first
  return (*this);
  }

 volatile _Ty1& _Get_first() volatile
  { // return volatile reference to first
  return (*this);
  }

 const volatile _Ty1& _Get_first() const volatile
  { // return const volatile reference to first
  return (*this);
  }

 _Ty2& _Get_second()
  { // return reference to second
  return (_Myval2);
  }

 const _Ty2& _Get_second() const
  { // return const reference to second
  return (_Myval2);
  }

 volatile _Ty2& _Get_second() volatile
  { // return volatile reference to second
  return (_Myval2);
  }

 const volatile _Ty2& _Get_second() const volatile
  { // return const volatile reference to second
  return (_Myval2);
  }
 };

template<class _Ty1,
 class _Ty2>
 class _Compressed_pair<_Ty1, _Ty2, false>
 { // store a pair of values, not deriving from first
private:
 _Ty1 _Myval1;
 _Ty2 _Myval2;

public:

 template<class... _Other2>
             explicit _Compressed_pair(_Zero_then_variadic_args_t,
   _Other2&&... _Val2)
  : _Myval1(), _Myval2(::std:: forward<_Other2>(_Val2)...)
  { // construct from forwarded values
  }

 template<class _Other1,
  class... _Other2>
  _Compressed_pair(_One_then_variadic_args_t,
   _Other1&& _Val1, _Other2&&... _Val2)
  : _Myval1(::std:: forward<_Other1>(_Val1)),
   _Myval2(::std:: forward<_Other2>(_Val2)...)
  { // construct from forwarded values
  }
 _Ty1& _Get_first()
  { // return reference to first
  return (_Myval1);
  }

 const _Ty1& _Get_first() const
  { // return const reference to first
  return (_Myval1);
  }

 volatile _Ty1& _Get_first() volatile
  { // return volatile reference to first
  return (_Myval1);
  }

 const volatile _Ty1& _Get_first() const volatile
  { // return const volatile reference to first
  return (_Myval1);
  }

 _Ty2& _Get_second()
  { // return reference to second
  return (_Myval2);
  }

 const _Ty2& _Get_second() const
  { // return const reference to second
  return (_Myval2);
  }

 volatile _Ty2& _Get_second() volatile
  { // return volatile reference to second
  return (_Myval2);
  }

 const volatile _Ty2& _Get_second() const volatile
  { // return const volatile reference to second
  return (_Myval2);
  }
 };

  // TEMPLATE FUNCTION _Is_checked AND FRIENDS
  // TEMPLATE STRUCT _Get_unchecked_type AND FRIENDS



  // TEMPLATE STRUCT _Get_unchecked_type
template<class _Ty>
 struct _Get_unchecked_type
  { template<class _Uty> static auto _Fn(int) -> _Identity<typename _Uty::_Unchecked_type>; template<class _Uty> static auto _Fn(_Wrap_int) -> _Identity<_Ty>; typedef decltype(_Fn<_Ty>(0)) _Decltype; typedef typename _Decltype::type type; };


  // TEMPLATE STRUCT _Is_checked_helper
template<class _Ty,
 class = void>
 struct _Is_checked_helper
  : false_type
 { // default definition
 };

template<class _Ty>
 struct _Is_checked_helper<_Ty, typename _Param_tester<
  typename _Ty::_Unchecked_type>::type>
  : true_type
 { // defined if _Ty::_Unchecked_type exists
 };

  // TEMPLATE FUNCTION _Is_checked
template<class _Iter> inline
 typename _Is_checked_helper<_Iter>::type _Is_checked(_Iter)
 { // return type is derived from true_type if iterator is checked
 return (typename _Is_checked_helper<_Iter>::type());
 }

  // TEMPLATE FUNCTION _Unchecked
template<class _Iter> inline
 _Iter _Unchecked(_Iter _Src)
 { // construct unchecked from checked, generic
 return (_Src);
 }

  // TEMPLATE FUNCTION _Rechecked
template<class _Iter,
 class _UIter> inline
 _Iter& _Rechecked(_Iter& _Dest, _UIter _Src)
 { // reset checked from unchecked, generic
 _Dest = _Src;
 return (_Dest);
 }

  //	ITERATOR STUFF (from <iterator>)
  // ITERATOR TAGS (from <iterator>)
struct input_iterator_tag
 { // identifying tag for input iterators
 };

struct _Mutable_iterator_tag
 { // identifying tag for mutable iterators
 };

struct output_iterator_tag
 : _Mutable_iterator_tag
 { // identifying tag for output iterators
 };

struct forward_iterator_tag
 : input_iterator_tag, _Mutable_iterator_tag
 { // identifying tag for forward iterators
 };

struct bidirectional_iterator_tag
 : forward_iterator_tag
 { // identifying tag for bidirectional iterators
 };

struct random_access_iterator_tag
 : bidirectional_iterator_tag
 { // identifying tag for random-access iterators
 };

  // POINTER ITERATOR TAGS
struct _Nonscalar_ptr_iterator_tag
 { // pointer to unknown type
 };
struct _Scalar_ptr_iterator_tag
 { // pointer to scalar type
 };

  // TEMPLATE CLASS iterator
template<class _Category,
 class _Ty,
 class _Diff = ptrdiff_t,
 class _Pointer = _Ty *,
 class _Reference = _Ty&>
 struct iterator
 { // base type for iterator classes
 typedef _Category iterator_category;
 typedef _Ty value_type;
 typedef _Diff difference_type;
 typedef _Diff distance_type; // retained
 typedef _Pointer pointer;
 typedef _Reference reference;
 };

template<class _Category,
 class _Ty,
 class _Diff,
 class _Pointer,
 class _Reference,
 class _Base>
 struct _Iterator012
  : public _Base
 { // base type for debugging iterator classes
 typedef _Category iterator_category;
 typedef _Ty value_type;
 typedef _Diff difference_type;
 typedef _Diff distance_type; // retained
 typedef _Pointer pointer;
 typedef _Reference reference;
 };

// base for output iterators
typedef iterator<output_iterator_tag, void, void, void, void> _Outit;

  // TEMPLATE CLASS _Is_iterator
template<class,
 class = void>
 struct _Is_iterator
  : false_type
 { // default definition
 };

template<class _Ty>
 struct _Is_iterator<_Ty, typename _Param_tester<
  typename _Ty::iterator_category,
  typename _Ty::value_type,
  typename _Ty::difference_type,
  typename _Ty::pointer,
  typename _Ty::reference
  >::type>
  : true_type
 { // defined if _Ty::* types exist
 };

template<class _Ty>
 struct _Is_iterator<_Ty *>
  : true_type
 { // defined for pointers
 };

  // TEMPLATE CLASS iterator_traits
template<class _Iter,
 bool = _Is_iterator<_Iter>::value>
 struct _Iterator_traits_base
 { // get traits from iterator _Iter
 typedef typename _Iter::iterator_category iterator_category;
 typedef typename _Iter::value_type value_type;
 typedef typename _Iter::difference_type difference_type;
 typedef difference_type distance_type; // retained
 typedef typename _Iter::pointer pointer;
 typedef typename _Iter::reference reference;
 };

template<class _Iter>
 struct _Iterator_traits_base<_Iter, false>
 { // empty for non-iterators
 };

template<class _Iter>
 struct iterator_traits
  : _Iterator_traits_base<_Iter>
 { // get traits from iterator _Iter, if possible
 };

template<class _Ty>
 struct iterator_traits<_Ty *>
 { // get traits from pointer
 typedef random_access_iterator_tag iterator_category;
 typedef _Ty value_type;
 typedef ptrdiff_t difference_type;
 typedef ptrdiff_t distance_type; // retained
 typedef _Ty *pointer;
 typedef _Ty& reference;
 };

template<class _Ty>
 struct iterator_traits<const _Ty *>
 { // get traits from const pointer
 typedef random_access_iterator_tag iterator_category;
 typedef _Ty value_type;
 typedef ptrdiff_t difference_type;
 typedef ptrdiff_t distance_type; // retained
 typedef const _Ty *pointer;
 typedef const _Ty& reference;
 };

  // TEMPLATE FUNCTION _Iter_cat
template<class _Iter> inline
 typename iterator_traits<_Iter>::iterator_category
  _Iter_cat(const _Iter&)
 { // return category from iterator argument
 typename iterator_traits<_Iter>::iterator_category _Cat;
 return (_Cat);
 }

  // TEMPLATE FUNCTION _Ptr_cat
template<class _Iter1,
 class _Iter2> inline
 _Nonscalar_ptr_iterator_tag _Ptr_cat(_Iter1&, _Iter2&)
 { // return pointer category from arbitrary arguments
 _Nonscalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }
  // INTEGER FUNCTION _Ptr_cat
inline _Scalar_ptr_iterator_tag _Ptr_cat(bool *, bool *)
 { // return pointer category from pointer to bool arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(const bool *, bool *)
 { // return pointer category from pointer to bool arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(char *, char *)
 { // return pointer category from pointer to char arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(const char *, char *)
 { // return pointer category from pointer to char arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(signed char *, signed char *)
 { // return pointer category from pointer to signed char arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(const signed char *, signed char *)
 { // return pointer category from pointer to signed char arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(unsigned char *,
 unsigned char *)
 { // return pointer category from pointer to unsigned char arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(const unsigned char *,
 unsigned char *)
 { // return pointer category from pointer to unsigned char arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(short *, short *)
 { // return pointer category from pointer to short arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(const short *, short *)
 { // return pointer category from pointer to short arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(unsigned short *,
 unsigned short *)
 { // return pointer category from pointer to unsigned short arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(const unsigned short *,
 unsigned short *)
 { // return pointer category from pointer to unsigned short arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(int *, int *)
 { // return pointer category from pointer to int arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(const int *, int *)
 { // return pointer category from pointer to int arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(unsigned int *, unsigned int *)
 { // return pointer category from pointer to unsigned int arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(const unsigned int *, unsigned int *)
 { // return pointer category from pointer to unsigned int arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(long *, long *)
 { // return pointer category from pointer to long arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(const long *, long *)
 { // return pointer category from pointer to long arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(unsigned long *,
 unsigned long *)
 { // return pointer category from pointer to unsigned long arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(const unsigned long *,
 unsigned long *)
 { // return pointer category from pointer to unsigned long arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(float *, float *)
 { // return pointer category from pointer to float arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(const float *, float *)
 { // return pointer category from pointer to float arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(double *, double *)
 { // return pointer category from pointer to double arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(const double *, double *)
 { // return pointer category from pointer to double arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(long double *, long double *)
 { // return pointer category from pointer to long double arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(const long double *, long double *)
 { // return pointer category from pointer to long double arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }


inline _Scalar_ptr_iterator_tag _Ptr_cat(long long *, long long *)
 { // return pointer category from pointer to long long arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(const long long *, long long *)
 { // return pointer category from pointer to long long arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(unsigned long long *, unsigned long long *)
 { // return pointer category from pointer to ulong long arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }

inline _Scalar_ptr_iterator_tag _Ptr_cat(const unsigned long long *, unsigned long long *)
 { // return pointer category from pointer to ulong long arguments
 _Scalar_ptr_iterator_tag _Cat;
 return (_Cat);
 }


  // DEBUG TESTING MACROS
  // MORE ITERATOR STUFF (from <iterator>)
  // TEMPLATE FUNCTION _Val_type
template<class _Iter> inline
 typename iterator_traits<_Iter>::value_type *_Val_type(_Iter)
 { // return value type from arbitrary argument
 return (0);
 }

  // TEMPLATE FUNCTION advance
template<class _InIt,
 class _Diff> inline
 void _Advance(_InIt& _Where, _Diff _Off, input_iterator_tag)
 { // increment iterator by offset, input iterators





 for (; 0 < _Off; --_Off)
  ++_Where;
 }

template<class _FwdIt,
 class _Diff> inline
 void _Advance(_FwdIt& _Where, _Diff _Off, forward_iterator_tag)
 { // increment iterator by offset, forward iterators





 for (; 0 < _Off; --_Off)
  ++_Where;
 }

template<class _BidIt,
 class _Diff> inline
 void _Advance(_BidIt& _Where, _Diff _Off, bidirectional_iterator_tag)
 { // increment iterator by offset, bidirectional iterators
 for (; 0 < _Off; --_Off)
  ++_Where;
 for (; _Off < 0; ++_Off)
  --_Where;
 }

template<class _RanIt,
 class _Diff> inline
 void _Advance(_RanIt& _Where, _Diff _Off, random_access_iterator_tag)
 { // increment iterator by offset, random-access iterators
 _Where += _Off;
 }

template<class _InIt,
 class _Diff> inline
 void advance(_InIt& _Where, _Diff _Off)
 { // increment iterator by offset, arbitrary iterators
 _Advance(_Where, _Off, _Iter_cat(_Where));
 }

  // TEMPLATE FUNCTION _Dist_type
template<class _Iter> inline
 typename iterator_traits<_Iter>::difference_type
  *_Dist_type(_Iter)
 { // return distance type from arbitrary argument
 return (0);
 }

  // TEMPLATE FUNCTIONS distance and _Distance
template<class _InIt,
 class _Diff> inline
  void _Distance2(_InIt _First, _InIt _Last, _Diff& _Off,
   input_iterator_tag)
 { // add to _Off distance between input iterators
 for (; _First != _Last; ++_First)
  ++_Off;
 }

template<class _FwdIt,
 class _Diff> inline
  void _Distance2(_FwdIt _First, _FwdIt _Last, _Diff& _Off,
   forward_iterator_tag)
 { // add to _Off distance between forward iterators (redundant)
 for (; _First != _Last; ++_First)
  ++_Off;
 }

template<class _BidIt,
 class _Diff> inline
  void _Distance2(_BidIt _First, _BidIt _Last, _Diff& _Off,
   bidirectional_iterator_tag)
 { // add to _Off distance between bidirectional iterators (redundant)
 for (; _First != _Last; ++_First)
  ++_Off;
 }

template<class _RanIt,
 class _Diff> inline
  void _Distance2(_RanIt _First, _RanIt _Last, _Diff& _Off,
   random_access_iterator_tag)
 { // add to _Off distance between random-access iterators
 _Off += _Last - _First;
 }

template<class _InIt> inline
 typename iterator_traits<_InIt>::difference_type
  distance(_InIt _First, _InIt _Last)
 { // return distance between iterators
 typename iterator_traits<_InIt>::difference_type _Off = 0;
 _Distance2(_First, _Last, _Off, _Iter_cat(_First));
 return (_Off);
 }

template<class _InIt,
 class _Diff> inline
  void _Distance(_InIt _First, _InIt _Last, _Diff& _Off)
 { // add to _Off distance between iterators
 _Distance2(_First, _Last, _Off, _Iter_cat(_First));
 }

  // TEMPLATE FUNCTION next
template<class _FwdIt> inline
 _FwdIt next(_FwdIt _First,
  typename iterator_traits<_FwdIt>::difference_type _Off = 1)
 { // increment iterator
 static_assert((is_base_of<forward_iterator_tag, typename iterator_traits<_FwdIt>::iterator_category>::value), "next requires forward iterator");



 ::std:: advance(_First, _Off);
 return (_First);
 }

  // TEMPLATE FUNCTION prev
template<class _BidIt> inline
 _BidIt prev(_BidIt _First,
  typename iterator_traits<_BidIt>::difference_type _Off = 1)
 { // decrement iterator
 static_assert((is_base_of<bidirectional_iterator_tag, typename iterator_traits<_BidIt>::iterator_category>::value), "prev requires bidirectional iterator");



 ::std:: advance(_First, -_Off);
 return (_First);
 }

  // TEMPLATE CLASS _Revranit
template<class _Ty>
 struct pointer_traits;

template<class _RanIt,
 class _Base>
 class _Revranit
  : public _Base
 { // wrap iterator to run it backwards
public:
 typedef _Revranit<_RanIt, _Base> _Myt;
 typedef typename _Base::difference_type difference_type;
 typedef typename _Base::pointer pointer;
 typedef typename _Base::reference reference;
 typedef _RanIt iterator_type;

 _Revranit()
  : current()
  { // construct with value-initialized wrapped iterator
  }

 explicit _Revranit(_RanIt _Right)
  : current(_Right)
  { // construct wrapped iterator from _Right
  }

 template<class _RanIt2,
  class _Base2>
  _Revranit(const _Revranit<_RanIt2, _Base2>& _Right)
  : current(_Right.base())
  { // initialize with compatible base
  }

 _RanIt base() const
  { // return wrapped iterator
  return (current);
  }

 reference operator*() const
  { // return designated value
  _RanIt _Tmp = current;
  return (*--_Tmp);
  }

 pointer operator->() const
  { // return pointer to class object
  return (::std:: pointer_traits<pointer>::pointer_to(**this));
  }

 _Myt& operator++()
  { // preincrement
  --current;
  return (*this);
  }

 _Myt operator++(int)
  { // postincrement
  _Myt _Tmp = *this;
  --current;
  return (_Tmp);
  }

 _Myt& operator--()
  { // predecrement
  ++current;
  return (*this);
  }

 _Myt operator--(int)
  { // postdecrement
  _Myt _Tmp = *this;
  ++current;
  return (_Tmp);
  }

 template<class _RanIt2,
  class _Base2>
  bool _Equal(const _Revranit<_RanIt2, _Base2>& _Right) const
  { // test for iterator equality
  return (current == _Right.base());
  }

// N.B. functions valid for random-access iterators only beyond this point

 _Myt& operator+=(difference_type _Off)
  { // increment by integer
  current -= _Off;
  return (*this);
  }

 _Myt operator+(difference_type _Off) const
  { // return this + integer
  return (_Myt(current - _Off));
  }

 _Myt& operator-=(difference_type _Off)
  { // decrement by integer
  current += _Off;
  return (*this);
  }

 _Myt operator-(difference_type _Off) const
  { // return this - integer
  return (_Myt(current + _Off));
  }

 reference operator[](difference_type _Off) const
  { // subscript
  return (*(*this + _Off));
  }

 template<class _RanIt2,
  class _Base2>
  bool _Less(const _Revranit<_RanIt2, _Base2>& _Right) const
  { // test if this < _Right
  return (_Right.base() < current);
  }

 difference_type operator-(const _Myt& _Right) const
  { // return difference of iterators
  return (_Right.base() - current);
  }

protected:
 _RanIt current; // the wrapped iterator
 };

  // TEMPLATE CLASS reverse_iterator
template<class _RanIt>
 class reverse_iterator
  : public _Revranit<_RanIt, iterator<
   typename iterator_traits<_RanIt>::iterator_category,
   typename iterator_traits<_RanIt>::value_type,
   typename iterator_traits<_RanIt>::difference_type,
   typename iterator_traits<_RanIt>::pointer,
   typename iterator_traits<_RanIt>::reference> >
 { // wrap iterator to run it backwards
 typedef reverse_iterator<_RanIt> _Myt;
 typedef _Revranit<_RanIt, iterator<
  typename iterator_traits<_RanIt>::iterator_category,
  typename iterator_traits<_RanIt>::value_type,
  typename iterator_traits<_RanIt>::difference_type,
  typename iterator_traits<_RanIt>::pointer,
  typename iterator_traits<_RanIt>::reference> > _Mybase;

public:
 typedef typename iterator_traits<_RanIt>::difference_type difference_type;
 typedef typename iterator_traits<_RanIt>::pointer pointer;
 typedef typename iterator_traits<_RanIt>::reference reference;
 typedef _RanIt iterator_type;

 reverse_iterator()
  { // construct with default wrapped iterator
  }

 explicit reverse_iterator(_RanIt _Right)
  : _Mybase(_Right)
  { // construct wrapped iterator from _Right
  }

 template<class _Other>
  reverse_iterator(const reverse_iterator<_Other>& _Right)
  : _Mybase(_Right.base())
  { // initialize with compatible base
  }

 reverse_iterator(_Mybase _Right)
  : _Mybase(_Right)
  { // construct wrapped iterator from base object
  }

 template<class _Other>
  _Myt& operator=(const reverse_iterator<_Other>& _Right)
  { // assign from compatible base
  this->current = _Right.base();
  return (*this);
  }

 _Myt& operator++()
  { // preincrement
  ++*((_Mybase *)this);
  return (*this);
  }

 _Myt operator++(int)
  { // postincrement
  _Myt _Tmp = *this;
  ++*this;
  return (_Tmp);
  }

 _Myt& operator--()
  { // predecrement
  --*((_Mybase *)this);
  return (*this);
  }

 _Myt operator--(int)
  { // postdecrement
  _Myt _Tmp = *this;
  --*this;
  return (_Tmp);
  }

 _Myt& operator+=(difference_type _Off)
  { // increment by integer
  *((_Mybase *)this) += _Off;
  return (*this);
  }

 _Myt operator+(difference_type _Off) const
  { // return this + integer
  _Myt _Tmp = *this;
  return (_Tmp += _Off);
  }

 _Myt& operator-=(difference_type _Off)
  { // decrement by integer
  *((_Mybase *)this) -= _Off;
  return (*this);
  }

 _Myt operator-(difference_type _Off) const
  { // return this - integer
  _Myt _Tmp = *this;
  return (_Tmp -= _Off);
  }
 };

template<class _RanIt>
 struct _Is_checked_helper<reverse_iterator<_RanIt> >
  : public _Is_checked_helper<_RanIt>
 { // mark reverse_iterator as checked if its wrapped iterator is checked
 };

  // reverse_iterator TEMPLATE OPERATORS
template<class _RanIt> inline
 reverse_iterator<_RanIt> operator+(
  typename reverse_iterator<_RanIt>::difference_type _Off,
  const reverse_iterator<_RanIt>& _Right)
 { // return reverse_iterator + integer
 return (_Right + _Off);
 }


template<class _RanIt1,
 class _RanIt2>
 auto inline operator-(const reverse_iterator<_RanIt1>& _Left,
  const reverse_iterator<_RanIt2>& _Right)
   -> decltype(_Right.base() - _Left.base())
 { // return difference of reverse_iterators
 return (_Right.base() - _Left.base());
 }
template<class _RanIt1,
 class _RanIt2> inline
 bool operator==(const reverse_iterator<_RanIt1>& _Left,
  const reverse_iterator<_RanIt2>& _Right)
 { // test for reverse_iterator equality
 return (_Left.base() == _Right.base());
 }

template<class _RanIt1,
 class _RanIt2> inline
 bool operator!=(const reverse_iterator<_RanIt1>& _Left,
  const reverse_iterator<_RanIt2>& _Right)
 { // test for reverse_iterator inequality
 return (!(_Left == _Right));
 }

template<class _RanIt1,
 class _RanIt2> inline
 bool operator<(const reverse_iterator<_RanIt1>& _Left,
  const reverse_iterator<_RanIt2>& _Right)
 { // test for reverse_iterator < reverse_iterator
 return (_Right.base() < _Left.base());
 }

template<class _RanIt1,
 class _RanIt2> inline
 bool operator>(const reverse_iterator<_RanIt1>& _Left,
  const reverse_iterator<_RanIt2>& _Right)
 { // test for reverse_iterator > reverse_iterator
 return (_Right < _Left);
 }

template<class _RanIt1,
 class _RanIt2> inline
 bool operator<=(const reverse_iterator<_RanIt1>& _Left,
  const reverse_iterator<_RanIt2>& _Right)
 { // test for reverse_iterator <= reverse_iterator
 return (!(_Right < _Left));
 }

template<class _RanIt1,
 class _RanIt2> inline
 bool operator>=(const reverse_iterator<_RanIt1>& _Left,
  const reverse_iterator<_RanIt2>& _Right)
 { // test for reverse_iterator >= reverse_iterator
 return (!(_Left < _Right));
 }


  // TEMPLATE FUNCTION make_reverse_iterator
template<class _RanIt> inline
 reverse_iterator<_RanIt> make_reverse_iterator(_RanIt _Iter)
 { // make reverse_iterator from iterator
 return (reverse_iterator<_RanIt>(_Iter));
 }

  // TEMPLATE FUNCTIONS begin AND end


template<class _Container>
 auto inline begin(_Container& _Cont) -> decltype(_Cont.begin())
 { // get beginning of sequence
 return (_Cont.begin());
 }

template<class _Container>
 auto inline begin(const _Container& _Cont) -> decltype(_Cont.begin())
 { // get beginning of sequence
 return (_Cont.begin());
 }

template<class _Container>
 auto inline end(_Container& _Cont) -> decltype(_Cont.end())
 { // get end of sequence
 return (_Cont.end());
 }

template<class _Container>
 auto inline end(const _Container& _Cont) -> decltype(_Cont.end())
 { // get end of sequence
 return (_Cont.end());
 }
template<class _Ty,
 size_t _Size> inline
            _Ty *begin(_Ty (&_Array)[_Size])
 { // get beginning of array
 return (_Array);
 }

template<class _Ty,
 size_t _Size> inline
            _Ty *end(_Ty (&_Array)[_Size])
 { // get end of array
 return (_Array + _Size);
 }

  // TEMPLATE FUNCTIONS cbegin AND cend
template<class _Container>
            auto inline cbegin(const _Container& _Cont)

  -> decltype(::std:: begin(_Cont))
 { // get beginning of sequence
 return (::std:: begin(_Cont));
 }

template<class _Container>
            auto inline cend(const _Container& _Cont)

  -> decltype(::std:: end(_Cont))
 { // get end of sequence
 return (::std:: end(_Cont));
 }

  // TEMPLATE FUNCTIONS rbegin AND rend
template<class _Container>
 auto inline rbegin(_Container& _Cont) -> decltype(_Cont.rbegin())
 { // get beginning of reversed sequence
 return (_Cont.rbegin());
 }

template<class _Container>
 auto inline rbegin(const _Container& _Cont) -> decltype(_Cont.rbegin())
 { // get beginning of reversed sequence
 return (_Cont.rbegin());
 }

template<class _Container>
 auto inline rend(_Container& _Cont) -> decltype(_Cont.rend())
 { // get end of reversed sequence
 return (_Cont.rend());
 }

template<class _Container>
 auto inline rend(const _Container& _Cont) -> decltype(_Cont.rend())
 { // get end of reversed sequence
 return (_Cont.rend());
 }

template<class _Ty,
 size_t _Size> inline
 reverse_iterator<_Ty *> rbegin(_Ty (&_Array)[_Size])
 { // get beginning of reversed array
 return (reverse_iterator<_Ty *>(_Array + _Size));
 }

template<class _Ty,
 size_t _Size> inline
 reverse_iterator<_Ty *> rend(_Ty (&_Array)[_Size])
 { // get end of reversed array
 return (reverse_iterator<_Ty *>(_Array));
 }

template<class _Elem> inline
 reverse_iterator<const _Elem *>
  rbegin(::std:: initializer_list<_Elem> _Ilist)
 { // get beginning of reversed sequence
 return (reverse_iterator<const _Elem *>(_Ilist.end()));
 }

template<class _Elem> inline
 reverse_iterator<const _Elem *>
  rend(::std:: initializer_list<_Elem> _Ilist)
 { // get end of reversed sequence
 return (reverse_iterator<const _Elem *>(_Ilist.begin()));
 }

  // TEMPLATE FUNCTIONS crbegin AND crend
template<class _Container>
 auto inline crbegin(const _Container& _Cont)
  -> decltype(::std:: rbegin(_Cont))
 { // get beginning of reversed sequence
 return (::std:: rbegin(_Cont));
 }

template<class _Container>
 auto inline crend(const _Container& _Cont)
  -> decltype(::std:: rend(_Cont))
 { // get end of reversed sequence
 return (::std:: rend(_Cont));
 }
  // TEMPLATE CLASS _Array_const_iterator
template<class _Ty,
 size_t _Size>
 class _Array_const_iterator
  : public _Iterator012<random_access_iterator_tag,
   _Ty,
   ptrdiff_t,
   const _Ty *,
   const _Ty&,
   _Iterator_base>
 { // iterator for nonmutable array
public:
 typedef _Array_const_iterator<_Ty, _Size> _Myiter;
 typedef random_access_iterator_tag iterator_category;

 typedef _Ty value_type;
 typedef size_t size_type;
 typedef ptrdiff_t difference_type;
 typedef const _Ty *pointer;
 typedef const _Ty& reference;


 _Array_const_iterator()
  { // construct with null pointer
  _Ptr = 0;
  }

 explicit _Array_const_iterator(pointer _Parg, size_t _Off = 0)
  { // construct with pointer and offset
  _Ptr = _Parg + _Off;
  }

 typedef pointer _Unchecked_type;

 _Myiter& _Rechecked(_Unchecked_type _Right)
  { // reset from unchecked iterator
  _Ptr = _Right;
  return (*this);
  }

 _Unchecked_type _Unchecked() const
  { // make an unchecked iterator
  return (_Ptr);
  }

 reference operator*() const
  { // return designated object
  return (*_Ptr);
  }

 pointer operator->() const
  { // return pointer to class object
  return (::std:: pointer_traits<pointer>::pointer_to(**this));
  }

 _Myiter& operator++()
  { // preincrement
  ++_Ptr;
  return (*this);
  }

 _Myiter operator++(int)
  { // postincrement
  _Myiter _Tmp = *this;
  ++*this;
  return (_Tmp);
  }

 _Myiter& operator--()
  { // predecrement
  --_Ptr;
  return (*this);
  }

 _Myiter operator--(int)
  { // postdecrement
  _Myiter _Tmp = *this;
  --*this;
  return (_Tmp);
  }

 _Myiter& operator+=(difference_type _Off)
  { // increment by integer
  _Ptr += _Off;
  return (*this);
  }

 _Myiter operator+(difference_type _Off) const
  { // return this + integer
  _Myiter _Tmp = *this;
  return (_Tmp += _Off);
  }

 _Myiter& operator-=(difference_type _Off)
  { // decrement by integer
  return (*this += -_Off);
  }

 _Myiter operator-(difference_type _Off) const
  { // return this - integer
  _Myiter _Tmp = *this;
  return (_Tmp -= _Off);
  }

 difference_type operator-(const _Myiter& _Right) const
  { // return difference of iterators
  return (_Ptr - _Right._Ptr);
  }

 reference operator[](difference_type _Off) const
  { // subscript
  return (*(*this + _Off));
  }

 bool operator==(const _Myiter& _Right) const
  { // test for iterator equality
  return (_Ptr == _Right._Ptr);
  }

 bool operator!=(const _Myiter& _Right) const
  { // test for iterator inequality
  return (!(*this == _Right));
  }

 bool operator<(const _Myiter& _Right) const
  { // test if this < _Right
  return (_Ptr < _Right._Ptr);
  }

 bool operator>(const _Myiter& _Right) const
  { // test if this > _Right
  return (_Right < *this);
  }

 bool operator<=(const _Myiter& _Right) const
  { // test if this <= _Right
  return (!(_Right < *this));
  }

 bool operator>=(const _Myiter& _Right) const
  { // test if this >= _Right
  return (!(*this < _Right));
  }

 pointer _Ptr; // beginning of array
 };

template<class _Ty,
 size_t _Size> inline
 typename _Array_const_iterator<_Ty, _Size>::_Unchecked_type
  _Unchecked(_Array_const_iterator<_Ty, _Size> _Iter)
 { // convert to unchecked
 return (_Iter._Unchecked());
 }

template<class _Ty,
 size_t _Size> inline
 _Array_const_iterator<_Ty, _Size>&
  _Rechecked(_Array_const_iterator<_Ty, _Size>& _Iter,
   typename _Array_const_iterator<_Ty, _Size>
    ::_Unchecked_type _Right)
 { // convert to checked
 return (_Iter._Rechecked(_Right));
 }

template<class _Ty,
 size_t _Size> inline
 _Array_const_iterator<_Ty, _Size> operator+(
  typename _Array_const_iterator<_Ty, _Size>::difference_type _Off,
  _Array_const_iterator<_Ty, _Size> _Next)
 { // add offset to iterator
 return (_Next += _Off);
 }

  // TEMPLATE CLASS _Array_iterator
template<class _Ty,
 size_t _Size>
 class _Array_iterator
  : public _Array_const_iterator<_Ty, _Size>
 { // iterator for mutable array
public:
 typedef _Array_iterator<_Ty, _Size> _Myiter;
 typedef _Array_const_iterator<_Ty, _Size> _Mybase;
 typedef random_access_iterator_tag iterator_category;

 typedef _Ty value_type;
 typedef size_t size_type;
 typedef ptrdiff_t difference_type;
 typedef _Ty *pointer;
 typedef _Ty& reference;

 _Array_iterator()
  { // construct with null pointer
  }

 explicit _Array_iterator(pointer _Parg, size_t _Off = 0)
  : _Mybase(_Parg, _Off)
  { // construct with pointer and offset
  }

 typedef pointer _Unchecked_type;

 _Myiter& _Rechecked(_Unchecked_type _Right)
  { // reset from unchecked iterator
  ((_Mybase *)this)->_Rechecked(_Right);
  return (*this);
  }

 _Unchecked_type _Unchecked() const
  { // make an unchecked iterator
  return ((pointer)((_Mybase *)this)->_Unchecked());
  }

 reference operator*() const
  { // return designated object
  return ((reference)**(_Mybase *)this);
  }

 pointer operator->() const
  { // return pointer to class object
  return (::std:: pointer_traits<pointer>::pointer_to(**this));
  }

 _Myiter& operator++()
  { // preincrement
  ++*(_Mybase *)this;
  return (*this);
  }

 _Myiter operator++(int)
  { // postincrement
  _Myiter _Tmp = *this;
  ++*this;
  return (_Tmp);
  }

 _Myiter& operator--()
  { // predecrement
  --*(_Mybase *)this;
  return (*this);
  }

 _Myiter operator--(int)
  { // postdecrement
  _Myiter _Tmp = *this;
  --*this;
  return (_Tmp);
  }

 _Myiter& operator+=(difference_type _Off)
  { // increment by integer
  *(_Mybase *)this += _Off;
  return (*this);
  }

 _Myiter operator+(difference_type _Off) const
  { // return this + integer
  _Myiter _Tmp = *this;
  return (_Tmp += _Off);
  }

 _Myiter& operator-=(difference_type _Off)
  { // decrement by integer
  return (*this += -_Off);
  }

 _Myiter operator-(difference_type _Off) const
  { // return this - integer
  _Myiter _Tmp = *this;
  return (_Tmp -= _Off);
  }

 difference_type operator-(const _Mybase& _Right) const
  { // return difference of iterators
  return (*(_Mybase *)this - _Right);
  }

 reference operator[](difference_type _Off) const
  { // subscript
  return (*(*this + _Off));
  }
 };

template<class _Ty,
 size_t _Size> inline
 typename _Array_iterator<_Ty, _Size>::_Unchecked_type
  _Unchecked(_Array_iterator<_Ty, _Size> _Iter)
 { // convert to unchecked
 return (_Iter._Unchecked());
 }

template<class _Ty,
 size_t _Size> inline
 _Array_iterator<_Ty, _Size>&
  _Rechecked(_Array_iterator<_Ty, _Size>& _Iter,
   typename _Array_iterator<_Ty, _Size>
    ::_Unchecked_type _Right)
 { // convert to checked
 return (_Iter._Rechecked(_Right));
 }

template<class _Ty,
 size_t _Size> inline
 _Array_iterator<_Ty, _Size> operator+(
  typename _Array_iterator<_Ty, _Size>::difference_type _Off,
  _Array_iterator<_Ty, _Size> _Next)
 { // add offset to iterator
 return (_Next += _Off);
 }


  // TEMPLATE CLASS move_iterator
template<class _RanIt>
 class move_iterator
 { // wrap iterator to move rvalues
public:
 typedef move_iterator<_RanIt> _Myt;
 typedef typename iterator_traits<_RanIt>::iterator_category
  iterator_category;
 typedef typename iterator_traits<_RanIt>::value_type
  value_type;
 typedef typename iterator_traits<_RanIt>::difference_type
  difference_type;
 typedef _RanIt pointer;
 typedef value_type&& reference;
 typedef _RanIt iterator_type;

 move_iterator()
  : current()
  { // construct with value-initialized wrapped iterator
  }

 explicit move_iterator(iterator_type _Right)
  : current(_Right)
  { // construct wrapped iterator from _Right
  }

 template<class _RanIt2>
  move_iterator(const move_iterator<_RanIt2>& _Right)
  : current(_Right.base())
  { // initialize with compatible base
  }

 template<class _RanIt2>
  _Myt& operator=(const move_iterator<_RanIt2>& _Right)
  { // assign with compatible base
  current = _Right.base();
  return (*this);
  }

 _RanIt base() const
  { // return wrapped iterator
  return (current);
  }

 reference operator*() const
  { // return designated value

  return (::std:: move(*current));




  }

 pointer operator->() const
  { // return pointer to class object
  return (current);
  }

 _Myt& operator++()
  { // preincrement
  ++current;
  return (*this);
  }

 _Myt operator++(int)
  { // postincrement
  _Myt _Tmp = *this;
  ++current;
  return (_Tmp);
  }

 _Myt& operator--()
  { // predecrement
  --current;
  return (*this);
  }

 _Myt operator--(int)
  { // postdecrement
  _Myt _Tmp = *this;
  --current;
  return (_Tmp);
  }

 template<class _RanIt2>
  bool _Equal(const move_iterator<_RanIt2>& _Right) const
  { // test for iterator equality
  return (current == _Right.base());
  }

// N.B. functions valid for random-access iterators only beyond this point

 _Myt& operator+=(difference_type _Off)
  { // increment by integer
  current += _Off;
  return (*this);
  }

 _Myt operator+(difference_type _Off) const
  { // return this + integer
  return (_Myt(current + _Off));
  }

 _Myt& operator-=(difference_type _Off)
  { // decrement by integer
  current -= _Off;
  return (*this);
  }

 _Myt operator-(difference_type _Off) const
  { // return this - integer
  return (_Myt(current - _Off));
  }

 reference operator[](difference_type _Off) const
  { // subscript

  return (::std:: move(current[_Off]));




  }

 template<class _RanIt2>
  bool _Less(const move_iterator<_RanIt2>& _Right) const
  { // test if this < _Right
  return (current < _Right.base());
  }

 difference_type operator-(const _Myt& _Right) const
  { // return difference of iterators
  return (current - _Right.base());
  }

protected:
 iterator_type current; // the wrapped iterator
 };

template<class _RanIt>
 struct _Is_checked_helper<move_iterator<_RanIt> >
  : public _Is_checked_helper<_RanIt>
 { // mark move_iterator as checked if its wrapped iterator is checked
 };

  // move_iterator TEMPLATE OPERATORS
template<class _RanIt,
 class _Diff> inline
 move_iterator<_RanIt>
  operator+(_Diff _Off,
  const move_iterator<_RanIt>& _Right)
 { // return move_iterator + integer
 return (_Right + _Off);
 }


template<class _RanIt1,
 class _RanIt2>
 auto inline operator-(
  move_iterator<_RanIt1>& _Left,
  const move_iterator<_RanIt2>& _Right)
   -> decltype(_Left.base() - _Right.base())
 { // test for move_iterator equality
 return (_Left.base() - _Right.base());
 }
template<class _RanIt1,
 class _RanIt2> inline
 bool operator==(
  const move_iterator<_RanIt1>& _Left,
  const move_iterator<_RanIt2>& _Right)
 { // test for move_iterator equality
 return (_Left._Equal(_Right));
 }

template<class _RanIt1,
 class _RanIt2> inline
 bool operator!=(
  const move_iterator<_RanIt1>& _Left,
  const move_iterator<_RanIt2>& _Right)
 { // test for move_iterator inequality
 return (!(_Left == _Right));
 }

template<class _RanIt1,
 class _RanIt2> inline
 bool operator<(
  const move_iterator<_RanIt1>& _Left,
  const move_iterator<_RanIt2>& _Right)
 { // test for move_iterator < move_iterator
 return (_Left._Less(_Right));
 }

template<class _RanIt1,
 class _RanIt2> inline
 bool operator>(
  const move_iterator<_RanIt1>& _Left,
  const move_iterator<_RanIt2>& _Right)
 { // test for move_iterator > move_iterator
 return (_Right < _Left);
 }

template<class _RanIt1,
 class _RanIt2> inline
 bool operator<=(
  const move_iterator<_RanIt1>& _Left,
  const move_iterator<_RanIt2>& _Right)
 { // test for move_iterator <= move_iterator
 return (!(_Right < _Left));
 }

template<class _RanIt1,
 class _RanIt2> inline
 bool operator>=(
  const move_iterator<_RanIt1>& _Left,
  const move_iterator<_RanIt2>& _Right)
 { // test for move_iterator >= move_iterator
 return (!(_Left < _Right));
 }

  // TEMPLATE FUNCTION make_move_iterator
template<class _RanIt> inline
 move_iterator<_RanIt> make_move_iterator(_RanIt _Iter)
 { // make move_iterator from iterator
 return (move_iterator<_RanIt>(_Iter));
 }


  // TEMPLATE FUNCTION copy
template<class _InIt,
 class _OutIt> inline
 _OutIt _Copy_impl(_InIt _First, _InIt _Last,
  _OutIt _Dest, _Nonscalar_ptr_iterator_tag)
 { // copy [_First, _Last) to [_Dest, ...), arbitrary iterators
 for (; _First != _Last; ++_Dest, (void)++_First)
  *_Dest = *_First;
 return (_Dest);
 }

template<class _InIt,
 class _OutIt> inline
 _OutIt _Copy_impl(_InIt _First, _InIt _Last,
  _OutIt _Dest, _Scalar_ptr_iterator_tag)
 { // copy [_First, _Last) to [_Dest, ...), pointers to scalars
 ptrdiff_t _Count = _Last - _First;
 ::std:: memmove(&*_Dest, &*_First,
  _Count * sizeof (*_First));
 return (_Dest + _Count);
 }

template<class _InIt,
 class _OutIt> inline
 _OutIt _Copy_impl(_InIt _First, _InIt _Last,
  _OutIt _Dest)
 { // copy [_First, _Last) to [_Dest, ...)
 return (_Copy_impl(_First, _Last,
  _Dest, _Ptr_cat(_First, _Dest)));
 }


template<class _InIt,
 class _OutIt> inline
 _OutIt copy(_InIt _First, _InIt _Last,
  _OutIt _Dest)
 { // copy [_First, _Last) to [_Dest, ...)
 return (_Rechecked(_Dest,
  _Copy_impl(_Unchecked(_First), _Unchecked(_Last),
   _Unchecked(_Dest))));
 }
  // TEMPLATE FUNCTION copy_n
template<class _InIt,
 class _Diff,
 class _OutIt> inline
 _OutIt _Copy_n(_InIt _First, _Diff _Count,
  _OutIt _Dest, input_iterator_tag)
 { // copy [_First, _First + _Count) to [_Dest, ...), input iterators
 *_Dest = *_First; // 0 < _Count has been guaranteed
 while (0 < --_Count)
  *++_Dest = *++_First;
 return (++_Dest);
 }

template<class _InIt,
 class _Diff,
 class _OutIt> inline
 _OutIt _Copy_n(_InIt _First, _Diff _Count,
  _OutIt _Dest, forward_iterator_tag)
 { // copy [_First, _First + _Count) to [_Dest, ...), forward iterators
 for (; 0 < _Count; --_Count, (void)++_Dest, ++_First)
  *_Dest = *_First;
 return (_Dest);
 }

template<class _InIt,
 class _Diff,
 class _OutIt> inline
 _OutIt _Copy_n(_InIt _First, _Diff _Count,
  _OutIt _Dest, _Nonscalar_ptr_iterator_tag)
 { // copy [_First, _First + _Count) to [_Dest, ...), arbitrary iterators
 return (_Copy_n(_First, _Count,
  _Dest, _Iter_cat(_First)));
 }
template<class _InIt,
 class _Diff,
 class _OutIt> inline
 _OutIt _Copy_n(_InIt _First, _Diff _Count,
  _OutIt _Dest, _Scalar_ptr_iterator_tag)
 { // copy [_First, _First + _Count) to [_Dest, ...), pointers to scalars
 ::std:: memmove(&*_Dest, &*_First,
  _Count * sizeof (*_First));
 return (_Dest + _Count);
 }

template<class _InIt,
 class _Diff,
 class _OutIt> inline
 _OutIt _Copy_n(_InIt _First, _Diff _Count,
  _OutIt _Dest)
 { // copy [_First, _First + _Count) to [_Dest, ...), unchecked
 return (_Copy_n(_First, _Count,
  _Dest, _Ptr_cat(_First, _Dest)));
 }


template<class _InIt,
 class _Diff,
 class _OutIt> inline
 _OutIt copy_n(_InIt _First, _Diff _Count,
  _OutIt _Dest)
 { // copy [_First, _First + _Count) to [_Dest, ...)
 if (_Count <= 0)
  return (_Dest);
 else
  return (_Rechecked(_Dest,
   _Copy_n(_Unchecked(_First), _Count,
    _Unchecked(_Dest))));
 }
  // TEMPLATE FUNCTION copy_backward
template<class _BidIt1,
 class _BidIt2> inline
 _BidIt2 _Copy_backward(_BidIt1 _First, _BidIt1 _Last,
  _BidIt2 _Dest, _Nonscalar_ptr_iterator_tag)
 { // copy [_First, _Last) backwards to [..., _Dest), arbitrary iterators
 while (_First != _Last)
  *--_Dest = *--_Last;
 return (_Dest);
 }

template<class _InIt,
 class _OutIt> inline
 _OutIt _Copy_backward(_InIt _First, _InIt _Last,
  _OutIt _Dest, _Scalar_ptr_iterator_tag)
 { // copy [_First, _Last) backwards to [..., _Dest), pointers to scalars
 ptrdiff_t _Count = _Last - _First;
 ::std:: memmove(&*_Dest - _Count, &*_First,
  _Count * sizeof (*_First));
 return (_Dest - _Count);
 }

template<class _BidIt1,
 class _BidIt2> inline
 _BidIt2 _Copy_backward(_BidIt1 _First, _BidIt1 _Last,
  _BidIt2 _Dest)
 { // copy [_First, _Last) backwards to [..., _Dest), unchecked
 return (_Copy_backward(_First, _Last,
  _Dest, _Ptr_cat(_First, _Dest)));
 }


template<class _BidIt1,
 class _BidIt2> inline
 _BidIt2 copy_backward(_BidIt1 _First, _BidIt1 _Last,
  _BidIt2 _Dest)
 { // copy [_First, _Last) backwards to [..., _Dest)
 return (_Rechecked(_Dest,
  _Copy_backward(_Unchecked(_First), _Unchecked(_Last),
   _Unchecked(_Dest))));
 }
  // TEMPLATE FUNCTION move
template<class _InIt,
 class _OutIt> inline
 _OutIt _Move(_InIt _First, _InIt _Last,
  _OutIt _Dest, _Nonscalar_ptr_iterator_tag)
 { // move [_First, _Last) to [_Dest, ...), arbitrary iterators
 for (; _First != _Last; ++_Dest, (void)++_First)
  *_Dest = ::std:: move(*_First);
 return (_Dest);
 }

template<class _InIt,
 class _OutIt> inline
 _OutIt _Move(_InIt _First, _InIt _Last,
  _OutIt _Dest, _Scalar_ptr_iterator_tag)
 { // move [_First, _Last) to [_Dest, ...), pointers to scalars
 ptrdiff_t _Count = _Last - _First;
 ::std:: memmove(&*_Dest, &*_First,
  _Count * sizeof (*_First));
 return (_Dest + _Count);
 }

template<class _InIt,
 class _OutIt> inline
 _OutIt _Move(_InIt _First, _InIt _Last,
  _OutIt _Dest)
 { // move [_First, _Last) to [_Dest, ...), unchecked
 return (_Move(_First, _Last,
  _Dest, _Ptr_cat(_First, _Dest)));
 }


template<class _InIt,
 class _OutIt> inline
 _OutIt move(_InIt _First, _InIt _Last,
  _OutIt _Dest)
 { // move [_First, _Last) to [_Dest, ...)
 return (_Rechecked(_Dest,
  _Move(_Unchecked(_First), _Unchecked(_Last),
   _Unchecked(_Dest))));
 }
  // TEMPLATE FUNCTION move_backward
template<class _BidIt1,
 class _BidIt2> inline
 _BidIt2 _Move_backward(_BidIt1 _First, _BidIt1 _Last,
  _BidIt2 _Dest, _Nonscalar_ptr_iterator_tag)
 { // move [_First, _Last) backwards to [..., _Dest), arbitrary iterators
 while (_First != _Last)
  *--_Dest = ::std:: move(*--_Last);
 return (_Dest);
 }

template<class _InIt,
 class _OutIt> inline
 _OutIt _Move_backward(_InIt _First, _InIt _Last,
  _OutIt _Dest, _Scalar_ptr_iterator_tag)
 { // move [_First, _Last) backwards to [..., _Dest), pointers to scalars
 ptrdiff_t _Count = _Last - _First;
 ::std:: memmove(&*_Dest - _Count, &*_First,
  _Count * sizeof (*_First));
 return (_Dest - _Count);
 }

template<class _BidIt1,
 class _BidIt2> inline
 _BidIt2 _Move_backward(_BidIt1 _First, _BidIt1 _Last,
  _BidIt2 _Dest)
 { // move [_First, _Last) backwards to [..., _Dest), unchecked
 return (_Move_backward(_First, _Last,
  _Dest, _Ptr_cat(_First, _Dest)));
 }


template<class _BidIt1,
 class _BidIt2> inline
 _BidIt2 move_backward(_BidIt1 _First, _BidIt1 _Last,
  _BidIt2 _Dest)
 { // move [_First, _Last) backwards to [..., _Dest)
 return (_Rechecked(_Dest,
  _Move_backward(_Unchecked(_First), _Unchecked(_Last),
   _Unchecked(_Dest))));
 }
  // TEMPLATE FUNCTION fill
template<class _FwdIt,
 class _Ty> inline
 void _Fill(_FwdIt _First, _FwdIt _Last, const _Ty& _Val)
 { // copy _Val through [_First, _Last)
 for (; _First != _Last; ++_First)
  *_First = _Val;
 }

inline void _Fill(char *_First, char *_Last, char _Val)
 { // copy char _Val through [_First, _Last)
 ::std:: memset(_First, _Val, _Last - _First);
 }

inline void _Fill(signed char *_First, signed char *_Last, signed char _Val)
 { // copy signed char _Val through [_First, _Last)
 ::std:: memset(_First, _Val, _Last - _First);
 }

inline void _Fill(unsigned char *_First, unsigned char *_Last, unsigned char _Val)
 { // copy unsigned char _Val through [_First, _Last)
 ::std:: memset(_First, _Val, _Last - _First);
 }

template<class _FwdIt,
 class _Ty> inline
 void fill(_FwdIt _First, _FwdIt _Last, const _Ty& _Val)
 { // copy _Val through [_First, _Last)
                            ;
 _Fill(_Unchecked(_First), _Unchecked(_Last), _Val);
 }

  // TEMPLATE FUNCTION fill_n
template<class _OutIt,
 class _Diff,
 class _Ty> inline
 _OutIt _Fill_n(_OutIt _Dest, _Diff _Count, const _Ty& _Val)
 { // copy _Val _Count times through [_Dest, ...)
 for (; 0 < _Count; --_Count, (void)++_Dest)
  *_Dest = _Val;
 return (_Dest);
 }

inline char *_Fill_n(char *_Dest, size_t _Count, char _Val)
 { // copy char _Val _Count times through [_Dest, ...)
 ::std:: memset(_Dest, _Val, _Count);
 return (_Dest + _Count);
 }

inline signed char *_Fill_n(signed char *_Dest, size_t _Count,
 signed char _Val)
 { // copy signed char _Val _Count times through [_Dest, ...)
 ::std:: memset(_Dest, _Val, _Count);
 return (_Dest + _Count);
 }

inline unsigned char *_Fill_n(unsigned char *_Dest, size_t _Count,
 unsigned char _Val)
 { // copy unsigned char _Val _Count times through [_Dest, ...)
 ::std:: memset(_Dest, _Val, _Count);
 return (_Dest + _Count);
 }


template<class _OutIt,
 class _Diff,
 class _Ty> inline
 _OutIt fill_n(_OutIt _Dest, _Diff _Count, const _Ty& _Val)
 { // copy _Val _Count times through [_Dest, ...)
 return (_Rechecked(_Dest, _Fill_n(_Unchecked(_Dest), _Count, _Val)));
 }
  // TEMPLATE FUNCTION equal WITH PRED
template<class _InIt1,
 class _InIt2,
 class _Pr> inline
 bool _Equal(_InIt1 _First1, _InIt1 _Last1,
  _InIt2 _First2, _Pr _Pred)
 { // compare [_First1, _Last1) to [_First2, ...) using _Pred
 for (; _First1 != _Last1; ++_First1, (void)++_First2)
  if (!_Pred(*_First1, *_First2))
   return (false);
 return (true);
 }


inline bool _Equal(const char *_First1, const char *_Last1,
 const char *_First2, equal_to<>)
 { // compare [_First1, _Last1) to [_First2, ...), for chars
 return (::std:: memcmp(_First1, _First2, _Last1 - _First1) == 0);
 }

inline bool _Equal(const signed char *_First1, const signed char *_Last1,
 const signed char *_First2, equal_to<>)
 { // compare [_First1, _Last1) to [_First2, ...), for signed chars
 return (::std:: memcmp(_First1, _First2, _Last1 - _First1) == 0);
 }

inline bool _Equal(const unsigned char *_First1, const unsigned char *_Last1,
 const unsigned char *_First2, equal_to<>)
 { // compare [_First1, _Last1) to [_First2, ...), for unsigned chars
 return (::std:: memcmp(_First1, _First2, _Last1 - _First1) == 0);
 }



template<class _InIt1,
 class _InIt2,
 class _Pr> inline
 bool equal(_InIt1 _First1, _InIt1 _Last1,
  _InIt2 _First2, _Pr _Pred)
 { // compare [_First1, _Last1) to [_First2, ...) using _Pred
 return (_Equal(_Unchecked(_First1), _Unchecked(_Last1),
  _Unchecked(_First2), _Pred));
 }
  // TEMPLATE FUNCTION equal
template<class _InIt1,
 class _InIt2> inline
 bool equal(_InIt1 _First1, _InIt1 _Last1,
  _InIt2 _First2)
 { // compare [_First1, _Last1) to [_First2, ...)
 return (::std:: equal(_First1, _Last1, _First2,
  equal_to<>()));
 }


template<class _InIt1,
 class _InTy,
 size_t _InSize> inline
 bool equal(_InIt1 _First1, _InIt1 _Last1,
  _InTy (&_First2)[_InSize])
 { // compare [_First1, _Last1) to [_First2, ...)
 return (::std:: equal(_First1, _Last1, _First2,
  equal_to<>()));
 }



  // TEMPLATE FUNCTION equal WITH TWO RANGES, PRED
template<class _InIt1,
 class _InIt2,
 class _Pr> inline
 bool _Equal(_InIt1 _First1, _InIt1 _Last1,
  _InIt2 _First2, _InIt2 _Last2, _Pr _Pred,
   input_iterator_tag, input_iterator_tag)
 { // compare [_First1, _Last1) to [_First2, _Last2)
  // using _Pred, arbitrary iterators
                                                                 ;
 for (; _First1 != _Last1 && _First2 != _Last2; ++_First1, (void)++_First2)
  if (!_Pred(*_First1, *_First2))
   return (false);
 return (_First1 == _Last1 && _First2 == _Last2);
 }

template<class _InIt1,
 class _InIt2,
 class _Pr> inline
 bool _Equal(_InIt1 _First1, _InIt1 _Last1,
  _InIt2 _First2, _InIt2 _Last2, _Pr _Pred,
   random_access_iterator_tag, random_access_iterator_tag)
 { // compare [_First1, _Last1) to [_First2, _Last2)
  // using _Pred, random-access iterators
 if (_Last1 - _First1 != _Last2 - _First2)
  return (false);
                                            ;
 return (_Equal(_First1, _Last1, _First2, _Pred));
 }

template<class _InIt1,
 class _InIt2,
 class _Pr> inline
 bool equal(_InIt1 _First1, _InIt1 _Last1,
  _InIt2 _First2, _InIt2 _Last2, _Pr _Pred)
 { // compare [_First1, _Last1) to [_First2, _Last2) using _Pred
                              ;
                              ;
 return (_Equal(_Unchecked(_First1), _Unchecked(_Last1),
  _Unchecked(_First2), _Unchecked(_Last2), _Pred,
   _Iter_cat(_First1), _Iter_cat(_First2)));
 }

  // TEMPLATE FUNCTION equal WITH TWO RANGES
template<class _InIt1,
 class _InIt2> inline
 bool equal(_InIt1 _First1, _InIt1 _Last1,
  _InIt2 _First2, _InIt2 _Last2)
 { // compare [_First1, _Last1) to [_First2, _Last2)
 return (::std:: equal(_First1, _Last1, _First2, _Last2,
  equal_to<>()));
 }


  // TEMPLATE FUNCTION lexicographical_compare
template<class _InIt1,
 class _InIt2> inline
 bool _Lexicographical_compare(_InIt1 _First1, _InIt1 _Last1,
  _InIt2 _First2, _InIt2 _Last2)
 { // order [_First1, _Last1) vs. [_First2, _Last2)
 for (; _First1 != _Last1 && _First2 != _Last2; ++_First1, (void)++_First2)
  if (((*_First1) < (*_First2)))
   return (true);
  else if (*_First2 < *_First1)
   return (false);
 return (_First1 == _Last1 && _First2 != _Last2);
 }

inline bool _Lexicographical_compare(
 const unsigned char *_First1, const unsigned char *_Last1,
 const unsigned char *_First2, const unsigned char *_Last2)
 { // order [_First1, _Last1) vs. [_First2, _Last2), for unsigned char
 ptrdiff_t _Num1 = _Last1 - _First1;
 ptrdiff_t _Num2 = _Last2 - _First2;
 int _Ans = ::std:: memcmp(_First1, _First2, _Num1 < _Num2 ? _Num1 : _Num2);
 return (_Ans < 0 || (_Ans == 0 && _Num1 < _Num2));
 }
template<class _InIt1,
 class _InIt2> inline
 bool lexicographical_compare(_InIt1 _First1, _InIt1 _Last1,
  _InIt2 _First2, _InIt2 _Last2)
 { // order [_First1, _Last1) vs. [_First2, _Last2)
                              ;
                              ;
 return (_Lexicographical_compare(_Unchecked(_First1), _Unchecked(_Last1),
  _Unchecked(_First2), _Unchecked(_Last2)));
 }

  // TEMPLATE FUNCTION lexicographical_compare WITH PRED
template<class _InIt1,
 class _InIt2,
 class _Pr> inline
 bool _Lexicographical_compare(_InIt1 _First1, _InIt1 _Last1,
  _InIt2 _First2, _InIt2 _Last2, _Pr _Pred)
 { // order [_First1, _Last1) vs. [_First2, _Last2) using _Pred
 for (; _First1 != _Last1 && _First2 != _Last2; ++_First1, (void)++_First2)
  { // something to compare, do it
  if (_Pred(*_First1, *_First2))
   return (true);
  else if (_Pred(*_First2, *_First1))
   return (false);
  }
 return (_First1 == _Last1 && _First2 != _Last2);
 }

template<class _InIt1,
 class _InIt2,
 class _Pr> inline
 bool lexicographical_compare(_InIt1 _First1, _InIt1 _Last1,
  _InIt2 _First2, _InIt2 _Last2, _Pr _Pred)
 { // order [_First1, _Last1) vs. [_First2, _Last2) using _Pred
                              ;
                              ;
                                                                 ;
 return (_Lexicographical_compare(_Unchecked(_First1), _Unchecked(_Last1),
  _Unchecked(_First2), _Unchecked(_Last2), _Pred));
 }

  // TEMPLATE FUNCTION find
template<class _Ty,
 class _Ignored> inline
 bool _Within_limits(const _Ty& _Val, true_type, true_type, _Ignored)
 { // signed _Elem, signed _Ty
 return ((-128) /* minimum signed   char value */ <= _Val && _Val <= 127 /* maximum signed   char value */);
 }

template<class _Ty> inline
 bool _Within_limits(const _Ty& _Val, true_type, false_type, true_type)
 { // signed _Elem, unsigned _Ty, -1 == static_cast<_Ty>(-1)
 return (_Val <= 127 /* maximum signed   char value */ || static_cast<_Ty>((-128) /* minimum signed   char value */) <= _Val);
 }

template<class _Ty> inline
 bool _Within_limits(const _Ty& _Val, true_type, false_type, false_type)
 { // signed _Elem, unsigned _Ty, -1 != static_cast<_Ty>(-1)
 return (_Val <= 127 /* maximum signed   char value */);
 }

template<class _Ty,
 class _Ignored> inline
 bool _Within_limits(const _Ty& _Val, false_type, true_type, _Ignored)
 { // unsigned _Elem, signed _Ty
 return (0 <= _Val && _Val <= 255 /* maximum unsigned char value */);
 }

template<class _Ty,
 class _Ignored> inline
 bool _Within_limits(const _Ty& _Val, false_type, false_type, _Ignored)
 { // unsigned _Elem, unsigned _Ty
 return (_Val <= 255 /* maximum unsigned char value */);
 }

template<class _InIt,
 class _Ty> inline
 bool _Within_limits(_InIt, const _Ty& _Val)
 { // check whether _Val is within the limits of _Elem
 typedef typename remove_pointer<_InIt>::type _Elem;
 return (_Within_limits(_Val, is_signed<_Elem>(), is_signed<_Ty>(),
  integral_constant<bool, -1 == static_cast<_Ty>(-1)>()));
 }

template<class _InIt> inline
 bool _Within_limits(_InIt, const bool&)
 { // bools are always within the limits of _Elem
 return (true);
 }

template<class _InIt,
 class _Ty> inline
 _InIt _Find(_InIt _First, _InIt _Last, const _Ty& _Val, true_type)
 { // find first byte matching integral _Val
 if (!_Within_limits(_First, _Val))
  return (_Last);
 _First = static_cast<_InIt>(::std:: memchr(
  _First, static_cast<unsigned char>(_Val), _Last - _First));
 return (_First ? _First : _Last);
 }

template<class _InIt,
 class _Ty> inline
 _InIt _Find(_InIt _First, _InIt _Last, const _Ty& _Val, false_type)
 { // find first matching _Val
 for (; _First != _Last; ++_First)
  if (*_First == _Val)
   break;
 return (_First);
 }

template<class _InIt,
 class _Ty> inline
 _InIt _Find(_InIt _First, _InIt _Last, const _Ty& _Val)
 { // find first matching _Val
 // activate optimization for pointers to (const) bytes and integral values
 typedef integral_constant<bool,
  (is_same<_InIt, char *>::value
  || is_same<_InIt, signed char *>::value
  || is_same<_InIt, unsigned char *>::value
  || is_same<_InIt, const char *>::value
  || is_same<_InIt, const signed char *>::value
  || is_same<_InIt, const unsigned char *>::value)
  && is_integral<_Ty>::value
 > _Memchr_opt;
 return (_Find(_First, _Last, _Val, _Memchr_opt()));
 }

template<class _InIt,
 class _Ty> inline
 _InIt find(_InIt _First, _InIt _Last, const _Ty& _Val)
 { // find first matching _Val
                            ;
 return (_Rechecked(_First,
  _Find(_Unchecked(_First), _Unchecked(_Last), _Val)));
 }

  // TEMPLATE FUNCTION _Find_pr WITH PRED
template<class _InIt,
 class _Ty,
 class _Pr> inline
 _InIt _Find_pr(_InIt _First, _InIt _Last, const _Ty& _Val, _Pr _Pred)
 { // find first matching _Val, using _Pred
 for (; _First != _Last; ++_First)
  if (_Pred(*_First, _Val))
   break;
 return (_First);
 }

  // TEMPLATE FUNCTION count
template<class _InIt,
 class _Ty> inline
 typename iterator_traits<_InIt>::difference_type
  _Count_np(_InIt _First, _InIt _Last, const _Ty& _Val)
 { // count elements that match _Val
 typename iterator_traits<_InIt>::difference_type _Count = 0;

 for (; _First != _Last; ++_First)
  if (*_First == _Val)
   ++_Count;
 return (_Count);
 }

template<class _InIt,
 class _Ty> inline
 typename iterator_traits<_InIt>::difference_type
  count(_InIt _First, _InIt _Last, const _Ty& _Val)
 { // count elements that match _Val
                            ;
 return (_Count_np(_Unchecked(_First), _Unchecked(_Last), _Val));
 }

  // TEMPLATE FUNCTION _Count_pr WITH PRED
template<class _InIt,
 class _Ty,
 class _Pr> inline
 typename iterator_traits<_InIt>::difference_type
  _Count_pr(_InIt _First, _InIt _Last, const _Ty& _Val, _Pr _Pred)
 { // count elements that match _Val, using _Pred
 typename iterator_traits<_InIt>::difference_type _Count = 0;

 for (; _First != _Last; ++_First)
  if (_Pred(*_First, _Val))
   ++_Count;
 return (_Count);
 }

  // TEMPLATE FUNCTION _Trim_matching_suffixes WITH PRED
template<class _FwdIt1,
 class _FwdIt2,
 class _Pr> inline
 void _Trim_matching_suffixes(_FwdIt1&, _FwdIt2&, _Pr,
  forward_iterator_tag, forward_iterator_tag)
 { // trim matching suffixes, forward iterators (do nothing)
 }

template<class _FwdIt1,
 class _FwdIt2,
 class _Pr> inline
 void _Trim_matching_suffixes(_FwdIt1& _Last1, _FwdIt2& _Last2, _Pr _Pred,
  bidirectional_iterator_tag, bidirectional_iterator_tag)
 { // trim matching suffixes, bidirectional iterators
 // assumptions: same lengths, non-empty, !_Pred(*_First1, *_First2)
 while (_Pred(*--_Last1, *--_Last2))
  ; // find last inequality
 ++_Last1;
 ++_Last2;
 }

  // TEMPLATE FUNCTION _Check_match_counts WITH PRED
template<class _FwdIt1,
 class _FwdIt2,
 class _Pr> inline
 bool _Check_match_counts(_FwdIt1 _First1, _FwdIt1 _Last1,
  _FwdIt2 _First2, _FwdIt2 _Last2, _Pr _Pred)
 { // test if [_First1, _Last1) == permuted [_First2, _Last2), using _Pred, same lengths
 _Trim_matching_suffixes(_Last1, _Last2, _Pred,
  _Iter_cat(_Last1), _Iter_cat(_Last2));
 typedef typename iterator_traits<_FwdIt1>::difference_type _Diff1;
 typedef typename iterator_traits<_FwdIt2>::difference_type _Diff2;
 for (_FwdIt1 _Next1 = _First1; _Next1 != _Last1; ++_Next1)
  if (_Next1 == _Find_pr(_First1, _Next1, *_Next1, _Pred))
   { // new value, compare match counts
   _Diff2 _Count2 = _Count_pr(_First2, _Last2, *_Next1, _Pred);
   if (_Count2 == 0)
    return (false); // second range lacks value, fail
   _FwdIt1 _Skip1 = ::std:: next(_Next1);
   _Diff1 _Count1 = _Count_pr(_Skip1, _Last1, *_Next1, _Pred) + 1;
   if (_Count2 != _Count1)
    return (false); // match counts differ, fail
   }
 return (true);
 }

  // TEMPLATE FUNCTION is_permutation WITH PRED
template<class _FwdIt1,
 class _FwdIt2,
 class _Pr> inline
 bool _Is_permutation(_FwdIt1 _First1, _FwdIt1 _Last1,
  _FwdIt2 _First2, _Pr _Pred)
 { // test if [_First1, _Last1) == permuted [_First2, ...), using _Pred
 for (; _First1 != _Last1; ++_First1, (void)++_First2)
  if (!_Pred(*_First1, *_First2))
   { // found first inequality, check match counts in suffix
   _FwdIt2 _Last2 = ::std:: next(_First2,
    ::std:: distance(_First1, _Last1));
   return (_Check_match_counts(_First1, _Last1,
    _First2, _Last2, _Pred));
   }
 return (true);
 }


template<class _FwdIt1,
 class _FwdIt2,
 class _Pr> inline
 bool is_permutation(_FwdIt1 _First1, _FwdIt1 _Last1,
  _FwdIt2 _First2, _Pr _Pred)
 { // test if [_First1, _Last1) == permuted [_First2, ...), using _Pred
 return (_Is_permutation(_Unchecked(_First1), _Unchecked(_Last1),
  _Unchecked(_First2), _Pred));
 }
  // TEMPLATE FUNCTION is_permutation
template<class _FwdIt1,
 class _FwdIt2> inline
 bool is_permutation(_FwdIt1 _First1, _FwdIt1 _Last1,
  _FwdIt2 _First2)
 { // test if [_First1, _Last1) == permuted [_First2, ...)
 return (::std:: is_permutation(_First1, _Last1,
  _First2, equal_to<>()));
 }




template<class _FwdIt1,
 class _InTy,
 size_t _InSize> inline
 bool is_permutation(_FwdIt1 _First1, _FwdIt1 _Last1,
  _InTy (&_First2)[_InSize])
 { // test if [_First1, _Last1) == permuted [_First2, ...)
 return (::std:: is_permutation(_First1, _Last1, _First2, equal_to<>()));
 }





  // TEMPLATE FUNCTION is_permutation WITH TWO RANGES, PRED
template<class _FwdIt1,
 class _FwdIt2,
 class _Pr> inline
 bool _Is_permutation(_FwdIt1 _First1, _FwdIt1 _Last1,
  _FwdIt2 _First2, _FwdIt2 _Last2, _Pr _Pred,
  forward_iterator_tag, forward_iterator_tag)
 { // test if [_First1, _Last1) == permuted [_First2, _Last2),
  // using _Pred, arbitrary iterators
                                                                 ;
 for (; _First1 != _Last1 && _First2 != _Last2; ++_First1, (void)++_First2)
  if (!_Pred(*_First1, *_First2))
   { // found first inequality, check match counts in suffix
   if (::std:: distance(_First1, _Last1)
    != ::std:: distance(_First2, _Last2))
    return (false); // lengths differ, fail
   else
    return (_Check_match_counts(_First1, _Last1,
     _First2, _Last2, _Pred));
   }
 return (_First1 == _Last1 && _First2 == _Last2);
 }

template<class _FwdIt1,
 class _FwdIt2,
 class _Pr> inline
 bool _Is_permutation(_FwdIt1 _First1, _FwdIt1 _Last1,
  _FwdIt2 _First2, _FwdIt2 _Last2, _Pr _Pred,
  random_access_iterator_tag, random_access_iterator_tag)
 { // test if [_First1, _Last1) == permuted [_First2, _Last2),
  // using _Pred, random-access iterators
 if (_Last1 - _First1 != _Last2 - _First2)
  return (false);
                                            ;
 return (_Is_permutation(_First1, _Last1, _First2, _Pred));
 }

template<class _FwdIt1,
 class _FwdIt2,
 class _Pr> inline
 bool is_permutation(_FwdIt1 _First1, _FwdIt1 _Last1,
  _FwdIt2 _First2, _FwdIt2 _Last2, _Pr _Pred)
 { // test if [_First1, _Last1) == permuted [_First2, _Last2),
  // using _Pred
                              ;
                              ;
 return (_Is_permutation(_Unchecked(_First1), _Unchecked(_Last1),
  _Unchecked(_First2), _Unchecked(_Last2), _Pred,
  _Iter_cat(_First1), _Iter_cat(_First2)));
 }

  // TEMPLATE FUNCTION is_permutation WITH TWO RANGES
template<class _FwdIt1,
 class _FwdIt2> inline
 bool is_permutation(_FwdIt1 _First1, _FwdIt1 _Last1,
  _FwdIt2 _First2, _FwdIt2 _Last2)
 { // test if [_First1, _Last1) == permuted [_First2, _Last2)
 return (::std:: is_permutation(_First1, _Last1,
  _First2, _Last2, equal_to<>()));
 }


  // TEMPLATE FUNCTION reverse
template<class _BidIt> inline
 void _Reverse(_BidIt _First, _BidIt _Last, bidirectional_iterator_tag)
 { // reverse elements in [_First, _Last), bidirectional iterators
 for (; _First != _Last && _First != --_Last; ++_First)
  ::std:: iter_swap(_First, _Last);
 }

template<class _BidIt> inline
 void reverse(_BidIt _First, _BidIt _Last)
 { // reverse elements in [_First, _Last)
                            ;
 _Reverse(_Unchecked(_First), _Unchecked(_Last), _Iter_cat(_First));
 }

  // TEMPLATE FUNCTION rotate
template<class _FwdIt> inline
 _FwdIt _Rotate(_FwdIt _First, _FwdIt _Mid, _FwdIt _Last,
  forward_iterator_tag)
 { // rotate [_First, _Last), forward iterators
 for (_FwdIt _Next = _Mid, _Res = _Last; ; )
  { // swap [_First, ...) into place
  ::std:: iter_swap(_First, _Next);
  if (++_First == _Mid)
   { // quit if done, else define next interval
   if (++_Next == _Last)
    return (_Res == _Last ? _Mid : _Res);
   else
    _Mid = _Next; // mark end of next interval
   }
  else if (++_Next == _Last)
   { // wrap to last end
   if (_Res == _Last)
    _Res = _First;
   _Next = _Mid;
   }
  }
 }

template<class _BidIt> inline
 pair<_BidIt, _BidIt> _Reverse_until_sentinel(
  _BidIt _First, _BidIt _Sentinel, _BidIt _Last)
 { // reverse until either _First or _Last hits _Sentinel
 while (_First != _Sentinel && _Last != _Sentinel)
  ::std:: iter_swap(_First++, --_Last);
 return (::std:: make_pair(_First, _Last));
 }

template<class _BidIt> inline
 _BidIt _Rotate(_BidIt _First, _BidIt _Mid, _BidIt _Last,
  bidirectional_iterator_tag)
 { // rotate [_First, _Last), bidirectional iterators
 ::std:: reverse(_First, _Mid);
 ::std:: reverse(_Mid, _Last);
 pair<_BidIt, _BidIt> _Tmp = _Reverse_until_sentinel(_First, _Mid, _Last);
 ::std:: reverse(_Tmp.first, _Tmp.second);
 return (_Mid != _Tmp.first ? _Tmp.first : _Tmp.second);
 }

template<class _RanIt> inline
 _RanIt _Rotate(_RanIt _First, _RanIt _Mid, _RanIt _Last,
  random_access_iterator_tag)
 { // rotate [_First, _Last), random-access iterators
 ::std:: reverse(_First, _Mid);
 ::std:: reverse(_Mid, _Last);
 ::std:: reverse(_First, _Last);
 return (_First + (_Last - _Mid));
 }

template<class _FwdIt> inline
 _FwdIt rotate(_FwdIt _First, _FwdIt _Mid, _FwdIt _Last)
 { // rotate [_First, _Last)
                           ;
                          ;
 if (_First == _Mid)
  return (_Last);
 if (_Mid == _Last)
  return (_First);
 _Rechecked(_First, _Rotate(_Unchecked(_First), _Unchecked(_Mid),
  _Unchecked(_Last), _Iter_cat(_First)));
 return (_First);
 }

 // TEMPLATE CLASS _Rng_from_urng
template<class _Diff,
 class _Urng>
 class _Rng_from_urng
 { // wrap a URNG as an RNG
public:

 typedef typename make_unsigned<_Diff>::type _Ty0;
 typedef typename _Urng::result_type _Ty1;

 typedef typename _If<sizeof (_Ty1) < sizeof (_Ty0),
  _Ty0, _Ty1>::type _Udiff;





 explicit _Rng_from_urng(_Urng& _Func)
  : _Ref(_Func), _Bits(8 /* number of bits in a char */ * sizeof (_Udiff)), _Bmask(_Udiff(-1))
  { // construct from URNG
  for (; (_Urng::max)() - (_Urng::min)() < _Bmask; _Bmask >>= 1)
   --_Bits;
  }

 _Diff operator()(_Diff _Index)
  { // adapt _Urng closed range to [0, _Index)
  for (; ; )
   { // try a sample random value
   _Udiff _Ret = 0; // random bits
   _Udiff _Mask = 0; // 2^N - 1, _Ret is within [0, _Mask]

   while (_Mask < _Udiff(_Index - 1))
    { // need more random bits
    _Ret <<= _Bits - 1; // avoid full shift
    _Ret <<= 1;
    _Ret |= _Get_bits();
    _Mask <<= _Bits - 1; // avoid full shift
    _Mask <<= 1;
    _Mask |= _Bmask;
    }

   // _Ret is [0, _Mask], _Index - 1 <= _Mask, return if unbiased
   if (_Ret / _Index < _Mask / _Index
    || _Mask % _Index == _Udiff(_Index - 1))
    return (_Ret % _Index);
   }
  }

 _Udiff _Get_all_bits()
  { // return a random value
  _Udiff _Ret = 0;

  for (size_t _Num = 0; _Num < 8 /* number of bits in a char */ * sizeof (_Udiff);
   _Num += _Bits)
   { // don't mask away any bits
   _Ret <<= _Bits - 1; // avoid full shift
   _Ret <<= 1;
   _Ret |= _Get_bits();
   }

  return (_Ret);
  }







private:
 _Rng_from_urng(const _Rng_from_urng&); // not defined
 _Rng_from_urng& operator=(const _Rng_from_urng&); // not defined


 _Udiff _Get_bits()
  { // return a random value within [0, _Bmask]
  for (; ; )
   { // repeat until random value is in range
   _Udiff _Val = _Ref() - (_Urng::min)();

   if (_Val <= _Bmask)
    return (_Val);
   }
  }

 _Urng& _Ref; // reference to URNG
 size_t _Bits; // number of random bits generated by _Get_bits()
 _Udiff _Bmask; // 2^_Bits - 1
 };

  // TEMPLATE CLASS _Yarn
template<class _Elem>
 class _Yarn
 { // wrap a NTBS
public:
 typedef _Yarn<_Elem> _Myt;

        _Yarn()
  : _Myptr(0), _Nul(0)
  { // default construct
  }

        _Yarn(const _Myt& _Right)
  : _Myptr(0), _Nul(0)
  { // construct from _Yarn
  *this = _Right;
  }

        _Yarn(const _Elem *_Right)
  : _Myptr(0), _Nul(0)
  { // construct from NTBS
  *this = _Right;
  }

 _Myt& operator=(const _Myt& _Right)
  { // assign from _Yarn
  return (*this = _Right._Myptr);
  }

 _Myt& operator=(const _Elem *_Right)
  { // assign from NTBS
  if (_Myptr != _Right)
   { // new value, discard old and copy new
   _Tidy();

   if (_Right != 0)
    { // new is not empty, copy it
    const _Elem *_Ptr = _Right;
    while (*_Ptr != (_Elem)0)
     ++_Ptr;
    size_t _Count = ((const char *)++_Ptr - (const char *)_Right);

    _Myptr = (_Elem *)::std:: malloc(_Count);
    if (_Myptr != 0)
     ::std:: memcpy(_Myptr, _Right, _Count);
    }
   }
  return (*this);
  }

        ~_Yarn()
  { // destroy the object
  _Tidy();
  }

 bool empty() const
  { // test if empty string
  return (_Myptr == 0);
  }

 const _Elem * c_str() const
  { // return NTBS
  return (_Myptr != 0 ? _Myptr : &_Nul);
  }

private:
 void _Tidy()
  { // discard any string
  if (_Myptr != 0)
   ::std:: free(_Myptr);

  _Myptr = 0;
  }

 _Elem *_Myptr; // pointer to allocated string
 _Elem _Nul; // nul terminator for unallocated string
 };

 // TEMPLATE STRUCT _Has_allocator_type
template<class _Ty,
 class _Alloc>
 struct _Has_allocator_type
 { // tests for suitable _Ty::allocator_type

 template<class _Uty>
  static auto _Fn(int)
   -> is_convertible<_Alloc,
    typename _Uty::allocator_type>;
 template<class _Uty>
  static auto _Fn(_Wrap_int)
   -> false_type;

 typedef decltype(_Fn<_Ty>(0)) type;




 };

  // STRUCT allocator_arg_t
struct allocator_arg_t
 { // tag type for added allocator argument
 };




const allocator_arg_t allocator_arg = allocator_arg_t();


          void _Xbad_alloc();
          void _Xinvalid_argument(const char *);
          void _Xlength_error(const char *);
          void _Xout_of_range(const char *);
          void _Xoverflow_error(const char *);
          void _Xruntime_error(const char *);
}

namespace std {
  // TEMPLATE STRUCT uses_allocator
template<class _Ty,
 class _Alloc>
 struct uses_allocator
  : _Has_allocator_type<_Ty, _Alloc>::type
 { // determine whether _Ty has an allocator_type member type
 };
} // namespace std
/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */




namespace std {
  // TEMPLATE FUNCTION _Allocate
template<class _Ty> inline
                     _Ty *_Allocate(size_t _Count, _Ty *,
  bool _Try_aligned_allocation = true)
 { // allocate storage for _Count elements of type _Ty
 void *_Ptr = 0;

 if (_Count == 0)
  return (static_cast<_Ty *>(_Ptr));

 // check overflow of multiply
 if ((size_t)(-1) / sizeof (_Ty) < _Count)
  _Xbad_alloc(); // report no memory
 const size_t _User_size = _Count * sizeof (_Ty);


 if (_Try_aligned_allocation
  && 4096 <= _User_size)
  { // allocate large block
  static_assert(sizeof (void *) < 32, "Big allocations should at least match vector register size");

  const size_t _Block_size = (sizeof(void *) + 32 - 1) + _User_size;
  if (_Block_size <= _User_size)
   _Xbad_alloc(); // report no memory
  const uintptr_t _Ptr_container =
   reinterpret_cast<uintptr_t>(::operator new(_Block_size));
                                                  ;
  _Ptr = reinterpret_cast<void *>((_Ptr_container + (sizeof(void *) + 32 - 1))
   & ~(32 - 1));
  static_cast<uintptr_t *>(_Ptr)[-1] = _Ptr_container;




  }
 else


  { // allocate normal block
  _Ptr = ::operator new(_User_size);
                                        ;
  }
 return (static_cast<_Ty *>(_Ptr));
 }

  // TEMPLATE FUNCTION _Deallocate
template<class _Ty> inline
 void _Deallocate(_Ty * _Ptr, size_t _Count)
 { // deallocate storage for _Count elements of type _Ty

                                                                   ;
 const size_t _User_size = _Count * sizeof (_Ty);
 if (4096 <= _User_size)
  { // deallocate large block
  const uintptr_t _Ptr_user = reinterpret_cast<uintptr_t>(_Ptr);

                                                      ;
  const uintptr_t _Ptr_ptr = _Ptr_user - sizeof(void *);
  const uintptr_t _Ptr_container =
   *reinterpret_cast<uintptr_t *>(_Ptr_ptr);
  // Extra paranoia on aligned allocation/deallocation
                                                         ;







                                 ;



                     ;

  _Ptr = reinterpret_cast<_Ty *>(_Ptr_container);
  }


 ::operator delete(_Ptr);
 }

  // TEMPLATE FUNCTION _Construct
template<class _Ty1,
 class _Ty2> inline
 void _Construct(_Ty1 *_Ptr, _Ty2 && _Val)
 { // construct object at _Ptr with value _Val
 void *_Vptr = _Ptr;
 ::new (_Vptr) _Ty1(::std:: forward<_Ty2>(_Val));
 }
template<class _Ty1> inline
 void _Construct(_Ty1 *_Ptr)
 { // construct object at _Ptr with default value
 void *_Vptr = _Ptr;

 ::new (_Vptr) _Ty1();
 }

  // TEMPLATE FUNCTION _Destroy
template<class _Ty> inline
 void _Destroy(_Ty *_Ptr)
 { // destroy object at _Ptr
 _Ptr->~_Ty();
 }

  // TEMPLATE FUNCTION _Destroy_range
template<class _Alloc> inline
 void _Destroy_range(typename _Alloc::pointer _First,
  typename _Alloc::pointer _Last, _Alloc& _Al,
  _Nonscalar_ptr_iterator_tag)
 { // destroy [_First, _Last), arbitrary type
 for (; _First != _Last; ++_First)
  _Al.destroy(::std:: addressof(*_First));
 }

template<class _Alloc> inline
 void _Destroy_range(typename _Alloc::pointer _First,
  typename _Alloc::pointer _Last, _Alloc& _Al,
  _Scalar_ptr_iterator_tag)
 { // destroy [_First, _Last), scalar type (do nothing)
 }

template<class _Alloc> inline
 void _Destroy_range(typename _Alloc::pointer _First,
  typename _Alloc::pointer _Last, _Alloc& _Al)
 { // destroy [_First, _Last)
 _Destroy_range(_First, _Last, _Al, _Ptr_cat(_First, _Last));
 }

  // TEMPLATE CLASS _Is_simple_alloc
template<class _Alty>
 struct _Is_simple_alloc
  : _Cat_base<is_same<typename _Alty::size_type, size_t>::value
  && is_same<typename _Alty::difference_type, ptrdiff_t>::value
  && is_same<typename _Alty::pointer,
   typename _Alty::value_type *>::value
  && is_same<typename _Alty::const_pointer,
   const typename _Alty::value_type *>::value
  && is_same<typename _Alty::reference,
   typename _Alty::value_type&>::value
  && is_same<typename _Alty::const_reference,
   const typename _Alty::value_type&>::value>
 { // tests if allocator has simple addressing
 };

  // TEMPLATE CLASS _Simple_types
template<class _Value_type>
 struct _Simple_types
 { // wraps types needed by iterators
 typedef _Value_type value_type;
 typedef size_t size_type;
 typedef ptrdiff_t difference_type;
 typedef value_type *pointer;
 typedef const value_type *const_pointer;
 typedef value_type& reference;
 typedef const value_type& const_reference;
 };

  // TEMPLATE CLASS _Get_voidptr
template<class _Alty,
 class _Pointer>
 struct _Get_voidptr
 { // get void pointer for allocator
 typedef typename _Alty::template rebind<void>::other _Alvoid;
 typedef typename _Alvoid::pointer type;
 };

template<class _Alty,
 class _Ty>
 struct _Get_voidptr<_Alty, _Ty *>
 { // get raw void pointer for allocator
 typedef void *type;
 };


  // TEMPLATE STRUCT _Get_first_parameter
template<class _Ty>
 struct _Get_first_parameter;

template<template<class, class...> class _Ty,
 class _First,
 class... _Rest>
 struct _Get_first_parameter<_Ty<_First, _Rest...> >
 { // given _Ty<_First, _Rest...>, extract _First
 typedef _First type;
 };

  // TEMPLATE STRUCT _Replace_first_parameter
template<class _Newfirst,
 class _Ty>
 struct _Replace_first_parameter;

template<class _Newfirst,
 template<class, class...> class _Ty,
 class _First,
 class... _Rest>
 struct _Replace_first_parameter<_Newfirst, _Ty<_First, _Rest...> >
 { // given _Ty<_First, _Rest...>, replace _First
 typedef _Ty<_Newfirst, _Rest...> type;
 };
  // TEMPLATE STRUCT _Get_element_type
template<class _Ty>
 struct _Get_element_type
 { template<class _Uty> static auto _Fn(int) -> _Identity<typename _Uty::element_type>; template<class _Uty> static auto _Fn(_Wrap_int) -> _Identity<typename _Get_first_parameter<_Uty>::type>; typedef decltype(_Fn<_Ty>(0)) _Decltype; typedef typename _Decltype::type type; };


  // TEMPLATE STRUCT _Get_ptr_difference_type
template<class _Ty>
 struct _Get_ptr_difference_type
 { template<class _Uty> static auto _Fn(int) -> _Identity<typename _Uty::difference_type>; template<class _Uty> static auto _Fn(_Wrap_int) -> _Identity<ptrdiff_t>; typedef decltype(_Fn<_Ty>(0)) _Decltype; typedef typename _Decltype::type type; };


  // TEMPLATE STRUCT _Get_rebind_type
template<class _Ty,
 class _Other>
 struct _Get_rebind_type
 { template<class _Uty> static auto _Fn(int) -> _Identity<typename _Uty::template rebind<_Other>::other>; template<class _Uty> static auto _Fn(_Wrap_int) -> _Identity<typename _Replace_first_parameter<_Other , /* for immediate commas in macro parameters */ _Uty>::type>; typedef decltype(_Fn<_Ty>(0)) _Decltype; typedef typename _Decltype::type type; };


  // TEMPLATE CLASS pointer_traits
template<class _Ty>
 struct pointer_traits
 { // defines traits for arbitrary pointers
 typedef typename _Get_element_type<_Ty>::type element_type;
 typedef _Ty pointer;
 typedef typename _Get_ptr_difference_type<_Ty>::type difference_type;


 template<class _Other>
  using rebind = typename _Get_rebind_type<_Ty, _Other>::type;
 typedef typename _If<is_void<element_type>::value,
  char&,
  typename add_lvalue_reference<element_type>::type>::type _Reftype;

 static pointer pointer_to(_Reftype _Val)
  { // convert raw reference to pointer
  return (_Ty::pointer_to(_Val));
  }
 };

  // TEMPLATE CLASS pointer_traits<_Ty *>
template<class _Ty>
 struct pointer_traits<_Ty *>
 { // defines traits for raw pointers
 typedef _Ty element_type;
 typedef _Ty *pointer;
 typedef ptrdiff_t difference_type;


 template<class _Other>
  using rebind = _Other *;
 typedef typename _If<is_void<_Ty>::value,
  char&,
  typename add_lvalue_reference<_Ty>::type>::type _Reftype;

 static pointer pointer_to(_Reftype _Val)
  { // convert raw reference to pointer
  return (::std:: addressof(_Val));
  }
 };

  // TEMPLATE STRUCT _Get_pointer_type
template<class _Ty>
 struct _Get_pointer_type
 { template<class _Uty> static auto _Fn(int) -> _Identity<typename _Uty::pointer>; template<class _Uty> static auto _Fn(_Wrap_int) -> _Identity<typename _Ty::value_type *>; typedef decltype(_Fn<_Ty>(0)) _Decltype; typedef typename _Decltype::type type; };


  // TEMPLATE STRUCT _Get_const_pointer_type
template<class _Ty>
 struct _Get_const_pointer_type
 { template<class _Uty> static auto _Fn(int) -> _Identity<typename _Uty::const_pointer>; template<class _Uty> static auto _Fn(_Wrap_int) -> _Identity<typename pointer_traits<typename _Get_pointer_type<_Ty>::type> ::template rebind<const typename _Ty::value_type> >; typedef decltype(_Fn<_Ty>(0)) _Decltype; typedef typename _Decltype::type type; };



  // TEMPLATE STRUCT _Get_void_pointer_type
template<class _Ty>
 struct _Get_void_pointer_type
 { template<class _Uty> static auto _Fn(int) -> _Identity<typename _Uty::void_pointer>; template<class _Uty> static auto _Fn(_Wrap_int) -> _Identity<typename pointer_traits<typename _Get_pointer_type<_Ty>::type> ::template rebind<void> >; typedef decltype(_Fn<_Ty>(0)) _Decltype; typedef typename _Decltype::type type; };



  // TEMPLATE STRUCT _Get_const_void_pointer_type
template<class _Ty>
 struct _Get_const_void_pointer_type
 { template<class _Uty> static auto _Fn(int) -> _Identity<typename _Uty::const_void_pointer>; template<class _Uty> static auto _Fn(_Wrap_int) -> _Identity<typename pointer_traits<typename _Get_pointer_type<_Ty>::type> ::template rebind<const void> >; typedef decltype(_Fn<_Ty>(0)) _Decltype; typedef typename _Decltype::type type; };



  // TEMPLATE STRUCT _Get_difference_type
template<class _Ty>
 struct _Get_difference_type
 { template<class _Uty> static auto _Fn(int) -> _Identity<typename _Uty::difference_type>; template<class _Uty> static auto _Fn(_Wrap_int) -> _Identity<typename _Get_ptr_difference_type< typename _Get_pointer_type<_Ty>::type>::type>; typedef decltype(_Fn<_Ty>(0)) _Decltype; typedef typename _Decltype::type type; };



  // TEMPLATE STRUCT _Get_size_type
template<class _Ty>
 struct _Get_size_type
 { template<class _Uty> static auto _Fn(int) -> _Identity<typename _Uty::size_type>; template<class _Uty> static auto _Fn(_Wrap_int) -> _Identity<typename make_unsigned< typename _Get_difference_type<_Ty>::type>::type>; typedef decltype(_Fn<_Ty>(0)) _Decltype; typedef typename _Decltype::type type; };



  // TEMPLATE STRUCT _Get_propagate_on_container_copy
template<class _Ty>
 struct _Get_propagate_on_container_copy
 { template<class _Uty> static auto _Fn(int) -> _Identity<typename _Uty::propagate_on_container_copy_assignment>; template<class _Uty> static auto _Fn(_Wrap_int) -> _Identity<false_type>; typedef decltype(_Fn<_Ty>(0)) _Decltype; typedef typename _Decltype::type type; };


  // TEMPLATE STRUCT _Get_propagate_on_container_move
template<class _Ty>
 struct _Get_propagate_on_container_move
 { template<class _Uty> static auto _Fn(int) -> _Identity<typename _Uty::propagate_on_container_move_assignment>; template<class _Uty> static auto _Fn(_Wrap_int) -> _Identity<false_type>; typedef decltype(_Fn<_Ty>(0)) _Decltype; typedef typename _Decltype::type type; };


  // TEMPLATE STRUCT _Get_propagate_on_container_swap
template<class _Ty>
 struct _Get_propagate_on_container_swap
 { template<class _Uty> static auto _Fn(int) -> _Identity<typename _Uty::propagate_on_container_swap>; template<class _Uty> static auto _Fn(_Wrap_int) -> _Identity<false_type>; typedef decltype(_Fn<_Ty>(0)) _Decltype; typedef typename _Decltype::type type; };


  // TEMPLATE STRUCT _Get_is_always_equal
template<class _Ty>
 struct _Get_is_always_equal
 { template<class _Uty> static auto _Fn(int) -> _Identity<typename _Uty::is_always_equal>; template<class _Uty> static auto _Fn(_Wrap_int) -> _Identity<typename is_empty<_Ty>::type>; typedef decltype(_Fn<_Ty>(0)) _Decltype; typedef typename _Decltype::type type; };


  // STRUCT _Alloc_allocate
struct _Alloc_allocate
 { // determines allocator_traits<_Alloc>
  // ::allocate(size_type, const_void_pointer)


 template<class _Alloc,
  class _Size_type,
  class _Const_void_pointer>
  static auto _Fn(int, _Alloc& _Al,
   _Size_type _Count,
   _Const_void_pointer _Hint)
   -> decltype(_Al.allocate(_Count, _Hint))
  { // call allocator supplied version
  return (_Al.allocate(_Count, _Hint));
  }

 template<class _Alloc,
  class _Size_type,
  class _Const_void_pointer>
  static auto _Fn(_Wrap_int, _Alloc& _Al,
   _Size_type _Count,
   _Const_void_pointer)
   -> decltype(_Al.allocate(_Count))
  { // call default version
  return (_Al.allocate(_Count));
  }
 };

  // STRUCT _Alloc_construct
struct _Alloc_construct
 { // determines allocator_traits<_Ty>
  // ::construct(_Ty&, _Objty *, _Types...)




 template<class _Ty,
  class _Objty,
  class... _Types>
  static auto _Fn(int, _Ty& _Al, _Objty *_Ptr,
   _Types&&... _Args)
   -> decltype(
    _Al.construct(_Ptr, ::std:: forward<_Types>(_Args)...))
  { // call allocator supplied version
  _Al.construct(_Ptr, ::std:: forward<_Types>(_Args)...);
  }

 template<class _Ty,
  class _Objty,
  class... _Types>
  static auto _Fn(_Wrap_int, _Ty&, _Objty *_Ptr,
   _Types&&... _Args)
   -> void
  { // call default version
  ::new (static_cast<void *>(_Ptr))
   _Objty(::std:: forward<_Types>(_Args)...);
  }
 };

  // STRUCT _Alloc_destroy
struct _Alloc_destroy
 { // determines allocator_traits<_Ty>::destroy(_Ty&, _Objty *)

 template<class _Ty,
  class _Objty>
  static auto _Fn(int, _Ty& _Al, _Objty *_Ptr)
   -> decltype(_Al.destroy(_Ptr))
  { // call allocator supplied version
  _Al.destroy(_Ptr);
  }

 template<class _Ty,
  class _Objty>
  static auto _Fn(_Wrap_int, _Ty&, _Objty *_Ptr)
   -> void
  { // call default version
  _Ptr->~_Objty();
  }
 };

  // STRUCT _Alloc_max_size
struct _Alloc_max_size
 { // determines allocator_traits<_Ty>::max_size(const _Ty&)

 template<class _Ty>
  static auto _Fn(int, const _Ty& _Al)
   -> decltype(_Al.max_size())
  { // call allocator supplied version
  return (_Al.max_size());
  }

 template<class _Ty>
  static auto _Fn(_Wrap_int, const _Ty&)
   -> typename _Get_size_type<_Ty>::type
  { // call default version
  return ((numeric_limits<typename _Get_size_type<_Ty>::type>::max)());
  }
 };

  // STRUCT _Alloc_select
struct _Alloc_select
 { // determines allocator_traits<_Ty>
  // ::select_on_container_copy_construction(const _Alloc&)


 template<class _Ty>
  static auto _Fn(int, const _Ty& _Al)
   -> decltype((_Ty)_Al.select_on_container_copy_construction())
  { // call allocator supplied version
  return (_Al.select_on_container_copy_construction());
  }

 template<class _Ty>
  static auto _Fn(_Wrap_int, const _Ty& _Al)
   -> _Ty
  { // call default version
  return (_Al);
  }
 };

  // TEMPLATE CLASS allocator_traits
template<class _Alloc>
 struct allocator_traits
 { // defines traits for allocators
 typedef _Alloc allocator_type;
 typedef typename _Alloc::value_type value_type;

 typedef typename _Get_pointer_type<_Alloc>::type
  pointer;
 typedef typename _Get_const_pointer_type<_Alloc>::type
  const_pointer;
 typedef typename _Get_void_pointer_type<_Alloc>::type
  void_pointer;
 typedef typename _Get_const_void_pointer_type<_Alloc>::type
  const_void_pointer;

 typedef typename _Get_size_type<_Alloc>::type size_type;
 typedef typename _Get_difference_type<_Alloc>::type difference_type;

 typedef typename _Get_propagate_on_container_copy<_Alloc>::type
  propagate_on_container_copy_assignment;
 typedef typename _Get_propagate_on_container_move<_Alloc>::type
  propagate_on_container_move_assignment;
 typedef typename _Get_propagate_on_container_swap<_Alloc>::type
  propagate_on_container_swap;
 typedef typename _Get_is_always_equal<_Alloc>::type
  is_always_equal;


 template<class _Other>
  using rebind_alloc = typename _Get_rebind_type<_Alloc, _Other>::type;

 template<class _Other>
  using rebind_traits = allocator_traits<rebind_alloc<_Other> >;
 static pointer allocate(_Alloc& _Al, size_type _Count)
  { // allocate array of _Count elements
  return (_Al.allocate(_Count));
  }

 static pointer allocate(_Alloc& _Al, size_type _Count,
  const_void_pointer _Hint)
  { // allocate array of _Count elements, with hint
  return (_Alloc_allocate::_Fn(0, _Al, _Count, _Hint));
  }

 static void deallocate(_Alloc& _Al,
  pointer _Ptr, size_type _Count)
  { // deallocate _Count elements at _Ptr
  _Al.deallocate(_Ptr, _Count);
  }


 template<class _Ty,
  class... _Types>
  static void construct(_Alloc& _Al, _Ty *_Ptr,
   _Types&&... _Args)
  { // construct _Ty(_Types...) at _Ptr
  _Alloc_construct::_Fn(0, _Al, _Ptr,
   ::std:: forward<_Types>(_Args)...);
  }
 template<class _Ty>
  static void destroy(_Alloc& _Al, _Ty *_Ptr)
  { // destroy object at _Ptr
  _Alloc_destroy::_Fn(0, _Al, _Ptr);
  }

 static size_type max_size(const _Alloc& _Al)
  { // get maximum size
  return (_Alloc_max_size::_Fn(0, _Al));
  }

 static _Alloc select_on_container_copy_construction(
  const _Alloc& _Al)
  { // get allocator to use
  return (_Alloc_select::_Fn(0, _Al));
  }
 };

  // TEMPLATE CLASS allocator
template<class _Ty>
 class allocator
 { // generic allocator for objects of class _Ty
public:
 typedef _Ty value_type;







 typedef value_type *pointer;
 typedef const value_type *const_pointer;

 typedef value_type& reference;
 typedef const value_type& const_reference;

 typedef size_t size_type;
 typedef ptrdiff_t difference_type;

 typedef true_type propagate_on_container_move_assignment;
 typedef true_type is_always_equal;

 template<class _Other>
  struct rebind
  { // convert this type to allocator<_Other>
  typedef allocator<_Other> other;
  };

 pointer address(reference _Val) const
  { // return address of mutable _Val
  return (::std:: addressof(_Val));
  }

 const_pointer address(const_reference _Val) const
  { // return address of nonmutable _Val
  return (::std:: addressof(_Val));
  }

 allocator() throw ()
  { // construct default allocator (do nothing)
  }

 allocator(const allocator<_Ty>&) throw ()
  { // construct by copying (do nothing)
  }

 template<class _Other>
  allocator(const allocator<_Other>&) throw ()
  { // construct from a related allocator (do nothing)
  }

 template<class _Other>
  allocator<_Ty>& operator=(const allocator<_Other>&)
  { // assign from a related allocator (do nothing)
  return (*this);
  }

 void deallocate(pointer _Ptr, size_type _Count)
  { // deallocate object at _Ptr
  _Deallocate(_Ptr, _Count);
  }

                     pointer allocate(size_type _Count)
  { // allocate array of _Count elements
  return (_Allocate(_Count, (pointer)0));
  }

                     pointer allocate(size_type _Count, const void *)
  { // allocate array of _Count elements, ignore hint
  return (allocate(_Count));
  }


 template<class _Objty,
  class... _Types>
  void construct(_Objty *_Ptr, _Types&&... _Args)
  { // construct _Objty(_Types...) at _Ptr
  ::new ((void *)_Ptr) _Objty(::std:: forward<_Types>(_Args)...);
  }
 template<class _Uty>
  void destroy(_Uty *_Ptr)
  { // destroy object at _Ptr
  _Ptr->~_Uty();
  }

 size_t max_size() const
  { // estimate maximum array size
  return ((size_t)(-1) / sizeof (_Ty));
  }
 };

  // CLASS allocator<void>
template<>
 class allocator<void>
 { // generic allocator for type void
public:






 typedef void value_type;

 typedef void *pointer;
 typedef const void *const_pointer;

 template<class _Other>
  struct rebind
  { // convert this type to an allocator<_Other>
  typedef allocator<_Other> other;
  };

 allocator() throw ()
  { // construct default allocator (do nothing)
  }

 allocator(const allocator<void>&) throw ()
  { // construct by copying (do nothing)
  }

 template<class _Other>
  allocator(const allocator<_Other>&) throw ()
  { // construct from related allocator (do nothing)
  }

 template<class _Other>
  allocator<void>& operator=(const allocator<_Other>&)
  { // assign from a related allocator (do nothing)
  return (*this);
  }
 };

template<class _Ty,
 class _Other> inline
 bool operator==(const allocator<_Ty>&,
  const allocator<_Other>&) throw ()
 { // test for allocator equality
 return (true);
 }

template<class _Ty,
 class _Other> inline
 bool operator!=(const allocator<_Ty>& _Left,
  const allocator<_Other>& _Right) throw ()
 { // test for allocator inequality
 return (false);
 }

  // TEMPLATE CLASS SPECIALIZATION allocator_traits
template<class _Ty>
 struct allocator_traits<allocator<_Ty> >
 { // defines traits for allocators (increases compiler speed)
 typedef allocator<_Ty> _Alloc;

 typedef _Alloc allocator_type;
 typedef _Ty value_type;

 typedef value_type *pointer;
 typedef const value_type *const_pointer;
 typedef void *void_pointer;
 typedef const void *const_void_pointer;

 typedef size_t size_type;
 typedef ptrdiff_t difference_type;

 typedef false_type propagate_on_container_copy_assignment;
 typedef true_type propagate_on_container_move_assignment;
 typedef false_type propagate_on_container_swap;
 typedef true_type is_always_equal;


 template<class _Other>
  using rebind_alloc = allocator<_Other>;

 template<class _Other>
  using rebind_traits = allocator_traits<allocator<_Other> >;
 static pointer allocate(_Alloc& _Al, size_type _Count)
  { // allocate array of _Count elements
  return (_Al.allocate(_Count));
  }

 static pointer allocate(_Alloc& _Al, size_type _Count,
  const_void_pointer _Hint)
  { // allocate array of _Count elements, with hint
  return (_Al.allocate(_Count, _Hint));
  }

 static void deallocate(_Alloc& _Al,
  pointer _Ptr, size_type _Count)
  { // deallocate _Count elements at _Ptr
  _Al.deallocate(_Ptr, _Count);
  }


 template<class _Objty,
  class... _Types>
  static void construct(_Alloc& _Al, _Objty *_Ptr,
   _Types&&... _Args)
  { // construct _Objty(_Types...) at _Ptr
  _Al.construct(_Ptr, ::std:: forward<_Types>(_Args)...);
  }
 template<class _Uty>
  static void destroy(_Alloc& _Al, _Uty *_Ptr)
  { // destroy object at _Ptr
  _Al.destroy(_Ptr);
  }

 static size_type max_size(const _Alloc& _Al)
  { // get maximum size
  return (_Al.max_size());
  }

 static _Alloc select_on_container_copy_construction(
  const _Alloc& _Al)
  { // get allocator to use
  return (_Al);
  }
 };

  // TEMPLATE CLASS _Wrap_alloc
template<class _Alloc>
 struct _Wrap_alloc
  : public _Alloc
 { // defines traits for allocators






 typedef _Alloc _Mybase;
 typedef allocator_traits<_Alloc> _Mytraits;

 typedef typename _Mytraits::value_type value_type;

 typedef typename _Mytraits::pointer pointer;
 typedef typename _Mytraits::const_pointer const_pointer;
 typedef typename _Mytraits::void_pointer void_pointer;
 typedef typename _Mytraits::const_void_pointer const_void_pointer;

 typedef typename _If<is_void<value_type>::value,
  int, value_type>::type& reference;
 typedef typename _If<is_void<const value_type>::value,
  const int, const value_type>::type& const_reference;

 typedef typename _Mytraits::size_type size_type;
 typedef typename _Mytraits::difference_type difference_type;

 typedef typename _Mytraits::propagate_on_container_copy_assignment
  propagate_on_container_copy_assignment;
 typedef typename _Mytraits::propagate_on_container_move_assignment
  propagate_on_container_move_assignment;
 typedef typename _Mytraits::propagate_on_container_swap
  propagate_on_container_swap;
 typedef typename _Mytraits::is_always_equal
  is_always_equal;

 _Wrap_alloc select_on_container_copy_construction(_Nil = _Nil()) const
  { // get allocator to use
  return (_Mytraits::select_on_container_copy_construction(*this));
  }

 template<class _Other>
  struct rebind
  { // convert this type to allocator<_Other>
  typedef typename _Mytraits::template rebind_alloc<_Other>
   _Other_alloc;
  typedef _Wrap_alloc<_Other_alloc> other;
  };

 pointer address(reference _Val) const
  { // return address of mutable _Val
  return (::std:: addressof(_Val));
  }

 const_pointer address(const_reference _Val) const
  { // return address of nonmutable _Val
  return (::std:: addressof(_Val));
  }

 _Wrap_alloc() throw ()
  : _Mybase()
  { // construct default allocator (do nothing)
  }

 _Wrap_alloc(const _Mybase& _Right) throw ()
  : _Mybase(_Right)
  { // construct by copying base
  }

 _Wrap_alloc(const _Wrap_alloc& _Right) throw ()
  : _Mybase(_Right)
  { // construct by copying
  }

 template<class _Other>
  _Wrap_alloc(const _Other& _Right) throw ()
  : _Mybase(_Right)
  { // construct from a related allocator
  }

 template<class _Other>
  _Wrap_alloc(_Other& _Right) throw ()
  : _Mybase(_Right)
  { // construct from a related allocator
  }

 _Wrap_alloc& operator=(const _Mybase& _Right)
  { // construct by copying base
  _Mybase::operator=(_Right);
  return (*this);
  }

 _Wrap_alloc& operator=(const _Wrap_alloc& _Right)
  { // construct by copying
  _Mybase::operator=(_Right);
  return (*this);
  }

 template<class _Other>
  _Wrap_alloc& operator=(const _Other& _Right)
  { // assign from a related allocator
  _Mybase::operator=(_Right);
  return (*this);
  }

                     pointer allocate(size_type _Count)
  { // allocate array of _Count elements
  return (_Mybase::allocate(_Count));
  }

                     pointer allocate(size_type _Count,
  const_void_pointer _Hint, _Nil = _Nil())
  { // allocate array of _Count elements, with hint
  return (_Mytraits::allocate(*this, _Count, _Hint));
  }

 void deallocate(pointer _Ptr, size_type _Count)
  { // deallocate object at _Ptr, ignore size
  _Mybase::deallocate(_Ptr, _Count);
  }


 template<class _Ty,
  class... _Types>
  void construct(_Ty *_Ptr,
   _Types&&... _Args)
  { // construct _Ty(_Types...) at _Ptr
  _Mytraits::construct(*this, _Ptr,
   ::std:: forward<_Types>(_Args)...);
  }
 template<class _Ty>
  void destroy(_Ty *_Ptr)
  { // destroy object at _Ptr
  _Mytraits::destroy(*this, _Ptr);
  }

 size_type max_size(_Nil = _Nil()) const
  { // get maximum size
  return (_Mytraits::max_size(*this));
  }
 };

template<class _Ty,
 class _Other> inline
 bool operator==(const _Wrap_alloc<_Ty>& _Left,
  const _Wrap_alloc<_Other>& _Right) throw ()
 { // test for allocator equality
 return (static_cast<const _Ty&>(_Left)
  == static_cast<const _Other&>(_Right));
 }

template<class _Ty,
 class _Other> inline
 bool operator!=(const _Wrap_alloc<_Ty>& _Left,
  const _Wrap_alloc<_Other>& _Right) throw ()
 { // test for allocator inequality
 return (!(_Left == _Right));
 }

  // TEMPLATE FUNCTION _Pocca
template<class _Alty> inline
 void _Pocca(_Alty& _Left, const _Alty& _Right, true_type)
 { // propagate on container copy assignment
 _Left = _Right;
 }

template<class _Alty> inline
 void _Pocca(_Alty&, const _Alty&, false_type)
 { // (don't) propagate on container copy assignment
 }

template<class _Alty> inline
 void _Pocca(_Alty& _Left, const _Alty& _Right)
 { // (maybe) propagate on container copy assignment
 typename _Alty::propagate_on_container_copy_assignment _Tag;
 _Pocca(_Left, _Right, _Tag);
 }

  // TEMPLATE FUNCTION _Pocma
template<class _Alty> inline
 void _Pocma(_Alty& _Left, _Alty& _Right, true_type)
 { // propagate on container move assignment
 _Left = ::std:: move(_Right);
 }

template<class _Alty> inline
 void _Pocma(_Alty&, _Alty&, false_type)
 { // (don't) propagate on container move assignment
 }

template<class _Alty> inline
 void _Pocma(_Alty& _Left, _Alty& _Right)
 { // (maybe) propagate on container move assignment
 typename _Alty::propagate_on_container_move_assignment _Tag;
 _Pocma(_Left, _Right, _Tag);
 }

  // TEMPLATE FUNCTION _Pocs
template<class _Alty> inline
 void _Pocs(_Alty& _Left, _Alty& _Right, true_type)
 { // propagate on container swap
 _Swap_adl(_Left, _Right);
 }

template<class _Alty> inline
 void _Pocs(_Alty&, _Alty&, false_type)
 { // (don't) propagate on container swap
 }

template<class _Alty> inline
 void _Pocs(_Alty& _Left, _Alty& _Right)
 { // (maybe) propagate on container swap
 typename _Alty::propagate_on_container_swap _Tag;
 _Pocs(_Left, _Right, _Tag);
 }
}

  // ATOMIC REFERENCE COUNTING PRIMITIVES
/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */


namespace std {
template<class _Elem,
 class _Traits = char_traits<_Elem>,
 class _Ax = allocator<_Elem> >
 class basic_string;
  // TEMPLATE CLASS _String_const_iterator
template<class _Mystr>
 class _String_const_iterator
  : public _Iterator012<random_access_iterator_tag,
   typename _Mystr::value_type,
   typename _Mystr::difference_type,
   typename _Mystr::const_pointer,
   typename _Mystr::const_reference,
   _Iterator_base>
 { // iterator for nonmutable string
public:
 typedef _String_const_iterator<_Mystr> _Myiter;
 typedef random_access_iterator_tag iterator_category;

 typedef typename _Mystr::value_type value_type;
 typedef typename _Mystr::difference_type difference_type;
 typedef typename _Mystr::const_pointer pointer;
 typedef typename _Mystr::const_reference reference;

 _String_const_iterator()
  { // construct with null pointer
  this->_Ptr = 0;
  }

 _String_const_iterator(pointer _Parg, const _Container_base *_Pstring)
  { // construct with pointer _Parg
  this->_Adopt(_Pstring);
  this->_Ptr = _Parg;
  }

 typedef pointer _Unchecked_type;

 _Myiter& _Rechecked(_Unchecked_type _Right)
  { // reset from unchecked iterator
  this->_Ptr = _Right;
  return (*this);
  }

 _Unchecked_type _Unchecked() const
  { // make an unchecked iterator
  return (_Unchecked_type(this->_Ptr));
  }

 reference operator*() const
  { // return designated object
  return (*this->_Ptr);
  }

 pointer operator->() const
  { // return pointer to class object
  return (::std:: pointer_traits<pointer>::pointer_to(**this));
  }

 _Myiter& operator++()
  { // preincrement
  ++this->_Ptr;
  return (*this);
  }

 _Myiter operator++(int)
  { // postincrement
  _Myiter _Tmp = *this;
  ++*this;
  return (_Tmp);
  }

 _Myiter& operator--()
  { // predecrement
  --this->_Ptr;
  return (*this);
  }

 _Myiter operator--(int)
  { // postdecrement
  _Myiter _Tmp = *this;
  --*this;
  return (_Tmp);
  }

 _Myiter& operator+=(difference_type _Off)
  { // increment by integer
  _Ptr += _Off;
  return (*this);
  }

 _Myiter operator+(difference_type _Off) const
  { // return this + integer
  _Myiter _Tmp = *this;
  return (_Tmp += _Off);
  }

 _Myiter& operator-=(difference_type _Off)
  { // decrement by integer
  return (*this += -_Off);
  }

 _Myiter operator-(difference_type _Off) const
  { // return this - integer
  _Myiter _Tmp = *this;
  return (_Tmp -= _Off);
  }

 difference_type operator-(const _Myiter& _Right) const
  { // return difference of iterators
  _Compat(_Right);
  return (this->_Ptr - _Right._Ptr);
  }

 reference operator[](difference_type _Off) const
  { // subscript
  return (*(*this + _Off));
  }

 bool operator==(const _Myiter& _Right) const
  { // test for iterator equality
  if (this->_Getcont() != _Right._Getcont())
   _Compat(_Right);
  return (this->_Ptr == _Right._Ptr);
  }

 bool operator!=(const _Myiter& _Right) const
  { // test for iterator inequality
  return (!(*this == _Right));
  }

 bool operator<(const _Myiter& _Right) const
  { // test if this < _Right
  _Compat(_Right);
  return (this->_Ptr < _Right._Ptr);
  }

 bool operator>(const _Myiter& _Right) const
  { // test if this > _Right
  return (_Right < *this);
  }

 bool operator<=(const _Myiter& _Right) const
  { // test if this <= _Right
  return (!(_Right < *this));
  }

 bool operator>=(const _Myiter& _Right) const
  { // test if this >= _Right
  return (!(*this < _Right));
  }
 void _Compat(const _Myiter&) const
  { // test for compatible iterator pair
  }


 pointer _Ptr; // pointer to element in string
 };

template<class _Mystr> inline
 typename _String_const_iterator<_Mystr>::_Unchecked_type
  _Unchecked(_String_const_iterator<_Mystr> _Iter)
 { // convert to unchecked
 return (_Iter._Unchecked());
 }

template<class _Mystr> inline
 _String_const_iterator<_Mystr>
  _Rechecked(_String_const_iterator<_Mystr>& _Iter,
   typename _String_const_iterator<_Mystr>
    ::_Unchecked_type _Right)
 { // convert to checked
 return (_Iter._Rechecked(_Right));
 }

template<class _Mystr> inline
 _String_const_iterator<_Mystr> operator+(
  typename _String_const_iterator<_Mystr>
   ::difference_type _Off,
  _String_const_iterator<_Mystr> _Next)
 { // add offset to iterator
 return (_Next += _Off);
 }

  // TEMPLATE CLASS _String_iterator
template<class _Mystr>
 class _String_iterator
  : public _String_const_iterator<_Mystr>
 { // iterator for mutable string
public:
 typedef _String_iterator<_Mystr> _Myiter;
 typedef _String_const_iterator<_Mystr> _Mybase;
 typedef random_access_iterator_tag iterator_category;

 typedef typename _Mystr::value_type value_type;
 typedef typename _Mystr::difference_type difference_type;
 typedef typename _Mystr::pointer pointer;
 typedef typename _Mystr::reference reference;

 _String_iterator()
  { // construct with null string pointer
  }

 _String_iterator(pointer _Parg, const _Container_base *_Pstring)
  : _Mybase(_Parg, _Pstring)
  { // construct with pointer _Parg
  }

 typedef pointer _Unchecked_type;

 _Myiter& _Rechecked(_Unchecked_type _Right)
  { // reset from unchecked iterator
  this->_Ptr = _Right;
  return (*this);
  }

 _Unchecked_type _Unchecked() const
  { // make an unchecked iterator
  return (_Unchecked_type(this->_Ptr));
  }

 reference operator*() const
  { // return designated object
  return ((reference)**(_Mybase *)this);
  }

 pointer operator->() const
  { // return pointer to class object
  return (::std:: pointer_traits<pointer>::pointer_to(**this));
  }

 _Myiter& operator++()
  { // preincrement
  ++*(_Mybase *)this;
  return (*this);
  }

 _Myiter operator++(int)
  { // postincrement
  _Myiter _Tmp = *this;
  ++*this;
  return (_Tmp);
  }

 _Myiter& operator--()
  { // predecrement
  --*(_Mybase *)this;
  return (*this);
  }

 _Myiter operator--(int)
  { // postdecrement
  _Myiter _Tmp = *this;
  --*this;
  return (_Tmp);
  }

 _Myiter& operator+=(difference_type _Off)
  { // increment by integer
  *(_Mybase *)this += _Off;
  return (*this);
  }

 _Myiter operator+(difference_type _Off) const
  { // return this + integer
  _Myiter _Tmp = *this;
  return (_Tmp += _Off);
  }

 _Myiter& operator-=(difference_type _Off)
  { // decrement by integer
  return (*this += -_Off);
  }

 _Myiter operator-(difference_type _Off) const
  { // return this - integer
  _Myiter _Tmp = *this;
  return (_Tmp -= _Off);
  }

 difference_type operator-(const _Mybase& _Right) const
  { // return difference of iterators
  return (*(_Mybase *)this - _Right);
  }

 reference operator[](difference_type _Off) const
  { // subscript
  return (*(*this + _Off));
  }
 };

template<class _Mystr> inline
 typename _String_iterator<_Mystr>::_Unchecked_type
  _Unchecked(_String_iterator<_Mystr> _Iter)
 { // convert to unchecked
 return (_Iter._Unchecked());
 }

template<class _Mystr> inline
 _String_iterator<_Mystr>
  _Rechecked(_String_iterator<_Mystr>& _Iter,
   typename _String_iterator<_Mystr>
    ::_Unchecked_type _Right)
 { // convert to checked
 return (_Iter._Rechecked(_Right));
 }

template<class _Mystr> inline
 _String_iterator<_Mystr> operator+(
  typename _String_iterator<_Mystr>
   ::difference_type _Off,
  _String_iterator<_Mystr> _Next)
 { // add offset to iterator
 return (_Next += _Off);
 }


  // basic_string TYPE WRAPPERS
template<class _Value_type,
 class _Size_type,
 class _Difference_type,
 class _Pointer,
 class _Const_pointer,
 class _Reference,
 class _Const_reference>
 struct _String_iter_types
 { // wraps types needed by iterators
 typedef _Value_type value_type;
 typedef _Size_type size_type;
 typedef _Difference_type difference_type;
 typedef _Pointer pointer;
 typedef _Const_pointer const_pointer;
 typedef _Reference reference;
 typedef _Const_reference const_reference;
 };

template<class _Ty,
 class _Alloc0>
 struct _String_base_types
 { // types needed for a container base
 typedef _Alloc0 _Alloc;
 typedef _String_base_types<_Ty, _Alloc> _Myt;


 typedef _Wrap_alloc<_Alloc> _Alty0;
 typedef typename _Alty0::template rebind<_Ty>::other _Alty;





 typedef typename _If<_Is_simple_alloc<_Alty>::value,
  _Simple_types<typename _Alty::value_type>,
  _String_iter_types<typename _Alty::value_type,
   typename _Alty::size_type,
   typename _Alty::difference_type,
   typename _Alty::pointer,
   typename _Alty::const_pointer,
   typename _Alty::reference,
   typename _Alty::const_reference> >::type
  _Val_types;
 };

  // TEMPLATE CLASS _String_val
template<class _Val_types>
 class _String_val
  : public _Container_base
 { // base class for basic_string to hold data
public:
 typedef _String_val<_Val_types> _Myt;

 typedef typename _Val_types::value_type value_type;
 typedef typename _Val_types::size_type size_type;
 typedef typename _Val_types::difference_type difference_type;
 typedef typename _Val_types::pointer pointer;
 typedef typename _Val_types::const_pointer const_pointer;
 typedef typename _Val_types::reference reference;
 typedef typename _Val_types::const_reference const_reference;






 typedef _String_iterator<_Myt> iterator;
 typedef _String_const_iterator<_Myt> const_iterator;


 _String_val()
  { // initialize values
  _Mysize = 0;
  _Myres = 0;
  }

 enum
  { // length of internal buffer, [1, 16]
  _BUF_SIZE = 16 / sizeof (value_type) < 1 ? 1
   : 16 / sizeof (value_type)};
 enum
  { // roundup mask for allocated buffers, [0, 15]
  _ALLOC_MASK = sizeof (value_type) <= 1 ? 15
   : sizeof (value_type) <= 2 ? 7
   : sizeof (value_type) <= 4 ? 3
   : sizeof (value_type) <= 8 ? 1 : 0};

 value_type *_Myptr()
  { // determine current pointer to buffer for mutable string
  return (this->_BUF_SIZE <= this->_Myres
   ? ::std:: addressof(*this->_Bx._Ptr)
   : this->_Bx._Buf);
  }

 const value_type *_Myptr() const
  { // determine current pointer to buffer for nonmutable string
  return (this->_BUF_SIZE <= this->_Myres
   ? ::std:: addressof(*this->_Bx._Ptr)
   : this->_Bx._Buf);
  }

 union _Bxty
  { // storage for small buffer or pointer to larger one
  value_type _Buf[_BUF_SIZE];
  pointer _Ptr;
  char _Alias[_BUF_SIZE]; // to permit aliasing
  } _Bx;

 size_type _Mysize; // current length of string
 size_type _Myres; // current storage reserved for string
 };

  // TEMPLATE CLASS _String_alloc
template<class _Alloc_types>
 class _String_alloc
 { // base class for basic_string to hold allocator
public:
 typedef _String_alloc<_Alloc_types> _Myt;
 typedef typename _Alloc_types::_Alloc _Alloc;
 typedef typename _Alloc_types::_Alty _Alty;
 typedef typename _Alloc_types::_Val_types _Val_types;

 typedef typename _Val_types::value_type value_type;
 typedef typename _Val_types::size_type size_type;
 typedef typename _Val_types::difference_type difference_type;
 typedef typename _Val_types::pointer pointer;
 typedef typename _Val_types::const_pointer const_pointer;
 typedef typename _Val_types::reference reference;
 typedef typename _Val_types::const_reference const_reference;

 typedef _String_iterator<_String_val<_Val_types> > iterator;
 typedef _String_const_iterator<_String_val<_Val_types> > const_iterator;

 enum
  { // length of internal buffer, [1, 16]
  _BUF_SIZE = _String_val<_Val_types>::_BUF_SIZE
  };

 enum
  { // roundup mask for allocated buffers, [0, 15]
  _ALLOC_MASK = _String_val<_Val_types>::_ALLOC_MASK
  };

 value_type *_Myptr()
  { // determine current pointer to buffer for mutable string
  return (_Get_data()._Myptr());
  }

 const value_type *_Myptr() const
  { // determine current pointer to buffer for nonmutable string
  return (_Get_data()._Myptr());
  }


 _String_alloc(const _Alloc& _Al = _Alloc())
  : _Mypair(_One_then_variadic_args_t(), _Al)
  { // construct allocator from _Al
  }

 void _Copy_alloc(const _Alty& _Al)
  { // replace old allocator
  _Pocca(_Getal(), _Al);
  }

 void _Move_alloc(_Alty& _Al)
  { // replace old allocator
  _Pocma(_Getal(), _Al);
  }

 void _Swap_alloc(_Myt& _Right)
  { // swap allocators
  _Pocs(_Getal(), _Right._Getal());
  }
 void _Orphan_all()
  { // orphan all iterators
  _Get_data()._Orphan_all();
  }

 void _Swap_all(_Myt& _Right)
  { // swap all iterators
  _Get_data()._Swap_all(_Right._Get_data());
  }

 _Alty& _Getal()
  { // return reference to allocator
  return (_Mypair._Get_first());
  }

 const _Alty& _Getal() const
  { // return const reference to allocator
  return (_Mypair._Get_first());
  }

 _String_val<_Val_types>& _Get_data()
  { // return reference to _String_val
  return (_Mypair._Get_second());
  }

 const _String_val<_Val_types>& _Get_data() const
  { // return const reference to _String_val
  return (_Mypair._Get_second());
  }

 typedef typename _String_val<_Val_types>::_Bxty _Bxty;

 _Bxty& _Bx()
  { // return reference to _Bx
  return (_Get_data()._Bx);
  }

 const _Bxty& _Bx() const
  { // return const reference to _Bx
  return (_Get_data()._Bx);
  }

 size_type& _Mysize()
  { // return reference to _Mysize
  return (_Get_data()._Mysize);
  }

 const size_type& _Mysize() const
  { // return const reference to _Mysize
  return (_Get_data()._Mysize);
  }

 size_type& _Myres()
  { // return reference to _Myres
  return (_Get_data()._Myres);
  }

 const size_type& _Myres() const
  { // return const reference to _Myres
  return (_Get_data()._Myres);
  }

private:
 _Compressed_pair<_Alty, _String_val<_Val_types> > _Mypair;
 };

  // TEMPLATE CLASS basic_string
template<class _Elem,
 class _Traits,
 class _Alloc>
 class basic_string
  : public _String_alloc<_String_base_types<_Elem, _Alloc> >
 { // null-terminated transparent array of elements
public:
 typedef basic_string<_Elem, _Traits, _Alloc> _Myt;
 typedef _String_alloc<_String_base_types<_Elem, _Alloc> > _Mybase;
 typedef _Traits traits_type;
 typedef _Alloc allocator_type;

 typedef typename _Mybase::_Alty _Alty;

 typedef typename _Mybase::value_type value_type;
 typedef typename _Mybase::size_type size_type;
 typedef typename _Mybase::difference_type difference_type;
 typedef typename _Mybase::pointer pointer;
 typedef typename _Mybase::const_pointer const_pointer;
 typedef typename _Mybase::reference reference;
 typedef typename _Mybase::const_reference const_reference;






 typedef typename _Mybase::iterator iterator;
 typedef typename _Mybase::const_iterator const_iterator;


 typedef ::std:: reverse_iterator<iterator> reverse_iterator;
 typedef ::std:: reverse_iterator<const_iterator> const_reverse_iterator;

 basic_string(const _Myt& _Right)


  : _Mybase(_Right._Getal().select_on_container_copy_construction())





  { // construct by copying _Right
  _Tidy();
  assign(_Right, 0, npos);
  }


 basic_string(const _Myt& _Right, const _Alloc& _Al)
  : _Mybase(_Al)
  { // construct by copying with allocator
  _Tidy();
  assign(_Right, 0, npos);
  }


 basic_string()
  : _Mybase()
  { // construct empty string
  _Tidy();
  }

 explicit basic_string(const _Alloc& _Al)
  : _Mybase(_Al)
  { // construct empty string with allocator
  _Tidy();
  }

 basic_string(const _Myt& _Right, size_type _Roff,
  size_type _Count = npos)
  : _Mybase(_Right._Getal())
  { // construct from _Right [_Roff, _Roff + _Count)
  _Tidy();
  assign(_Right, _Roff, _Count);
  }

 basic_string(const _Myt& _Right, size_type _Roff, size_type _Count,
  const _Alloc& _Al)
  : _Mybase(_Al)
  { // construct from _Right [_Roff, _Roff + _Count) with allocator
  _Tidy();
  assign(_Right, _Roff, _Count);
  }

 basic_string(const _Elem *_Ptr, size_type _Count)
  : _Mybase()
  { // construct from [_Ptr, _Ptr + _Count)
  _Tidy();
  assign(_Ptr, _Count);
  }

 basic_string(const _Elem *_Ptr, size_type _Count, const _Alloc& _Al)
  : _Mybase(_Al)
  { // construct from [_Ptr, _Ptr + _Count) with allocator
  _Tidy();
  assign(_Ptr, _Count);
  }

 basic_string(const _Elem *_Ptr)
  : _Mybase()
  { // construct from [_Ptr, <null>)
  _Tidy();
  assign(_Ptr);
  }

 basic_string(const _Elem *_Ptr, const _Alloc& _Al)
  : _Mybase(_Al)
  { // construct from [_Ptr, <null>) with allocator
  _Tidy();
  assign(_Ptr);
  }

 basic_string(size_type _Count, _Elem _Ch)
  : _Mybase()
  { // construct from _Count * _Ch
  _Tidy();
  assign(_Count, _Ch);
  }

 basic_string(size_type _Count, _Elem _Ch, const _Alloc& _Al)
  : _Mybase(_Al)
  { // construct from _Count * _Ch with allocator
  _Tidy();
  assign(_Count, _Ch);
  }


 template<class _Iter,
  class = typename enable_if<_Is_iterator<_Iter>::value,
   void>::type>
  basic_string(_Iter _First, _Iter _Last, const _Alloc& _Al = _Alloc())
  : _Mybase(_Al)
  { // construct from [_First, _Last) with optional allocator
                             ;
  _Tidy();
  _Construct(_Unchecked(_First), _Unchecked(_Last), _Iter_cat(_First));
  }
 template<class _Iter>
  void _Construct(_Iter _First,
   _Iter _Last, input_iterator_tag)
  { // initialize from [_First, _Last), input iterators
  try {
  for (; _First != _Last; ++_First)
   append((size_type)1, (_Elem)*_First);
  } catch (...) {
  _Tidy(true);
  throw;
  }
  }

 template<class _Iter>
  void _Construct(_Iter _First,
   _Iter _Last, forward_iterator_tag)
  { // initialize from [_First, _Last), forward iterators
  size_type _Count = 0;
  _Distance(_First, _Last, _Count);
  reserve(_Count);
  _Construct(_First, _Last, input_iterator_tag());
  }

 void _Construct(_Elem *_First,
  _Elem *_Last, random_access_iterator_tag)
  { // initialize from [_First, _Last), pointers
  if (_First != _Last)
   assign(_First, _Last - _First);
  }

 void _Construct(const _Elem *_First,
  const _Elem *_Last, random_access_iterator_tag)
  { // initialize from [_First, _Last), const pointers
  if (_First != _Last)
   assign(_First, _Last - _First);
  }


 basic_string(_Myt&& _Right)
  : _Mybase(::std:: move(_Right._Getal()))
  { // construct by moving _Right
  _Tidy();
  _Assign_rv(::std:: forward<_Myt>(_Right));
  }

 basic_string(_Myt&& _Right, const _Alloc& _Al)
  : _Mybase(_Al)
  { // construct by moving _Right, allocator
  if (this->_Getal() != _Right._Getal())
   assign(_Right.begin(), _Right.end());
  else
   _Assign_rv(::std:: forward<_Myt>(_Right));
  }

 _Myt& operator=(_Myt&& _Right)


  { // assign by moving _Right
  if (this != &_Right)
   { // different, assign it
   _Tidy(true);


   if (_Alty::propagate_on_container_move_assignment::value
    && this->_Getal() != _Right._Getal())
    this->_Move_alloc(_Right._Getal());


   if (this->_Getal() != _Right._Getal())
    assign(_Right.begin(), _Right.end());
   else
    _Assign_rv(::std:: forward<_Myt>(_Right));
   }
  return (*this);
  }

 _Myt& assign(_Myt&& _Right)
  { // assign by moving _Right
  if (this == &_Right)
   ;
  else if (get_allocator() != _Right.get_allocator()
   && this->_BUF_SIZE <= _Right._Myres())
   *this = _Right;
  else
   { // not same, clear this and steal from _Right
   _Tidy(true);
   _Assign_rv(::std:: forward<_Myt>(_Right));
   }
  return (*this);
  }

 void _Assign_rv(_Myt&& _Right)
  { // assign by moving _Right
  if (_Right._Myres() < this->_BUF_SIZE)
   _Traits::move(this->_Bx()._Buf, _Right._Bx()._Buf,
    _Right._Mysize() + 1);
  else
   { // copy pointer
   this->_Getal().construct(&this->_Bx()._Ptr, _Right._Bx()._Ptr);
   _Right._Bx()._Ptr = pointer();
   }
  this->_Mysize() = _Right._Mysize();
  this->_Myres() = _Right._Myres();
  _Right._Tidy();
  }



 basic_string(::std:: initializer_list<_Elem> _Ilist,
  const _Alloc& _Al = allocator_type())
  : _Mybase(_Al)
  { // construct from initializer_list
  _Tidy();
  assign(_Ilist.begin(), _Ilist.end());
  }

 _Myt& operator=(::std:: initializer_list<_Elem> _Ilist)
  { // assign initializer_list
  return (assign(_Ilist.begin(), _Ilist.end()));
  }

 _Myt& operator+=(::std:: initializer_list<_Elem> _Ilist)
  { // append initializer_list
  return (append(_Ilist.begin(), _Ilist.end()));
  }

 _Myt& assign(::std:: initializer_list<_Elem> _Ilist)
  { // assign initializer_list
  return (assign(_Ilist.begin(), _Ilist.end()));
  }

 _Myt& append(::std:: initializer_list<_Elem> _Ilist)
  { // append initializer_list
  return (append(_Ilist.begin(), _Ilist.end()));
  }

 iterator insert(const_iterator _Where,
  ::std:: initializer_list<_Elem> _Ilist)
  { // insert initializer_list
  return (insert(_Where, _Ilist.begin(), _Ilist.end()));
  }

 _Myt& replace(const_iterator _First, const_iterator _Last,
  ::std:: initializer_list<_Elem> _Ilist)
  { // replace with initializer_list
  return (replace(_First, _Last, _Ilist.begin(), _Ilist.end()));
  }


 ~basic_string()
  { // destroy the string
  _Tidy(true);
  }

 static const size_type npos = (size_t)(-1); // bad/missing length/position

 _Myt& operator=(const _Myt& _Right)
  { // assign _Right
  if (this != &_Right)
   { // different, assign it

   if (this->_Getal() != _Right._Getal()
    && _Alty::propagate_on_container_copy_assignment::value)
    { // change allocator before copying
    _Tidy(true);
    this->_Copy_alloc(_Right._Getal());
    }


   assign(_Right);
   }
  return (*this);
  }

 _Myt& operator=(const _Elem *_Ptr)
  { // assign [_Ptr, <null>)
  return (assign(_Ptr));
  }

 _Myt& operator=(_Elem _Ch)
  { // assign 1 * _Ch
  return (assign(1, _Ch));
  }

 _Myt& operator+=(const _Myt& _Right)
  { // append _Right
  return (append(_Right));
  }

 _Myt& operator+=(const _Elem *_Ptr)
  { // append [_Ptr, <null>)
  return (append(_Ptr));
  }

 _Myt& operator+=(_Elem _Ch)
  { // append 1 * _Ch
  return (append((size_type)1, _Ch));
  }

 _Myt& append(const _Myt& _Right)
  { // append _Right
  return (append(_Right, 0, npos));
  }

 _Myt& append(const _Myt& _Right,
  size_type _Roff, size_type _Count = npos)
  { // append _Right [_Roff, _Roff + _Count)
  if (_Right.size() < _Roff)
   _Xran(); // _Roff off end
  size_type _Num = _Right.size() - _Roff;
  if (_Num < _Count)
   _Count = _Num; // trim _Count to size
  if (npos - this->_Mysize() <= _Count)
   _Xlen(); // result too long

  if (0 < _Count && _Grow(_Num = this->_Mysize() + _Count))
   { // make room and append new stuff
   _Traits::copy(this->_Myptr() + this->_Mysize(),
    _Right._Myptr() + _Roff, _Count);
   _Eos(_Num);
   }
  return (*this);
  }

 _Myt& append(const _Elem *_Ptr, size_type _Count)
  { // append [_Ptr, _Ptr + _Count)
                                      ;
  if (_Inside(_Ptr))
   return (append(*this,
    _Ptr - this->_Myptr(), _Count)); // substring
  if (npos - this->_Mysize() <= _Count)
   _Xlen(); // result too long

  size_type _Num;
  if (0 < _Count && _Grow(_Num = this->_Mysize() + _Count))
   { // make room and append new stuff
   _Traits::copy(this->_Myptr() + this->_Mysize(), _Ptr, _Count);
   _Eos(_Num);
   }
  return (*this);
  }

 _Myt& append(const _Elem *_Ptr)
  { // append [_Ptr, <null>)
                      ;
  return (append(_Ptr, _Traits::length(_Ptr)));
  }

 _Myt& append(size_type _Count, _Elem _Ch)
  { // append _Count * _Ch
  if (npos - this->_Mysize() <= _Count)
   _Xlen(); // result too long

  size_type _Num;
  if (0 < _Count && _Grow(_Num = this->_Mysize() + _Count))
   { // make room and append new stuff using assign
   _Chassign(this->_Mysize(), _Count, _Ch);
   _Eos(_Num);
   }
  return (*this);
  }

 template<class _Iter>
  typename enable_if<_Is_iterator<_Iter>::value,
   _Myt&>::type
  append(_Iter _First, _Iter _Last)
  { // append [_First, _Last), input iterators
  return (replace(end(), end(), _First, _Last));
  }




 _Myt& append(const_pointer _First, const_pointer _Last)
  { // append [_First, _Last), const pointers
  return (replace(end(), end(), _First, _Last));
  }


 _Myt& append(const_iterator _First, const_iterator _Last)
  { // append [_First, _Last), const_iterators
  return (replace(end(), end(), _First, _Last));
  }

 _Myt& assign(const _Myt& _Right)
  { // assign _Right
  return (assign(_Right, 0, npos));
  }

 _Myt& assign(const _Myt& _Right,
  size_type _Roff, size_type _Count = npos)
  { // assign _Right [_Roff, _Roff + _Count)
  if (_Right.size() < _Roff)
   _Xran(); // _Roff off end
  size_type _Num = _Right.size() - _Roff;
  if (_Count < _Num)
   _Num = _Count; // trim _Num to size

  if (this == &_Right)
   erase((size_type)(_Roff + _Num)), erase(0, _Roff); // substring
  else if (_Grow(_Num))
   { // make room and assign new stuff
   _Traits::copy(this->_Myptr(),
    _Right._Myptr() + _Roff, _Num);
   _Eos(_Num);
   }
  return (*this);
  }

 _Myt& assign(const _Elem *_Ptr, size_type _Count)
  { // assign [_Ptr, _Ptr + _Count)
                                      ;
  if (_Inside(_Ptr))
   return (assign(*this,
    _Ptr - this->_Myptr(), _Count)); // substring

  if (_Grow(_Count))
   { // make room and assign new stuff
   _Traits::copy(this->_Myptr(), _Ptr, _Count);
   _Eos(_Count);
   }
  return (*this);
  }

 _Myt& assign(const _Elem *_Ptr)
  { // assign [_Ptr, <null>)
                      ;
  return (assign(_Ptr, _Traits::length(_Ptr)));
  }

 _Myt& assign(size_type _Count, _Elem _Ch)
  { // assign _Count * _Ch
  if (_Count == npos)
   _Xlen(); // result too long

  if (_Grow(_Count))
   { // make room and assign new stuff
   _Chassign(0, _Count, _Ch);
   _Eos(_Count);
   }
  return (*this);
  }

 template<class _Iter>
  typename enable_if<_Is_iterator<_Iter>::value,
   _Myt&>::type
  assign(_Iter _First, _Iter _Last)
  { // assign [_First, _Last), input iterators
  return (replace(begin(), end(), _First, _Last));
  }




 _Myt& assign(const_pointer _First, const_pointer _Last)
  { // assign [_First, _Last), const pointers
  return (replace(begin(), end(), _First, _Last));
  }


 _Myt& assign(const_iterator _First, const_iterator _Last)
  { // assign [_First, _Last), const_iterators
  return (replace(begin(), end(), _First, _Last));
  }

 _Myt& insert(size_type _Off, const _Myt& _Right)
  { // insert _Right at _Off
  return (insert(_Off, _Right, 0, npos));
  }

 _Myt& insert(size_type _Off,
  const _Myt& _Right, size_type _Roff, size_type _Count = npos)
  { // insert _Right [_Roff, _Roff + _Count) at _Off
  if (this->_Mysize() < _Off || _Right.size() < _Roff)
   _Xran(); // _Off or _Roff off end
  size_type _Num = _Right.size() - _Roff;
  if (_Num < _Count)
   _Count = _Num; // trim _Count to size
  if (npos - this->_Mysize() <= _Count)
   _Xlen(); // result too long

  if (0 < _Count && _Grow(_Num = this->_Mysize() + _Count))
   { // make room and insert new stuff
   _Traits::move(this->_Myptr() + _Off + _Count,
    this->_Myptr() + _Off,
    this->_Mysize() - _Off); // empty out hole
   if (this == &_Right)
    _Traits::move(this->_Myptr() + _Off,
     this->_Myptr() + (_Off < _Roff ? _Roff + _Count : _Roff),
      _Count); // substring
   else
    _Traits::copy(this->_Myptr() + _Off,
     _Right._Myptr() + _Roff, _Count); // fill hole
   _Eos(_Num);
   }
  return (*this);
  }

 _Myt& insert(size_type _Off,
  const _Elem *_Ptr, size_type _Count)
  { // insert [_Ptr, _Ptr + _Count) at _Off
                                      ;
  if (_Inside(_Ptr))
   return (insert(_Off, *this,
    _Ptr - this->_Myptr(), _Count)); // substring
  if (this->_Mysize() < _Off)
   _Xran(); // _Off off end
  if (npos - this->_Mysize() <= _Count)
   _Xlen(); // result too long
  size_type _Num;
  if (0 < _Count && _Grow(_Num = this->_Mysize() + _Count))
   { // make room and insert new stuff
   _Traits::move(this->_Myptr() + _Off + _Count,
    this->_Myptr() + _Off,
    this->_Mysize() - _Off); // empty out hole
   _Traits::copy(this->_Myptr() + _Off, _Ptr, _Count); // fill hole
   _Eos(_Num);
   }
  return (*this);
  }

 _Myt& insert(size_type _Off, const _Elem *_Ptr)
  { // insert [_Ptr, <null>) at _Off
                      ;
  return (insert(_Off, _Ptr, _Traits::length(_Ptr)));
  }

 _Myt& insert(size_type _Off,
  size_type _Count, _Elem _Ch)
  { // insert _Count * _Ch at _Off
  if (this->_Mysize() < _Off)
   _Xran(); // _Off off end
  if (npos - this->_Mysize() <= _Count)
   _Xlen(); // result too long
  size_type _Num;
  if (0 < _Count && _Grow(_Num = this->_Mysize() + _Count))
   { // make room and insert new stuff
   _Traits::move(this->_Myptr() + _Off + _Count,
    this->_Myptr() + _Off,
    this->_Mysize() - _Off); // empty out hole
   _Chassign(_Off, _Count, _Ch); // fill hole
   _Eos(_Num);
   }
  return (*this);
  }

 iterator insert(const_iterator _Where)
  { // insert <null> at _Where
  return (insert(_Where, _Elem()));
  }

 iterator insert(const_iterator _Where, _Elem _Ch)
  { // insert _Ch at _Where
  size_type _Off = _Where - begin();
  insert(_Off, 1, _Ch);
  return (begin() + _Off);
  }

 iterator insert(const_iterator _Where, size_type _Count, _Elem _Ch)
  { // insert _Count * _Elem at _Where
  size_type _Off = _Where - begin();
  insert(_Off, _Count, _Ch);
  return (begin() + _Off);
  }

 template<class _Iter>
  typename enable_if<_Is_iterator<_Iter>::value,
   iterator>::type
  insert(const_iterator _Where, _Iter _First, _Iter _Last)
  { // insert [_First, _Last) at _Where, input iterators
  size_type _Off = _Where - begin();
  replace(_Where, _Where, _First, _Last);
  return (begin() + _Off);
  }




 iterator insert(const_iterator _Where,
  const_pointer _First, const_pointer _Last)
  { // insert [_First, _Last) at _Where, const pointers
  size_type _Off = _Where - begin();
  replace(_Where, _Where, _First, _Last);
  return (begin() + _Off);
  }


 iterator insert(const_iterator _Where,
  const_iterator _First, const_iterator _Last)
  { // insert [_First, _Last) at _Where, const_iterators
  size_type _Off = _Where - begin();
  replace(_Where, _Where, _First, _Last);
  return (begin() + _Off);
  }

 _Myt& erase(size_type _Off = 0)
  { // erase elements [_Off, ...)
  if (this->_Mysize() < _Off)
   _Xran(); // _Off off end
  _Eos(_Off);
  return (*this);
  }

 _Myt& erase(size_type _Off, size_type _Count)
  { // erase elements [_Off, _Off + _Count)
  if (this->_Mysize() < _Off)
   _Xran(); // _Off off end
  if (this->_Mysize() - _Off <= _Count)
   _Eos(_Off); // erase elements [_Off, ...)
  else if (0 < _Count)
   { // move elements down
   value_type *_Ptr = this->_Myptr() + _Off;
   size_type _Newsize = this->_Mysize() - _Count;
   _Traits::move(_Ptr, _Ptr + _Count, _Newsize - _Off);
   _Eos(_Newsize);
   }
  return (*this);
  }

 iterator erase(const_iterator _Where)
  { // erase element at _Where
  size_type _Count = _Where - begin();
  erase(_Count, 1);
  return (begin() + _Count);
  }

 iterator erase(const_iterator _First, const_iterator _Last)
  { // erase substring [_First, _Last)
                             ;
  size_type _Count = _First - begin();
  erase(_Count, _Last - _First);
  return (begin() + _Count);
  }

 void clear()
  { // erase all
  _Eos(0);
  }

 _Myt& replace(size_type _Off, size_type _N0, const _Myt& _Right)
  { // replace [_Off, _Off + _N0) with _Right
  return (replace(_Off, _N0, _Right, 0, npos));
  }

 _Myt& replace(size_type _Off,
  size_type _N0, const _Myt& _Right, size_type _Roff,
   size_type _Count = npos)
  { // replace [_Off, _Off + _N0) with _Right [_Roff, _Roff + _Count)
  if (this->_Mysize() < _Off || _Right.size() < _Roff)
   _Xran(); // _Off or _Roff off end
  if (this->_Mysize() - _Off < _N0)
   _N0 = this->_Mysize() - _Off; // trim _N0 to size
  size_type _Num = _Right.size() - _Roff;
  if (_Num < _Count)
   _Count = _Num; // trim _Count to size
  if (npos - _Count <= this->_Mysize() - _N0)
   _Xlen(); // result too long

  size_type _Nm = this->_Mysize() - _N0 - _Off; // length of kept tail
  size_type _Newsize = this->_Mysize() + _Count - _N0;
  if (this->_Mysize() < _Newsize)
   _Grow(_Newsize);

  if (this != &_Right)
   { // no overlap, just move down and copy in new stuff
   _Traits::move(this->_Myptr() + _Off + _Count,
    this->_Myptr() + _Off + _N0, _Nm); // empty hole
   _Traits::copy(this->_Myptr() + _Off,
    _Right._Myptr() + _Roff, _Count); // fill hole
   }
  else if (_Count <= _N0)
   { // hole doesn't get larger, just copy in substring
   _Traits::move(this->_Myptr() + _Off,
    this->_Myptr() + _Roff, _Count); // fill hole
   _Traits::move(this->_Myptr() + _Off + _Count,
    this->_Myptr() + _Off + _N0, _Nm); // move tail down
   }
  else if (_Roff <= _Off)
   { // hole gets larger, substring begins before hole
   _Traits::move(this->_Myptr() + _Off + _Count,
    this->_Myptr() + _Off + _N0, _Nm); // move tail down
   _Traits::move(this->_Myptr() + _Off,
    this->_Myptr() + _Roff, _Count); // fill hole
   }
  else if (_Off + _N0 <= _Roff)
   { // hole gets larger, substring begins after hole
   _Traits::move(this->_Myptr() + _Off + _Count,
    this->_Myptr() + _Off + _N0, _Nm); // move tail down
   _Traits::move(this->_Myptr() + _Off,
    this->_Myptr() + (_Roff + _Count - _N0),
    _Count); // fill hole
   }
  else
   { // hole gets larger, substring begins in hole
   _Traits::move(this->_Myptr() + _Off,
    this->_Myptr() + _Roff, _N0); // fill old hole
   _Traits::move(this->_Myptr() + _Off + _Count,
    this->_Myptr() + _Off + _N0, _Nm); // move tail down
   _Traits::move(this->_Myptr() + _Off + _N0,
    this->_Myptr() + _Roff + _Count,
    _Count - _N0); // fill rest of new hole
   }

  _Eos(_Newsize);
  return (*this);
  }

 _Myt& replace(size_type _Off,
  size_type _N0, const _Elem *_Ptr, size_type _Count)
  { // replace [_Off, _Off + _N0) with [_Ptr, _Ptr + _Count)
                                      ;
  if (_Inside(_Ptr))
   return (replace(_Off, _N0, *this,
    _Ptr - this->_Myptr(),
    _Count)); // substring, replace carefully
  if (this->_Mysize() < _Off)
   _Xran(); // _Off off end
  if (this->_Mysize() - _Off < _N0)
   _N0 = this->_Mysize() - _Off; // trim _N0 to size
  if (npos - _Count <= this->_Mysize() - _N0)
   _Xlen(); // result too long
  size_type _Nm = this->_Mysize() - _N0 - _Off;

  if (_Count < _N0)
   _Traits::move(this->_Myptr() + _Off + _Count,
    this->_Myptr() + _Off + _N0,
    _Nm); // smaller hole, move tail up
  size_type _Num;
  if ((0 < _Count || 0 < _N0)
   && _Grow(_Num = this->_Mysize() + _Count - _N0))
   { // make room and rearrange
   if (_N0 < _Count)
    _Traits::move(this->_Myptr() + _Off + _Count,
     this->_Myptr() + _Off + _N0, _Nm); // move tail down
   _Traits::copy(this->_Myptr() + _Off, _Ptr, _Count); // fill hole
   _Eos(_Num);
   }
  return (*this);
  }

 _Myt& replace(size_type _Off, size_type _N0, const _Elem *_Ptr)
  { // replace [_Off, _Off + _N0) with [_Ptr, <null>)
                      ;
  return (replace(_Off, _N0, _Ptr, _Traits::length(_Ptr)));
  }

 _Myt& replace(size_type _Off,
  size_type _N0, size_type _Count, _Elem _Ch)
  { // replace [_Off, _Off + _N0) with _Count * _Ch
  if (this->_Mysize() < _Off)
   _Xran(); // _Off off end
  if (this->_Mysize() - _Off < _N0)
   _N0 = this->_Mysize() - _Off; // trim _N0 to size
  if (npos - _Count <= this->_Mysize() - _N0)
   _Xlen(); // result too long
  size_type _Nm = this->_Mysize() - _N0 - _Off;

  if (_Count < _N0)
   _Traits::move(this->_Myptr() + _Off + _Count,
    this->_Myptr() + _Off + _N0,
    _Nm); // smaller hole, move tail up
  size_type _Num;
  if ((0 < _Count || 0 < _N0)
   && _Grow(_Num = this->_Mysize() + _Count - _N0))
   { // make room and rearrange
   if (_N0 < _Count)
    _Traits::move(this->_Myptr() + _Off + _Count,
     this->_Myptr() + _Off + _N0, _Nm); // move tail down
   _Chassign(_Off, _Count, _Ch); // fill hole
   _Eos(_Num);
   }
  return (*this);
  }

 _Myt& replace(const_iterator _First, const_iterator _Last,
  const _Myt& _Right)
  { // replace [_First, _Last) with _Right
  return (replace(_First - begin(), _Last - _First, _Right));
  }

 _Myt& replace(const_iterator _First, const_iterator _Last,
  const _Elem *_Ptr, size_type _Count)
  { // replace [_First, _Last) with [_Ptr, _Ptr + _Count)
  return (replace(_First - begin(), _Last - _First, _Ptr, _Count));
  }

 _Myt& replace(const_iterator _First, const_iterator _Last,
  const _Elem *_Ptr)
  { // replace [_First, _Last) with [_Ptr, <null>)
  return (replace(_First - begin(), _Last - _First, _Ptr));
  }

 _Myt& replace(const_iterator _First, const_iterator _Last,
  size_type _Count, _Elem _Ch)
  { // replace [_First, _Last) with _Count * _Ch
  return (replace(_First - begin(), _Last - _First, _Count, _Ch));
  }

 template<class _Iter>
  typename enable_if<_Is_iterator<_Iter>::value,
   _Myt&>::type
  replace(const_iterator _First, const_iterator _Last,
   _Iter _First2, _Iter _Last2)
  { // replace [_First, _Last) with [_First2, _Last2), input iterators
  _Myt _Right(_First2, _Last2);
  replace(_First, _Last, _Right);
  return (*this);
  }




 _Myt& replace(const_iterator _First, const_iterator _Last,
  const_pointer _First2, const_pointer _Last2)
  { // replace [_First, _Last) with [_First2, _Last2), const pointers
  if (_First2 == _Last2)
   erase(_First - begin(), _Last - _First);
  else
   replace(_First - begin(), _Last - _First,
    &*_First2, _Last2 - _First2);
  return (*this);
  }

 _Myt& replace(const_iterator _First, const_iterator _Last,
  pointer _First2, pointer _Last2)
  { // replace [_First, _Last) with [_First2, _Last2), const pointers
  if (_First2 == _Last2)
   erase(_First - begin(), _Last - _First);
  else
   replace(_First - begin(), _Last - _First,
    &*_First2, _Last2 - _First2);
  return (*this);
  }


 _Myt& replace(const_iterator _First, const_iterator _Last,
  const_iterator _First2, const_iterator _Last2)
  { // replace [_First, _Last) with [_First2, _Last2), const_iterators
  if (_First2 == _Last2)
   erase(_First - begin(), _Last - _First);
  else
   replace(_First - begin(), _Last - _First,
    &*_First2, _Last2 - _First2);
  return (*this);
  }

 _Myt& replace(const_iterator _First, const_iterator _Last,
  iterator _First2, iterator _Last2)
  { // replace [_First, _Last) with [_First2, _Last2), const_iterators
  if (_First2 == _Last2)
   erase(_First - begin(), _Last - _First);
  else
   replace(_First - begin(), _Last - _First,
    &*_First2, _Last2 - _First2);
  return (*this);
  }

 iterator begin()
  { // return iterator for beginning of mutable sequence
  return (iterator(this->_Myptr(), &this->_Get_data()));
  }

 const_iterator begin() const
  { // return iterator for beginning of nonmutable sequence
  return (const_iterator(this->_Myptr(), &this->_Get_data()));
  }

 iterator end()
  { // return iterator for end of mutable sequence
  return (iterator(this->_Myptr() + this->_Mysize(), &this->_Get_data()));
  }

 const_iterator end() const
  { // return iterator for end of nonmutable sequence
  return (const_iterator(this->_Myptr() + this->_Mysize(), &this->_Get_data()));
  }

 reverse_iterator rbegin()
  { // return iterator for beginning of reversed mutable sequence
  return (reverse_iterator(end()));
  }

 const_reverse_iterator rbegin() const
  { // return iterator for beginning of reversed nonmutable sequence
  return (const_reverse_iterator(end()));
  }

 reverse_iterator rend()
  { // return iterator for end of reversed mutable sequence
  return (reverse_iterator(begin()));
  }

 const_reverse_iterator rend() const
  { // return iterator for end of reversed nonmutable sequence
  return (const_reverse_iterator(begin()));
  }


 const_iterator cbegin() const
  { // return iterator for beginning of nonmutable sequence
  return (begin());
  }

 const_iterator cend() const
  { // return iterator for end of nonmutable sequence
  return (end());
  }

 const_reverse_iterator crbegin() const
  { // return iterator for beginning of reversed nonmutable sequence
  return (rbegin());
  }

 const_reverse_iterator crend() const
  { // return iterator for end of reversed nonmutable sequence
  return (rend());
  }

 void shrink_to_fit()
  { // reduce capacity
  if ((size() | this->_ALLOC_MASK) < capacity())
   { // worth shrinking, do it
   _Myt _Tmp(*this);
   swap(_Tmp);
   }
  }


 reference at(size_type _Off)
  { // subscript mutable sequence with checking
  if (this->_Mysize() <= _Off)
   _Xran(); // _Off off end
  return (this->_Myptr()[_Off]);
  }

 const_reference at(size_type _Off) const
  { // subscript nonmutable sequence with checking
  if (this->_Mysize() <= _Off)
   _Xran(); // _Off off end
  return (this->_Myptr()[_Off]);
  }

 reference operator[](size_type _Off)
  { // subscript mutable sequence
  return (this->_Myptr()[_Off]);
  }

 const_reference operator[](size_type _Off) const
  { // subscript nonmutable sequence
  return (this->_Myptr()[_Off]);
  }

 void push_back(_Elem _Ch)
  { // insert element at end
  insert(end(), _Ch);
  }


 void pop_back()
  { // erase element at end
  erase(this->_Mysize() - 1); // throws if _Mysize() == 0
  }

 reference front()
  { // return first element of mutable sequence
  return (*begin());
  }

 const_reference front() const
  { // return first element of nonmutable sequence
  return (*begin());
  }

 reference back()
  { // return last element of mutable sequence
  return (*(end() - 1));
  }

 const_reference back() const
  { // return last element of nonmutable sequence
  return (*(end() - 1));
  }


 const _Elem *c_str() const
  { // return pointer to null-terminated nonmutable array
  return (this->_Myptr());
  }

 const _Elem *data() const
  { // return pointer to nonmutable array
  return (c_str());
  }

 size_type length() const
  { // return length of sequence
  return (this->_Mysize());
  }

 size_type size() const
  { // return length of sequence
  return (this->_Mysize());
  }

 size_type max_size() const
  { // return maximum possible length of sequence
  size_type _Num = this->_Getal().max_size();
  return (_Num <= 1 ? 1 : _Num - 1);
  }

 void resize(size_type _Newsize)
  { // determine new length, padding with null elements as needed
  resize(_Newsize, _Elem());
  }

 void resize(size_type _Newsize, _Elem _Ch)
  { // determine new length, padding with _Ch elements as needed
  if (_Newsize <= this->_Mysize())
   _Eos(_Newsize);
  else
   append(_Newsize - this->_Mysize(), _Ch);
  }

 size_type capacity() const
  { // return current length of allocated storage
  return (this->_Myres());
  }

 void reserve(size_type _Newcap = 0)
  { // determine new minimum length of allocated storage
  if (this->_Mysize() <= _Newcap && this->_Myres() != _Newcap)
   { // change reservation
   size_type _Size = this->_Mysize();
   if (_Grow(_Newcap, true))
    _Eos(_Size);
   }
  }

 bool empty() const
  { // test if sequence is empty
  return (this->_Mysize() == 0);
  }

 size_type copy(_Elem *_Ptr,
  size_type _Count, size_type _Off = 0) const
  { // copy [_Off, _Off + _Count) to [_Ptr, _Ptr + _Count)
                                      ;
  if (this->_Mysize() < _Off)
   _Xran(); // _Off off end
  if (this->_Mysize() - _Off < _Count)
   _Count = this->_Mysize() - _Off;
  _Traits::copy(_Ptr, this->_Myptr() + _Off, _Count);
  return (_Count);
  }

 void _Swap_bx(_Myt& _Right)
  { // exchange _Bx() with _Right._Bx()
  if (this->_BUF_SIZE <= this->_Myres())
   if (this->_BUF_SIZE <= _Right._Myres())
    _Swap_adl(this->_Bx()._Ptr, _Right._Bx()._Ptr);
   else
    { // swap large with small
    pointer _Ptr = this->_Bx()._Ptr;
    this->_Getal().destroy(&this->_Bx()._Ptr);
    _Traits::copy(this->_Bx()._Buf,
     _Right._Bx()._Buf, _Right._Mysize() + 1);
    this->_Getal().construct(&_Right._Bx()._Ptr, _Ptr);
    }
  else
   if (_Right._Myres() < this->_BUF_SIZE)
    ::std:: swap(this->_Bx()._Buf, _Right._Bx()._Buf);
   else
    { // swap small with large
    pointer _Ptr = _Right._Bx()._Ptr;
    this->_Getal().destroy(&_Right._Bx()._Ptr);
    _Traits::copy(_Right._Bx()._Buf,
     this->_Bx()._Buf, this->_Mysize() + 1);
    this->_Getal().construct(&this->_Bx()._Ptr, _Ptr);
    }
  }

 void swap(_Myt& _Right)


  { // exchange contents with _Right
  if (this == &_Right)
   ; // same object, do nothing
  else if (this->_Getal() == _Right._Getal())
   { // same allocator, swap control information
   this->_Swap_all(_Right);
   _Swap_bx(_Right);
   ::std:: swap(this->_Mysize(), _Right._Mysize());
   ::std:: swap(this->_Myres(), _Right._Myres());
   }


  else if (_Alty::propagate_on_container_swap::value)
   { // swap allocators and control information
    // assumes pointer is bitwise copyable
   this->_Swap_alloc(_Right);
   _Swap_bx(_Right);
   ::std:: swap(this->_Bx(), _Right._Bx());
   ::std:: swap(this->_Mysize(), _Right._Mysize());
   ::std:: swap(this->_Myres(), _Right._Myres());
   }


  else
   { // different allocator, do multiple assigns
   _Myt _Tmp = *this;

   *this = _Right;
   _Right = _Tmp;
   }
  }

 size_type find(const _Myt& _Right, size_type _Off = 0) const
  { // look for _Right beginning at or after _Off
  return (find(_Right._Myptr(), _Off, _Right.size()));
  }

 size_type find(const _Elem *_Ptr,
  size_type _Off, size_type _Count) const
  { // look for [_Ptr, _Ptr + _Count) beginning at or after _Off
                                      ;
  if (_Count == 0 && _Off <= this->_Mysize())
   return (_Off); // null string always matches (if inside string)

  size_type _Nm;
  if (_Off < this->_Mysize() && _Count <= (_Nm = this->_Mysize() - _Off))
   { // room for match, look for it
   const _Elem *_Uptr, *_Vptr;
   for (_Nm -= _Count - 1, _Vptr = this->_Myptr() + _Off;
    (_Uptr = _Traits::find(_Vptr, _Nm, *_Ptr)) != 0;
    _Nm -= _Uptr - _Vptr + 1, _Vptr = _Uptr + 1)
    if (_Traits::compare(_Uptr, _Ptr, _Count) == 0)
     return (_Uptr - this->_Myptr()); // found a match
   }

  return (npos); // no match
  }

 size_type find(const _Elem *_Ptr, size_type _Off = 0) const
  { // look for [_Ptr, <null>) beginning at or after _Off
                      ;
  return (find(_Ptr, _Off, _Traits::length(_Ptr)));
  }

 size_type find(_Elem _Ch, size_type _Off = 0) const
  { // look for _Ch at or after _Off
  return (find((const _Elem *)&_Ch, _Off, 1));
  }

 size_type rfind(const _Myt& _Right, size_type _Off = npos) const
  { // look for _Right beginning before _Off
  return (rfind(_Right._Myptr(), _Off, _Right.size()));
  }

 size_type rfind(const _Elem *_Ptr,
  size_type _Off, size_type _Count) const
  { // look for [_Ptr, _Ptr + _Count) beginning before _Off
                                      ;
  if (_Count == 0)
   return (_Off < this->_Mysize() ? _Off
    : this->_Mysize()); // null always matches
  if (_Count <= this->_Mysize())
   { // room for match, look for it
   const _Elem *_Uptr = this->_Myptr() +
    (_Off < this->_Mysize() - _Count ? _Off
     : this->_Mysize() - _Count);
   for (; ; --_Uptr)
    if (_Traits::eq(*_Uptr, *_Ptr)
     && _Traits::compare(_Uptr, _Ptr, _Count) == 0)
     return (_Uptr - this->_Myptr()); // found a match
    else if (_Uptr == this->_Myptr())
     break; // at beginning, no more chance for match
   }

  return (npos); // no match
  }

 size_type rfind(const _Elem *_Ptr, size_type _Off = npos) const
  { // look for [_Ptr, <null>) beginning before _Off
                      ;
  return (rfind(_Ptr, _Off, _Traits::length(_Ptr)));
  }

 size_type rfind(_Elem _Ch, size_type _Off = npos) const
  { // look for _Ch before _Off
  return (rfind((const _Elem *)&_Ch, _Off, 1));
  }

 size_type find_first_of(const _Myt& _Right,
  size_type _Off = 0) const
  { // look for one of _Right at or after _Off
  return (find_first_of(_Right._Myptr(), _Off, _Right.size()));
  }

 size_type find_first_of(const _Elem *_Ptr,
  size_type _Off, size_type _Count) const
  { // look for one of [_Ptr, _Ptr + _Count) at or after _Off
                                      ;
  if (0 < _Count && _Off < this->_Mysize())
   { // room for match, look for it
   const _Elem *const _Vptr = this->_Myptr() + this->_Mysize();
   for (const _Elem *_Uptr = this->_Myptr() + _Off;
    _Uptr < _Vptr; ++_Uptr)
    if (_Traits::find(_Ptr, _Count, *_Uptr) != 0)
     return (_Uptr - this->_Myptr()); // found a match
   }

  return (npos); // no match
  }

 size_type find_first_of(const _Elem *_Ptr,
  size_type _Off = 0) const
  { // look for one of [_Ptr, <null>) at or after _Off
                      ;
  return (find_first_of(_Ptr, _Off, _Traits::length(_Ptr)));
  }

 size_type find_first_of(_Elem _Ch,
  size_type _Off = 0) const
  { // look for _Ch at or after _Off
  return (find((const _Elem *)&_Ch, _Off, 1));
  }

 size_type find_last_of(const _Myt& _Right,
  size_type _Off = npos) const
  { // look for one of _Right before _Off
  return (find_last_of(_Right._Myptr(), _Off, _Right.size()));
  }

 size_type find_last_of(const _Elem *_Ptr,
  size_type _Off, size_type _Count) const
  { // look for one of [_Ptr, _Ptr + _Count) before _Off
                                      ;
  if (0 < _Count && 0 < this->_Mysize())
   { // worth searching, do it
   const _Elem *_Uptr = this->_Myptr()
    + (_Off < this->_Mysize() ? _Off : this->_Mysize() - 1);
   for (; ; --_Uptr)
    if (_Traits::find(_Ptr, _Count, *_Uptr) != 0)
     return (_Uptr - this->_Myptr()); // found a match
    else if (_Uptr == this->_Myptr())
     break; // at beginning, no more chance for match
   }

  return (npos); // no match
  }

 size_type find_last_of(const _Elem *_Ptr,
  size_type _Off = npos) const
  { // look for one of [_Ptr, <null>) before _Off
                      ;
  return (find_last_of(_Ptr, _Off, _Traits::length(_Ptr)));
  }

 size_type find_last_of(_Elem _Ch,
  size_type _Off = npos) const
  { // look for _Ch before _Off
  return (rfind((const _Elem *)&_Ch, _Off, 1));
  }

 size_type find_first_not_of(const _Myt& _Right,
  size_type _Off = 0) const
  { // look for none of _Right at or after _Off
  return (find_first_not_of(_Right._Myptr(), _Off,
   _Right.size()));
  }

 size_type find_first_not_of(const _Elem *_Ptr,
  size_type _Off, size_type _Count) const
  { // look for none of [_Ptr, _Ptr + _Count) at or after _Off
                                      ;
  if (_Off < this->_Mysize())
   { // room for match, look for it
   const _Elem *const _Vptr = this->_Myptr() + this->_Mysize();
   for (const _Elem *_Uptr = this->_Myptr() + _Off;
    _Uptr < _Vptr; ++_Uptr)
    if (_Traits::find(_Ptr, _Count, *_Uptr) == 0)
     return (_Uptr - this->_Myptr());
   }
  return (npos);
  }

 size_type find_first_not_of(const _Elem *_Ptr,
  size_type _Off = 0) const
  { // look for one of [_Ptr, <null>) at or after _Off
                      ;
  return (find_first_not_of(_Ptr, _Off, _Traits::length(_Ptr)));
  }

 size_type find_first_not_of(_Elem _Ch,
  size_type _Off = 0) const
  { // look for non _Ch at or after _Off
  return (find_first_not_of((const _Elem *)&_Ch, _Off, 1));
  }

 size_type find_last_not_of(const _Myt& _Right,
  size_type _Off = npos) const
  { // look for none of _Right before _Off
  return (find_last_not_of(_Right._Myptr(), _Off, _Right.size()));
  }

 size_type find_last_not_of(const _Elem *_Ptr,
  size_type _Off, size_type _Count) const
  { // look for none of [_Ptr, _Ptr + _Count) before _Off
                                      ;
  if (0 < this->_Mysize())
   { // worth searching, do it
   const _Elem *_Uptr = this->_Myptr()
    + (_Off < this->_Mysize() ? _Off : this->_Mysize() - 1);
   for (; ; --_Uptr)
    if (_Traits::find(_Ptr, _Count, *_Uptr) == 0)
     return (_Uptr - this->_Myptr());
    else if (_Uptr == this->_Myptr())
     break;
   }
  return (npos);
  }

 size_type find_last_not_of(const _Elem *_Ptr,
  size_type _Off = npos) const
  { // look for none of [_Ptr, <null>) before _Off
                      ;
  return (find_last_not_of(_Ptr, _Off, _Traits::length(_Ptr)));
  }

 size_type find_last_not_of(_Elem _Ch,
  size_type _Off = npos) const
  { // look for non _Ch before _Off
  return (find_last_not_of((const _Elem *)&_Ch, _Off, 1));
  }

 _Myt substr(size_type _Off = 0, size_type _Count = npos) const
  { // return [_Off, _Off + _Count) as new string
  return (_Myt(*this, _Off, _Count, get_allocator()));
  }

 int compare(const _Myt& _Right) const
  { // compare [0, _Mysize()) with _Right
  return (compare(0, this->_Mysize(), _Right._Myptr(), _Right.size()));
  }

 int compare(size_type _Off, size_type _N0,
  const _Myt& _Right) const
  { // compare [_Off, _Off + _N0) with _Right
  return (compare(_Off, _N0, _Right, 0, npos));
  }

 int compare(size_type _Off,
  size_type _N0, const _Myt& _Right,
  size_type _Roff, size_type _Count = npos) const
  { // compare [_Off, _Off + _N0) with _Right [_Roff, _Roff + _Count)
  if (_Right.size() < _Roff)
   _Xran(); // _Off off end
  if (_Right._Mysize() - _Roff < _Count)
   _Count = _Right._Mysize() - _Roff; // trim _Count to size
  return (compare(_Off, _N0, _Right._Myptr() + _Roff, _Count));
  }

 int compare(const _Elem *_Ptr) const
  { // compare [0, _Mysize()) with [_Ptr, <null>)
                      ;
  return (compare(0, this->_Mysize(), _Ptr, _Traits::length(_Ptr)));
  }

 int compare(size_type _Off, size_type _N0, const _Elem *_Ptr) const
  { // compare [_Off, _Off + _N0) with [_Ptr, <null>)
                      ;
  return (compare(_Off, _N0, _Ptr, _Traits::length(_Ptr)));
  }

 int compare(size_type _Off,
  size_type _N0, const _Elem *_Ptr, size_type _Count) const
  { // compare [_Off, _Off + _N0) with [_Ptr, _Ptr + _Count)
                                      ;
  if (this->_Mysize() < _Off)
   _Xran(); // _Off off end
  if (this->_Mysize() - _Off < _N0)
   _N0 = this->_Mysize() - _Off; // trim _N0 to size

  size_type _Ans = _Traits::compare(this->_Myptr() + _Off, _Ptr,
   _N0 < _Count ? _N0 : _Count);
  return (_Ans != 0 ? (int)_Ans : _N0 < _Count ? -1
   : _N0 == _Count ? 0 : +1);
  }

 allocator_type get_allocator() const
  { // return allocator object for values
  return (this->_Getal());
  }

 void _Chassign(size_type _Off, size_type _Count, _Elem _Ch)
  { // assign _Count copies of _Ch beginning at _Off
  if (_Count == 1)
   _Traits::assign(*(this->_Myptr() + _Off), _Ch);
  else
   _Traits::assign(this->_Myptr() + _Off, _Count, _Ch);
  }

 void _Copy(size_type _Newsize, size_type _Oldlen)
  { // copy _Oldlen elements to newly allocated buffer
  size_type _Newres = _Newsize | this->_ALLOC_MASK;
  if (max_size() < _Newres)
   _Newres = _Newsize; // undo roundup if too big
  else if (this->_Myres() / 2 <= _Newres / 3)
   ;
  else if (this->_Myres() <= max_size() - this->_Myres() / 2)
   _Newres = this->_Myres()
    + this->_Myres() / 2; // grow exponentially if possible
  else
   _Newres = max_size(); // settle for max_size()

  _Elem *_Ptr;
  try {
   _Ptr = this->_Getal().allocate(_Newres + 1);
  } catch (...) {
   _Newres = _Newsize; // allocation failed, undo roundup and retry
   try {
    _Ptr = this->_Getal().allocate(_Newres + 1);
   } catch (...) {
   _Tidy(true); // failed again, discard storage and reraise
   throw;
   }
  }

  if (0 < _Oldlen)
   _Traits::copy(_Ptr, this->_Myptr(),
    _Oldlen); // copy existing elements
  _Tidy(true);
  this->_Getal().construct(&this->_Bx()._Ptr, _Ptr);
  this->_Myres() = _Newres;
  _Eos(_Oldlen);
  }

 void _Eos(size_type _Newsize)
  { // set new length and null terminator
  _Traits::assign(this->_Myptr()[this->_Mysize() = _Newsize], _Elem());
  }

 bool _Grow(size_type _Newsize,
  bool _Trim = false)
  { // ensure buffer is big enough, trim to size if _Trim is true
  if (max_size() < _Newsize)
   _Xlen(); // result too long
  if (this->_Myres() < _Newsize)
   _Copy(_Newsize, this->_Mysize()); // reallocate to grow
  else if (_Trim && _Newsize < this->_BUF_SIZE)
   _Tidy(true, // copy and deallocate if trimming to small string
    _Newsize < this->_Mysize() ? _Newsize : this->_Mysize());
  else if (_Newsize == 0)
   _Eos(0); // new size is zero, just null terminate
  return (0 < _Newsize); // return true only if more work to do
  }

 bool _Inside(const _Elem *_Ptr)
  { // test if _Ptr points inside string
  if (_Ptr == 0 || _Ptr < this->_Myptr()
   || this->_Myptr() + this->_Mysize() <= _Ptr)
   return (false); // don't ask
  else
   return (true);
  }

 void _Tidy(bool _Built = false,
  size_type _Newsize = 0)
  { // initialize buffer, deallocating any storage
  if (!_Built)
   ;
  else if (this->_BUF_SIZE <= this->_Myres())
   { // copy any leftovers to small buffer and deallocate
   pointer _Ptr = this->_Bx()._Ptr;
   this->_Getal().destroy(&this->_Bx()._Ptr);
   if (0 < _Newsize)
    _Traits::copy(this->_Bx()._Buf,
     ::std:: addressof(*_Ptr), _Newsize);
   this->_Getal().deallocate(_Ptr, this->_Myres() + 1);
   }
  this->_Myres() = this->_BUF_SIZE - 1;
  _Eos(_Newsize);
  }

 void _Xlen() const
  { // report a length_error
  _Xlength_error("string too long");
  }

 void _Xran() const
  { // report an out_of_range error
  _Xout_of_range("invalid string position");
  }
 };

  // STATIC npos OBJECT

  // basic_string TEMPLATE OPERATORS
template<class _Elem,
 class _Traits,
 class _Alloc> inline
 void swap(basic_string<_Elem, _Traits, _Alloc>& _Left,
  basic_string<_Elem, _Traits, _Alloc>& _Right)

 { // swap _Left and _Right strings
 _Left.swap(_Right);
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 basic_string<_Elem, _Traits, _Alloc> operator+(
  const basic_string<_Elem, _Traits, _Alloc>& _Left,
  const basic_string<_Elem, _Traits, _Alloc>& _Right)
 { // return string + string
 basic_string<_Elem, _Traits, _Alloc> _Ans;
 _Ans.reserve(_Left.size() + _Right.size());
 _Ans += _Left;
 _Ans += _Right;
 return (_Ans);
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 basic_string<_Elem, _Traits, _Alloc> operator+(
  const _Elem *_Left,
  const basic_string<_Elem, _Traits, _Alloc>& _Right)
 { // return NTCS + string
 basic_string<_Elem, _Traits, _Alloc> _Ans;
 _Ans.reserve(_Traits::length(_Left) + _Right.size());
 _Ans += _Left;
 _Ans += _Right;
 return (_Ans);
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 basic_string<_Elem, _Traits, _Alloc> operator+(
  const _Elem _Left,
  const basic_string<_Elem, _Traits, _Alloc>& _Right)
 { // return character + string
 basic_string<_Elem, _Traits, _Alloc> _Ans;
 _Ans.reserve(1 + _Right.size());
 _Ans += _Left;
 _Ans += _Right;
 return (_Ans);
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 basic_string<_Elem, _Traits, _Alloc> operator+(
  const basic_string<_Elem, _Traits, _Alloc>& _Left,
  const _Elem *_Right)
 { // return string + NTCS
 basic_string<_Elem, _Traits, _Alloc> _Ans;
 _Ans.reserve(_Left.size() + _Traits::length(_Right));
 _Ans += _Left;
 _Ans += _Right;
 return (_Ans);
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 basic_string<_Elem, _Traits, _Alloc> operator+(
  const basic_string<_Elem, _Traits, _Alloc>& _Left,
  const _Elem _Right)
 { // return string + character
 basic_string<_Elem, _Traits, _Alloc> _Ans;
 _Ans.reserve(_Left.size() + 1);
 _Ans += _Left;
 _Ans += _Right;
 return (_Ans);
 }


template<class _Elem,
 class _Traits,
 class _Alloc> inline
 basic_string<_Elem, _Traits, _Alloc> operator+(
  const basic_string<_Elem, _Traits, _Alloc>& _Left,
  basic_string<_Elem, _Traits, _Alloc>&& _Right)
 { // return string + string
 return (::std:: move(_Right.insert(0, _Left)));
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 basic_string<_Elem, _Traits, _Alloc> operator+(
  basic_string<_Elem, _Traits, _Alloc>&& _Left,
  const basic_string<_Elem, _Traits, _Alloc>& _Right)
 { // return string + string
 return (::std:: move(_Left.append(_Right)));
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 basic_string<_Elem, _Traits, _Alloc> operator+(
  basic_string<_Elem, _Traits, _Alloc>&& _Left,
  basic_string<_Elem, _Traits, _Alloc>&& _Right)
 { // return string + string
 if (_Right.size() <= _Left.capacity() - _Left.size()
  || _Right.capacity() - _Right.size() < _Left.size())
  return (::std:: move(_Left.append(_Right)));
 else
  return (::std:: move(_Right.insert(0, _Left)));
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 basic_string<_Elem, _Traits, _Alloc> operator+(
  const _Elem *_Left,
  basic_string<_Elem, _Traits, _Alloc>&& _Right)
 { // return NTCS + string
 return (::std:: move(_Right.insert(0, _Left)));
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 basic_string<_Elem, _Traits, _Alloc> operator+(
  const _Elem _Left,
  basic_string<_Elem, _Traits, _Alloc>&& _Right)
 { // return character + string
 typedef typename basic_string<_Elem, _Traits, _Alloc>::size_type
  size_type;
 return (::std:: move(_Right.insert((size_type)0, (size_type)1, _Left)));
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 basic_string<_Elem, _Traits, _Alloc> operator+(
  basic_string<_Elem, _Traits, _Alloc>&& _Left,
  const _Elem *_Right)
 { // return string + NTCS
 return (::std:: move(_Left.append(_Right)));
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 basic_string<_Elem, _Traits, _Alloc> operator+(
  basic_string<_Elem, _Traits, _Alloc>&& _Left,
  const _Elem _Right)
 { // return string + character
 return (::std:: move(_Left.append(1, _Right)));
 }


template<class _Elem,
 class _Traits,
 class _Alloc> inline
 bool operator==(
  const basic_string<_Elem, _Traits, _Alloc>& _Left,
  const basic_string<_Elem, _Traits, _Alloc>& _Right)
 { // test for string equality
 return (_Left.compare(_Right) == 0);
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 bool operator==(
  const _Elem * _Left,
  const basic_string<_Elem, _Traits, _Alloc>& _Right)
 { // test for NTCS vs. string equality
 return (_Right.compare(_Left) == 0);
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 bool operator==(
  const basic_string<_Elem, _Traits, _Alloc>& _Left,
  const _Elem *_Right)
 { // test for string vs. NTCS equality
 return (_Left.compare(_Right) == 0);
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 bool operator!=(
  const basic_string<_Elem, _Traits, _Alloc>& _Left,
  const basic_string<_Elem, _Traits, _Alloc>& _Right)
 { // test for string inequality
 return (!(_Left == _Right));
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 bool operator!=(
  const _Elem *_Left,
  const basic_string<_Elem, _Traits, _Alloc>& _Right)
 { // test for NTCS vs. string inequality
 return (!(_Left == _Right));
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 bool operator!=(
  const basic_string<_Elem, _Traits, _Alloc>& _Left,
  const _Elem *_Right)
 { // test for string vs. NTCS inequality
 return (!(_Left == _Right));
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 bool operator<(
  const basic_string<_Elem, _Traits, _Alloc>& _Left,
  const basic_string<_Elem, _Traits, _Alloc>& _Right)
 { // test if string < string
 return (_Left.compare(_Right) < 0);
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 bool operator<(
  const _Elem * _Left,
  const basic_string<_Elem, _Traits, _Alloc>& _Right)
 { // test if NTCS < string
 return (_Right.compare(_Left) > 0);
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 bool operator<(
  const basic_string<_Elem, _Traits, _Alloc>& _Left,
  const _Elem *_Right)
 { // test if string < NTCS
 return (_Left.compare(_Right) < 0);
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 bool operator>(
  const basic_string<_Elem, _Traits, _Alloc>& _Left,
  const basic_string<_Elem, _Traits, _Alloc>& _Right)
 { // test if string > string
 return (_Right < _Left);
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 bool operator>(
  const _Elem * _Left,
  const basic_string<_Elem, _Traits, _Alloc>& _Right)
 { // test if NTCS > string
 return (_Right < _Left);
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 bool operator>(
  const basic_string<_Elem, _Traits, _Alloc>& _Left,
  const _Elem *_Right)
 { // test if string > NTCS
 return (_Right < _Left);
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 bool operator<=(
  const basic_string<_Elem, _Traits, _Alloc>& _Left,
  const basic_string<_Elem, _Traits, _Alloc>& _Right)
 { // test if string <= string
 return (!(_Right < _Left));
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 bool operator<=(
  const _Elem * _Left,
  const basic_string<_Elem, _Traits, _Alloc>& _Right)
 { // test if NTCS <= string
 return (!(_Right < _Left));
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 bool operator<=(
  const basic_string<_Elem, _Traits, _Alloc>& _Left,
  const _Elem *_Right)
 { // test if string <= NTCS
 return (!(_Right < _Left));
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 bool operator>=(
  const basic_string<_Elem, _Traits, _Alloc>& _Left,
  const basic_string<_Elem, _Traits, _Alloc>& _Right)
 { // test if string >= string
 return (!(_Left < _Right));
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 bool operator>=(
  const _Elem * _Left,
  const basic_string<_Elem, _Traits, _Alloc>& _Right)
 { // test if NTCS >= string
 return (!(_Left < _Right));
 }

template<class _Elem,
 class _Traits,
 class _Alloc> inline
 bool operator>=(
  const basic_string<_Elem, _Traits, _Alloc>& _Left,
  const _Elem *_Right)
 { // test if string >= NTCS
 return (!(_Left < _Right));
 }

typedef basic_string<char, char_traits<char>, allocator<char> >
 string;
typedef basic_string<wchar_t, char_traits<wchar_t>, allocator<wchar_t> >
 wstring;


}
namespace std {
 // TEMPLATE STRUCT SPECIALIZATION hash
template<class _Elem,
 class _Traits,
 class _Alloc>
 struct hash<basic_string<_Elem, _Traits, _Alloc> >
 { // hash functor for basic_string
 typedef basic_string<_Elem, _Traits, _Alloc> argument_type;
 typedef size_t result_type;

 size_t operator()(const argument_type& _Keyval) const
  { // hash _Keyval to size_t value by pseudorandomizing transform
  return (_Hash_seq((const unsigned char *)_Keyval.c_str(),
   _Keyval.size() * sizeof (_Elem)));
  }
 };
} // namespace std
namespace std {

typedef basic_string<char16_t, char_traits<char16_t>, allocator<char16_t> >
 u16string;
typedef basic_string<char32_t, char_traits<char32_t>, allocator<char32_t> >
 u32string;



}


/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */

namespace std {
  // CLASS logic_error
class logic_error
 : public ::std:: exception
 { // base of all logic-error exceptions
public:
 explicit logic_error(const string& _Message)
  : _Str(_Message)
  { // construct from message string
  }

 explicit logic_error(const char *_Message)
  : _Str(_Message)
  { // construct from message string
  }

 virtual ~logic_error()
  { // destroy the object
  }

 virtual const char *what() const throw ()
  { // return pointer to message string
  return (_Str.c_str());
  }

private:
 string _Str; // the stored message string
 };

  // CLASS domain_error
class domain_error
 : public logic_error
 { // base of all domain-error exceptions
public:
 typedef logic_error _Mybase;

 explicit domain_error(const string& _Message)
  : _Mybase(_Message.c_str())
  { // construct from message string
  }

 explicit domain_error(const char *_Message)
  : _Mybase(_Message)
  { // construct from message string
  }
 };

  // CLASS invalid_argument
class invalid_argument
 : public logic_error
 { // base of all invalid-argument exceptions
public:
 typedef logic_error _Mybase;

 explicit invalid_argument(const string& _Message)
  : _Mybase(_Message.c_str())
  { // construct from message string
  }

 explicit invalid_argument(const char *_Message)
  : _Mybase(_Message)
  { // construct from message string
  }
 };

  // CLASS length_error
class length_error
 : public logic_error
 { // base of all length-error exceptions
public:
 typedef logic_error _Mybase;

 explicit length_error(const string& _Message)
  : _Mybase(_Message.c_str())
  { // construct from message string
  }

 explicit length_error(const char *_Message)
  : _Mybase(_Message)
  { // construct from message string
  }
 };

  // CLASS out_of_range
class out_of_range
 : public logic_error
 { // base of all out-of-range exceptions
public:
 typedef logic_error _Mybase;

 explicit out_of_range(const string& _Message)
  : _Mybase(_Message.c_str())
  { // construct from message string
  }

 explicit out_of_range(const char *_Message)
  : _Mybase(_Message)
  { // construct from message string
  }
 };

  // CLASS runtime_error
class runtime_error
 : public ::std:: exception
 { // base of all runtime-error exceptions
public:
 explicit runtime_error(const string& _Message)
  : _Str(_Message)
  { // construct from message string
  }

 explicit runtime_error(const char *_Message)
  : _Str(_Message)
  { // construct from message string
  }

 virtual ~runtime_error()
  { // destroy the object
  }

 virtual const char *what() const throw ()
  { // return pointer to message string
  return (_Str.c_str());
  }

private:
 string _Str; // the stored message string
 };

  // CLASS overflow_error
class overflow_error
 : public runtime_error
 { // base of all overflow-error exceptions
public:
 typedef runtime_error _Mybase;

 explicit overflow_error(const string& _Message)
  : _Mybase(_Message.c_str())
  { // construct from message string
  }

 explicit overflow_error(const char *_Message)
  : _Mybase(_Message)
  { // construct from message string
  }
 };

  // CLASS underflow_error
class underflow_error
 : public runtime_error
 { // base of all underflow-error exceptions
public:
 typedef runtime_error _Mybase;

 explicit underflow_error(const string& _Message)
  : _Mybase(_Message.c_str())
  { // construct from message string
  }

 explicit underflow_error(const char *_Message)
  : _Mybase(_Message)
  { // construct from message string
  }
 };

  // CLASS range_error
class range_error
 : public runtime_error
 { // base of all range-error exceptions
public:
 typedef runtime_error _Mybase;

 explicit range_error(const string& _Message)
  : _Mybase(_Message.c_str())
  { // construct from message string
  }

 explicit range_error(const char *_Message)
  : _Mybase(_Message)
  { // construct from message string
  }
 };
}


/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */

   // typeinfo standard header for gcc/EDG






   /* string.h - stub redirector for _str.h
*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 2002, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */



   /*  _str.h internal version of "C" string.h functions

    Definitions for string functions.

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34027 $ */
   /*  mem.h

    Memory manipulation functions

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34027 $ */




   /*  typeinfo.h

    Definitions for RTTI
*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1993, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 35404 $ */
   /*  _stddef.h

    multi-includable Definitions for common types, and NULL

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34174 $ */
#pragma option -Vt-
#pragma option -RT



typedef struct
{
    unsigned long Data1;
    unsigned short Data2;
    unsigned short Data3;
    unsigned char Data4[ 8 ];
} _BORGUID;







class tpid;

namespace std {

class __rtti type_info
{

public:




private:

    const char *__type_name;

                        type_info(const type_info &);
    type_info & operator=(const type_info &);

public:
    virtual ~type_info();

    bool operator==(const type_info &) const;
    bool operator!=(const type_info &) const;

    bool before(const type_info &) const;

    const char * name() const;


    size_t hash_code() const
    { // hash name() to size_t value by pseudorandomizing transform
        const char *_Keyval = name();
        size_t _Val = 2166136261U;
        size_t _First = 0;
        size_t _Last = std::strlen(_Keyval);
        size_t _Stride = 1 + _Last / 10;

        for(; _First < _Last; _First += _Stride)
            _Val = 16777619U * _Val ^ (size_t)_Keyval[_First];
        return (_Val);
    }
};


class bad_cast : public std::exception
{
  public:
    bad_cast();
    ~bad_cast();
    const char *what() const;
};

class bad_typeid : public std::exception
{
  public:
    bad_typeid();
    ~bad_typeid();
    const char *what() const;
};





} // std


// The following are for backwards compatibility.
typedef std::type_info typeinfo;
typedef std::type_info Type_info;
typedef std::bad_cast Bad_cast;
typedef std::bad_typeid Bad_typeid;

#pragma obsolete typeinfo
#pragma obsolete Type_info
#pragma obsolete Bad_cast
#pragma obsolete Bad_typeid




#pragma option -RT.
#pragma option -Vt.
/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */

   // xlocinfo internal header



   // cctype standard header



   /* yvals.h values header for conforming compilers on various systems */
/*
 * Copyright (c) 1992-2013 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V6.40:1422+V6.50 */




   /*  ctype.h

    Defines the locale aware ctype macros.

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 33167 $ */







   /*  _stddef.h

    multi-includable Definitions for common types, and NULL

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34174 $ */




   /*  mbctype.h

    Defines the mbctype macros.

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1997, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 33167 $ */






   /*  _stddef.h

    multi-includable Definitions for common types, and NULL

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34174 $ */
extern unsigned char _mbctype[]; /* character type array */

/* values used in _mbbtype(), _mbsbtype() */





/* Japanese code page */


/* values used in _setmbcp() */






extern "C" {


int _setmbcp(int newCodePage);
int _getmbcp(void);

int _ismbbkalpha(unsigned int __c);
int _ismbbkpunct(unsigned int __c);
int _ismbbkana (unsigned int __c);
int _ismbbalpha (unsigned int __c);
int _ismbbpunct (unsigned int __c);
int _ismbbalnum (unsigned int __c);
int _ismbbprint (unsigned int __c);
int _ismbbgraph (unsigned int __c);



int _ismbblead (unsigned int __c);
int _ismbbtrail (unsigned int __c);
int _ismbslead (const unsigned char *__s1, const unsigned char *__s2);
int _ismbstrail (const unsigned char *__s1, const unsigned char *__s2);



}


/* MSC compatible macro: */





namespace std {
extern "C" {


extern unsigned short _chartype[ 257 ];
extern unsigned char _lower[ 256 ];
extern unsigned char _upper[ 256 ];

int isalnum (int __c);
int isalpha (int __c);
int isblank (int __c);
int iscntrl (int __c);
int isdigit (int __c);
int isgraph (int __c);
int islower (int __c);
int isprint (int __c);
int ispunct (int __c);
int isspace (int __c);
int isupper (int __c);
int isxdigit(int __c);
int isascii (int __c);

int iswalnum (std::wint_t __c);
int iswalpha (std::wint_t __c);
int iswblank (std::wint_t __c);
int iswcntrl (std::wint_t __c);
int iswdigit (std::wint_t __c);
int iswgraph (std::wint_t __c);
int iswlower (std::wint_t __c);
int iswprint (std::wint_t __c);
int iswpunct (std::wint_t __c);
int iswspace (std::wint_t __c);
int iswupper (std::wint_t __c);
int iswxdigit(std::wint_t __c);
int iswascii (std::wint_t __c);

}


/* character classes */
extern "C" {
int _ltolower(int __ch);
int _ltolower_lcid(int __ch, unsigned long __handle);
int _ltoupper(int __ch);
int _ltoupper_lcid(int __ch, unsigned long __handle);
wchar_t _ltowupper(wchar_t __ch);
wchar_t _ltowlower(wchar_t __ch);
}



/* The following four functions cannot be macros, since the Rogue Wave headers
   #undef them.  So instead we'll use inline functions. */

/* Inline functions in "C" mode will disable precompiled headers if they are
   generated out-of-line.  Enabling debugging info, by default, will do this.
   Since most folks build with debug info frequently, we enable the -vi switch
   which forces these inline functions to be expanded inline even if debug
   info is enabled.
*/
#pragma option push -vi


__inline

int tolower(int __ch) { return _ltolower(__ch); }


__inline

int toupper(int __ch) { return _ltoupper(__ch); }


__inline

std::wint_t towlower(std::wint_t __ch) { return _ltowlower(__ch); }


__inline

std::wint_t towupper(std::wint_t __ch) { return _ltowupper(__ch); }

#pragma option pop






/* some MSC compatible macros */
} // std
     using std::_chartype;
     using std::_lower;
     using std::_upper;
     using std::isalnum;
     using std::isalpha;
     using std::isblank;
     using std::iscntrl;
     using std::isdigit;
     using std::isgraph;
     using std::islower;
     using std::isprint;
     using std::ispunct;
     using std::isspace;
     using std::isupper;
     using std::isxdigit;
     using std::isascii;
     using std::iswalnum;
     using std::iswalpha;
     using std::iswblank;
     using std::iswcntrl;
     using std::iswdigit;
     using std::iswgraph;
     using std::iswlower;
     using std::iswprint;
     using std::iswpunct;
     using std::iswspace;
     using std::iswupper;
     using std::iswxdigit;
     using std::iswascii;
     using std::tolower;
     using std::_ltolower;
     using std::toupper;
     using std::_ltoupper;
     using std::towlower;
     using std::towupper;
     using std::_ltowupper;
     using std::_ltowlower;
 /* remove any (improper) macro overrides */
/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */

   // clocale standard header
   /* yvals.h values header for conforming compilers on various systems */
/*
 * Copyright (c) 1992-2013 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V6.40:1422+V6.50 */




   /* Locale.h - stub redirector for _loc.h
*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 2002, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */



   /*  _loc.h - Internal version of "C" locale.h header file

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */


/* $Revision: 34254 $ */
/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */



   // ctime standard header



   /* yvals.h values header for conforming compilers on various systems */
/*
 * Copyright (c) 1992-2013 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V6.40:1422+V6.50 */




   /*  time.h

    Struct and function declarations for dealing with time.

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34733 $ */






   /*  _stddef.h

    multi-includable Definitions for common types, and NULL

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34174 $ */



namespace std {








#pragma pack(push, 1)








typedef long time_t;
typedef long clock_t;





struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;
};


extern "C" {



errno_t asctime_s(char *s, rsize_t maxsize, const struct tm *tmPtr);
errno_t wasctime_s(wchar_t *s, rsize_t maxsize, const struct tm *tmPtr);
errno_t ctime_s(char *s, rsize_t maxsize, const time_t *timer);
errno_t wctime_s(wchar_t *s, rsize_t maxsize, const time_t *timer);
struct tm * gmtime_s(const time_t * clock,
     struct tm * result);
struct tm * localtime_s(const time_t * clock,
        struct tm * result);


char * asctime(const struct tm *__tblock);
char * ctime(const time_t *__time);
double difftime(time_t __time2, time_t __time1);
struct tm * gmtime(const time_t *__timer);
struct tm * localtime(const time_t *__timer);
time_t time(time_t *__timer);
time_t mktime(struct tm *__timeptr);
clock_t clock(void);
std::size_t strftime(char *__s, std::size_t __maxsize,
                                        const char *__fmt, const struct tm *__t);
char * strptime(const char *__s,
                                        const char *__fmt, struct tm *__t);
std::size_t _lstrftim(char *__s, std::size_t __maxsize,
                                          const char *__fmt, const struct tm *__t);
wchar_t * _wasctime(const struct tm *__tblock);
wchar_t * _wctime(const time_t *__time);
wchar_t * _wstrdate(wchar_t *__datestr);
wchar_t * _wstrtime(wchar_t *__timestr);
std::size_t wcsftime(wchar_t *__s, std::size_t __maxsize,
                                        const wchar_t *__fmt, const struct tm *__t);
void _wtzset(void);

extern int _daylight;
extern long _timezone;

// FIXME: having const below causes CLANG to generate bad object file




extern char * _tzname[3];
extern wchar_t * _wtzname[3];


extern unsigned char _PREFER_END_STANDARD_TIME;
extern unsigned char _PREFER_START_DAYLIGHT_TIME;
#pragma obsolete _PREFER_END_STANDARD_TIME
#pragma obsolete _PREFER_START_DAYLIGHT_TIME

int stime(time_t *__tp);
void _tzset(void);
char * _strdate(char *__datestr);
char * _strtime(char *__timestr);


void tzset(void);

/* MSC compatible routines: */
unsigned int _getsystime(struct tm *__timeptr);
unsigned int _setsystime(struct tm *__timeptr, unsigned int __ms);




}





/* restore default packing */
#pragma pack(pop)








} // std






     using std::time_t;
     using std::clock_t;
     using std::tm;
     using std::asctime;
     using std::ctime;
     using std::difftime;
     using std::gmtime;
     using std::localtime;
     using std::time;
     using std::mktime;
     using std::clock;
     using std::strftime;
     using std::strptime;
     using std::_lstrftim;
     using std::_wasctime;
     using std::_wctime;
     using std::_wstrdate;
     using std::_wstrtime;
     using std::wcsftime;
     using std::_wtzset;
     using std::stime;
     using std::_tzset;
     using std::_strdate;
     using std::_strtime;
     using std::_daylight;
     using std::_timezone;
     using std::_tzname;
     using std::_wtzname;


     using std::asctime_s;
     using std::ctime_s;
     using std::gmtime_s;
     using std::localtime_s;
     using std::wasctime_s;
     using std::wctime_s;



     using std::tzset;
     using std::_getsystime;
     using std::_setsystime;
/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */


   /* xlocinfo.h internal header for gcc Linux */



   /* Locale.h - stub redirector for _loc.h
*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 2002, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */



   /*  _loc.h - Internal version of "C" locale.h header file

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */


/* $Revision: 34254 $ */

   /* yvals.h values header for conforming compilers on various systems */
/*
 * Copyright (c) 1992-2013 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V6.40:1422+V6.50 */

namespace std {
extern "C" { /* C has extern "C" linkage */

  /* CTYPE CODE BITS */
  /* SUPPLEMENTAL LOCALE MACROS AND DECLARATIONS */
typedef struct _Collvec
 { /* stuff needed by _Strcoll, etc. */
 unsigned long _Hand; // LCID
 unsigned int _Page; // UINT
 } _Collvec;

typedef struct _Ctypevec
 { /* stuff needed by _Tolower, etc. */
 unsigned long _Hand; // LCID
 unsigned int _Page; // UINT
 const short *_Table;
 int _Delfl;
 } _Ctypevec;

typedef struct _Cvtvec
 { /* stuff needed by _Mbrtowc, etc. */
 unsigned long _Hand; // LCID
 unsigned int _Page; // UINT
 } _Cvtvec;

  /* FUNCTION DECLARATIONS */
         const short *_Getctyptab();
extern float _Stof(const char *, char **, long);
extern double _Stod(const char *, char **, long);
extern long double _Stold(const char *, char **, long);


}
}


/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 +codepage*/


namespace std {
  // CLASS _Timevec
class _Timevec
 { // smart pointer to information used by _Strftime
public:
 void *_Getptr() const
  { // return pointer to time information
  return (0);
  }
 char _Pad;
 };

  // CLASS _Locinfo
class _Locinfo
 { // summary of all stuff peculiar to a locale used by standard facets
public:
 typedef ::std:: _Collvec _Collvec;
 typedef ::std:: _Ctypevec _Ctypevec;
 typedef ::std:: _Cvtvec _Cvtvec;

 typedef ::std:: _Timevec _Timevec;

 _Locinfo(const char * = "C"); // construct from named locale
 _Locinfo(const string&); // construct from named locale
 _Locinfo(int, const char *); // construct from category

 ~_Locinfo() ; // destroy the object

 _Locinfo& _Addcats(int, const char *); // add stuff for a category

 const char *_Getname() const
  { // return the new locale name
  return (_Newlocname.c_str());
  }

 _Collvec _Getcoll() const
  { // return collation stuff
  _Collvec _Vec = {0};
  return (_Vec);
  }

 _Ctypevec _Getctype() const
  { // return ctype stuff
  _Ctypevec _Vec = {_Handle, _Page};
  _Vec._Table = ::std:: _Getctyptab();
  _Vec._Delfl = 1;
  return (_Vec);
  }

 _Cvtvec _Getcvt() const
  { // return codecvt stuff
  _Cvtvec _Vec = {_Handle, _Page};
  return (_Vec);
  }

 const lconv *_Getlconv() const
  { // return localeconv stuff
  return (localeconv());
  }

 _Timevec _Gettnames() const
  { // return names used by _Strftime
  _Timevec _Vec = {0};
  return (_Vec);
  }

 const char *_Getdays() const
  { // return names for weekdays
  return (":Sun:Sunday:Mon:Monday:Tue:Tuesday:Wed:Wednesday"
   ":Thu:Thursday:Fri:Friday:Sat:Saturday");
  }

 const char *_Getmonths() const
  { // return names for months
  return (":Jan:January:Feb:February:Mar:March"
   ":Apr:April:May:May:Jun:June"
   ":Jul:July:Aug:August:Sep:September"
   ":Oct:October:Nov:November:Dec:December");
  }

 const char *_Getfalse() const
  { // return false name (no C source)
  return ("false");
  }

 const char *_Gettrue() const
  { // return true name (no C source)
  return ("true");
  }

private:
//	_Lockit _Lock;	// thread lock, because global locale is altered
 _Yarn<char> _Oldlocname; // old locale name to revert to on destruction
 _Yarn<char> _Newlocname; // new locale name for this object
 unsigned long _Handle;
 unsigned int _Page;
 };

  // TEMPLATE FUNCTION _LStrcoll
template<class _Elem> inline
 int _LStrcoll(const _Elem *_First1, const _Elem *_Last1,
  const _Elem *_First2, const _Elem *_Last2, const _Collvec *)
 { // perform locale-specific comparison of _Elem sequences
 for (; _First1 != _Last1 && _First2 != _Last2; ++_First1, ++_First2)
  if (*_First1 < *_First2)
   return (-1); // [_First1, _Last1) < [_First2, _Last2)
  else if (*_First2 < *_First1)
   return (+1); // [_First1, _Last1) > [_First2, _Last2)
 return (_First2 != _Last2 ? -1 : _First1 != _Last1 ? +1 : 0);
 }

  // TEMPLATE FUNCTION _LStrxfrm
template<class _Elem> inline
 size_t _LStrxfrm(_Elem *_First1, _Elem *_Last1,
  const _Elem *_First2, const _Elem *_Last2,
   const _Locinfo::_Collvec *)
 { // perform locale-specific transform of _Elems to [_First1, _Last1)
 size_t _Count = _Last2 - _First2;

 if (_Count <= (size_t)(_Last1 - _First1))
  ::std:: memcpy(_First1, _First2, _Count * sizeof (_Elem));
 return (_Count);
 }

  // FUNCTION _Mbrtowc
inline int _Mbrtowc(wchar_t *_Wptr, const char *_Ptr, size_t _Count,
 mbstate_t *_Pstate, const _Cvtvec *_Cvt)
 { // perform locale-specific mbrtowc



 return (::std:: mbrtowc_cp(_Wptr, _Ptr, _Count, (mbstate_t *)_Pstate, _Cvt->_Page));

 }

  // FUNCTION _Strftime
inline size_t _Strftime(char *_Ptr, size_t _Count, const char *_Format,
 const struct tm *_Ptime, void *)
 { // perform locale-specific strftime
 return (::std:: strftime(_Ptr, _Count, _Format, _Ptime));
 }

  // FUNCTION _Tolower
inline int _Tolower(int _Byte, const _Ctypevec *_Ct)
 { // perform locale-specific tolower



 return (::std:: _ltolower_lcid(_Byte & 0xff, _Ct->_Hand));

 }

  // FUNCTION _Toupper
inline int _Toupper(int _Byte, const _Ctypevec *_Ct)
 { // perform locale-specific toupper



 return (::std:: _ltoupper_lcid(_Byte & 0xff, _Ct->_Hand));

 }

  // FUNCTION _Wcrtomb
inline int _Wcrtomb(char *_Ptr, wchar_t _Char,
 mbstate_t *_Pstate, const _Cvtvec *_Cvt)
 { // perform locale-specific wcrtomb



 return (::std:: wcrtomb_cp(_Ptr, _Char, _Pstate, _Cvt->_Page));

 }
}


/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 +codepage*/





namespace std {
extern "C" {
         void * _Getgloballocale();
         void _Setgloballocale(void *);
}
}

namespace std {
 // CLASS _Facet_base
class _Facet_base
 { // code for reference counting a facet
public:
 virtual ~_Facet_base()
  { // ensure that derived classes can be destroyed properly
  }

 virtual void _Incref() = 0; // increment use count
 virtual _Facet_base * _Decref() = 0; // decrement use count
 };

  // TEMPLATE CLASS _Locbase
template<class _Dummy>
 class _Locbase
 { // define templatized category constants, instantiate on demand
public:
          static const int collate = (1 << ((0) - (0 < 1 ? 0 : 1)));
          static const int ctype = (1 << ((1) - (0 < 1 ? 0 : 1)));
          static const int monetary = (1 << ((2) - (0 < 1 ? 0 : 1)));
          static const int numeric = (1 << ((3) - (0 < 1 ? 0 : 1)));
          static const int time = (1 << ((4) - (0 < 1 ? 0 : 1)));
          static const int messages = (1 << ((5) - (0 < 1 ? 0 : 1)));
          static const int all = ((1 << (((5 + 1) /* maximum + 1 */) - (0 < 1 ? 0 : 1))) - 1);
          static const int none = 0;
 };

template<class _Dummy>
 const int _Locbase<_Dummy>::collate;
template<class _Dummy>
 const int _Locbase<_Dummy>::ctype;
template<class _Dummy>
 const int _Locbase<_Dummy>::monetary;
template<class _Dummy>
 const int _Locbase<_Dummy>::numeric;
template<class _Dummy>
 const int _Locbase<_Dummy>::time;
template<class _Dummy>
 const int _Locbase<_Dummy>::messages;
template<class _Dummy>
 const int _Locbase<_Dummy>::all;
template<class _Dummy>
 const int _Locbase<_Dummy>::none;

  // CLASS locale
class locale;
template<class _Facet>
 const _Facet& use_facet(const locale&);
template<class _Elem>
 class collate;

class locale
 : public _Locbase<int>
 { // nonmutable collection of facets that describe a locale
public:
 typedef int category;

   // CLASS id
 class id
  { // identifier stamp, unique for each distinct kind of facet
 public:
         id(size_t _Val = 0)
   : _Id(_Val)
   { // construct with specified stamp value
   }

         operator size_t()
   { // get stamp, with lazy allocation
   if (_Id == 0)
    { // still zero, allocate stamp
    {
     if (_Id == 0)
      _Id = ++_Id_cnt;
    }
    }
   return (_Id);
   }

 private:
  size_t _Id; // the identifier stamp

                          static int _Id_cnt;







         id(const id&); // not defined
  id& operator=(const id&); // not defined

  };

 class _Locimp;

   // CLASS facet
 class facet
  : public _Facet_base
  { // base class for all locale facets, performs reference counting
 public:
  static size_t _Getcat(const facet ** = 0,
   const locale * = 0)
   { // get category value, or -1 if no corresponding C category
   return ((size_t)(-1));
   }

  void _Register(); // queue lazy facet destruction

  virtual void _Incref()
   { // increment use count
   (++_Myrefs);
   }

  virtual _Facet_base * _Decref()
   { // decrement use count
   if ((--_Myrefs) == 0)
    return (this);
   else
    return (0);
   }
 private:
  long _Myrefs;
 protected:
  explicit facet(size_t _Initrefs = 0)
   : _Myrefs((long)_Initrefs)
   { // construct
   }

 public:
  virtual ~facet()
   { // ensure that derived classes can be destroyed properly
   }


  bool _Shared() const
   { // test if more than one owner
   return (1 < _Myrefs);
   }
 private:
         facet(const facet&); // not defined

  };

   // CLASS _Locimp

 class _Locimp
  : public facet
  { // reference-counted actual implementation of a locale
 protected:
         ~_Locimp() ; // destroy the object

 private:
  friend class locale;

  static _Locimp * _New_Locimp(bool _Transparent = false)
   { // allocate new _Locimp
   return (new _Locimp(_Transparent));
   }

  static _Locimp * _New_Locimp(const _Locimp& _Right)
   { // allocate new _Locimp by copying
   return (new _Locimp(_Right));
   }

         _Locimp(bool _Transparent = false); // construct from current locale

         _Locimp(const _Locimp&); // copy a _Locimp

  void _Addfac(facet *, size_t); // add a facet

  static _Locimp * _Makeloc(const _Locinfo&,
   category, _Locimp *, const locale *); // make essential facets

  static void _Makewloc(const _Locinfo&,
   category, _Locimp *, const locale *); // make wchar_t facets

  static void _Makexloc(const _Locinfo&,
   category, _Locimp *, const locale *); // make remaining facets

  facet **_Facetvec; // pointer to vector of facets
  size_t _Facetcount; // size of vector of facets
  category _Catmask; // mask describing implemented categories
  bool _Xparent; // true if locale is transparent

  _Yarn<char> _Name; // locale name, or "*" if not known

  static _Locimp *_Clocptr; // pointer to "C" locale object
  };

 template<class _Elem,
  class _Traits,
  class _Alloc>
  bool operator()(const basic_string<_Elem, _Traits, _Alloc>&,
   const basic_string<_Elem, _Traits, _Alloc>&)
    const; // compare strings

 template<class _Facet>
  locale combine(const locale& _Loc) const
  { // combine locale with facet from _Loc
  _Facet *_Facptr;

  try {
   _Facptr = (_Facet *)&use_facet<_Facet>(_Loc);
  } catch (...) {
   _Xruntime_error("locale::combine facet missing");
  }

  _Locimp *_Newimp = _Locimp::_New_Locimp(*_Ptr);
  _Newimp->_Addfac(_Facptr, _Facet::id);
  _Newimp->_Catmask = none;
  _Newimp->_Name = "*";
  return (locale(_Newimp));
  }

 template<class _Facet>
  locale(const locale& _Loc, const _Facet *_Facptr)
   : _Ptr(_Locimp::_New_Locimp(*_Loc._Ptr))
  { // construct from _Loc, replacing facet with *_Facptr
  if (_Facptr != 0)
   { // replace facet
   _Ptr->_Addfac((_Facet *)_Facptr, _Facet::id);
   _Ptr->_Catmask = none;
   _Ptr->_Name = "*";
   }
  }

 locale(_Uninitialized)
  { // defer construction
  }
 locale(const locale& _Right) throw ()
  : _Ptr(_Right._Ptr)
  { // construct by copying
  _Ptr->_Incref();
  }

 locale() throw ()
  : _Ptr(_Init(true))
  { // construct from current locale
  }


 locale(const locale& _Loc, const locale& _Other,
  category _Cat)
  : _Ptr(_Locimp::_New_Locimp(*_Loc._Ptr))
  { // construct a locale by copying named facets
  if (_Cat != none)
   { // worth adding, do it
   try {
    { _Locinfo _Lobj;
     _Locimp::_Makeloc(_Lobj, _Cat, _Ptr, &_Other);
     _Lobj._Addcats(_Loc._Ptr->_Catmask,
      _Loc.name().c_str());
     _Lobj._Addcats(_Other._Ptr->_Catmask,
      _Other.name().c_str());
     _Ptr->_Catmask = _Loc._Ptr->_Catmask
      | _Other._Ptr->_Catmask;
     _Ptr->_Name = _Lobj._Getname();
    }
   } catch (...) {
   delete _Ptr->_Decref();
   throw;
   }
   }
  }

private:
 void _Construct(const string &_Str,
  category _Cat)
  { // construct a locale with named facets
  bool _Bad = false;
  _Init();
  if (_Cat != none)
   { // worth adding, do it
   try {
    { _Locinfo _Lobj(_Cat, _Str.c_str());
     if (_Badname(_Lobj))
      _Bad = true;
     else
      { // name okay, build the locale
      _Locimp::_Makeloc(_Lobj, _Cat, _Ptr, 0);
      _Ptr->_Catmask = _Cat;
      _Ptr->_Name = _Str.c_str();
      }
    }
   } catch (...) {
   delete _Ptr->_Decref();
   throw;
   }
   }

  if (_Bad)
   { // Don't throw within _BEGIN_LOCINFO if we can avoid it
   delete _Ptr->_Decref();
   _Xruntime_error("bad locale name");
   }
  }

public:
 explicit locale(const char *_Locname,
  category _Cat = all)
  : _Ptr(_Locimp::_New_Locimp())
  { // construct a locale with named facets
  // _Locname might have been returned from setlocale().
  // Therefore, _Construct() takes const string&.
  if (_Locname == 0)
   _Xruntime_error("bad locale name");
  _Construct(_Locname, _Cat);
  }

 locale(const locale& _Loc, const char *_Locname,
  category _Cat)
  : _Ptr(_Locimp::_New_Locimp(*_Loc._Ptr))
  { // construct a locale by copying, replacing named facets
  // _Locname might have been returned from setlocale().
  // Therefore, _Construct() takes const string&.
  if (_Locname == 0)
   _Xruntime_error("bad locale name");
  _Construct(_Locname, _Cat);
  }


 explicit locale(const string& _Str,
  category _Cat = all)
  : _Ptr(_Locimp::_New_Locimp())
  { // construct a locale with named facets
  _Construct(_Str, _Cat);
  }

 locale(const locale& _Loc, const string& _Str,
  category _Cat)
  : _Ptr(_Locimp::_New_Locimp(*_Loc._Ptr))
  { // construct a locale by copying, replacing named facets
  _Construct(_Str, _Cat);
  }




 ~locale()
  { // destroy the object
  if (_Ptr != 0)
   delete _Ptr->_Decref();
  }

 locale& operator=(const locale& _Right) throw ()
  { // assign a locale
  if (_Ptr != _Right._Ptr)
   { // different implementation, point at new one
   delete _Ptr->_Decref();
   _Ptr = _Right._Ptr;
   _Ptr->_Incref();
   }
  return (*this);
  }


 string name() const
  { // return locale name
  return (_Ptr == 0 ? string() : _Ptr->_Name.c_str());
  }

 const char *c_str() const
  { // return locale name as NTBS
  return (_Ptr == 0 ? "" : _Ptr->_Name.c_str());
  }

 const facet *_Getfacet(size_t _Id) const
  { // look up a facet in locale object
  const facet *_Facptr = _Id < _Ptr->_Facetcount
   ? _Ptr->_Facetvec[_Id] : 0; // null if id off end
  if (_Facptr != 0 || !_Ptr->_Xparent)
   return (_Facptr); // found facet or not transparent
  else
   { // look in current locale
   locale::_Locimp *_Ptr0 = _Getgloballocale();
   return (_Id < _Ptr0->_Facetcount
    ? _Ptr0->_Facetvec[_Id] // get from current locale
    : 0); // no entry in current locale
   }
  }

 bool operator==(const locale& _Loc) const
  { // compare locales for equality
  return (_Ptr == _Loc._Ptr
   || (name().compare("*") != 0
    && name().compare(_Loc.name()) == 0));
  }

 bool operator!=(const locale& _Right) const
  { // test for locale inequality
  return (!(*this == _Right));
  }

 static const locale& classic(); // classic "C" locale

 static locale global(const locale&); // current locale

 static locale empty(); // empty (transparent) locale

private:
 locale(_Locimp *_Ptrimp)
  : _Ptr(_Ptrimp)
  { // construct from _Locimp pointer
  }

 static _Locimp * _Init(
  bool _Do_incref = false); // initialize locale
 static _Locimp * _Getgloballocale();
 static void _Setgloballocale(void *);

 bool _Badname(const _Locinfo& _Lobj)
  { // test if name is "*"
  return (::std:: strcmp(_Lobj._Getname(), "*") == 0);
  }

 _Locimp *_Ptr; // pointer to locale implementation object
 };

  // SUPPORT TEMPLATES
template<class _Facet>
 struct _Facetptr
 { // store pointer to lazy facet for use_facet
                         static const locale::facet *_Psave;
 };

template<class _Facet>
                         const locale::facet *_Facetptr<_Facet>::
  _Psave = 0;






template<class _Facet> inline
 const _Facet& use_facet(const locale& _Loc)

 { // get facet reference from locale





 { // the thread lock, make get atomic
  const locale::facet *_Psave =
   _Facetptr<_Facet>::_Psave; // static pointer to lazy facet

  size_t _Id = _Facet::id;
  const locale::facet *_Pf = _Loc._Getfacet(_Id);

  if (_Pf != 0)
   ; // got facet from locale
  else if (_Psave != 0)
   _Pf = _Psave; // lazy facet already allocated
  else if (_Facet::_Getcat(&_Psave, &_Loc) == (size_t)(-1))


   throw ::std:: bad_cast(); // lazy disallowed





  else
   { // queue up lazy facet for destruction
   _Pf = _Psave;
   _Facetptr<_Facet>::_Psave = _Psave;

   locale::facet *_Pfmod = (_Facet *)_Psave;
   _Pfmod->_Incref();
   _Pfmod->_Register();
   }

  return ((const _Facet&)(*_Pf)); // should be dynamic_cast
 }

 } // end of use_facet body

  // TEMPLATE FUNCTION _Getloctxt
template<class _Elem,
 class _InIt> inline
 int _Getloctxt(_InIt& _First, _InIt& _Last, size_t _Numfields,
  const _Elem *_Ptr)
 { // find field at _Ptr that matches longest in [_First, _Last)
 for (size_t _Off = 0; _Ptr[_Off] != (_Elem)0; ++_Off)
  if (_Ptr[_Off] == _Ptr[0])
   ++_Numfields; // add fields with leading mark to initial count
 string _Str(_Numfields, '\0'); // one column counter for each field

 int _Ans = -2; // no candidates so far
 for (size_t _Column = 1; ; ++_Column, ++_First, _Ans = -1)
  { // test each element against all viable fields
  bool _Prefix = false; // seen at least one valid prefix
  size_t _Off = 0; // offset into fields
  size_t _Field = 0; // current field number

  for (; _Field < _Numfields; ++_Field)
   { // test element at _Column in field _Field
   for (; _Ptr[_Off] != (_Elem)0 && _Ptr[_Off] != _Ptr[0]; ++_Off)
    ; // find beginning of field

   if (_Str[_Field] != '\0')
    _Off += _Str[_Field]; // skip tested columns in field
   else if (_Ptr[_Off += _Column] == _Ptr[0]
    || _Ptr[_Off] == (_Elem)0)
    { // matched all of field, save as possible answer
    _Str[_Field] = (char)(_Column < 127
     ? _Column : 127); // save skip count if small enough
    _Ans = (int)_Field; // save answer
    }
   else if (_First == _Last || _Ptr[_Off] != *_First)
    _Str[_Field] = (char)(_Column < 127
     ? _Column : 127); // no match, just save skip count
   else
    _Prefix = true; // still a valid prefix
   }

  if (!_Prefix || _First == _Last)
   break; // no pending prefixes or no input, give up
  }
 return (_Ans); // return field number or negative value on failure
 }

  // TEMPLATE FUNCTION _Maklocbyte



template<class _Elem> inline
 char _Maklocbyte(_Elem _Char,
  const _Locinfo::_Cvtvec&)
 { // convert _Elem to char using _Cvtvec
 return ((char)(unsigned char)_Char);
 }

template<> inline
 char _Maklocbyte(wchar_t _Char,
  const _Locinfo::_Cvtvec& _Cvt)
 { // convert wchar_t to char using _Cvtvec
 char _Byte = '\0';
 _Mbstatet _Mbst1 = {0};
 _Wcrtomb(&_Byte, _Char, &_Mbst1, &_Cvt);
 return (_Byte);
 }

  // TEMPLATE FUNCTION _Maklocchr



template<class _Elem> inline
 _Elem _Maklocchr(char _Byte, _Elem *,
  const _Locinfo::_Cvtvec&)
 { // convert char to _Elem using _Cvtvec
 return ((_Elem)(unsigned char)_Byte);
 }

template<> inline
 wchar_t _Maklocchr(char _Byte, wchar_t *,
  const _Locinfo::_Cvtvec& _Cvt)
 { // convert char to wchar_t using _Cvtvec
 wchar_t _Wc = L'\0';
 _Mbstatet _Mbst1 = {0};
 _Mbrtowc(&_Wc, &_Byte, 1, &_Mbst1, &_Cvt);
 return (_Wc);
 }

  // TEMPLATE FUNCTION _Maklocstr



template<class _Elem> inline
 _Elem * _Maklocstr(const char *_Ptr, _Elem *,
  const _Locinfo::_Cvtvec&)
 { // convert C string to _Elem sequence using _Cvtvec
 size_t _Count = ::std:: strlen(_Ptr) + 1;
 _Elem *_Ptrdest = (_Elem *)::std:: malloc(_Count);
 if (!_Ptrdest)
  _Xbad_alloc();

 for (_Elem *_Ptrnext = _Ptrdest; 0 < _Count; --_Count, ++_Ptrnext, ++_Ptr)
  *_Ptrnext = (_Elem)(unsigned char)*_Ptr;
 return (_Ptrdest);
 }

template<> inline
 wchar_t * _Maklocstr(const char *_Ptr, wchar_t *,
  const _Locinfo::_Cvtvec& _Cvt)
 { // convert C string to wchar_t sequence using _Cvtvec
 size_t _Count, _Count1;
 size_t _Wchars;
 const char *_Ptr1;
 int _Bytes;
 wchar_t _Wc;
 _Mbstatet _Mbst1 = {0};

 _Count1 = ::std:: strlen(_Ptr) + 1;
 for (_Count = _Count1, _Wchars = 0, _Ptr1 = _Ptr; 0 < _Count;
  _Count -= _Bytes, _Ptr1 += _Bytes, ++_Wchars)
  if ((_Bytes = _Mbrtowc(&_Wc, _Ptr1, _Count, &_Mbst1, &_Cvt)) <= 0)
   break;
 ++_Wchars; // count terminating nul

 wchar_t *_Ptrdest = (wchar_t *)::std:: malloc(_Wchars * sizeof (wchar_t));
 if (!_Ptrdest)
  _Xbad_alloc();
 wchar_t *_Ptrnext = _Ptrdest;
 _Mbstatet _Mbst2 = {0};

 for (; 0 < _Wchars;
  _Count -= _Bytes, _Ptr += _Bytes, --_Wchars, ++_Ptrnext)
  if ((_Bytes = _Mbrtowc(_Ptrnext, _Ptr, _Count1, &_Mbst2, &_Cvt)) <= 0)
   break;
 *_Ptrnext = L'\0';
 return (_Ptrdest);
 }

  // STRUCT codecvt_base

class codecvt_base
 : public locale::facet
 { // base class for codecvt
public:
 enum
  { // constants for different parse states
  ok, partial, error, noconv};
 typedef int result;

        codecvt_base(size_t _Refs = 0)
  : locale::facet(_Refs)
  { // default constructor
  }

 bool always_noconv() const throw ()
  { // return true if conversions never change input (from codecvt)
  return (do_always_noconv());
  }

 int max_length() const throw ()
  { // return maximum length required for a conversion (from codecvt)
  return (do_max_length());
  }

 int encoding() const throw ()
  { // return length of code sequence (from codecvt)
  return (do_encoding());
  }

        ~codecvt_base()
  { // destroy the object
  }

protected:
 virtual bool do_always_noconv() const throw ()
  { // return true if conversions never change input (from codecvt)
  return (false);
  }

 virtual int do_max_length() const throw ()
  { // return maximum length required for a conversion (from codecvt)
  return (1);
  }

 virtual int do_encoding() const throw ()
  { // return length of code sequence (from codecvt)
  return (1); // -1 ==> state dependent, 0 ==> varying length
  }
 };

  // TEMPLATE CLASS codecvt
template<class _Elem,
 class _Byte,
 class _Statype>
 class codecvt
  : public codecvt_base
 { // facet for converting between _Elem and char (_Byte) sequences
public:
 typedef _Elem intern_type;
 typedef _Byte extern_type;
 typedef _Statype state_type;

 result in(_Statype& _State,
  const _Byte *_First1, const _Byte *_Last1, const _Byte *& _Mid1,
  _Elem *_First2, _Elem *_Last2, _Elem *& _Mid2) const
  { // convert bytes [_First1, _Last1) to [_First2, _Last)
  return (do_in(_State,
   _First1, _Last1, _Mid1, _First2, _Last2, _Mid2));
  }

 result out(_Statype& _State,
  const _Elem *_First1, const _Elem *_Last1, const _Elem *& _Mid1,
  _Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
  { // convert [_First1, _Last1) to bytes [_First2, _Last2)
  return (do_out(_State,
   _First1, _Last1, _Mid1, _First2, _Last2, _Mid2));
  }

 result unshift(_Statype& _State,
  _Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
  { // generate bytes to return to default shift state
  return (do_unshift(_State, _First2, _Last2, _Mid2));
  }

 int length(_Statype& _State, const _Byte *_First1,
  const _Byte *_Last1, size_t _Count) const
  { // return min(_Count, converted length of bytes [_First1, _Last1))
  return (do_length(_State, _First1, _Last1, _Count));
  }

                         static locale::id id; // unique facet id

 explicit codecvt(size_t _Refs = 0)
  : codecvt_base(_Refs)
  { // construct from current locale
  _Init(_Locinfo());
  }

        codecvt(const _Locinfo& _Lobj, size_t _Refs = 0)
  : codecvt_base(_Refs)
  { // construct from specified locale
  _Init(_Lobj);
  }

 static size_t _Getcat(const locale::facet **_Ppf = 0,
  const locale *_Ploc = 0)
  { // return locale category mask and construct standard facet
  if (_Ppf != 0 && *_Ppf == 0)
   *_Ppf = new codecvt<_Elem, _Byte, _Statype>(
    _Locinfo(_Ploc->c_str()));
  return (1);
  }

protected:
 virtual ~codecvt()
  { // destroy the object
  }

 void _Init(const _Locinfo&)
  { // initialize from _Locinfo object
  }

 virtual bool do_always_noconv() const throw ()
  { // return true if conversions never change input (from codecvt)
  return (is_same<_Byte, _Elem>::value);
  }

 virtual result do_in(_Statype&,
  const _Byte *_First1, const _Byte *_Last1, const _Byte *& _Mid1,
  _Elem *_First2, _Elem *_Last2, _Elem *& _Mid2) const
  { // convert bytes [_First1, _Last1) to [_First2, _Last)
  _Mid1 = _First1, _Mid2 = _First2;
  if (is_same<_Byte, _Elem>::value)
   return (noconv); // convert nothing
  else
   { // types differ, copy one for one
   for (; _Mid1 != _Last1 && _Mid2 != _Last2; ++_Mid1, ++_Mid2)
    *_Mid2 = (_Elem)*_Mid1;
   return (ok);
   }
  }

 virtual result do_out(_Statype&,
  const _Elem *_First1, const _Elem *_Last1, const _Elem *& _Mid1,
  _Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
  { // convert [_First1, _Last1) to bytes [_First2, _Last)
  _Mid1 = _First1, _Mid2 = _First2;
  if (is_same<_Byte, _Elem>::value)
   return (noconv); // convert nothing
  else
   { // types differ, copy one for one
   for (; _Mid1 != _Last1 && _Mid2 != _Last2; ++_Mid1, ++_Mid2)
    *_Mid2 = (_Byte)*_Mid1;
   return (ok);
   }
  }

 virtual result do_unshift(_Statype&,
  _Byte *_First2, _Byte *, _Byte *&_Mid2) const
  { // generate bytes to return to default shift state
  _Mid2 = _First2;
  return (ok); // convert nothing
  }

 virtual int do_length(_Statype&, const _Byte *_First1,
  const _Byte *_Last1, size_t _Count) const
  { // return min(_Count, converted length of bytes [_First1, _Last1))
  return ((int)(_Count < (size_t)(_Last1 - _First1)
   ? _Count : _Last1 - _First1)); // assume 1-to-1 conversion
  }
 };

  // STATIC codecvt::id OBJECT
template<class _Elem,
 class _Byte,
 class _Statype>
                         locale::id codecvt<_Elem, _Byte, _Statype>::id;


  // ENUM _Codecvt_mode
enum _Codecvt_mode {
 _Consume_header = 4,
 _Generate_header = 2
 };

  // CLASS codecvt<char16_t, char, _Mbstatet>
template<>
 class codecvt<char16_t, char, _Mbstatet>
 : public codecvt_base
 { // facet for converting between char16_t and UTF-8 byte sequences
public:
 typedef codecvt<char16_t, char, _Mbstatet> _Mybase;
 typedef char16_t _Elem;
 typedef char _Byte;
 typedef _Mbstatet _Statype;
 typedef _Elem intern_type;
 typedef _Byte extern_type;
 typedef _Statype state_type;

 result in(_Statype& _State,
  const _Byte *_First1, const _Byte *_Last1, const _Byte *& _Mid1,
  _Elem *_First2, _Elem *_Last2, _Elem *& _Mid2) const
  { // convert bytes [_First1, _Last1) to [_First2, _Last)
  return (do_in(_State,
   _First1, _Last1, _Mid1, _First2, _Last2, _Mid2));
  }

 result out(_Statype& _State,
  const _Elem *_First1, const _Elem *_Last1, const _Elem *& _Mid1,
  _Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
  { // convert [_First1, _Last1) to bytes [_First2, _Last)
  return (do_out(_State,
   _First1, _Last1, _Mid1, _First2, _Last2, _Mid2));
  }

 result unshift(_Statype& _State,
  _Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
  { // generate bytes to return to default shift state
  return (do_unshift(_State,
   _First2, _Last2, _Mid2));
  }

 int length(_Statype& _State, const _Byte *_First1,
  const _Byte *_Last1, size_t _Count) const
  { // return min(_Count, converted length of bytes [_First1, _Last1))
  return (do_length(_State, _First1, _Last1, _Count));
  }

                         static locale::id id;

 explicit codecvt(size_t _Refs = 0)
  : codecvt_base(_Refs), _Maxcode(0x10ffff), _Mode(_Consume_header)
  { // construct from current locale
  { _Locinfo _Lobj;
   _Init(_Lobj);
  }
  }

        codecvt(const _Locinfo& _Lobj, size_t _Refs = 0)
  : codecvt_base(_Refs), _Maxcode(0x10ffff), _Mode(_Consume_header)
  { // construct from specified locale
  _Init(_Lobj);
  }

        codecvt(const _Locinfo& _Lobj, unsigned long _Maxcode_arg,
  _Codecvt_mode _Mode_arg, size_t _Refs = 0)
  : codecvt_base(_Refs), _Maxcode(_Maxcode_arg), _Mode(_Mode_arg)
  { // construct from specified locale and parameters
  _Init(_Lobj);
  }

 static size_t _Getcat(const locale::facet **_Ppf = 0,
  const locale *_Ploc = 0)
  { // return locale category mask and construct standard facet
  if (_Ppf != 0 && *_Ppf == 0)
   *_Ppf = new codecvt<_Elem, _Byte, _Statype>(
    _Locinfo(_Ploc->c_str()));
  return (1);
  }

protected:
 virtual ~codecvt()
  { // destroy the object
  }

 void _Init(const _Locinfo&)
  { // initialize
  }

 virtual result do_in(_Statype& _State,
  const _Byte *_First1, const _Byte *_Last1, const _Byte *& _Mid1,
  _Elem *_First2, _Elem *_Last2, _Elem *& _Mid2) const
  { // convert bytes [_First1, _Last1) to [_First2, _Last2)
  unsigned short *_Pstate = (unsigned short *)&_State;
  _Mid1 = _First1;
  _Mid2 = _First2;

  for (; _Mid1 != _Last1 && _Mid2 != _Last2; )
   { // convert a multibyte sequence
   unsigned char _By = (unsigned char)*_Mid1;
   unsigned long _Ch;
   int _Nextra, _Nskip;

   if (*_Pstate <= 1)
    ; // no leftover word
   else if (_By < 0x80 || 0xc0 <= _By)
    return (_Mybase::error); // not continuation byte
   else
    { // deliver second half of two-word value
    ++_Mid1;
    *_Mid2++ = (_Elem)(*_Pstate | (_By & 0x3f));
    *_Pstate = 1;
    continue;
    }

   if (_By < 0x80)
    _Ch = _By, _Nextra = 0;
   else if (_By < 0xc0)
    { // 0x80-0xdf not first byte
    ++_Mid1;
    return (_Mybase::error);
    }
   else if (_By < 0xe0)
    _Ch = _By & 0x1f, _Nextra = 1;
   else if (_By < 0xf0)
    _Ch = _By & 0x0f, _Nextra = 2;
   else if (_By < 0xf8)
    _Ch = _By & 0x07, _Nextra = 3;
   else
    _Ch = _By & 0x03, _Nextra = _By < 0xfc ? 4 : 5;

   _Nskip = _Nextra < 3 ? 0 : 1; // leave a byte for 2nd word
   _First1 = _Mid1; // roll back point

   if (_Nextra == 0)
    ++_Mid1;
   else if (_Last1 - _Mid1 < _Nextra + 1 - _Nskip)
    break; // not enough input
   else
    for (++_Mid1; _Nskip < _Nextra; --_Nextra, ++_Mid1)
     if ((_By = (unsigned char)*_Mid1) < 0x80 || 0xc0 <= _By)
      return (_Mybase::error); // not continuation byte
     else
      _Ch = _Ch << 6 | (_By & 0x3f);
   if (0 < _Nskip)
    _Ch <<= 6; // get last byte on next call

   if ((_Maxcode < 0x10ffff ? _Maxcode : 0x10ffff) < _Ch)
    return (_Mybase::error); // value too large
   else if (0xffff < _Ch)
    { // deliver first half of two-word value, save second word
    unsigned short _Ch0 =
     (unsigned short)(0xd800 | (_Ch >> 10) - 0x0040);

    *_Mid2++ = (_Elem)_Ch0;
    *_Pstate = (unsigned short)(0xdc00 | (_Ch & 0x03ff));
    continue;
    }

   if (_Nskip == 0)
    ;
   else if (_Mid1 == _Last1)
    { // not enough bytes, noncanonical value
    _Mid1 = _First1;
    break;
    }
   else if ((_By = (unsigned char)*_Mid1++) < 0x80 || 0xc0 <= _By)
    return (_Mybase::error); // not continuation byte
   else
    _Ch |= _By & 0x3f; // complete noncanonical value

   if (*_Pstate == 0)
    { // first time, maybe look for and consume header
    *_Pstate = 1;

    if ((_Mode & _Consume_header) != 0 && _Ch == 0xfeff)
     { // drop header and retry
     result _Ans = do_in(_State, _Mid1, _Last1, _Mid1,
      _First2, _Last2, _Mid2);

     if (_Ans == _Mybase::partial)
      { // roll back header determination
      *_Pstate = 0;
      _Mid1 = _First1;
      }
     return (_Ans);
     }
    }

   *_Mid2++ = (_Elem)_Ch;
   }

  return (_First1 == _Mid1 ? _Mybase::partial : _Mybase::ok);
  }

 virtual result do_out(_Statype& _State,
  const _Elem *_First1, const _Elem *_Last1, const _Elem *& _Mid1,
  _Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
  { // convert [_First1, _Last1) to bytes [_First2, _Last)
  unsigned short *_Pstate = (unsigned short *)&_State;
  _Mid1 = _First1;
  _Mid2 = _First2;

  for (; _Mid1 != _Last1 && _Mid2 != _Last2; )
   { // convert and put a wide char
   unsigned long _Ch;
   unsigned short _Ch1 = (unsigned short)*_Mid1;
   bool _Save = false;

   if (1 < *_Pstate)
    { // get saved MS 11 bits from *_Pstate
    if (_Ch1 < 0xdc00 || 0xe000 <= _Ch1)
     return (_Mybase::error); // bad second word
    _Ch = (*_Pstate << 10) | (_Ch1 - 0xdc00);
    }
   else if (0xd800 <= _Ch1 && _Ch1 < 0xdc00)
    { // get new first word
    _Ch = (_Ch1 - 0xd800 + 0x0040) << 10;
    _Save = true; // put only first byte, rest with second word
    }
   else
    _Ch = _Ch1; // not first word, just put it

   _Byte _By;
   int _Nextra;

   if (_Ch < 0x0080)
    _By = (_Byte)_Ch, _Nextra = 0;
   else if (_Ch < 0x0800)
    _By = (_Byte)(0xc0 | _Ch >> 6), _Nextra = 1;
   else if (_Ch < 0x10000)
    _By = (_Byte)(0xe0 | _Ch >> 12), _Nextra = 2;
   else
    _By = (_Byte)(0xf0 | _Ch >> 18), _Nextra = 3;

   int _Nput = _Nextra < 3 ? _Nextra + 1 : _Save ? 1 : 3;

   if (_Last2 - _Mid2 < _Nput)
    break; // not enough room, even without header
   else if (*_Pstate != 0 || (_Mode & _Generate_header) == 0)
    ; // no header to put
   else if (_Last2 - _Mid2 < 3 + _Nput)
    break; // not enough room for header + output
   else
    { // prepend header
    *_Mid2++ = (_Byte)(unsigned char)0xef;
    *_Mid2++ = (_Byte)(unsigned char)0xbb;
    *_Mid2++ = (_Byte)(unsigned char)0xbf;
    }

   ++_Mid1;
   if (_Save || _Nextra < 3)
    { // put first byte of sequence, if not already put
    *_Mid2++ = _By;
    --_Nput;
    }
   for (; 0 < _Nput; --_Nput)
    *_Mid2++ = (_Byte)((_Ch >> 6 * --_Nextra & 0x3f) | 0x80);

   *_Pstate = (unsigned short)(_Save ? _Ch >> 10 : 1);
   }

  return (_First1 == _Mid1 ? _Mybase::partial : _Mybase::ok);
  }

 virtual result do_unshift(_Statype& _State,
  _Byte *_First2, _Byte *, _Byte *& _Mid2) const
  { // generate bytes to return to default shift state
  unsigned short *_Pstate = (unsigned short *)&_State;
  _Mid2 = _First2;

  return (1 < *_Pstate
   ? _Mybase::error : _Mybase::ok); // fail if trailing first word
  }

 virtual int do_length(_Statype& _State, const _Byte *_First1,
  const _Byte *_Last1, size_t _Count) const
  { // return min(_Count, converted length of bytes [_First1, _Last1))
  size_t _Wchars = 0;
  _Statype _Mystate = _State;

  for (; _Wchars < _Count && _First1 != _Last1; )
   { // convert another wide character
   const _Byte *_Mid1;
   _Elem *_Mid2;
   _Elem _Ch;

   switch (do_in(_Mystate, _First1, _Last1, _Mid1,
    &_Ch, &_Ch + 1, _Mid2))
    { // test result of single wide-char conversion
   case _Mybase::noconv:
    return ((int)(_Wchars + (_Last1 - _First1)));

   case _Mybase::ok:
    if (_Mid2 == &_Ch + 1)
     ++_Wchars; // replacement do_in might not convert one
    _First1 = _Mid1;
    break;

   default:
    return ((int)_Wchars); // error or partial
    }
   }

  return ((int)_Wchars);
  }

 virtual bool do_always_noconv() const throw ()
  { // return true if conversions never change input
  return (false);
  }

 virtual int do_max_length() const throw ()
  { // return maximum length required for a conversion
  return ((_Mode & _Consume_header) != 0 ? 9 // header + max input
   : (_Mode & _Generate_header) != 0 ? 7 // header + max output
   : 6); // 6-byte max input sequence, no 3-byte header
  }

 virtual int do_encoding() const throw ()
  { // return length of code sequence (from codecvt)
  return (0); // 0 => varying length
  }

private:
 unsigned long _Maxcode; // default: 0x10ffff
 _Codecvt_mode _Mode; // default: _Consume_header
 };

  // CLASS codecvt<char32_t, char, _Mbstatet>
template<>
 class codecvt<char32_t, char, _Mbstatet>
 : public codecvt_base
 { // facet for converting between char32_t and UTF-8 byte sequences
public:
 typedef codecvt<char32_t, char, _Mbstatet> _Mybase;
 typedef char32_t _Elem;
 typedef char _Byte;
 typedef _Mbstatet _Statype;
 typedef _Elem intern_type;
 typedef _Byte extern_type;
 typedef _Statype state_type;

 result in(_Statype& _State,
  const _Byte *_First1, const _Byte *_Last1, const _Byte *& _Mid1,
  _Elem *_First2, _Elem *_Last2, _Elem *& _Mid2) const
  { // convert bytes [_First1, _Last1) to [_First2, _Last)
  return (do_in(_State,
   _First1, _Last1, _Mid1, _First2, _Last2, _Mid2));
  }

 result out(_Statype& _State,
  const _Elem *_First1, const _Elem *_Last1, const _Elem *& _Mid1,
  _Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
  { // convert [_First1, _Last1) to bytes [_First2, _Last)
  return (do_out(_State,
   _First1, _Last1, _Mid1, _First2, _Last2, _Mid2));
  }

 result unshift(_Statype& _State,
  _Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
  { // generate bytes to return to default shift state
  return (do_unshift(_State,
   _First2, _Last2, _Mid2));
  }

 int length(_Statype& _State, const _Byte *_First1,
  const _Byte *_Last1, size_t _Count) const
  { // return min(_Count, converted length of bytes [_First1, _Last1))
  return (do_length(_State, _First1, _Last1, _Count));
  }

                         static locale::id id;

 explicit codecvt(size_t _Refs = 0)
  : codecvt_base(_Refs), _Maxcode(0xffffffff), _Mode(_Consume_header)
  { // construct from current locale
  { _Locinfo _Lobj;
   _Init(_Lobj);
  }
  }

        codecvt(const _Locinfo& _Lobj, size_t _Refs = 0)
  : codecvt_base(_Refs), _Maxcode(0xffffffff), _Mode(_Consume_header)
  { // construct from specified locale
  _Init(_Lobj);
  }

        codecvt(const _Locinfo& _Lobj, unsigned long _Maxcode_arg,
  _Codecvt_mode _Mode_arg, size_t _Refs = 0)
  : codecvt_base(_Refs), _Maxcode(_Maxcode_arg), _Mode(_Mode_arg)
  { // construct from specified locale and parameters
  _Init(_Lobj);
  }

 static size_t _Getcat(const locale::facet **_Ppf = 0,
  const locale *_Ploc = 0)
  { // return locale category mask and construct standard facet
  if (_Ppf != 0 && *_Ppf == 0)
   *_Ppf = new codecvt<_Elem, _Byte, _Statype>(
    _Locinfo(_Ploc->c_str()));
  return (1);
  }

protected:
 virtual ~codecvt()
  { // destroy the object
  }

 void _Init(const _Locinfo&)
  { // initialize
  }

 virtual result do_in(_Statype& _State,
  const _Byte *_First1, const _Byte *_Last1, const _Byte *& _Mid1,
  _Elem *_First2, _Elem *_Last2, _Elem *& _Mid2) const
  { // convert bytes [_First1, _Last1) to [_First2, _Last)
  char *_Pstate = (char *)&_State;
  _Mid1 = _First1;
  _Mid2 = _First2;

  for (; _Mid1 != _Last1 && _Mid2 != _Last2; )
   { // convert a multibyte sequence
   unsigned char _By = (unsigned char)*_Mid1;
   unsigned long _Ch;
   int _Nextra;

   if (_By < 0x80)
    _Ch = _By, _Nextra = 0;
   else if (_By < 0xc0)
    { // 0x80-0xdf not first byte
    ++_Mid1;
    return (_Mybase::error);
    }
   else if (_By < 0xe0)
    _Ch = _By & 0x1f, _Nextra = 1;
   else if (_By < 0xf0)
    _Ch = _By & 0x0f, _Nextra = 2;
   else if (_By < 0xf8)
    _Ch = _By & 0x07, _Nextra = 3;
   else
    _Ch = _By & 0x03, _Nextra = _By < 0xfc ? 4 : 5;

   if (_Nextra == 0)
    ++_Mid1;
   else if (_Last1 - _Mid1 < _Nextra + 1)
    break; // not enough input
   else
    for (++_Mid1; 0 < _Nextra; --_Nextra, ++_Mid1)
     if ((_By = (unsigned char)*_Mid1) < 0x80 || 0xc0 <= _By)
      return (_Mybase::error); // not continuation byte
     else
      _Ch = _Ch << 6 | (_By & 0x3f);

   if (*_Pstate == 0)
    { // first time, maybe look for and consume header
    *_Pstate = 1;

    if ((_Mode & _Consume_header) != 0 && _Ch == 0xfeff)
     { // drop header and retry
     result _Ans = do_in(_State, _Mid1, _Last1, _Mid1,
      _First2, _Last2, _Mid2);

     if (_Ans == _Mybase::partial)
      { // roll back header determination
      *_Pstate = 0;
      _Mid1 = _First1;
      }
     return (_Ans);
     }
    }

   if (_Maxcode < _Ch)
    return (_Mybase::error); // code too large
   *_Mid2++ = (_Elem)_Ch;
   }

  return (_First1 == _Mid1 ? _Mybase::partial : _Mybase::ok);
  }

 virtual result do_out(_Statype& _State,
  const _Elem *_First1, const _Elem *_Last1, const _Elem *& _Mid1,
  _Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
  { // convert [_First1, _Last1) to bytes [_First2, _Last)
  char *_Pstate = (char *)&_State;
  _Mid1 = _First1;
  _Mid2 = _First2;

  for (; _Mid1 != _Last1 && _Mid2 != _Last2; )
   { // convert and put a wide char
   _Byte _By;
   int _Nextra;
   unsigned long _Ch = (unsigned long)*_Mid1;

   if (_Maxcode < _Ch)
    return (_Mybase::error);

   if (_Ch < 0x0080)
    _By = (_Byte)_Ch, _Nextra = 0;
   else if (_Ch < 0x0800)
    _By = (_Byte)(0xc0 | _Ch >> 6), _Nextra = 1;
   else if (_Ch < 0x00010000)
    _By = (_Byte)(0xe0 | _Ch >> 12), _Nextra = 2;
   else if (_Ch < 0x00200000)
    _By = (_Byte)(0xf0 | _Ch >> 18), _Nextra = 3;
   else if (_Ch < 0x04000000)
    _By = (_Byte)(0xf8 | _Ch >> 24), _Nextra = 4;
   else
    _By = (_Byte)(0xfc | (_Ch >> 30 & 0x03)), _Nextra = 5;

   if (*_Pstate == 0)
    { // first time, maybe generate header
    *_Pstate = 1;
    if ((_Mode & _Generate_header) == 0)
     ;
    else if (_Last2 - _Mid2 < 3 + 1 + _Nextra)
     return (_Mybase::partial); // not enough room for both
    else
     { // prepend header
     *_Mid2++ = (_Byte)(unsigned char)0xef;
     *_Mid2++ = (_Byte)(unsigned char)0xbb;
     *_Mid2++ = (_Byte)(unsigned char)0xbf;
     }
    }

   if (_Last2 - _Mid2 < 1 + _Nextra)
    break; // not enough room for output

   ++_Mid1;
   for (*_Mid2++ = _By; 0 < _Nextra; )
    *_Mid2++ = (_Byte)((_Ch >> 6 * --_Nextra & 0x3f) | 0x80);
   }
  return (_First1 == _Mid1 ? _Mybase::partial : _Mybase::ok);
  }

 virtual result do_unshift(_Statype&,
  _Byte *_First2, _Byte *, _Byte *& _Mid2) const
  { // generate bytes to return to default shift state
  _Mid2 = _First2;
  return (_Mybase::ok);
  }

 virtual int do_length(_Statype& _State, const _Byte *_First1,
  const _Byte *_Last1, size_t _Count) const
  { // return min(_Count, converted length of bytes [_First1, _Last1))
  int _Wchars = 0;
  _Statype _Mystate = _State;

  for (; (size_t)_Wchars < _Count && _First1 != _Last1; )
   { // convert another wide character
   const _Byte *_Mid1;
   _Elem *_Mid2;
   _Elem _Ch;

   switch (do_in(_Mystate, _First1, _Last1, _Mid1,
    &_Ch, &_Ch + 1, _Mid2))
    { // test result of single wide-char conversion
   case _Mybase::noconv:
    return ((int)(_Wchars + (int)(_Last1 - _First1)));

   case _Mybase::ok:
    if (_Mid2 == &_Ch + 1)
     ++_Wchars; // replacement do_in might not convert one
    _First1 = _Mid1;
    break;

   default:
    return ((int)_Wchars); // error or partial
    }
   }

  return ((int)_Wchars);
  }

 virtual bool do_always_noconv() const throw ()
  { // return true if conversions never change input
  return (false);
  }

 virtual int do_max_length() const throw ()
  { // return maximum length required for a conversion
  return ((_Mode & (_Consume_header | _Generate_header)) != 0
   ? 9 : 6);
  }

 virtual int do_encoding() const throw ()
  { // return length of code sequence (from codecvt)
  return ((_Mode & (_Consume_header | _Generate_header)) != 0
   ? -1 : 0); // -1 => state dependent, 0 => varying length
  }

private:
 unsigned long _Maxcode; // default: 0xffffffff
 _Codecvt_mode _Mode; // default: _Consume_header
 };


  // CLASS codecvt<wchar_t, char, _Mbstatet>
template<>
 class codecvt<wchar_t, char, _Mbstatet>
 : public codecvt_base
 { // facet for converting between wchar_t and char (_Byte) sequences
public:
 typedef wchar_t _Elem;
 typedef char _Byte;
 typedef _Mbstatet _Statype;
 typedef _Elem intern_type;
 typedef _Byte extern_type;
 typedef _Statype state_type;

 result in(_Statype& _State,
  const _Byte *_First1, const _Byte *_Last1, const _Byte *& _Mid1,
  _Elem *_First2, _Elem *_Last2, _Elem *& _Mid2) const
  { // convert bytes [_First1, _Last1) to [_First2, _Last)
  return (do_in(_State,
   _First1, _Last1, _Mid1, _First2, _Last2, _Mid2));
  }

 result out(_Statype& _State,
  const _Elem *_First1, const _Elem *_Last1, const _Elem *& _Mid1,
  _Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
  { // convert [_First1, _Last1) to bytes [_First2, _Last)
  return (do_out(_State,
   _First1, _Last1, _Mid1, _First2, _Last2, _Mid2));
  }

 result unshift(_Statype& _State,
  _Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
  { // generate bytes to return to default shift state
  return (do_unshift(_State,
   _First2, _Last2, _Mid2));
  }

 int length(_Statype& _State, const _Byte *_First1,
  const _Byte *_Last1, size_t _Count) const
  { // return min(_Count, converted length of bytes [_First1, _Last1))
  return (do_length(_State, _First1, _Last1, _Count));
  }

                         static locale::id id;

 explicit codecvt(size_t _Refs = 0)
  : codecvt_base(_Refs)
  { // construct from current locale
  { _Locinfo _Lobj;
   _Init(_Lobj);
  }
  }

        codecvt(const _Locinfo& _Lobj, size_t _Refs = 0)
  : codecvt_base(_Refs)
  { // construct from specified locale
  _Init(_Lobj);
  }

 static size_t _Getcat(const locale::facet **_Ppf = 0,
  const locale *_Ploc = 0)
  { // return locale category mask and construct standard facet
  if (_Ppf != 0 && *_Ppf == 0)
   *_Ppf = new codecvt<_Elem, _Byte, _Statype>(
    _Locinfo(_Ploc->c_str()));
  return (1);
  }

protected:
 virtual ~codecvt()
  { // destroy the object
  }

 void _Init(const _Locinfo& _Lobj)
  { // initialize from _Lobj
  _Cvt = _Lobj._Getcvt();
  }

 virtual result do_in(_Statype& _State,
  const _Byte *_First1, const _Byte *_Last1, const _Byte *& _Mid1,
   _Elem *_First2, _Elem *_Last2, _Elem *& _Mid2) const
  { // convert bytes [_First1, _Last1) to [_First2, _Last)
                               ;
                               ;
  _Mid1 = _First1, _Mid2 = _First2;
  result _Ans = _Mid1 == _Last1 ? ok : partial;
  int _Bytes;

  while (_Mid1 != _Last1 && _Mid2 != _Last2)
   switch (_Bytes = _Mbrtowc(_Mid2, _Mid1, _Last1 - _Mid1,
    &_State, &_Cvt))
   { // test result of locale-specific mbrtowc call
   case -2: // partial conversion
    _Mid1 = _Last1;
    return (_Ans);

   case -1: // failed conversion
    return (error);

   case 0: // may have converted null character
    if (*_Mid2 == (_Elem)0)
     _Bytes = (int)::std:: strlen(_Mid1) + 1;
    // fall through

   default: // converted _Bytes bytes to a wchar_t
    if (_Bytes == -3)
     _Bytes = 0; // wchar_t generated from state info
    _Mid1 += _Bytes;
    ++_Mid2;
    _Ans = ok;
   }
  return (_Ans);
  }

 virtual result do_out(_Statype& _State,
  const _Elem *_First1, const _Elem *_Last1, const _Elem *& _Mid1,
   _Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
  { // convert [_First1, _Last1) to bytes [_First2, _Last)
                               ;
                               ;
  _Mid1 = _First1, _Mid2 = _First2;
  int _Bytes;

  while (_Mid1 != _Last1 && _Mid2 != _Last2)
   if ((int)2 /* max. # bytes in multibyte char */ <= _Last2 - _Mid2)
    if ((_Bytes = _Wcrtomb(_Mid2, *_Mid1,
     &_State, &_Cvt)) < 0)
     return (error); // locale-specific wcrtomb failed
    else
     ++_Mid1, _Mid2 += _Bytes;
   else
    { // destination too small, convert into buffer
    _Byte _Buf[2 /* max. # bytes in multibyte char */];
    _Statype _Stsave = _State;

    if ((_Bytes = _Wcrtomb(_Buf, *_Mid1,
     &_State, &_Cvt)) < 0)
     return (error); // locale-specific wcrtomb failed
    else if (_Last2 - _Mid2 < _Bytes)
     { // converted too many, roll back and return previous
     _State = _Stsave;
     break;
     }
    else
     { // copy converted bytes from buffer
     ::std:: memcpy(_Mid2, _Buf, _Bytes);
     ++_Mid1, _Mid2 += _Bytes;
     }
    }
  return (_Mid1 == _Last1 ? ok : partial);
  }

 virtual result do_unshift(_Statype& _State,
  _Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
  { // generate bytes to return to default shift state
                               ;
  _Mid2 = _First2;
  result _Ans = ok;
  int _Bytes;
  _Byte _Buf[2 /* max. # bytes in multibyte char */];
  _Statype _Stsave = _State;

  if ((_Bytes = _Wcrtomb(_Buf, L'\0', &_State, &_Cvt)) <= 0)
   _Ans = error; // locale-specific wcrtomb failed
  else if (_Last2 - _Mid2 < --_Bytes)
   { // converted too many, roll back and return
   _State = _Stsave;
   _Ans = partial;
   }
  else if (0 < _Bytes)
   { // copy converted bytes from buffer
   ::std:: memcpy(_Mid2, _Buf, _Bytes);
   _Mid2 += _Bytes;
   }
  return (_Ans);
  }

 virtual int do_length(_Statype& _State, const _Byte *_First1,
  const _Byte *_Last1, size_t _Count) const
  { // return min(_Count, converted length of bytes [_First1, _Last1))
                               ;
  int _Wchars;
  const _Byte *_Mid1;
  _Statype _Mystate = _State;

  for (_Wchars = 0, _Mid1 = _First1;
   (size_t)_Wchars < _Count && _Mid1 != _Last1; )
   { // convert another wchar_t
   int _Bytes;
   _Elem _Ch;

   switch (_Bytes = _Mbrtowc(&_Ch, _Mid1, _Last1 - _Mid1,
    &_Mystate, &_Cvt))
    { // test result of locale-specific mbrtowc call
   case -2: // partial conversion
    return (_Wchars);

   case -1: // failed conversion
    return (_Wchars);

   case 0: // may have converted null character
    if (_Ch == (_Elem)0)
     _Bytes = (int)::std:: strlen(_Mid1) + 1;
    // fall through

   default: // converted _Bytes bytes to a wchar_t
    if (_Bytes == -3)
     _Bytes = 0; // wchar_t generated from state info
    _Mid1 += _Bytes;
    ++_Wchars;
    }
   }
  return (_Wchars);
  }

 virtual bool do_always_noconv() const throw ()
  { // return true if conversions never change input
  return (false);
  }

 virtual int do_max_length() const throw ()
  { // return maximum length required for a conversion (from codecvt)
  return (2 /* max. # bytes in multibyte char */);
  }

 virtual int do_encoding() const throw ()
  { // return length of code sequence (from codecvt)
  return (0); // 0 => varying length
  }

private:
 _Locinfo::_Cvtvec _Cvt; // locale info passed to _Mbrtowc, _Wcrtomb
 };

  // TEMPLATE CLASS codecvt_byname
template<class _Elem,
 class _Byte,
 class _Statype>
 class codecvt_byname
  : public codecvt<_Elem, _Byte, _Statype>
 { // codecvt for named locale
public:
 explicit codecvt_byname(const char *_Locname, size_t _Refs = 0)
  : codecvt<_Elem, _Byte, _Statype>(_Locinfo(_Locname), _Refs)
  { // construct for named locale
  }


 explicit codecvt_byname(const string& _Str, size_t _Refs = 0)
  : codecvt<_Elem, _Byte, _Statype>(_Locinfo(_Str.c_str()), _Refs)
  { // construct for named locale
  }


protected:
 virtual ~codecvt_byname()
  { // destroy the object
  }
 };

  // STRUCT ctype_base

struct ctype_base
 : public locale::facet
 { // base for ctype
 enum
  { // constants for character classifications
  alnum = 0x20 /* '0'-'9' */ | 0x10 /* 'a'-'z' */ | 0x02 /* 'A'-'Z' */ | 0x200 /* extra alphabetic */, alpha = 0x10 /* 'a'-'z' */ | 0x02 /* 'A'-'Z' */ | 0x200 /* extra alphabetic */,
  cntrl = 0x80 /* BEL, BS, etc. */, digit = 0x20 /* '0'-'9' */, graph = 0x20 /* '0'-'9' */ | 0x10 /* 'a'-'z' */ | 0x08 /* punctuation */ | 0x02 /* 'A'-'Z' */ | 0x200 /* extra alphabetic */,
  lower = 0x10 /* 'a'-'z' */, print = 0x20 /* '0'-'9' */ | 0x10 /* 'a'-'z' */ | 0x08 /* punctuation */ | 0x04 /* space */ | 0x02 /* 'A'-'Z' */ | 0x200 /* extra alphabetic */ | 0x01 /* '0'-'9', 'A'-'F', 'a'-'f' */,
  punct = 0x08 /* punctuation */, space = 0x40 /* CR, FF, HT, NL, VT */ | 0x04 /* space */ | 0x100 /* extra space */, upper = 0x02 /* 'A'-'Z' */,
  xdigit = 0x01 /* '0'-'9', 'A'-'F', 'a'-'f' */, blank = 0x40 /* CR, FF, HT, NL, VT */ | 0x04 /* space */ | 0x100 /* extra space */ | 0x400 /* extra blank */};
 typedef short mask; // to match <ctype.h>

        ctype_base(size_t _Refs = 0)
  : locale::facet(_Refs)
  { // default constructor
  }

        ~ctype_base()
  { // destroy the object
  }
 };

  // TEMPLATE CLASS ctype
template<class _Elem>
 class ctype
  : public ctype_base
 { // facet for classifying elements, converting cases
public:
 typedef _Elem char_type;

 bool is(mask _Maskval, _Elem _Ch) const
  { // test if element fits any mask classifications
  return (do_is(_Maskval, _Ch));
  }

 const _Elem * is(const _Elem *_First, const _Elem *_Last,
  mask *_Dest) const
  { // get mask sequence for elements in [_First, _Last)
  return (do_is(_First, _Last, _Dest));
  }

 const _Elem * scan_is(mask _Maskval, const _Elem *_First,
  const _Elem *_Last) const
  { // find first in [_First, _Last) that fits mask classification
  return (do_scan_is(_Maskval, _First, _Last));
  }

 const _Elem * scan_not(mask _Maskval, const _Elem *_First,
  const _Elem *_Last) const
  { // find first in [_First, _Last) not fitting mask classification
  return (do_scan_not(_Maskval, _First, _Last));
  }

 _Elem tolower(_Elem _Ch) const
  { // convert element to lower case
  return (do_tolower(_Ch));
  }

 const _Elem * tolower(_Elem *_First, const _Elem *_Last) const
  { // convert [_First, _Last) in place to lower case
  return (do_tolower(_First, _Last));
  }

 _Elem toupper(_Elem _Ch) const
  { // convert element to upper case
  return (do_toupper(_Ch));
  }

 const _Elem * toupper(_Elem *_First, const _Elem *_Last) const
  { // convert [_First, _Last) in place to upper case
  return (do_toupper(_First, _Last));
  }

 _Elem widen(char _Byte) const
  { // widen char
  return (do_widen(_Byte));
  }

 const char * widen(const char *_First, const char *_Last,
  _Elem *_Dest) const
  { // widen chars in [_First, _Last)
  return (do_widen(_First, _Last, _Dest));
  }

 char narrow(_Elem _Ch, char _Dflt = '\0') const
  { // narrow element to char
  return (do_narrow(_Ch, _Dflt));
  }

 const _Elem * narrow(const _Elem *_First, const _Elem *_Last,
  char _Dflt, char *_Dest) const
  { // narrow elements in [_First, _Last) to chars
  return (do_narrow(_First, _Last, _Dflt, _Dest));
  }

                         static locale::id id;

 explicit ctype(size_t _Refs = 0)
  : ctype_base(_Refs)
  { // construct from current locale
  { _Locinfo _Lobj;
   _Init(_Lobj);
  }
  }

        ctype(const _Locinfo& _Lobj, size_t _Refs = 0)
  : ctype_base(_Refs)
  { // construct from specified locale
  _Init(_Lobj);
  }

 static size_t _Getcat(const locale::facet **_Ppf = 0,
  const locale *_Ploc = 0)
  { // return locale category mask and construct standard facet
  if (_Ppf != 0 && *_Ppf == 0)
   *_Ppf = new ctype<_Elem>(
    _Locinfo(_Ploc->c_str()));
  return (1);
  }

protected:
 virtual ~ctype()
  { // destroy the object
  if (_Ctype._Delfl)
   ::std:: free((void *)_Ctype._Table);
  }

 void _Init(const _Locinfo& _Lobj)
  { // initialize from _Lobj
  _Ctype = _Lobj._Getctype();
  _Cvt = _Lobj._Getcvt();
  }

 virtual bool do_is(mask _Maskval, _Elem _Ch) const
  { // test if element fits any mask classifications
  return ((_Ctype._Table[(unsigned char)narrow(_Ch)]
   & _Maskval) != 0);
  }

 virtual const _Elem * do_is(const _Elem *_First, const _Elem *_Last,
  mask *_Dest) const
  { // get mask sequence for elements in [_First, _Last)
                                        ;
  for (; _First != _Last; ++_First, ++_Dest)
   *_Dest = _Ctype._Table[(unsigned char)narrow(*_First)];
  return (_First);
  }

 virtual const _Elem * do_scan_is(mask _Maskval,
  const _Elem *_First, const _Elem *_Last) const
  { // find first in [_First, _Last) that fits mask classification
                             ;
  for (; _First != _Last && !is(_Maskval, *_First); ++_First)
   ;
  return (_First);
  }

 virtual const _Elem * do_scan_not(mask _Maskval,
  const _Elem *_First, const _Elem *_Last) const
  { // find first in [_First, _Last) not fitting mask classification
                             ;
  for (; _First != _Last && is(_Maskval, *_First); ++_First)
   ;
  return (_First);
  }

 virtual _Elem do_tolower(_Elem _Ch) const
  { // convert element to lower case
  unsigned char _Byte = (unsigned char)narrow(_Ch, '\0');
  if (_Byte == '\0')
   return (_Ch);
  else
   return (widen((char)_Tolower(_Byte, &_Ctype)));
  }

 virtual const _Elem * do_tolower(_Elem *_First,
  const _Elem *_Last) const
  { // convert [_First, _Last) in place to lower case
                                            ;
  for (; _First != _Last; ++_First)
   { // convert *_First to lower case
   unsigned char _Byte = (unsigned char)narrow(*_First, '\0');
   if (_Byte != '\0')
    *_First = (widen((char)_Tolower(_Byte, &_Ctype)));
   }
  return ((const _Elem *)_First);
  }

 virtual _Elem do_toupper(_Elem _Ch) const
  { // convert element to upper case
  unsigned char _Byte = (unsigned char)narrow(_Ch, '\0');
  if (_Byte == '\0')
   return (_Ch);
  else
   return (widen((char)_Toupper(_Byte, &_Ctype)));
  }

 virtual const _Elem * do_toupper(_Elem *_First,
  const _Elem *_Last) const
  { // convert [_First, _Last) in place to upper case
                                            ;
  for (; _First != _Last; ++_First)
   { // convert *_First to upper case
   unsigned char _Byte = (unsigned char)narrow(*_First, '\0');
   if (_Byte != '\0')
    *_First = (widen((char)_Toupper(_Byte, &_Ctype)));
   }
  return ((const _Elem *)_First);
  }

 virtual _Elem do_widen(char _Byte) const
  { // widen char
  return (_Maklocchr(_Byte, (_Elem *)0, _Cvt) /* convert char to Elem */);
  }

 virtual const char * do_widen(const char *_First,
  const char *_Last, _Elem *_Dest) const
  { // widen chars in [_First, _Last)
                                        ;
  for (; _First != _Last; ++_First, ++_Dest)
   *_Dest = _Maklocchr(*_First, (_Elem *)0, _Cvt) /* convert char to Elem */;
  return (_First);
  }

 char _Donarrow(_Elem _Ch, char _Dflt) const
  { // narrow element to char
  char _Byte;
  if (_Ch == (_Elem)0)
   return ('\0');
  else if ((_Byte = _Maklocbyte((_Elem)_Ch, _Cvt) /* convert Elem to char */) == '\0')
   return (_Dflt);
  else
   return (_Byte);
  }

 virtual char do_narrow(_Elem _Ch, char _Dflt) const
  { // narrow element to char
  return (_Donarrow(_Ch, _Dflt));
  }

 virtual const _Elem * do_narrow(const _Elem *_First,
  const _Elem *_Last, char _Dflt, char *_Dest) const
  { // narrow elements in [_First, _Last) to chars
                                        ;
  for (; _First != _Last; ++_First, ++_Dest)
   *_Dest = _Donarrow(*_First, _Dflt);
  return (_First);
  }

private:
 _Locinfo::_Ctypevec _Ctype; // locale info passed to _Tolower, etc.
 _Locinfo::_Cvtvec _Cvt; // conversion information
 };

  // STATIC ctype::id OBJECT
template<class _Elem>
 locale::id ctype<_Elem>::id;

  // CLASS ctype<char>
template<>
 class ctype<char>
 : public ctype_base
 { // facet for classifying char elements, converting cases
 typedef ctype<char> _Myt;

public:
 typedef char _Elem;
 typedef _Elem char_type;

 bool is(mask _Maskval, _Elem _Ch) const
  { // test if element fits any mask classifications
  return ((_Ctype._Table[(unsigned char)_Ch] & _Maskval) != 0);
  }

 const _Elem * is(const _Elem *_First,
  const _Elem *_Last, mask *_Dest) const
  { // get mask sequence for elements in [_First, _Last)
                                        ;
  for (; _First != _Last; ++_First, ++_Dest)
   *_Dest = _Ctype._Table[(unsigned char)*_First];
  return (_First);
  }

 const _Elem * scan_is(mask _Maskval,
  const _Elem *_First, const _Elem *_Last) const
  { // find first in [_First, _Last) that fits mask classification
                             ;
  for (; _First != _Last && !is(_Maskval, *_First); ++_First)
   ;
  return (_First);
  }

 const _Elem * scan_not(mask _Maskval,
  const _Elem *_First, const _Elem *_Last) const
  { // find first in [_First, _Last) not fitting mask classification
                             ;
  for (; _First != _Last && is(_Maskval, *_First); ++_First)
   ;
  return (_First);
  }

 _Elem tolower(_Elem _Ch) const
  { // convert element to lower case
  return (do_tolower(_Ch));
  }

 const _Elem * tolower(_Elem *_First, const _Elem *_Last) const
  { // convert [_First, _Last) in place to lower case
  return (do_tolower(_First, _Last));
  }

 _Elem toupper(_Elem _Ch) const
  { // convert element to upper case
  return (do_toupper(_Ch));
  }

 const _Elem * toupper(_Elem *_First, const _Elem *_Last) const
  { // convert [_First, _Last) in place to upper case
  return (do_toupper(_First, _Last));
  }

 _Elem widen(char _Byte) const
  { // widen char
  return (do_widen(_Byte));
  }

 const _Elem * widen(const char *_First, const char *_Last,
  _Elem *_Dest) const
  { // widen chars in [_First, _Last)
  return (do_widen(_First, _Last, _Dest));
  }

 _Elem narrow(_Elem _Ch, char _Dflt = '\0') const
  { // narrow element to char
  return (do_narrow(_Ch, _Dflt));
  }

 const _Elem * narrow(const _Elem *_First, const _Elem *_Last,
  char _Dflt, char *_Dest) const
  { // narrow elements in [_First, _Last) to chars
  return (do_narrow(_First, _Last, _Dflt, _Dest));
  }

                         static locale::id id;

 explicit ctype(const mask *_Table = 0,
  bool _Deletetable = false,
  size_t _Refs = 0)
  : ctype_base(_Refs)
  { // construct with specified table and delete flag for table
  { _Locinfo _Lobj;
   _Init(_Lobj);
  }

  _Tidy(); // free existing table, as needed
  if (_Table != 0)
   { // replace existing char to mask table
   _Ctype._Table = _Table;
   _Ctype._Delfl = _Deletetable ? -1 : 0;
   }
  else
   { // use classic table
   _Ctype._Table = classic_table();
   _Ctype._Delfl = 0;
   }
  }

        ctype(const _Locinfo& _Lobj, size_t _Refs = 0)
  : ctype_base(_Refs)
  { // construct from current locale
  _Init(_Lobj);
  }

 static size_t _Getcat(const locale::facet **_Ppf = 0,
  const locale *_Ploc = 0)
  { // return locale category mask and construct standard facet
  if (_Ppf != 0 && *_Ppf == 0)
   *_Ppf = new ctype<_Elem>(
    _Locinfo(_Ploc->c_str()));
  return (1);
  }

 const mask * table() const throw ()
  { // return address of char to mask table
  return (_Ctype._Table);
  }

 static const mask * classic_table() throw ()
  { // return address of char to mask table for "C" locale
  const _Myt& _Ctype_fac = use_facet< _Myt >(locale::classic());
  return (_Ctype_fac.table());
  }

          static const size_t table_size; // size of _Ctype._Table

protected:
 virtual ~ctype()
  { // destroy the object
  _Tidy();
  }

 void _Init(const _Locinfo& _Lobj)
  { // initialize from _Lobj

  *(size_t *)&table_size = 1 << 8 /* number of bits in a char */; // force space reservation


  _Ctype = _Lobj._Getctype();
  }

 void _Tidy()
  { // free any allocated storage
  if (0 < _Ctype._Delfl)
   ::std:: free((void *)_Ctype._Table);
  else if (_Ctype._Delfl < 0)
   delete[] _Ctype._Table;
  }

 virtual _Elem do_tolower(_Elem _Ch) const
  { // convert element to lower case
  return ((_Elem)_Tolower((unsigned char)_Ch, &_Ctype));
  }

 virtual const _Elem * do_tolower(_Elem *_First,
  const _Elem *_Last) const
  { // convert [_First, _Last) in place to lower case
                                            ;
  for (; _First != _Last; ++_First)
   *_First = (_Elem)_Tolower((unsigned char)*_First, &_Ctype);
  return ((const _Elem *)_First);
  }

 virtual _Elem do_toupper(_Elem _Ch) const
  { // convert element to upper case
  return ((_Elem)_Toupper((unsigned char)_Ch, &_Ctype));
  }

 virtual const _Elem * do_toupper(_Elem *_First,
  const _Elem *_Last) const
  { // convert [_First, _Last) in place to upper case
                                            ;
  for (; _First != _Last; ++_First)
   *_First = (_Elem)_Toupper((unsigned char)*_First, &_Ctype);
  return ((const _Elem *)_First);
  }

 virtual _Elem do_widen(char _Byte) const
  { // widen char
  return (_Byte);
  }

 virtual const _Elem * do_widen(const char *_First,
  const char *_Last, _Elem *_Dest) const
  { // widen chars in [_First, _Last)
                                        ;
  ::std:: memcpy(_Dest, _First, _Last - _First);
  return (_Last);
  }

 virtual _Elem do_narrow(_Elem _Ch, char) const
  { // narrow char
  return (_Ch);
  }

 virtual const _Elem * do_narrow(const _Elem *_First,
  const _Elem *_Last, char, char *_Dest) const
  { // narrow elements in [_First, _Last) to chars
                                        ;
  ::std:: memcpy(_Dest, _First, _Last - _First);
  return (_Last);
  }

private:
 _Locinfo::_Ctypevec _Ctype; // information
 };

  // CLASS ctype<wchar_t>
template<>
 class ctype<wchar_t>
 : public ctype_base
 { // facet for classifying wchar_t elements, converting cases
 typedef ctype<wchar_t> _Myt;

public:
 typedef wchar_t _Elem;
 typedef _Elem char_type;

 bool is(mask _Maskval, _Elem _Ch) const
  { // test if element fits any mask classifications
  return (do_is(_Maskval, _Ch));
  }

 const _Elem * is(const _Elem *_First, const _Elem *_Last,
  mask *_Dest) const
  { // get mask sequence for elements in [_First, _Last)
  return (do_is(_First, _Last, _Dest));
  }

 const _Elem * scan_is(mask _Maskval, const _Elem *_First,
  const _Elem *_Last) const
  { // find first in [_First, _Last) that fits mask classification
  return (do_scan_is(_Maskval, _First, _Last));
  }

 const _Elem * scan_not(mask _Maskval, const _Elem *_First,
  const _Elem *_Last) const
  { // find first in [_First, _Last) not fitting mask classification
  return (do_scan_not(_Maskval, _First, _Last));
  }

 _Elem tolower(_Elem _Ch) const
  { // convert element to lower case
  return (do_tolower(_Ch));
  }

 const _Elem * tolower(_Elem *_First, const _Elem *_Last) const
  { // convert [_First, _Last) in place to lower case
  return (do_tolower(_First, _Last));
  }

 _Elem toupper(_Elem _Ch) const
  { // convert element to upper case
  return (do_toupper(_Ch));
  }

 const _Elem * toupper(_Elem *_First, const _Elem *_Last) const
  { // convert [_First, _Last) in place to upper case
  return (do_toupper(_First, _Last));
  }

 _Elem widen(char _Byte) const
  { // widen char
  return (do_widen(_Byte));
  }

 const char * widen(const char *_First, const char *_Last,
  _Elem *_Dest) const
  { // widen chars in [_First, _Last)
  return (do_widen(_First, _Last, _Dest));
  }

 char narrow(_Elem _Ch, char _Dflt = '\0') const
  { // narrow element to char
  return (do_narrow(_Ch, _Dflt));
  }

 const _Elem * narrow(const _Elem *_First, const _Elem *_Last,
  char _Dflt, char *_Dest) const
  { // narrow elements in [_First, _Last) to chars
  return (do_narrow(_First, _Last, _Dflt, _Dest));
  }

                         static locale::id id;

 explicit ctype(size_t _Refs = 0)
  : ctype_base(_Refs)
  { // construct from current locale
  { _Locinfo _Lobj;
   _Init(_Lobj);
  }
  }

        ctype(const _Locinfo& _Lobj, size_t _Refs = 0)
  : ctype_base(_Refs)
  { // construct from specified locale
  _Init(_Lobj);
  }

 static size_t _Getcat(const locale::facet **_Ppf = 0,
  const locale *_Ploc = 0)
  { // return locale category mask and construct standard facet
  if (_Ppf != 0 && *_Ppf == 0)
   *_Ppf = new ctype<_Elem>(
    _Locinfo(_Ploc->c_str()));
  return (1);
  }

protected:
 virtual ~ctype()
  { // destroy the object
  if (_Ctype._Delfl)
   ::std:: free((void *)_Ctype._Table);
  }

 void _Init(const _Locinfo& _Lobj)
  { // initialize from _Lobj
  _Ctype = _Lobj._Getctype();
  _Cvt = _Lobj._Getcvt();
  }

 virtual bool do_is(mask _Maskval, _Elem _Ch) const
  { // test if element fits any mask classifications
  return ((_Ctype._Table[(unsigned char)narrow(_Ch)]
   & _Maskval) != 0);
  }

 virtual const _Elem * do_is(const _Elem *_First,
  const _Elem *_Last, mask *_Dest) const
  { // get mask sequence for elements in [_First, _Last)
                                        ;
  for (; _First != _Last; ++_First, ++_Dest)
   *_Dest = _Ctype._Table[(unsigned char)narrow(*_First)];
  return (_First);
  }

 virtual const _Elem * do_scan_is(mask _Maskval,
  const _Elem *_First, const _Elem *_Last) const
  { // find first in [_First, _Last) that fits mask classification
                             ;
  for (; _First != _Last && !is(_Maskval, *_First); ++_First)
   ;
  return (_First);
  }

 virtual const _Elem * do_scan_not(mask _Maskval,
  const _Elem *_First, const _Elem *_Last) const
  { // find first in [_First, _Last) not fitting mask classification
                             ;
  for (; _First != _Last && is(_Maskval, *_First); ++_First)
   ;
  return (_First);
  }

 virtual _Elem do_tolower(_Elem _Ch) const
  { // convert element to lower case
  unsigned char _Byte = (unsigned char)narrow(_Ch, '\0');
  if (_Byte == '\0')
   return (_Ch);
  else
   return (widen((char)_Tolower(_Byte, &_Ctype)));
  }

 virtual const _Elem * do_tolower(_Elem *_First,
  const _Elem *_Last) const
  { // convert [_First, _Last) in place to lower case
                                            ;
  for (; _First != _Last; ++_First)
   { // convert *_First to lower case
   unsigned char _Byte = (unsigned char)narrow(*_First, '\0');
   if (_Byte != '\0')
    *_First = (widen((char)_Tolower(_Byte, &_Ctype)));
   }
  return ((const _Elem *)_First);
  }

 virtual _Elem do_toupper(_Elem _Ch) const
  { // convert element to upper case
  unsigned char _Byte = (unsigned char)narrow(_Ch, '\0');
  if (_Byte == '\0')
   return (_Ch);
  else
   return (widen((char)_Toupper(_Byte, &_Ctype)));
  }

 virtual const _Elem * do_toupper(_Elem *_First,
  const _Elem *_Last) const
  { // convert [_First, _Last) in place to upper case
                                            ;
  for (; _First != _Last; ++_First)
   { // convert *_First to upper case
   unsigned char _Byte = (unsigned char)narrow(*_First, '\0');
   if (_Byte != '\0')
    *_First = (widen((char)_Toupper(_Byte, &_Ctype)));
   }
  return ((const _Elem *)_First);
  }

 _Elem _Dowiden(char _Byte) const
  { // widen char
  _Mbstatet _Mbst = {0};
  wchar_t _Wc;
  return (_Mbrtowc(&_Wc, &_Byte, 1, &_Mbst, &_Cvt) < 0
   ? (wchar_t)(std::wint_t)(0xFFFF) /* wide-character end of file indicator */ : _Wc);
  }

 virtual _Elem do_widen(char _Byte) const
  { // widen char
  return (_Dowiden(_Byte));
  }

 virtual const char * do_widen(const char *_First,
  const char *_Last, _Elem *_Dest) const
  { // widen chars in [_First, _Last)
                                        ;
  for (; _First != _Last; ++_First, ++_Dest)
   *_Dest = _Dowiden(*_First);
  return (_First);
  }

 char _Donarrow(_Elem _Ch, char _Dflt) const
  { // narrow element to char
  char _Buf[2 /* max. # bytes in multibyte char */];
  _Mbstatet _Mbst = {0};
  return (_Wcrtomb(_Buf, _Ch, &_Mbst, &_Cvt) != 1
   ? _Dflt : _Buf[0]);
  }

 virtual char do_narrow(_Elem _Ch, char _Dflt) const
  { // narrow element to char
  return (_Donarrow(_Ch, _Dflt));
  }

 virtual const _Elem * do_narrow(const _Elem *_First,
  const _Elem *_Last, char _Dflt, char *_Dest) const
  { // narrow elements in [_First, _Last) to chars
                                        ;
  for (; _First != _Last; ++_First, ++_Dest)
   *_Dest = _Donarrow(*_First, _Dflt);
  return (_First);
  }

private:
 _Locinfo::_Ctypevec _Ctype; // locale info passed to _Tolower, etc.
 _Locinfo::_Cvtvec _Cvt; // conversion information
 };

  // TEMPLATE CLASS ctype_byname
template<class _Elem>
 class ctype_byname
 : public ctype<_Elem>
 { // ctype for named locale
public:
 explicit ctype_byname(const char *_Locname, size_t _Refs = 0)
  : ctype<_Elem>(_Locinfo(_Locname), _Refs)
  { // construct for named locale
  }


 explicit ctype_byname(const string& _Str, size_t _Refs = 0)
  : ctype<_Elem>(_Locinfo(_Str.c_str()), _Refs)
  { // construct for named locale
  }


protected:
 virtual ~ctype_byname()
  { // destroy the object
  }
 };

  // TEMPLATE CLASS ctype_byname<char>
template<>
 class ctype_byname<char>
 : public ctype<char>
 { // ctype_byname<char> for named locale
public:
 explicit ctype_byname(const char *_Locname, size_t _Refs = 0)
  : ctype<char>(_Locinfo(_Locname), _Refs)
  { // construct for named locale
  }


 explicit ctype_byname(const string& _Str, size_t _Refs = 0)
  : ctype<char>(_Locinfo(_Str.c_str()), _Refs)
  { // construct for named locale
  }


protected:
 virtual ~ctype_byname()
  { // destroy the object
  }
 };
}


/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */



   // system_error standard header



   // cerrno standard header








   /* yvals.h values header for conforming compilers on various systems */
/*
 * Copyright (c) 1992-2013 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V6.40:1422+V6.50 */




   /*  errno.h

    Defines the system error variable errno and the error
    numbers set by system calls. Errors which exist in Unix(tm)
    but not MSDOS have value -1.

*/

/*
 *      C/C++ Run Time Library - Version 24.0
 *
 *      Copyright (c) 1987, 2016 by Embarcadero Technologies, Inc.
 *      All Rights Reserved.
 *
 */

/* $Revision: 34051 $ */
       using std:: __errno;
       using std::_doserrno;

     using std::_sys_nerr;
     using std::_sys_errlist;
  /* POSIX SUPPLEMENT */
/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */
namespace std {
  // ENUM errc


enum class errc { // names for generic error codes





 address_family_not_supported = 1004,
 address_in_use = 1002,
 address_not_available = 1003,
 already_connected = 1028,
 argument_list_too_long = 20 /* Arg list too long                */,
 argument_out_of_domain = 33 /* Math argument */,
 bad_address = 14 /* Unknown error                    */,
 bad_file_descriptor = 6 /* Bad file number                  */,
 bad_message = 1008,
 broken_pipe = 32 /* Broken pipe                      */,
 connection_aborted = 1012,
 connection_already_in_progress = 1006,
 connection_refused = 1013,
 connection_reset = 1014,
 cross_device_link = 22 /* Cross-device link                */,
 destination_address_required = 1016,
 device_or_resource_busy = 44 /* Resource busy                    */,
 directory_not_empty = 49 /* Directory not empty              */,
 executable_format_error = 21 /* Exec format error                */,
 file_exists = 35 /* File already exists              */,
 file_too_large = 27 /* UNIX - not MSDOS                 */,
 filename_too_long = 48 /* Filename too long                */,
 function_not_supported = 1052,
 host_unreachable = 1021,
 identifier_removed = 1022,
 illegal_byte_sequence = 88 /* Illegal multibyte sequence       */,
 inappropriate_io_control_operation = 25 /* UNIX - not MSDOS                 */,
 interrupted = 39 /* Interrupted function call        */,
 invalid_argument = 19 /* Invalid argument                 */,
 invalid_seek = 29 /* Illegal seek                     */,
 io_error = 40 /* Input/output error               */,
 is_a_directory = 46 /* UNIX - not MSDOS                 */,
 message_size = 1033,
 network_down = 1035,
 network_reset = 1036,
 network_unreachable = 1037,
 no_buffer_space = 1039,
 no_child_process = 24 /* No child process                 */,
 no_link = 1045,
 no_lock_available = 1044,
 no_message_available = 1040,
 no_message = 1047,
 no_protocol_option = 1048,
 no_space_on_device = 28 /* No space left on device          */,
 no_stream_resources = 1050,
 no_such_device_or_address = 41 /* No such device or address        */,
 no_such_device = 15 /* No such device                   */,
 no_such_file_or_directory = 2 /* No such file or directory        */,
 no_such_process = 38 /* UNIX - not MSDOS                 */,
 not_a_directory = 45 /* UNIX - not MSDOS                 */,
 not_a_socket = 1057,
 not_a_stream = 1051,
 not_connected = 1053,
 not_enough_memory = 8 /* Not enough core                  */,
 not_supported = 1058,
 operation_canceled = 1019,
 operation_in_progress = 1024,
 operation_not_permitted = 37 /* Operation not permitted          */,
 operation_not_supported = 1061,
 operation_would_block = 1077,
 owner_dead = 1064,
 permission_denied = 5 /* Permission denied                */,
 protocol_error = 1067,
 protocol_not_supported = 1068,
 read_only_file_system = 30 /* Read-only file system            */,
 resource_deadlock_would_occur = 1015,
 resource_unavailable_try_again = 42 /* Resource temporarily unavailable */,
 result_out_of_range = 34 /* Result too large */,
 state_not_recoverable = 1056,
 stream_timeout = 1074,
 text_file_busy = 26 /* UNIX - not MSDOS                 */,
 timed_out = 1075,
 too_many_files_open_in_system = 23 /* Too many open files              */,
 too_many_files_open = 4 /* Too many open files              */,
 too_many_links = 31 /* UNIX - not MSDOS                 */,
 too_many_symbolic_link_levels = 1030,
 value_too_large = 1063,
 wrong_protocol_type = 1069
 };


typedef errc _Errc;







  // ENUM io_errc


enum class io_errc { // error codes for ios_base::failure
 stream = 1
 };

typedef io_errc _Io_errc;
}
namespace std {
  // TEMPLATE CLASS is_error_code_enum
template<class _Enum>
 struct is_error_code_enum
  : public false_type
 { // tests for error_code enumeration
 };

template<>
 struct is_error_code_enum<_Io_errc>
  : public true_type
 { // tests for error_condition enumeration
 };

  // TEMPLATE CLASS is_error_condition_enum
template<class _Enum>
 struct is_error_condition_enum
  : public false_type
 { // tests for error_condition enumeration
 };

template<>
 struct is_error_condition_enum<_Errc>
  : public true_type
 { // tests for error_condition enumeration
 };
} // namespace std
namespace std {





class error_code;
class error_condition;
error_code make_error_code(_Errc) ;
error_code make_error_code(_Io_errc) ;
error_condition make_error_condition(_Errc) ;
error_condition make_error_condition(_Io_errc) ;

  // CLASS error_category
class error_category;

const error_category& generic_category() ;
const error_category& iostream_category() ;
const error_category& system_category() ;

class error_category
 { // categorize an error
public:
             error_category()
  { // default constructor
  _Addr = reinterpret_cast<uintptr_t>(this);
  }

 virtual ~error_category()
  { // destroy the object
  }

 virtual const char *name() const = 0;

 virtual string message(int _Errval) const = 0;

 virtual error_condition
  default_error_condition(int _Errval) const ;

 virtual bool equivalent(int _Errval,
  const error_condition& _Cond) const ;

 virtual bool equivalent(const error_code& _Code,
  int _Errval) const ;

 bool operator==(const error_category& _Right) const
  { // compare categories for equality
  return (_Addr == _Right._Addr);
  }

 bool operator!=(const error_category& _Right) const
  { // compare categories for inequality
  return (!(*this == _Right));
  }

 bool operator<(const error_category& _Right) const
  { // compare categories for order
  return (_Addr < _Right._Addr);
  }






private:
 error_category(const error_category&); // not defined
 error_category& operator=(const error_category&); // not defined


protected:
 uintptr_t _Addr;

 enum : uintptr_t
  { // imaginary addresses for Standard error_category objects
  _Future_addr = 1,
  _Generic_addr = 3,
  _Iostream_addr = 5,
  _System_addr = 7
  };
 };

  // CLASS error_code
class error_code
 { // store an implementation-specific error code and category
public:
 typedef error_code _Myt;

 error_code()
  : _Myval(0),
   _Mycat(&system_category())
  { // construct non-error
  }

 error_code(int _Val, const error_category& _Cat)
  : _Myval(_Val), _Mycat(&_Cat)
  { // construct from error code and category
  }


 template<class _Enum,
  class = typename enable_if<is_error_code_enum<_Enum>::value,
   void>::type>
  error_code(_Enum _Errcode)
  : _Myval(0), _Mycat(0)
  { // construct from enumerated error code
  *this = make_error_code(_Errcode); // using ADL
  }
 void assign(int _Val, const error_category& _Cat)
  { // assign error code and category
  _Myval = _Val;
  _Mycat = &_Cat;
  }

 template<class _Enum>
  typename enable_if<is_error_code_enum<_Enum>::value,
   error_code>::type& operator=(_Enum _Errcode)
  { // assign enumerated error code
  *this = make_error_code(_Errcode); // using ADL
  return (*this);
  }

 void clear()
  { // assign non-error
  _Myval = 0;
  _Mycat = &system_category();
  }

 int value() const
  { // get error code
  return (_Myval);
  }

 const error_category& category() const
  { // get category
  return (*_Mycat);
  }

 error_condition default_error_condition() const ;

 string message() const
  { // get name of error code
  return (category().message(value()));
  }

         operator bool() const
  { // test for actual error
  return (value() != 0);
  }

private:
 int _Myval; // the stored error number
 const error_category *_Mycat; // pointer to error category
 };

  // CLASS error_condition
class error_condition
 { // store an abstract error code and category
public:
 typedef error_condition _Myt;

 error_condition()
  : _Myval(0),
   _Mycat(&generic_category())
  { // construct non-error
  }

 error_condition(int _Val, const error_category& _Cat)
  : _Myval(_Val), _Mycat(&_Cat)
  { // construct from error code and category
  }


 template<class _Enum,
  class = typename enable_if<is_error_condition_enum<_Enum>::value,
   void>::type>
  error_condition(_Enum _Errcode)
  : _Myval(0), _Mycat(0)
  { // construct from enumerated error code
  *this = make_error_condition(_Errcode); // using ADL
  }
 void assign(int _Val, const error_category& _Cat)
  { // assign error code and category
  _Myval = _Val;
  _Mycat = &_Cat;
  }

 template<class _Enum>
  typename enable_if<is_error_condition_enum<_Enum>::value,
   error_condition>::type& operator=(_Enum _Errcode)
  { // assign enumerated error code
  *this = make_error_condition(_Errcode); // using ADL
  return (*this);
  }

 void clear()
  { // assign non-error
  _Myval = 0;
  _Mycat = &generic_category();
  }

 int value() const
  { // get error code
  return (_Myval);
  }

 const error_category& category() const
  { // get category
  return (*_Mycat);
  }

 string message() const
  { // get name of error code
  return (category().message(value()));
  }

         operator bool() const
  { // test for actual error
  return (value() != 0);
  }

private:
 int _Myval; // the stored error number
 const error_category *_Mycat; // pointer to error category
 };

  // operator== FOR error_code/error_condition
inline bool operator==(
 const error_code& _Left,
 const error_code& _Right)
 { // test errors for equality
 return (_Left.category() == _Right.category()
  && _Left.value() == _Right.value());
 }

inline bool operator==(
 const error_code& _Left,
 const error_condition& _Right)
 { // test errors for equality
 return (_Left.category().equivalent(_Left.value(), _Right)
  || _Right.category().equivalent(_Left, _Right.value()));
 }

inline bool operator==(
 const error_condition& _Left,
 const error_code& _Right)
 { // test errors for equality
 return (_Right.category().equivalent(_Right.value(), _Left)
  || _Left.category().equivalent(_Right, _Left.value()));
 }

inline bool operator==(
 const error_condition& _Left,
 const error_condition& _Right)
 { // test errors for equality
 return (_Left.category() == _Right.category()
  && _Left.value() == _Right.value());
 }

  // operator!= FOR error_code/error_condition
inline bool operator!=(
 const error_code& _Left,
 const error_code& _Right)
 { // test errors for inequality
 return (!(_Left == _Right));
 }

inline bool operator!=(
 const error_code& _Left,
 const error_condition& _Right)
 { // test errors for inequality
 return (!(_Left == _Right));
 }

inline bool operator!=(
 const error_condition& _Left,
 const error_code& _Right)
 { // test errors for inequality
 return (!(_Left == _Right));
 }

inline bool operator!=(
 const error_condition& _Left,
 const error_condition& _Right)
 { // test errors for inequality
 return (!(_Left == _Right));
 }

  // operator< FOR error_code/error_condition
inline bool operator<(
 const error_code& _Left,
 const error_code& _Right)
 { // test if _Left < _Right
 return (_Left.category() < _Right.category()
  || (_Left.category() == _Right.category()
   && _Left.value() < _Right.value()));
 }

inline bool operator<(
 const error_condition& _Left,
 const error_condition& _Right)
 { // test if _Left < _Right
 return (_Left.category() < _Right.category()
  || (_Left.category() == _Right.category()
   && _Left.value() < _Right.value()));
 }

  // VIRTUALS FOR error_category
inline error_condition
 error_category::default_error_condition(int _Errval) const
 { // make error_condition for error code
 return (error_condition(_Errval, *this));
 }

inline bool
 error_category::equivalent(int _Errval,
  const error_condition& _Cond) const
 { // test if error code same condition
 return (default_error_condition(_Errval) == _Cond);
 }

inline bool
 error_category::equivalent(const error_code& _Code,
  int _Errval) const
 { // test if conditions same for this category
 return (*this == _Code.category() && _Code.value() == _Errval);
 }

  // MEMBER FUNCTIONS for error_code
inline error_condition error_code::default_error_condition() const
 { // make error_condition for error code
 return (category().default_error_condition(value()));
 }

  // FUNCTION make_error_code
inline error_code make_error_code(_Errc _Errno)
 { // make an error_code
 return (error_code((int)_Errno, generic_category()));
 }

inline error_code make_error_code(_Io_errc _Errno)
 { // make an error_code
 return (error_code((int)_Errno, iostream_category()));
 }

  // FUNCTION make_error_condition
inline error_condition make_error_condition(_Errc _Errno)
 { // make an error_condition
 return (error_condition((int)_Errno, generic_category()));
 }

inline error_condition make_error_condition(_Io_errc _Errno)
 { // make an error_condition
 return (error_condition((int)_Errno, iostream_category()));
 }
}
namespace std {
  // TEMPLATE STRUCT SPECIALIZATION hash
template<>
 struct hash<error_code>
 { // hash functor for error_code
 typedef error_code argument_type;
 typedef size_t result_type;

 size_t operator()(const argument_type& _Keyval) const
  { // hash _Keyval to size_t value by pseudorandomizing transform
  return (hash<int>()(_Keyval.value()));
  }
 };
} // namespace std
namespace std {
  // CLASS system_error
class _System_error
 : public runtime_error
 { // base of all system-error exceptions
private:
 static string _Makestr(error_code _Errcode, string _Message)
  { // compose error message
  if (!_Message.empty())
   _Message.append(": ");
  _Message.append(_Errcode.message());
  return (_Message);
  }

protected:
 _System_error(error_code _Errcode, const string& _Message)
  : runtime_error(_Makestr(_Errcode, _Message)), _Mycode(_Errcode)
  { // construct from error code and message string
  }

 error_code _Mycode; // the stored error code
 };

class system_error
 : public _System_error
 { // base of all system-error exceptions
private:
 typedef _System_error _Mybase;

public:
 system_error(error_code _Errcode)
  : _Mybase(_Errcode, "")
  { // construct from error code
  }

 system_error(error_code _Errcode, const string& _Message)
  : _Mybase(_Errcode, _Message)
  { // construct from error code and message string
  }

 system_error(error_code _Errcode, const char *_Message)
  : _Mybase(_Errcode, _Message)
  { // construct from error code and message string
  }

 system_error(int _Errval, const error_category& _Errcat)
  : _Mybase(error_code(_Errval, _Errcat), "")
  { // construct from error code components
  }

 system_error(int _Errval, const error_category& _Errcat,
  const string& _Message)
  : _Mybase(error_code(_Errval, _Errcat), _Message)
  { // construct from error code components and message string
  }

 system_error(int _Errval, const error_category& _Errcat,
  const char *_Message)
  : _Mybase(error_code(_Errval, _Errcat), _Message)
  { // construct from error code components and message string
  }

 const error_code& code() const
  { // return stored error code
  return (_Mycode);
  }
 };

          const char * _Syserror_map(int);

  // CLASS _Generic_error_category
class _Generic_error_category
 : public error_category
 { // categorize a generic error
public:
 _Generic_error_category()
  { // default constructor
  _Addr = _Generic_addr;
  }

 virtual const char *name() const
  { // get name of category
  return ("generic");
  }

 virtual string message(int _Errcode) const
  { // convert to name of error
  const char *_Name = _Syserror_map(_Errcode);
  return (string(_Name != 0 ? _Name : "unknown error"));
  }
 };

  // CLASS _Iostream_error_category
class _Iostream_error_category
 : public _Generic_error_category
 { // categorize an iostream error
public:
 _Iostream_error_category()
  { // default constructor
  _Addr = _Iostream_addr;
  }

 virtual const char *name() const
  { // get name of category
  return ("iostream");
  }

 virtual string message(int _Errcode) const
  { // convert to name of error
  if (_Errcode == (int)io_errc::stream)
   return ("iostream stream error");
  else
   return (_Generic_error_category::message(_Errcode));
  }
 };

  // CLASS _System_error_category
class _System_error_category
 : public error_category
 { // categorize an operating system error
public:
 _System_error_category()
  { // default constructor
  _Addr = _System_addr;
  }

 virtual const char *name() const
  { // get name of category
  return ("system");
  }

 virtual string message(int _Errcode) const
  { // convert to name of error
  const char *_Name = _Syserror_map(_Errcode);
  return (string(_Name != 0 ? _Name : "unknown error"));
  }

 virtual error_condition
  default_error_condition(int _Errval) const
  { // make error_condition for error code (generic if possible)
  if (_Syserror_map(_Errval))
   return (error_condition(_Errval, generic_category()));
  else
   return (error_condition(_Errval, system_category()));
  }
 };

template<class _Ty>
 struct _Immortalizer
 { // constructs _Ty, never destroys
 _Immortalizer()
  { // construct _Ty inside _Storage
  ::new (static_cast<void *>(&_Storage)) _Ty();
  }

 ~_Immortalizer()
  { // intentionally do nothing
  }






private:
 _Immortalizer(const _Immortalizer&); // not defined
 _Immortalizer& operator=(const _Immortalizer&); // not defined
public:


 typename aligned_union<1, _Ty>::type _Storage;
 };

template<class _Ty> inline
 _Ty& _Immortalize()
 { // return a reference to an object that will live forever
 static _Immortalizer<_Ty> _Static;
 return (*reinterpret_cast<_Ty *>(&_Static._Storage));
 }

inline const error_category& generic_category()
 { // get generic_category
 return (_Immortalize<_Generic_error_category>());
 }

inline const error_category& iostream_category()
 { // get iostream_category
 return (_Immortalize<_Iostream_error_category>());
 }

inline const error_category& system_category()
 { // get system_category
 return (_Immortalize<_System_error_category>());
 }
}


/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */



   /* yvals.h values header for conforming compilers on various systems */
/*
 * Copyright (c) 1992-2013 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V6.40:1422+V6.50 */




namespace std {
  // TEMPLATE CLASS _Iosb
template<class _Dummy>
 class _Iosb
 { // define templatized bitmask/enumerated types, instantiate on demand
public:
 enum _Dummy_enum {_Dummy_enum_val = 1}; // don't ask
 enum _Fmtflags
  { // constants for formatting options
  _Fmtmask = 0xffff, _Fmtzero = 0};

 static const _Fmtflags skipws = (_Fmtflags)0x0001;
 static const _Fmtflags unitbuf = (_Fmtflags)0x2000;
 static const _Fmtflags uppercase = (_Fmtflags)0x0200;
 static const _Fmtflags showbase = (_Fmtflags)0x0080;
 static const _Fmtflags showpoint = (_Fmtflags)0x0100;
 static const _Fmtflags showpos = (_Fmtflags)0x0400;
 static const _Fmtflags left = (_Fmtflags)0x0002;
 static const _Fmtflags right = (_Fmtflags)0x0004;
 static const _Fmtflags internal = (_Fmtflags)0x0008;
 static const _Fmtflags dec = (_Fmtflags)0x0010;
 static const _Fmtflags oct = (_Fmtflags)0x0020;
 static const _Fmtflags hex = (_Fmtflags)0x0040;
 static const _Fmtflags scientific = (_Fmtflags)0x0800;
 static const _Fmtflags fixed = (_Fmtflags)0x1000;

 static const _Fmtflags hexfloat =
  (_Fmtflags)0x1800 /* added with TR1*/; // added with TR1 (not in C++0X)

 static const _Fmtflags boolalpha = (_Fmtflags)0x8000;
 static const _Fmtflags _Stdio = (_Fmtflags)0x4000;
 static const _Fmtflags adjustfield = (_Fmtflags)(0x0002
  | 0x0004 | 0x0008);
 static const _Fmtflags basefield = (_Fmtflags)(0x0010
  | 0x0020 | 0x0040);
 static const _Fmtflags floatfield = (_Fmtflags)(0x0800
  | 0x1000);

 enum _Iostate
  { // constants for stream states
  _Statmask = 0x17};

 static const _Iostate goodbit = (_Iostate)0x0;
 static const _Iostate eofbit = (_Iostate)0x1;
 static const _Iostate failbit = (_Iostate)0x2;
 static const _Iostate badbit = (_Iostate)0x4;

 enum _Openmode
  { // constants for file opening options
  _Openmask = 0xff};

 static const _Openmode in = (_Openmode)0x01;
 static const _Openmode out = (_Openmode)0x02;
 static const _Openmode ate = (_Openmode)0x04;
 static const _Openmode app = (_Openmode)0x08;
 static const _Openmode trunc = (_Openmode)0x10;
 static const _Openmode _Nocreate = (_Openmode)0x20;
 static const _Openmode _Noreplace = (_Openmode)0x40;
 static const _Openmode binary = (_Openmode)0x80;

 enum _Seekdir
  { // constants for file positioning options
  _Seekbeg,
  _Seekcur,
  _Seekend
  };

 static const _Seekdir beg = _Seekbeg;
 static const _Seekdir cur = _Seekcur;
 static const _Seekdir end = _Seekend;

 enum
  { // constant for default file opening protection
  _Openprot = 0666};
 };

template<class _Dummy>
 const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::skipws;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::unitbuf;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::uppercase;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::showbase;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::showpoint;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::showpos;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::left;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::right;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::internal;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::dec;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::oct;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::hex;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::scientific;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::fixed;

template<class _Dummy>
 const typename _Iosb<_Dummy>::_Fmtflags
  _Iosb<_Dummy>::hexfloat; // added with TR1 (not in C++0X)

template<class _Dummy>
 const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::boolalpha;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::_Stdio;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::adjustfield;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::basefield;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Fmtflags _Iosb<_Dummy>::floatfield;

template<class _Dummy>
 const typename _Iosb<_Dummy>::_Iostate _Iosb<_Dummy>::goodbit;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Iostate _Iosb<_Dummy>::eofbit;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Iostate _Iosb<_Dummy>::failbit;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Iostate _Iosb<_Dummy>::badbit;

template<class _Dummy>
 const typename _Iosb<_Dummy>::_Openmode _Iosb<_Dummy>::in;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Openmode _Iosb<_Dummy>::out;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Openmode _Iosb<_Dummy>::ate;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Openmode _Iosb<_Dummy>::app;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Openmode _Iosb<_Dummy>::trunc;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Openmode _Iosb<_Dummy>::_Nocreate;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Openmode _Iosb<_Dummy>::_Noreplace;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Openmode _Iosb<_Dummy>::binary;

template<class _Dummy>
 const typename _Iosb<_Dummy>::_Seekdir _Iosb<_Dummy>::beg;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Seekdir _Iosb<_Dummy>::cur;
template<class _Dummy>
 const typename _Iosb<_Dummy>::_Seekdir _Iosb<_Dummy>::end;

  // CLASS ios_base
class ios_base
 : public _Iosb<int>
 { // base class for ios
public:
 typedef _Fmtflags fmtflags;
 typedef _Iostate iostate;
 typedef _Openmode openmode;
 typedef _Seekdir seekdir;

 typedef ::std:: streamoff streamoff;
 typedef ::std:: streampos streampos;

 enum event
  { // constants for ios events
  erase_event, imbue_event, copyfmt_event};

 typedef void ( *event_callback)(event, ios_base&, int);
 typedef unsigned int io_state, open_mode, seek_dir;

   // CLASS failure
 class failure


  : public system_error
  { // base of all iostreams exceptions
 public:
  explicit failure(const string &_Message,
   const error_code& _Errcode = make_error_code(io_errc::stream))
   : system_error(_Errcode, _Message)
   { // construct with message
   }

  explicit failure(const char *_Message,
   const error_code& _Errcode = make_error_code(io_errc::stream))
   : system_error(_Errcode, _Message)
   { // construct with message
   }
  };

   // CLASS Init
 class Init
  { // controller for standard-stream initialization
 public:
         Init(); // initialize standard streams on first construction

         ~Init() ; // flush standard streams on last destruction

 private:
  static int _Init_cnt; // net constructions - destructions
  };

        operator void *() const
  { // test if any stream operation has failed
  return (fail() ? 0 : (void *)this);
  }

                operator bool() const
  { // test if no stream operation has failed
  return (!fail());
  }

 bool operator!() const
  { // test if any stream operation has failed
  return (fail());
  }

 void clear(iostate _State, bool _Reraise)
  { // set state, possibly reraise exception
  _Mystate = (iostate)(_State & _Statmask);
  if ((_Mystate & _Except) == 0)
   ;
  else if (_Reraise)
   throw;
  else if (_Mystate & _Except & badbit)
   throw failure("ios_base::badbit set");
  else if (_Mystate & _Except & failbit)
   throw failure("ios_base::failbit set");
  else
   throw failure("ios_base::eofbit set");
  }

 void clear(iostate _State = goodbit)
  { // set state to argument
  clear(_State, false);
  }

 void clear(io_state _State)
  { // set state to argument, old-style
  clear((iostate)_State);
  }

 iostate rdstate() const
  { // return stream state
  return (_Mystate);
  }

 void setstate(iostate _State, bool _Exreraise)
  { // merge in state argument, possibly reraise exception
  if (_State != goodbit)
   clear((iostate)((int)rdstate() | (int)_State), _Exreraise);
  }

 void setstate(iostate _State)
  { // merge in state argument
  if (_State != goodbit)
   clear((iostate)((int)rdstate() | (int)_State), false);
  }

 void setstate(io_state _State)
  { // merge in state argument, old style
  setstate((iostate)_State);
  }

 bool good() const
  { // test if no state bits are set
  return (rdstate() == goodbit);
  }

 bool eof() const
  { // test if eofbit is set in stream state
  return ((int)rdstate() & (int)eofbit);
  }

 bool fail() const
  { // test if badbit or failbit is set in stream state
  return (((int)rdstate()
   & ((int)badbit | (int)failbit)) != 0);
  }

 bool bad() const
  { // test if badbit is set in stream state
  return (((int)rdstate() & (int)badbit) != 0);
  }

 iostate exceptions() const
  { // return exception mask
  return (_Except);
  }

 void exceptions(iostate _Newexcept)
  { // set exception mask to argument
  _Except = (iostate)((int)_Newexcept & (int)_Statmask);
  clear(_Mystate);
  }

 void exceptions(io_state _State)
  { // set exception mask to argument, old style
  exceptions((iostate)_State);
  }

 fmtflags flags() const
  { // return format flags
  return (_Fmtfl);
  }

 fmtflags flags(fmtflags _Newfmtflags)
  { // set format flags to argument
  fmtflags _Oldfmtflags = _Fmtfl;
  _Fmtfl = (fmtflags)((int)_Newfmtflags & (int)_Fmtmask);
  return (_Oldfmtflags);
  }

 fmtflags setf(fmtflags _Newfmtflags)
  { // merge in format flags argument
  ios_base::fmtflags _Oldfmtflags = _Fmtfl;
  _Fmtfl = (fmtflags)((int)_Fmtfl
   | ((int)_Newfmtflags & (int)_Fmtmask));
  return (_Oldfmtflags);
  }

 fmtflags setf(fmtflags _Newfmtflags, fmtflags _Mask)
  { // merge in format flags argument under mask argument
  ios_base::fmtflags _Oldfmtflags = _Fmtfl;
  _Fmtfl = (fmtflags)(((int)_Fmtfl & (int)~_Mask)
   | ((int)_Newfmtflags & (int)_Mask & (int)_Fmtmask));
  return (_Oldfmtflags);
  }

 void unsetf(fmtflags _Mask)
  { // clear format flags under mask argument
  _Fmtfl = (fmtflags)((int)_Fmtfl & (int)~_Mask);
  }

 streamsize precision() const
  { // return precision
  return (_Prec);
  }

 streamsize precision(streamsize _Newprecision)
  { // set precision to argument
  streamsize _Oldprecision = _Prec;
  _Prec = _Newprecision;
  return (_Oldprecision);
  }

 streamsize width() const
  { // return width
  return (_Wide);
  }

 streamsize width(streamsize _Newwidth)
  { // set width to argument
  streamsize _Oldwidth = _Wide;
  _Wide = _Newwidth;
  return (_Oldwidth);
  }

 locale getloc() const
  { // get locale
  return (*_Ploc);
  }

 locale imbue(const locale& _Loc)
  { // set locale to argument
  locale _Oldlocale = *_Ploc;
  *_Ploc = _Loc;
  _Callfns(imbue_event);
  return (_Oldlocale);
  }

 static int xalloc()
  { // allocate new iword/pword index
  { // lock thread to ensure atomicity
   return (_Index++);
  }
  }

 long& iword(int _Idx)
  { // return reference to long element
  return (_Findarr(_Idx)._Lo);
  }

 void *& pword(int _Idx)
  { // return reference to pointer element
  return (_Findarr(_Idx)._Vp);
  }

 void register_callback(event_callback _Pfn,
  int _Idx)
  { // register event handler
  _Calls = new _Fnarray(_Idx, _Pfn, _Calls);
  }

 ios_base& copyfmt(const ios_base& _Other)
  { // copy format stuff
  if (this != &_Other)
   { // copy all but _Mystate
   _Tidy();
   *_Ploc = *_Other._Ploc;
   _Fmtfl = _Other._Fmtfl;
   _Prec = _Other._Prec;
   _Wide = _Other._Wide;
   _Iosarray *_Ptr = _Other._Arr;

   for (_Arr = 0; _Ptr != 0; _Ptr = _Ptr->_Next)
    if (_Ptr->_Lo != 0 || _Ptr->_Vp != 0)
     { // copy over nonzero array values
     iword(_Ptr->_Index) = _Ptr->_Lo;
     pword(_Ptr->_Index) = _Ptr->_Vp;
     }

   for (_Fnarray *_Pfa = _Other._Calls; _Pfa != 0;
    _Pfa = _Pfa->_Next)
    register_callback(_Pfa->_Pfn, _Pfa->_Index);

   _Callfns(copyfmt_event); // call callbacks
   exceptions(_Other._Except); // cause any throw at end
   }
  return (*this);
  }

 static bool sync_with_stdio(bool _Newsync = true)
  { // set C/C++ synchronization flag from argument
  { // lock thread to ensure atomicity
   const bool _Oldsync = _Sync;
   _Sync = _Newsync;
   return (_Oldsync);
  }
  }

 void swap(ios_base& _Right)
  { // swap with _Right
  if (this != &_Right)
   { // different, do the move
   ::std:: swap(_Mystate, _Right._Mystate);
   ::std:: swap(_Except, _Right._Except);
   ::std:: swap(_Fmtfl, _Right._Fmtfl);
   ::std:: swap(_Prec, _Right._Prec);
   ::std:: swap(_Wide, _Right._Wide);

   ::std:: swap(_Arr, _Right._Arr);
   ::std:: swap(_Calls, _Right._Calls);
   ::std:: swap(_Ploc, _Right._Ploc);
   }
  }

 virtual ~ios_base() ; // destroy the object

 static void _Addstd(ios_base *); // add standard stream

 size_t _Stdstr; // if > 0 index of standard stream to suppress destruction

protected:
        ios_base()
  { // default constructor
  }

 void _Init()
  { // initialize a new ios_base
  _Ploc = 0;
  _Stdstr = 0;
  _Except = goodbit;
  _Fmtfl = (fmtflags)(skipws | dec);
  _Prec = 6;
  _Wide = 0;
  _Arr = 0;
  _Calls = 0;
  clear(goodbit);
  _Ploc = new locale;
  }

private:
   // STRUCT _Iosarray
 struct _Iosarray
  { // list element for open-ended sparse array of longs/pointers
 public:
         _Iosarray(int _Idx, _Iosarray *_Link)
   : _Next(_Link), _Index(_Idx), _Lo(0), _Vp(0)
   { // construct node for index _Idx and link it in
   }

  _Iosarray *_Next; // pointer to next node
  int _Index; // index of this node
  long _Lo; // stored long value
  void *_Vp; // stored pointer value
  };

   // STRUCT _Fnarray
 struct _Fnarray
  { // list element for open-ended sparse array of event handlers
         _Fnarray(int _Idx, event_callback _Pnew, _Fnarray *_Link)
   : _Next(_Link), _Index(_Idx), _Pfn(_Pnew)
   { // construct node for index _Idx and link it in
   }

  _Fnarray *_Next; // pointer to next node
  int _Index; // index of this node
  event_callback _Pfn; // pointer to event handler
  };

 void _Callfns(event _Ev)
  { // call all event handlers, reporting event
  for (_Fnarray *_Pfa = _Calls; _Pfa != 0; _Pfa = _Pfa->_Next)
   (*_Pfa->_Pfn)(_Ev, *this, _Pfa->_Index);
  }

 _Iosarray& _Findarr(int _Idx)
  { // locate or make a variable array element
  _Iosarray *_Ptr1, *_Ptr2;

  for (_Ptr1 = _Arr, _Ptr2 = 0; _Ptr1 != 0; _Ptr1 = _Ptr1->_Next)
   if (_Ptr1->_Index == _Idx)
    return (*_Ptr1); // found element, return it
   else if (_Ptr2 == 0 && _Ptr1->_Lo == 0 && _Ptr1->_Vp == 0)
    _Ptr2 = _Ptr1; // found recycling candidate

  if (_Ptr2 != 0)
   { // recycle existing element
   _Ptr2->_Index = _Idx;
   return (*_Ptr2);
   }

  _Arr = new _Iosarray(_Idx, _Arr); // make a new element
  return (*_Arr);
  }

 void _Tidy()
  { // discard storage for an ios_base
  _Callfns(erase_event);
  _Iosarray *_Ptr1, *_Ptr2;

  for (_Ptr1 = _Arr; _Ptr1 != 0; _Ptr1 = _Ptr2)
   { // delete array element
   _Ptr2 = _Ptr1->_Next;
   delete _Ptr1;
   }
  _Arr = 0;

  _Fnarray *_Pfa1, *_Pfa2;
  for (_Pfa1 = _Calls; _Pfa1 != 0; _Pfa1 = _Pfa2)
   { // delete callback element
   _Pfa2 = _Pfa1->_Next;
   delete _Pfa1;
   }
  _Calls = 0;
  }

 iostate _Mystate; // stream state
 iostate _Except; // exception mask
 fmtflags _Fmtfl; // format flags
 streamsize _Prec; // field precision
 streamsize _Wide; // field width
 _Iosarray *_Arr; // pointer to first node of long/pointer array
 _Fnarray *_Calls; // pointer to first node of call list
 locale *_Ploc; // pointer to locale

 static int _Index; // source of unique indexes for long/pointer array
 static bool _Sync; // C/C++ synchronization flag (ignored)







 ios_base(const ios_base&); // not defined
 ios_base& operator=(const ios_base&); // not defined

 };

inline ios_base::_Fmtflags& operator&=(ios_base::_Fmtflags& _Left, ios_base::_Fmtflags _Right) { /* return _Left &= _Right */ _Left = (ios_base::_Fmtflags)((int)_Left & (int)_Right); return (_Left); } inline ios_base::_Fmtflags& operator|=(ios_base::_Fmtflags& _Left, ios_base::_Fmtflags _Right) { /* return _Left |= _Right */ _Left = (ios_base::_Fmtflags)((int)_Left | (int)_Right); return (_Left); } inline ios_base::_Fmtflags& operator^=(ios_base::_Fmtflags& _Left, ios_base::_Fmtflags _Right) { /* return _Left ^= _Right */ _Left = (ios_base::_Fmtflags)((int)_Left ^ (int)_Right); return (_Left); } constexpr inline ios_base::_Fmtflags operator&(ios_base::_Fmtflags _Left, ios_base::_Fmtflags _Right) { /* return _Left & _Right */ return ((ios_base::_Fmtflags)((int)_Left & (int)_Right)); } constexpr inline ios_base::_Fmtflags operator|(ios_base::_Fmtflags _Left, ios_base::_Fmtflags _Right) { /* return _Left | _Right */ return ((ios_base::_Fmtflags)((int)_Left | (int)_Right)); } constexpr inline ios_base::_Fmtflags operator^(ios_base::_Fmtflags _Left, ios_base::_Fmtflags _Right) { /* return _Left ^ _Right */ return ((ios_base::_Fmtflags)((int)_Left ^ (int)_Right)); } constexpr inline ios_base::_Fmtflags operator~(ios_base::_Fmtflags _Left) { /* return ~_Left */ return ((ios_base::_Fmtflags)~(int)_Left); }
inline ios_base::_Iostate& operator&=(ios_base::_Iostate& _Left, ios_base::_Iostate _Right) { /* return _Left &= _Right */ _Left = (ios_base::_Iostate)((int)_Left & (int)_Right); return (_Left); } inline ios_base::_Iostate& operator|=(ios_base::_Iostate& _Left, ios_base::_Iostate _Right) { /* return _Left |= _Right */ _Left = (ios_base::_Iostate)((int)_Left | (int)_Right); return (_Left); } inline ios_base::_Iostate& operator^=(ios_base::_Iostate& _Left, ios_base::_Iostate _Right) { /* return _Left ^= _Right */ _Left = (ios_base::_Iostate)((int)_Left ^ (int)_Right); return (_Left); } constexpr inline ios_base::_Iostate operator&(ios_base::_Iostate _Left, ios_base::_Iostate _Right) { /* return _Left & _Right */ return ((ios_base::_Iostate)((int)_Left & (int)_Right)); } constexpr inline ios_base::_Iostate operator|(ios_base::_Iostate _Left, ios_base::_Iostate _Right) { /* return _Left | _Right */ return ((ios_base::_Iostate)((int)_Left | (int)_Right)); } constexpr inline ios_base::_Iostate operator^(ios_base::_Iostate _Left, ios_base::_Iostate _Right) { /* return _Left ^ _Right */ return ((ios_base::_Iostate)((int)_Left ^ (int)_Right)); } constexpr inline ios_base::_Iostate operator~(ios_base::_Iostate _Left) { /* return ~_Left */ return ((ios_base::_Iostate)~(int)_Left); }
inline ios_base::_Openmode& operator&=(ios_base::_Openmode& _Left, ios_base::_Openmode _Right) { /* return _Left &= _Right */ _Left = (ios_base::_Openmode)((int)_Left & (int)_Right); return (_Left); } inline ios_base::_Openmode& operator|=(ios_base::_Openmode& _Left, ios_base::_Openmode _Right) { /* return _Left |= _Right */ _Left = (ios_base::_Openmode)((int)_Left | (int)_Right); return (_Left); } inline ios_base::_Openmode& operator^=(ios_base::_Openmode& _Left, ios_base::_Openmode _Right) { /* return _Left ^= _Right */ _Left = (ios_base::_Openmode)((int)_Left ^ (int)_Right); return (_Left); } constexpr inline ios_base::_Openmode operator&(ios_base::_Openmode _Left, ios_base::_Openmode _Right) { /* return _Left & _Right */ return ((ios_base::_Openmode)((int)_Left & (int)_Right)); } constexpr inline ios_base::_Openmode operator|(ios_base::_Openmode _Left, ios_base::_Openmode _Right) { /* return _Left | _Right */ return ((ios_base::_Openmode)((int)_Left | (int)_Right)); } constexpr inline ios_base::_Openmode operator^(ios_base::_Openmode _Left, ios_base::_Openmode _Right) { /* return _Left ^ _Right */ return ((ios_base::_Openmode)((int)_Left ^ (int)_Right)); } constexpr inline ios_base::_Openmode operator~(ios_base::_Openmode _Left) { /* return ~_Left */ return ((ios_base::_Openmode)~(int)_Left); }
inline ios_base::_Seekdir& operator&=(ios_base::_Seekdir& _Left, ios_base::_Seekdir _Right) { /* return _Left &= _Right */ _Left = (ios_base::_Seekdir)((int)_Left & (int)_Right); return (_Left); } inline ios_base::_Seekdir& operator|=(ios_base::_Seekdir& _Left, ios_base::_Seekdir _Right) { /* return _Left |= _Right */ _Left = (ios_base::_Seekdir)((int)_Left | (int)_Right); return (_Left); } inline ios_base::_Seekdir& operator^=(ios_base::_Seekdir& _Left, ios_base::_Seekdir _Right) { /* return _Left ^= _Right */ _Left = (ios_base::_Seekdir)((int)_Left ^ (int)_Right); return (_Left); } constexpr inline ios_base::_Seekdir operator&(ios_base::_Seekdir _Left, ios_base::_Seekdir _Right) { /* return _Left & _Right */ return ((ios_base::_Seekdir)((int)_Left & (int)_Right)); } constexpr inline ios_base::_Seekdir operator|(ios_base::_Seekdir _Left, ios_base::_Seekdir _Right) { /* return _Left | _Right */ return ((ios_base::_Seekdir)((int)_Left | (int)_Right)); } constexpr inline ios_base::_Seekdir operator^(ios_base::_Seekdir _Left, ios_base::_Seekdir _Right) { /* return _Left ^ _Right */ return ((ios_base::_Seekdir)((int)_Left ^ (int)_Right)); } constexpr inline ios_base::_Seekdir operator~(ios_base::_Seekdir _Left) { /* return ~_Left */ return ((ios_base::_Seekdir)~(int)_Left); }
}


/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */


namespace std {
  // TEMPLATE CLASS basic_streambuf
template<class _Elem,
 class _Traits>
 class basic_streambuf
 { // control read/write buffers
 typedef basic_streambuf<_Elem, _Traits> _Myt;

protected:
        basic_streambuf()
  : _Plocale(new locale)
  { // construct with no buffers
  _Init();
  }

        basic_streambuf(_Uninitialized)
  { // construct uninitialized
  }


        basic_streambuf(const _Myt& _Right)
  : _Plocale(new locale(_Right.getloc()))
  { // construct by copying _Right
  _Init();
  setp(_Right.pbase(), _Right.pptr(), _Right.epptr());
  setg(_Right.eback(), _Right.gptr(), _Right.egptr());
  }

 _Myt& operator=(const _Myt& _Right)
  { // assign from _Right
  if (this != &_Right)
   { // different, worth copying
   setp(_Right.pbase(), _Right.pptr(), _Right.epptr());
   setg(_Right.eback(), _Right.gptr(), _Right.egptr());
   pubimbue(_Right.getloc());
   }
  return (*this);
  }

 void swap(_Myt& _Right)
  { // swap with _Right
  if (this != &_Right)
   { // different, worth swapping
   _Elem *_Pfirst0 = pbase();
   _Elem *_Pnext0 = pptr();
   _Elem *_Pend = epptr();
   _Elem *_Gfirst0 = eback();
   _Elem *_Gnext0 = gptr();
   _Elem *_Gend = egptr();

   setp(_Right.pbase(), _Right.pptr(), _Right.epptr());
   _Right.setp(_Pfirst0, _Pnext0, _Pend);

   setg(_Right.eback(), _Right.gptr(), _Right.egptr());
   _Right.setg(_Gfirst0, _Gnext0, _Gend);

   ::std:: swap(_Plocale, _Right._Plocale);
   }
  }
public:
 typedef _Elem char_type;
 typedef _Traits traits_type;

 virtual ~basic_streambuf()
  { // destroy the object
  delete _Plocale;
  }

 typedef typename _Traits::int_type int_type;
 typedef typename _Traits::pos_type pos_type;
 typedef typename _Traits::off_type off_type;

 pos_type pubseekoff(off_type _Off,
  ios_base::seekdir _Way,
  ios_base::openmode _Mode = ios_base::in | ios_base::out)
  { // change position by _Off, according to _Way, _Mode
  return (seekoff(_Off, _Way, _Mode));
  }

 pos_type pubseekoff(off_type _Off,
  ios_base::seek_dir _Way,
  ios_base::open_mode _Mode)
  { // change position by _Off, according to _Way, _Mode (old style)
  return (pubseekoff(_Off, (ios_base::seekdir)_Way,
   (ios_base::openmode)_Mode));
  }

 pos_type pubseekpos(pos_type _Pos,
  ios_base::openmode _Mode = ios_base::in | ios_base::out)
  { // change position to _Pos, according to _Mode
  return (seekpos(_Pos, _Mode));
  }

 pos_type pubseekpos(pos_type _Pos,
  ios_base::open_mode _Mode)
  { // change position to _Pos, according to _Mode (old style)
  return (seekpos(_Pos, (ios_base::openmode)_Mode));
  }

 _Myt * pubsetbuf(_Elem *_Buffer,
  streamsize _Count)
  { // offer _Buffer to external agent
  return (setbuf(_Buffer, _Count));
  }

 locale pubimbue(const locale &_Newlocale)
  { // set locale to argument
  locale _Oldlocale = *_Plocale;
  imbue(_Newlocale);
  *_Plocale = _Newlocale;
  return (_Oldlocale);
  }

 locale getloc() const
  { // get locale
  return (*_Plocale);
  }

 streamsize in_avail()
  { // return count of buffered input characters
  streamsize _Res = _Gnavail();
  return (0 < _Res ? _Res : showmanyc());
  }

 int pubsync()
  { // synchronize with external agent
  return (sync());
  }

 int_type sbumpc()
  { // get a character and point past it
  return (0 < _Gnavail()
   ? _Traits::to_int_type(*_Gninc()) : uflow());
  }

 int_type sgetc()
  { // get a character and don't point past it
  return (0 < _Gnavail()
   ? _Traits::to_int_type(*gptr()) : underflow());
  }

 streamsize sgetn(_Elem *_Ptr,
  streamsize _Count)
  { // get up to _Count characters into array beginning at _Ptr
  return (xsgetn(_Ptr, _Count));
  }

 int_type snextc()
  { // point to next character and return it
  return (1 < _Gnavail()
   ? _Traits::to_int_type(*_Gnpreinc())
   : _Traits::eq_int_type(_Traits::eof(), sbumpc())
    ? _Traits::eof() : sgetc());
  }

 int_type sputbackc(_Elem _Ch)
  { // put back _Ch
  return (gptr() != 0 && eback() < gptr()
   && _Traits::eq(_Ch, gptr()[-1])
   ? _Traits::to_int_type(*_Gndec())
   : pbackfail(_Traits::to_int_type(_Ch)));
  }

 void stossc()
  { // point past a character
  if (0 < _Gnavail())
   _Gninc();
  else
   uflow();
  }

 int_type sungetc()
  { // back up one position
  return (gptr() != 0 && eback() < gptr()
   ? _Traits::to_int_type(*_Gndec()) : pbackfail());
  }

 int_type sputc(_Elem _Ch)
  { // put a character
  return (0 < _Pnavail()
   ? _Traits::to_int_type(*_Pninc() = _Ch)
   : overflow(_Traits::to_int_type(_Ch)));
  }

 streamsize sputn(const _Elem *_Ptr,
  streamsize _Count)
  { // put _Count characters from array beginning at _Ptr
  return (xsputn(_Ptr, _Count));
  }

 virtual void _Lock()
  { // set the thread lock (overridden by basic_filebuf)
  }

 virtual void _Unlock()
  { // clear the thread lock (overridden by basic_filebuf)
  }

protected:
 _Elem * eback() const
  { // return beginning of read buffer
  return (*_IGfirst);
  }

 _Elem * gptr() const
  { // return current position in read buffer
  return (*_IGnext);
  }

 _Elem * pbase() const
  { // return beginning of write buffer
  return (*_IPfirst);
  }

 _Elem * pptr() const
  { // return current position in write buffer
  return (*_IPnext);
  }


 _Elem * egptr() const
  { // return end of read buffer
  return (*_IGnext + *_IGcount);
  }

 void gbump(int _Off)
  { // alter current position in read buffer by _Off
  *_IGcount -= _Off;
  *_IGnext += _Off;
  }

 void setg(_Elem *_First, _Elem *_Next, _Elem *_Last)
  { // set pointers for read buffer
  *_IGfirst = _First;
  *_IGnext = _Next;
  *_IGcount = (int)(_Last - _Next);
  }

 _Elem * epptr() const
  { // return end of write buffer
  return (*_IPnext + *_IPcount);
  }

 _Elem * _Gndec()
  { // decrement current position in read buffer
  ++*_IGcount;
  return (--*_IGnext);
  }

 _Elem * _Gninc()
  { // increment current position in read buffer
  --*_IGcount;
  return ((*_IGnext)++);
  }

 _Elem * _Gnpreinc()
  { // preincrement current position in read buffer
  --*_IGcount;
  return (++(*_IGnext));
  }

 streamsize _Gnavail() const
  { // count number of available elements in read buffer
  return (*_IGnext != 0 ? *_IGcount : 0);
  }

 void pbump(int _Off)
  { // alter current position in write buffer by _Off
  *_IPcount -= _Off;
  *_IPnext += _Off;
  }

 void setp(_Elem *_First, _Elem *_Last)
  { // set pointers for write buffer
  *_IPfirst = _First;
  *_IPnext = _First;
  *_IPcount = (int)(_Last - _First);
  }

 void setp(_Elem *_First, _Elem *_Next, _Elem *_Last)
  { // set pointers for write buffer, extended version
  *_IPfirst = _First;
  *_IPnext = _Next;
  *_IPcount = (int)(_Last - _Next);
  }

 _Elem * _Pninc()
  { // increment current position in write buffer
  --*_IPcount;
  return ((*_IPnext)++);
  }

 streamsize _Pnavail() const
  { // count number of available positions in write buffer
  return (*_IPnext != 0 ? *_IPcount : 0);
  }

 void _Init()
  { // initialize buffer parameters for no buffers
  _IGfirst = &_Gfirst;
  _IPfirst = &_Pfirst;
  _IGnext = &_Gnext;
  _IPnext = &_Pnext;
  _IGcount = &_Gcount;
  _IPcount = &_Pcount;
  setp(0, 0);
  setg(0, 0, 0);
  }

 void _Init(_Elem **_Gf, _Elem **_Gn, int *_Gc,
  _Elem **_Pf, _Elem **_Pn, int *_Pc)
  { // initialize buffer parameters as specified
  _IGfirst = _Gf;
  _IPfirst = _Pf;
  _IGnext = _Gn;
  _IPnext = _Pn;
  _IGcount = _Gc;
  _IPcount = _Pc;
  }
public:
 int allocate()
  { // try to reserve a buffer
  return (0); // always fail
  }

 _Elem * base() const
  { // return beginning of buffer
  return (eback());
  }

 int blen() const
  { // return length of buffer
  return (egptr() == 0 ? 0 : (int)(egptr() - eback()));
  }

 int in_avail() const
  { // return length of input sequence
  return (egptr() == 0 ? 0 : (int)(egptr() - gptr()));
  }

 int out_waiting() const
  { // return length of output sequence
  return (epptr() == 0 ? 0 : (int)(epptr() - pptr()));
  }

 void setb(char *, char *, int)
  { // set buffer as specified -- DUMMY
  }


 virtual int_type overflow(int_type = _Traits::eof())
  { // put a character to stream (always fail)
  return (_Traits::eof());
  }

 virtual int_type pbackfail(int_type = _Traits::eof())
  { // put a character back to stream (always fail)
  return (_Traits::eof());
  }

 virtual streamsize showmanyc()
  { // return count of input characters
  return (0);
  }

 virtual int_type underflow()
  { // get a character from stream, but don't point past it
  return (_Traits::eof());
  }

 virtual int_type uflow()
  { // get a character from stream, point past it
  return (_Traits::eq_int_type(_Traits::eof(), underflow())
   ? _Traits::eof() : _Traits::to_int_type(*_Gninc()));
  }

 virtual streamsize xsgetn(_Elem * _Ptr,
  streamsize _Count)
  { // get _Count characters from stream
  int_type _Meta;
  streamsize _Size, _Copied;

  for (_Copied = 0; 0 < _Count; )
   if (0 < (_Size = _Gnavail()))
    { // copy from read buffer
    if (_Count < _Size)
     _Size = _Count;
    _Traits::copy(_Ptr, gptr(), (size_t)_Size);
    _Ptr += _Size;
    _Copied += _Size;
    _Count -= _Size;
    gbump((int)_Size);
    }
   else if (_Traits::eq_int_type(_Traits::eof(), _Meta = uflow()))
    break; // end of file, quit
   else
    { // get a single character
    *_Ptr++ = _Traits::to_char_type(_Meta);
    ++_Copied;
    --_Count;
    }

  return (_Copied);
  }

 virtual streamsize xsputn(const _Elem *_Ptr,
  streamsize _Count)
  { // put _Count characters to stream
  streamsize _Size, _Copied;

  for (_Copied = 0; 0 < _Count; )
   if (0 < (_Size = _Pnavail()))
    { // copy to write buffer
    if (_Count < _Size)
     _Size = _Count;
    _Traits::copy(pptr(), _Ptr, (size_t)_Size);
    _Ptr += _Size;
    _Copied += _Size;
    _Count -= _Size;
    pbump((int)_Size);
    }
   else if (_Traits::eq_int_type(_Traits::eof(),
    overflow(_Traits::to_int_type(*_Ptr))))
    break; // single character put failed, quit
   else
    { // count character successfully put
    ++_Ptr;
    ++_Copied;
    --_Count;
    }

  return (_Copied);
  }

 virtual pos_type seekoff(off_type,
  ios_base::seekdir,
  ios_base::openmode = ios_base::in | ios_base::out)
  { // change position by offset, according to way and mode
  return (streampos(_BADOFF));
  }

 virtual pos_type seekpos(pos_type,
  ios_base::openmode = ios_base::in | ios_base::out)
  { // change to specified position, according to mode
  return (streampos(_BADOFF));
  }

 virtual _Myt * setbuf(_Elem *, streamsize)
  { // offer buffer to external agent (do nothing)
  return (this);
  }

 virtual int sync()
  { // synchronize with external agent (do nothing)
  return (0);
  }

 virtual void imbue(const locale&)
  { // set locale to argument (do nothing)
  }

private:
 _Elem *_Gfirst; // beginning of read buffer
 _Elem *_Pfirst; // beginning of write buffer
 _Elem **_IGfirst; // pointer to beginning of read buffer
 _Elem **_IPfirst; // pointer to beginning of write buffer
 _Elem *_Gnext; // current position in read buffer
 _Elem *_Pnext; // current position in write buffer
 _Elem **_IGnext; // pointer to current position in read buffer
 _Elem **_IPnext; // pointer to current position in write buffer


 int _Gcount; // length of read buffer
 int _Pcount; // length of write buffer
 int *_IGcount; // pointer to length of read buffer
 int *_IPcount; // pointer to length of write buffer
protected:
 locale *_Plocale; // pointer to imbued locale object
 };

  // TEMPLATE CLASS istreambuf_iterator
template<class _Elem,
 class _Traits>
 class istreambuf_iterator
  : public iterator<input_iterator_tag,
   _Elem, typename _Traits::off_type, const _Elem *, _Elem>
 { // wrap stream buffer as input iterator
 typedef istreambuf_iterator<_Elem, _Traits> _Myt;
public:
 typedef _Elem char_type;
 typedef _Traits traits_type;
 typedef basic_streambuf<_Elem, _Traits> streambuf_type;
 typedef basic_istream<_Elem, _Traits> istream_type;

 typedef typename traits_type::int_type int_type;
 typedef const _Elem *pointer;

            istreambuf_iterator(streambuf_type *_Sb = 0) throw ()
  : _Strbuf(_Sb), _Got(_Sb == 0), _Val()
  { // construct from stream buffer _Sb
  }

 istreambuf_iterator(istream_type& _Istr) throw ()
  : _Strbuf(_Istr.rdbuf()), _Got(_Istr.rdbuf() == 0)
  { // construct from stream buffer in istream _Istr
  }

 _Elem operator*() const
  { // return designated value
  if (!_Got)
   _Peek();






  return (_Val);
  }

 const _Elem *operator->() const
  { // return pointer to class object
  return (::std:: pointer_traits<pointer>::pointer_to(**this));
  }

 _Myt& operator++()
  { // preincrement





  _Inc();
  return (*this);
  }

 _Myt operator++(int)
  { // postincrement
  if (!_Got)
   _Peek();
  _Myt _Tmp = *this;
  ++*this;
  return (_Tmp);
  }

 bool equal(const _Myt& _Right) const
  { // test for equality
  if (!_Got)
   _Peek();
  if (!_Right._Got)
   _Right._Peek();
  return ((_Strbuf == 0 && _Right._Strbuf == 0)
   || (_Strbuf != 0 && _Right._Strbuf != 0));
  }

private:
 void _Inc()
  { // skip to next input element
  if (_Strbuf == 0
   || traits_type::eq_int_type(traits_type::eof(),
    _Strbuf->sbumpc()))
   _Strbuf = 0, _Got = true;
  else
   _Got = false;
  }

 _Elem _Peek() const
  { // peek at next input element
  int_type _Meta;
  if (_Strbuf == 0
   || traits_type::eq_int_type(traits_type::eof(),
    _Meta = _Strbuf->sgetc()))
   _Strbuf = 0;
  else
   _Val = traits_type::to_char_type(_Meta);
  _Got = true;
  return (_Val);
  }

 mutable streambuf_type *_Strbuf; // the wrapped stream buffer
 mutable bool _Got; // true if _Val is valid
 mutable _Elem _Val; // next element to deliver
 };

template<class _Elem,
 class _Traits>
 struct _Is_checked_helper<istreambuf_iterator<_Elem, _Traits> >
  : public true_type
 { // mark istreambuf_iterator as checked
 };

  // istreambuf_iterator TEMPLATE OPERATORS
template<class _Elem,
 class _Traits> inline
 bool operator==(
  const istreambuf_iterator<_Elem, _Traits>& _Left,
  const istreambuf_iterator<_Elem, _Traits>& _Right)
 { // test for istreambuf_iterator equality
 return (_Left.equal(_Right));
 }

template<class _Elem,
 class _Traits> inline
 bool operator!=(
  const istreambuf_iterator<_Elem, _Traits>& _Left,
  const istreambuf_iterator<_Elem, _Traits>& _Right)
 { // test for istreambuf_iterator inequality
 return (!(_Left == _Right));
 }

  // TEMPLATE CLASS ostreambuf_iterator
template<class _Elem,
 class _Traits>
 class ostreambuf_iterator
  : public _Outit
 { // wrap stream buffer as output iterator
 typedef ostreambuf_iterator<_Elem, _Traits> _Myt;
public:
 typedef _Elem char_type;
 typedef _Traits traits_type;
 typedef basic_streambuf<_Elem, _Traits> streambuf_type;
 typedef basic_ostream<_Elem, _Traits> ostream_type;

 ostreambuf_iterator(streambuf_type *_Sb) throw ()
  : _Failed(false), _Strbuf(_Sb)
  { // construct from stream buffer _Sb
  }

 ostreambuf_iterator(ostream_type& _Ostr) throw ()
  : _Failed(false), _Strbuf(_Ostr.rdbuf())
  { // construct from stream buffer in _Ostr
  }

 _Myt& operator=(_Elem _Right)
  { // store element and increment
  if (_Strbuf == 0
   || traits_type::eq_int_type(_Traits::eof(),
    _Strbuf->sputc(_Right)))
   _Failed = true;
  return (*this);
  }

 _Myt& operator*()
  { // pretend to get designated element
  return (*this);
  }

 _Myt& operator++()
  { // pretend to preincrement
  return (*this);
  }

 _Myt& operator++(int)
  { // pretend to postincrement
  return (*this);
  }

 bool failed() const throw ()
  { // return true if any stores failed
  return (_Failed);
  }

private:
 bool _Failed; // true if any stores have failed
 streambuf_type *_Strbuf; // the wrapped stream buffer
 };

template<class _Elem,
 class _Traits>
 struct _Is_checked_helper<ostreambuf_iterator<_Elem, _Traits> >
  : public true_type
 { // mark ostreambuf_iterator as checked
 };
}


/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */


  // TEXT-TO-NUMERIC CONVERSION FUNCTIONS
namespace std {
extern "C" { /* C has extern "C" linkage */
extern float _Stofx(const char *, char **,
 long, int *);
extern double _Stodx(const char *, char **,
 long, int *);
extern long double _Stoldx(const char *, char **,
 long, int *);
extern long _Stolx(const char *, char **,
 int, int *);
extern unsigned long _Stoulx(const char *, char **,
 int, int *);
extern long long _Stollx(const char *, char **,
 int, int *);
extern unsigned long long _Stoullx(const char *, char **,
 int, int *);
}
}

namespace std {


// TEMPLATE FUNCTION _Find_elem
template<class _Elem> inline
 size_t _Find_elem(_Elem *_Base, _Elem _Ch)
 { // lookup _Ch in NUL-terminated string _Base
 _Elem *_Ptr = _Base;
 for (; *_Ptr != (_Elem)0 && *_Ptr != _Ch; ++_Ptr)
  ;
 return ((size_t)(_Ptr - _Base));
 }

inline wchar_t *_Maklocwcs(const wchar_t *_Ptr)
 { // copy NTWCS to allocated storage
 size_t _Count = ::std:: wcslen(_Ptr) + 1;
 wchar_t *_Ptrdest = (wchar_t *)::std:: malloc(_Count * sizeof (wchar_t));
 if (!_Ptrdest)
  _Xbad_alloc();
 ::std:: wmemcpy(_Ptrdest, _Ptr, _Count);
 return (_Ptrdest);
 }

  // TEMPLATE CLASS numpunct
template<class _Elem>
 class numpunct
  : public locale::facet
 { // facet for defining numeric punctuation text
public:
 typedef basic_string<_Elem, char_traits<_Elem>, allocator<_Elem> >
  string_type;
 typedef _Elem char_type;

 static locale::id id; // unique facet id

 _Elem decimal_point() const
  { // return decimal point
  return (do_decimal_point());
  }

 _Elem thousands_sep() const
  { // return thousands separator
  return (do_thousands_sep());
  }

 string grouping() const
  { // return grouping string
  return (do_grouping());
  }

 string_type falsename() const
  { // return name for false
  return (do_falsename());
  }

 string_type truename() const
  { // return name for true
  return (do_truename());
  }

 explicit numpunct(size_t _Refs = 0)
  : locale::facet(_Refs)
  { // construct from current locale
  { _Locinfo _Lobj;
   _Init(_Lobj);
   if (_Kseparator == 0)
    _Kseparator = // NB: differs from "C" locale
     _Maklocchr(',', (_Elem *)0, _Lobj._Getcvt()) /* convert char to Elem */;
  }
  }

 numpunct(const _Locinfo& _Lobj, size_t _Refs = 0, bool _Isdef = false)
  : locale::facet(_Refs)
  { // construct from specified locale
  _Init(_Lobj, _Isdef);
  }

 static size_t _Getcat(const locale::facet **_Ppf = 0,
  const locale *_Ploc = 0)
  { // return locale category mask and construct standard facet
  if (_Ppf != 0 && *_Ppf == 0)
   *_Ppf = new numpunct<_Elem>(
    _Locinfo(_Ploc->c_str()), 0, true);
  return (3);
  }

protected:
 virtual ~numpunct()
  { // destroy the object
  _Tidy();
  }

 numpunct(const char *_Locname, size_t _Refs = 0, bool _Isdef = false)
  : locale::facet(_Refs)
  { // construct from specified locale
  { _Locinfo _Lobj(_Locname);
   _Init(_Lobj, _Isdef);
  }
  }

 template<class _Elem2>
  void _Getvals(_Elem2, const lconv *_Ptr, _Locinfo::_Cvtvec _Cvt)
  { // get values
  _Dp = _Maklocchr(_Ptr->decimal_point[0], (_Elem2 *)0, _Cvt) /* convert char to Elem */;
  _Kseparator = _Maklocchr(_Ptr->thousands_sep[0], (_Elem2 *)0, _Cvt) /* convert char to Elem */;
  }

 void _Init(const _Locinfo& _Lobj, bool _Isdef = false)
  { // initialize from _Lobj
  const lconv *_Ptr = _Lobj._Getlconv();
  _Locinfo::_Cvtvec _Cvt = _Lobj._Getcvt(); // conversion information

  _Grouping = 0;
  _Falsename = 0;
  _Truename = 0;

  try {
  _Grouping = _Maklocstr(_Isdef ? "" : _Ptr->grouping, (char *)0, _Lobj._Getcvt()) /* convert C string to Elem sequence */;

  _Falsename = _Maklocstr(_Lobj._Getfalse(), (_Elem *)0, _Cvt) /* convert C string to Elem sequence */;
  _Truename = _Maklocstr(_Lobj._Gettrue(), (_Elem *)0, _Cvt) /* convert C string to Elem sequence */;
  } catch (...) {
  _Tidy();
  throw;
  }

  if (_Isdef)
   { // apply defaults for required facets
//			_Grouping = _MAKLOCSTR(char, "", _Cvt);
   _Dp = _Maklocchr('.', (_Elem *)0, _Cvt) /* convert char to Elem */;
   _Kseparator = _Maklocchr(',', (_Elem *)0, _Cvt) /* convert char to Elem */;
   }
  else
   _Getvals((_Elem)0, _Ptr, _Cvt);
  }

 virtual _Elem do_decimal_point() const
  { // return decimal point
  return (_Dp);
  }

 virtual _Elem do_thousands_sep() const
  { // return thousands separator
  return (_Kseparator);
  }

 virtual string do_grouping() const
  { // return grouping string
  return (string(_Grouping));
  }

 virtual string_type do_falsename() const
  { // return name for false
  return (string_type(_Falsename));
  }

 virtual string_type do_truename() const
  { // return name for true
  return (string_type(_Truename));
  }

private:
 void _Tidy()
  { // free all storage
  delete[] _Grouping;
  delete[] _Falsename;
  delete[] _Truename;
 }

 const char *_Grouping; // grouping string, "" for "C" locale
 _Elem _Dp; // decimal point, '.' for "C" locale
 _Elem _Kseparator; // thousands separator, '\0' for "C" locale
 const _Elem *_Falsename; // name for false, "false" for "C" locale
 const _Elem *_Truename; // name for true, "true" for "C" locale
 };

  // TEMPLATE CLASS numpunct_byname
template<class _Elem>
 class numpunct_byname
  : public numpunct<_Elem>
 { // numpunct for named locale
public:
 explicit numpunct_byname(const char *_Locname, size_t _Refs = 0)
  : numpunct<_Elem>(_Locname, _Refs)
  { // construct for named locale
  }


 explicit numpunct_byname(const string& _Str, size_t _Refs = 0)
  : numpunct<_Elem>(_Str.c_str(), _Refs)
  { // construct for named locale
  }


protected:
 virtual ~numpunct_byname()
  { // destroy the object
  }
 };

  // STATIC numpunct::id OBJECT
template<class _Elem>
                         locale::id numpunct<_Elem>::id;

  // TEMPLATE CLASS num_get
template<class _Elem,
 class _InIt = istreambuf_iterator<_Elem, char_traits<_Elem> > >
 class num_get
  : public locale::facet
 { // facet for converting text to encoded numbers
public:
 typedef numpunct<_Elem> _Mypunct;
 typedef basic_string<_Elem, char_traits<_Elem>, allocator<_Elem> >
  _Mystr;

 static size_t _Getcat(const locale::facet **_Ppf = 0,
  const locale *_Ploc = 0)
  { // return locale category mask and construct standard facet
  if (_Ppf != 0 && *_Ppf == 0)
   *_Ppf = new num_get<_Elem, _InIt>(
    _Locinfo(_Ploc->c_str()));
  return (3);
  }

                         static locale::id id; // unique facet id

protected:
 virtual ~num_get()
  { // destroy the object
  }

 void _Init(const _Locinfo&)
  { // initialize from _Locinfo object
  }

public:
 explicit num_get(size_t _Refs = 0)
  : locale::facet(_Refs)
  { // construct from current locale
  { _Locinfo _Lobj;
   _Init(_Lobj);
  }
  }

        num_get(const _Locinfo& _Lobj, size_t _Refs = 0)
  : locale::facet(_Refs)
  { // construct from specified locale
  _Init(_Lobj);
  }

 typedef _Elem char_type;
 typedef _InIt iter_type;

 _InIt get(_InIt _First, _InIt _Last,
  ios_base& _Iosbase, ios_base::iostate& _State,
   bool& _Val) const
  { // get bool from [_First, _Last) into _Val
  return (do_get(_First, _Last, _Iosbase, _State, _Val));
  }

 _InIt get(_InIt _First, _InIt _Last,
  ios_base& _Iosbase, ios_base::iostate& _State,
   unsigned short& _Val) const
  { // get unsigned short from [_First, _Last) into _Val
  return (do_get(_First, _Last, _Iosbase, _State, _Val));
  }

 _InIt get(_InIt _First, _InIt _Last,
  ios_base& _Iosbase, ios_base::iostate& _State,
   unsigned int& _Val) const
  { // get unsigned int from [_First, _Last) into _Val
  return (do_get(_First, _Last, _Iosbase, _State, _Val));
  }

 _InIt get(_InIt _First, _InIt _Last,
  ios_base& _Iosbase, ios_base::iostate& _State,
   long& _Val) const
  { // get long from [_First, _Last) into _Val
  return (do_get(_First, _Last, _Iosbase, _State, _Val));
  }

 _InIt get(_InIt _First, _InIt _Last,
  ios_base& _Iosbase, ios_base::iostate& _State,
   unsigned long& _Val) const
  { // get unsigned long from [_First, _Last) into _Val
  return (do_get(_First, _Last, _Iosbase, _State, _Val));
  }


 _InIt get(_InIt _First, _InIt _Last,
  ios_base& _Iosbase, ios_base::iostate& _State,
   long long& _Val) const
  { // get long long from [_First, _Last) into _Val
  return (do_get(_First, _Last, _Iosbase, _State, _Val));
  }

 _InIt get(_InIt _First, _InIt _Last,
  ios_base& _Iosbase, ios_base::iostate& _State,
   unsigned long long& _Val) const
  { // get unsigned long long from [_First, _Last) into _Val
  return (do_get(_First, _Last, _Iosbase, _State, _Val));
  }


 _InIt get(_InIt _First, _InIt _Last,
  ios_base& _Iosbase, ios_base::iostate& _State,
   float& _Val) const
  { // get float from [_First, _Last) into _Val
  return (do_get(_First, _Last, _Iosbase, _State, _Val));
  }

 _InIt get(_InIt _First, _InIt _Last,
  ios_base& _Iosbase, ios_base::iostate& _State,
   double& _Val) const
  { // get double from [_First, _Last) into _Val
  return (do_get(_First, _Last, _Iosbase, _State, _Val));
  }

 _InIt get(_InIt _First, _InIt _Last,
  ios_base& _Iosbase, ios_base::iostate& _State,
   long double& _Val) const
  { // get long double from [_First, _Last) into _Val
  return (do_get(_First, _Last, _Iosbase, _State, _Val));
  }

 _InIt get(_InIt _First, _InIt _Last,
  ios_base& _Iosbase, ios_base::iostate& _State,
   void *& _Val) const
  { // get void pointer from [_First, _Last) into _Val
  return (do_get(_First, _Last, _Iosbase, _State, _Val));
  }

protected:
 virtual _InIt do_get(_InIt _First, _InIt _Last,
  ios_base& _Iosbase, ios_base::iostate& _State,
   bool& _Val) const
  { // get bool from [_First, _Last) into _Val
                             ;
  int _Ans = -1; // negative answer indicates failure

  if (_Iosbase.flags() & ios_base::boolalpha)
   { // get false name or true name
   typedef typename _Mystr::size_type _Mystrsize;
   const _Mypunct& _Punct_fac = use_facet< _Mypunct >(_Iosbase.getloc());
   _Mystr _Str((_Mystrsize)1, (char_type)0);
   _Str += _Punct_fac.falsename();
   _Str += (char_type)0;
   _Str += _Punct_fac.truename(); // construct "\0false\0true"
   _Ans = _Getloctxt(_First, _Last, (size_t)2, _Str.c_str());
   }
  else
   { // get zero or nonzero integer
   char _Ac[32], *_Ep;
   int _Errno = 0;
   const unsigned long _Ulo = ::std:: _Stoulx(_Ac, &_Ep,
    _Getifld(_Ac, _First, _Last, _Iosbase.flags(),
     _Iosbase.getloc()), &_Errno);
   if (_Ep != _Ac && _Errno == 0 && _Ulo <= 1)
    _Ans = _Ulo;
   }

  if (_First == _Last)
   _State |= ios_base::eofbit;
  if (_Ans < 0)
   _State |= ios_base::failbit;
  else
   _Val = _Ans != 0; // deliver value
  return (_First);
  }

 virtual _InIt do_get(_InIt _First, _InIt _Last,
  ios_base& _Iosbase, ios_base::iostate& _State,
   unsigned short& _Val) const
  { // get unsigned short from [_First, _Last) into _Val
                             ;
  char _Ac[32], *_Ep;
  int _Errno = 0;
  int _Base = _Getifld(_Ac, _First, _Last, _Iosbase.flags(),
   _Iosbase.getloc()); // gather field into _Ac
  char *_Ptr = _Ac[0] == '-' ? _Ac + 1 : _Ac; // point past any sign
  const unsigned long _Ans =
   ::std:: _Stoulx(_Ptr, &_Ep, _Base, &_Errno); // convert

  if (_First == _Last)
   _State |= ios_base::eofbit;
  if (_Ep == _Ptr || _Errno != 0 || 65535U /* maximum unsigned short value */ < _Ans)
   _State |= ios_base::failbit;
  else
   _Val = (unsigned short)(_Ac[0] == '-'
    ? 0 -_Ans : _Ans); // deliver value
  return (_First);
  }

 virtual _InIt do_get(_InIt _First, _InIt _Last,
  ios_base& _Iosbase, ios_base::iostate& _State,
   unsigned int& _Val) const
  { // get unsigned int from [_First, _Last) into _Val
                             ;
  char _Ac[32], *_Ep;
  int _Errno = 0;
  int _Base = _Getifld(_Ac, _First, _Last, _Iosbase.flags(),
   _Iosbase.getloc()); // gather field into _Ac
  char *_Ptr = _Ac[0] == '-' ? _Ac + 1 : _Ac; // point past any sign
  const unsigned long _Ans =
   ::std:: _Stoulx(_Ptr, &_Ep, _Base, &_Errno); // convert

  if (_First == _Last)
   _State |= ios_base::eofbit;
  if (_Ep == _Ptr || _Errno != 0 || 4294967295UL /* maximum unsigned long value */ /* maximum unsigned int value */ < _Ans)
   _State |= ios_base::failbit;
  else
   _Val = _Ac[0] == '-' ? 0 -_Ans : _Ans; // deliver value
  return (_First);
  }

 virtual _InIt do_get(_InIt _First, _InIt _Last,
  ios_base& _Iosbase, ios_base::iostate& _State,
   long& _Val) const
  { // get long from [_First, _Last) into _Val
                             ;
  char _Ac[32], *_Ep;
  int _Errno = 0;
  const long _Ans = ::std:: _Stolx(_Ac, &_Ep,
   _Getifld(_Ac, _First, _Last, _Iosbase.flags(),
    _Iosbase.getloc()), &_Errno); // gather field, convert

  if (_First == _Last)
   _State |= ios_base::eofbit;
  if (_Ep == _Ac || _Errno != 0)
   _State |= ios_base::failbit;
  else
   _Val = _Ans; // deliver value
  return (_First);
  }

 virtual _InIt do_get(_InIt _First, _InIt _Last,
  ios_base& _Iosbase, ios_base::iostate& _State,
   unsigned long& _Val) const
  { // get unsigned long from [_First, _Last) into _Val
                             ;
  char _Ac[32], *_Ep;
  int _Errno = 0;
  const unsigned long _Ans = ::std:: _Stoulx(_Ac, &_Ep,
   _Getifld(_Ac, _First, _Last, _Iosbase.flags(),
    _Iosbase.getloc()), &_Errno); // gather field, convert

  if (_First == _Last)
   _State |= ios_base::eofbit;
  if (_Ep == _Ac || _Errno != 0)
   _State |= ios_base::failbit;
  else
   _Val = _Ans; // deliver value
  return (_First);
  }


 virtual _InIt do_get(_InIt _First, _InIt _Last,
  ios_base& _Iosbase, ios_base::iostate& _State,
   long long& _Val) const
  { // get long long from [_First, _Last) into _Val
                             ;
  char _Ac[32], *_Ep;
  int _Errno = 0;
  const long long _Ans = ::std:: _Stollx(_Ac, &_Ep,
   _Getifld(_Ac, _First, _Last, _Iosbase.flags(),
    _Iosbase.getloc()), &_Errno); // gather field, convert

  if (_First == _Last)
   _State |= ios_base::eofbit;
  if (_Ep == _Ac || _Errno != 0)
   _State |= ios_base::failbit;
  else
   _Val = _Ans; // deliver value
  return (_First);
  }

 virtual _InIt do_get(_InIt _First, _InIt _Last,
  ios_base& _Iosbase, ios_base::iostate& _State,
   unsigned long long& _Val) const
  { // get unsigned long long from [_First, _Last) into _Val
                             ;
  char _Ac[32], *_Ep;
  int _Errno = 0;
  const unsigned long long _Ans = ::std:: _Stoullx(_Ac, &_Ep,
   _Getifld(_Ac, _First, _Last, _Iosbase.flags(),
    _Iosbase.getloc()), &_Errno); // gather field, convert

  if (_First == _Last)
   _State |= ios_base::eofbit;
  if (_Ep == _Ac || _Errno != 0)
   _State |= ios_base::failbit;
  else
   _Val = _Ans; // deliver value
  return (_First);
  }


 virtual _InIt do_get(_InIt _First, _InIt _Last,
  ios_base& _Iosbase, ios_base::iostate& _State,
   float& _Val) const
  { // get float from [_First, _Last) into _Val
                             ;
  char _Ac[8 /* for parsing numerics */ + 48 + 16], *_Ep;
  int _Errno = 0;
  int _Hexexp = 0;
  float _Ans = ::std:: _Stofx(_Ac, &_Ep,
   _Getffld(_Ac, _First, _Last,
    _Iosbase, &_Hexexp), &_Errno); // gather field, convert

  if (_Hexexp != 0)
   _Ans = ::std:: ldexpf(_Ans, 4 * _Hexexp);

  if (_First == _Last)
   _State |= ios_base::eofbit;
  if (_Ep == _Ac || _Errno != 0)
   _State |= ios_base::failbit;
  else
   _Val = _Ans; // deliver value
  return (_First);
  }

 virtual _InIt do_get(_InIt _First, _InIt _Last,
  ios_base& _Iosbase, ios_base::iostate& _State,
   double& _Val) const
  { // get double from [_First, _Last) into _Val
                             ;
  char _Ac[8 /* for parsing numerics */ + 48 + 16], *_Ep;
  int _Errno = 0;
  int _Hexexp = 0;
  double _Ans = ::std:: _Stodx(_Ac, &_Ep,
   _Getffld(_Ac, _First, _Last,
    _Iosbase, &_Hexexp), &_Errno); // gather field, convert

  if (_Hexexp != 0)
   _Ans = ::std:: ldexp(_Ans, 4 * _Hexexp);

  if (_First == _Last)
   _State |= ios_base::eofbit;
  if (_Ep == _Ac || _Errno != 0)
   _State |= ios_base::failbit;
  else
   _Val = _Ans; // deliver value
  return (_First);
  }

 virtual _InIt do_get(_InIt _First, _InIt _Last,
  ios_base& _Iosbase, ios_base::iostate& _State,
   long double& _Val) const
  { // get long double from [_First, _Last) into _Val
                             ;
  char _Ac[8 /* for parsing numerics */ + 48 + 16], *_Ep;
  int _Errno = 0;
  int _Hexexp = 0;
  long double _Ans = ::std:: _Stoldx(_Ac, &_Ep,
   _Getffld(_Ac, _First, _Last,
    _Iosbase, &_Hexexp), &_Errno); // gather field, convert

  if (_Hexexp != 0)
   _Ans = ::std:: ldexpl(_Ans, 4 * _Hexexp);

  if (_First == _Last)
   _State |= ios_base::eofbit;
  if (_Ep == _Ac || _Errno != 0)
   _State |= ios_base::failbit;
  else
   _Val = _Ans; // deliver value
  return (_First);
  }

 virtual _InIt do_get(_InIt _First, _InIt _Last,
  ios_base& _Iosbase, ios_base::iostate& _State,
   void *& _Val) const
  { // get void pointer from [_First, _Last) into _Val
                             ;
  char _Ac[32], *_Ep;
  int _Errno = 0;


  int _Base = _Getifld(_Ac, _First, _Last, ios_base::hex,
   _Iosbase.getloc()); // gather field
  const unsigned long long _Ans =
   (sizeof (void *) == sizeof (unsigned long))
    ? (unsigned long long)::std:: _Stoulx(_Ac, &_Ep, _Base, &_Errno)
    : ::std:: _Stoullx(_Ac, &_Ep, _Base, &_Errno);







  if (_First == _Last)
   _State |= ios_base::eofbit;
  if (_Ep == _Ac || _Errno != 0)
   _State |= ios_base::failbit;
  else
   _Val = (void *)((char *)0 + _Ans); // deliver value
  return (_First);
  }

private:
 int _Getifld(char *_Ac,
  _InIt& _First, _InIt& _Last, ios_base::fmtflags _Basefield,
   const locale& _Loc) const
  { // get integer field from [_First, _Last) into _Ac
  const _Mypunct& _Punct_fac = use_facet< _Mypunct >(_Loc);
  const string _Grouping = _Punct_fac.grouping();
  const _Elem _Kseparator = _Grouping.size() == 0
   ? (_Elem)0 : _Punct_fac.thousands_sep();

  enum {
   _NUMGET_SIGNOFF = 22,
   _NUMGET_XOFF = 24};
  static const char _Src[] = {"0123456789ABCDEFabcdef-+Xx"};
  _Elem _Atoms[sizeof (_Src)];
  const ctype<_Elem>& _Ctype_fac =
   use_facet< ctype<_Elem> >(_Loc);
  _Ctype_fac.widen(&_Src[0], &_Src[sizeof (_Src)], _Atoms);

  char *_Ptr = _Ac;

  if (_First == _Last)
   ; // empty field
  else if (*_First == _Atoms[_NUMGET_SIGNOFF + 1])
   *_Ptr++ = '+', ++_First; // gather plus sign
  else if (*_First == _Atoms[_NUMGET_SIGNOFF])
   *_Ptr++ = '-', ++_First; // gather minus sign

  _Basefield &= ios_base::basefield;
  int _Base = _Basefield == ios_base::oct ? 8
   : _Basefield == ios_base::hex ? 16
   : _Basefield == ios_base::_Fmtzero ? 0 : 10;

  bool _Seendigit = false; // seen a digit in input
  bool _Nonzero = false; // seen a nonzero digit in input

  if (_First != _Last && *_First == _Atoms[0])
   { // leading zero, look for 0x, 0X
   _Seendigit = true, ++_First;
   if (_First != _Last && (*_First == _Atoms[_NUMGET_XOFF + 1]
     || *_First == _Atoms[_NUMGET_XOFF])
    && (_Base == 0 || _Base == 16))
    _Base = 16, _Seendigit = false, ++_First;
   else if (_Base == 0)
    _Base = 8;
   }

  size_t _Dlen = _Base == 0 || _Base == 10 ? 10
   : _Base == 8 ? 8 : 16 + 6;
  string _Groups((size_t)1, (char)_Seendigit);
  size_t _Group = 0;

  for (char *const _Pe = &_Ac[32 - 1];
   _First != _Last; ++_First)
   { // look for digits and separators
   size_t _Idx = _Find_elem(_Atoms, *_First);
   if (_Idx < _Dlen)
    { // got a digit, characterize it and add to group size
    *_Ptr = _Src[_Idx];
    if ((_Nonzero || *_Ptr != '0') && _Ptr < _Pe)
     ++_Ptr, _Nonzero = true;
    _Seendigit = true;
    if (_Groups[_Group] != 127 /* maximum signed   char value */ /* maximum char value */)
     ++_Groups[_Group];
    }
   else if (_Groups[_Group] == '\0'
    || _Kseparator == (_Elem)0
    || *_First != _Kseparator)
    break; // not a group separator, done
   else
    { // add a new group to _Groups string
    _Groups.append((string::size_type)1, '\0');
    ++_Group;
    }
   }

  if (_Group == 0)
   ; // no thousands separators seen
  else if ('\0' < _Groups[_Group])
   ++_Group; // add trailing group to group count
  else
   _Seendigit = false; // trailing separator, fail

  for (const char *_Pg = &_Grouping[0]; _Seendigit && 0 < _Group; )
   if (*_Pg == 127 /* maximum signed   char value */ /* maximum char value */)
    break; // end of grouping constraints to check
   else if ((0 < --_Group && *_Pg != _Groups[_Group])
    || (0 == _Group && *_Pg < _Groups[_Group]))
    _Seendigit = false; // bad group size, fail
   else if ('\0' < _Pg[1])
    ++_Pg; // group size okay, advance to next test

  if (_Seendigit && !_Nonzero)
   *_Ptr++ = '0'; // zero field, replace stripped zero(s)
  else if (!_Seendigit)
   _Ptr = _Ac; // roll back pointer to indicate failure
  *_Ptr = '\0';
  return (_Base);
  }

 int _Getffld(char *_Ac,
  _InIt& _First, _InIt &_Last,
  ios_base& _Iosbase, int *_Phexexp) const
  { // get floating-point field from [_First, _Last) into _Ac
  if ((_Iosbase.flags() & ios_base::floatfield) == ios_base::hexfloat)
   return (_Getffldx(_Ac, _First, _Last,
    _Iosbase, _Phexexp)); // hex format

  const _Mypunct& _Punct_fac = use_facet< _Mypunct >(_Iosbase.getloc());
  const string _Grouping = _Punct_fac.grouping();
  char *_Ptr = _Ac;
  bool _Bad = false;
  bool _Sticky = false;

  enum {
   _NUMGET_SIGNOFF = 10,
   _NUMGET_EOFF = 12};
  static const char _Src[] = {"0123456789-+Ee"};
  _Elem _Atoms[sizeof (_Src)];
  const ctype<_Elem>& _Ctype_fac =
   use_facet< ctype<_Elem> >(_Iosbase.getloc());
  _Ctype_fac.widen(&_Src[0], &_Src[sizeof (_Src)], _Atoms);

  if (_First == _Last)
   ; // empty field
  else if (*_First == _Atoms[_NUMGET_SIGNOFF + 1])
   *_Ptr++ = '+', ++_First; // gather plus sign
  else if (*_First == _Atoms[_NUMGET_SIGNOFF])
   *_Ptr++ = '-', ++_First; // gather minus sign

  char *_Leading = _Ptr; // remember backstop
  *_Ptr++ = '0'; // backstop carries from sticky bit

  bool _Seendigit = false; // seen a digit in input
  int _Significant = 0; // number of significant digits
  int _Pten = 0; // power of 10 multiplier
  size_t _Idx;

  const char *_Pg = &_Grouping[0];
  if (*_Pg == 127 /* maximum signed   char value */ /* maximum char value */ || *_Pg <= '\0')
   for (; _First != _Last
    && (_Idx = _Find_elem(_Atoms, *_First)) < 10;
     _Seendigit = true, ++_First)
    if (48 <= _Significant)
     { // enough digits, scale by 10 and update _Sticky
     ++_Pten;
     if (0 < _Idx)
      _Sticky = true;
     }
    else if (_Idx == 0 && _Significant == 0)
     ; // drop leading zeros
    else
     { // save a significant digit
     *_Ptr++ = _Src[_Idx];
     ++_Significant;
     }
  else
   { // grouping specified, gather digits and group sizes
   const _Elem _Kseparator = _Grouping.size() == 0
    ? (_Elem)0 : _Punct_fac.thousands_sep();
   string _Groups((size_t)1, '\0');
   size_t _Group = 0;

   for (; _First != _Last; ++_First)
    if ((_Idx = _Find_elem(_Atoms, *_First)) < 10)
     { // got a digit, add to group size
     _Seendigit = true;
     if (48 <= _Significant)
      { // enough digits, scale by 10 and update _Sticky
      ++_Pten;
      if (0 < _Idx)
       _Sticky = true;
      }
     else if (_Idx == 0 && _Significant == 0)
      ; // drop leading zeros
     else
      { // save a significant digit
      *_Ptr++ = _Src[_Idx];
      ++_Significant;
      }
     if (_Groups[_Group] != 127 /* maximum signed   char value */ /* maximum char value */)
      ++_Groups[_Group];
     }
    else if (_Groups[_Group] == '\0'
     || _Kseparator == (_Elem)0
     || *_First != _Kseparator)
     break; // not a group separator, done
    else
     { // add a new group to _Groups string
     _Groups.append((size_t)1, '\0');
     ++_Group;
     }
   if (_Group == 0)
    ; // no thousands separators seen
   else if ('\0' < _Groups[_Group])
    ++_Group; // add trailing group to group count
   else
    _Bad = true; // trailing separator, fail

   while (!_Bad && 0 < _Group)
    if (*_Pg == 127 /* maximum signed   char value */ /* maximum char value */)
     break; // end of grouping constraints to check
    else if ((0 < --_Group && *_Pg != _Groups[_Group])
     || (0 == _Group && *_Pg < _Groups[_Group]))
     _Bad = true; // bad group size, fail
    else if ('\0' < _Pg[1])
     ++_Pg; // group size okay, advance to next test
   }

  if (_First != _Last && *_First == _Punct_fac.decimal_point())
   *_Ptr++ = localeconv()->decimal_point[0], ++_First; // add .

  if (_Significant == 0)
   { // 0000. so far
   for (; _First != _Last && *_First == _Atoms[0];
    _Seendigit = true, ++_First)
    --_Pten; // just count leading fraction zeros
   if (_Pten < 0)
    *_Ptr++ = '0', ++_Pten; // put one back
   }

  for (; _First != _Last
    && (_Idx = _Find_elem(_Atoms, *_First)) < 10;
    _Seendigit = true, ++_First)
   if (_Significant < 48)
    { // save a significant fraction digit
    *_Ptr++ = _Src[_Idx];
    ++_Significant;
    }
   else if (0 < _Idx)
    _Sticky = true; // just update _Sticky

  if (_Sticky)
   { // increment ls digit in memory of those lost
   char *_Px = _Ptr;
   for (; --_Px != _Leading; )
    { // add in carry
    if (*_Px == localeconv()->decimal_point[0])
     ; // skip over decimal point
    else if (*_Px != '9')
     { // carry stops here
     ++*_Px;
     break;
     }
    else
     *_Px = '0'; // propagate carry
    }

   if (_Px == _Leading)
    { // change "999..." to "1000..." and scale _Pten
    *_Px = '1';
    ++_Pten;
    }
   }

  if (_Seendigit && _First != _Last
   && (*_First == _Atoms[_NUMGET_EOFF + 1]
    || *_First == _Atoms[_NUMGET_EOFF]))
   { // 'e' or 'E', collect exponent
   *_Ptr++ = 'e', ++_First;
   _Seendigit = false, _Significant = 0;

   if (_First == _Last)
    ; // 'e' or 'E' is last element
   else if (*_First == _Atoms[_NUMGET_SIGNOFF + 1])
    *_Ptr++ = '+', ++_First; // gather plus sign
   else if (*_First == _Atoms[_NUMGET_SIGNOFF])
    *_Ptr++ = '-', ++_First; // gather minus sign
   for (; _First != _Last && *_First == _Atoms[0]; )
    _Seendigit = true, ++_First; // strip leading zeros
   if (_Seendigit)
    *_Ptr++ = '0'; // put one back
   for (; _First != _Last
    && (_Idx = _Find_elem(_Atoms, *_First)) < 10;
    _Seendigit = true, ++_First)
    if (_Significant < 8 /* for parsing numerics */)
     { // save a significant exponent digit
     *_Ptr++ = _Src[_Idx];
     ++_Significant;
     }
   }

  if (_Bad || !_Seendigit)
   _Ptr = _Ac; // roll back pointer to indicate failure
  *_Ptr = '\0';
  return (_Pten);
  }

 int _Getffldx(char *_Ac,
  _InIt& _First, _InIt &_Last,
  ios_base& _Iosbase, int *_Phexexp) const
  { // get hex floating-point field from [_First, _Last) into _Ac
  const _Mypunct& _Punct_fac = use_facet< _Mypunct >(_Iosbase.getloc());
  const string _Grouping = _Punct_fac.grouping();

  enum {
   _NUMGET_SIGNOFF = 22,
   _NUMGET_XOFF = 24,
   _NUMGET_POFF = 26};
  static const char _Src[] = {"0123456789ABCDEFabcdef-+XxPp"};
  _Elem _Atoms[sizeof (_Src)];
  const ctype<_Elem>& _Ctype_fac =
   use_facet< ctype<_Elem> >(_Iosbase.getloc());
  _Ctype_fac.widen(&_Src[0], &_Src[sizeof (_Src)], _Atoms);

  char *_Ptr = _Ac;
  bool _Bad = false;
  size_t _Idx;

  if (_First == _Last)
   ; // empty field
  else if (*_First == _Atoms[_NUMGET_SIGNOFF + 1])
   *_Ptr++ = '+', ++_First; // gather plus sign
  else if (*_First == _Atoms[_NUMGET_SIGNOFF])
   *_Ptr++ = '-', ++_First; // gather minus sign

  *_Ptr++ = '0';
  *_Ptr++ = 'x';

  bool _Seendigit = false; // seen a digit in input
  int _Significant = 0; // number of significant digits
  int _Phex = 0; // power of 10 multiplier

  if (_First == _Last || *_First != _Atoms[0])
   ;
  else if (++_First != _Last
   && (*_First == _Atoms[_NUMGET_XOFF + 1]
    || *_First == _Atoms[_NUMGET_XOFF]))
   ++_First; // discard any 0x or 0X
  else
   _Seendigit = true; // '0' not followed by 'x' or 'X'

  const char *_Pg = &_Grouping[0];
  if (*_Pg == 127 /* maximum signed   char value */ /* maximum char value */ || *_Pg <= '\0')
   for (; _First != _Last
    && (_Idx = _Find_elem(_Atoms, *_First)) < _NUMGET_SIGNOFF;
     _Seendigit = true, ++_First)
    if (48 <= _Significant)
     ++_Phex; // just scale by 10
    else if (_Idx == 0 && _Significant == 0)
     ; // drop leading zeros
    else
     { // save a significant digit
     *_Ptr++ = _Src[_Idx];
     ++_Significant;
     }
  else
   { // grouping specified, gather digits and group sizes
   const _Elem _Kseparator = _Grouping.size() == 0
    ? (_Elem)0 : _Punct_fac.thousands_sep();
   string _Groups((size_t)1, '\0');
   size_t _Group = 0;

   for (; _First != _Last; ++_First)
    if ((_Idx = _Find_elem(_Atoms, *_First)) < _NUMGET_SIGNOFF)
     { // got a digit, add to group size
     _Seendigit = true;
     if (48 <= _Significant)
      ++_Phex; // just scale by 10
     else if (_Idx == 0 && _Significant == 0)
      ; // drop leading zeros
     else
      { // save a significant digit
      *_Ptr++ = _Src[_Idx];
      ++_Significant;
      }
     if (_Groups[_Group] != 127 /* maximum signed   char value */ /* maximum char value */)
      ++_Groups[_Group];
     }
    else if (_Groups[_Group] == '\0'
     || _Kseparator == (_Elem)0
     || *_First != _Kseparator)
     break; // not a group separator, done
    else
     { // add a new group to _Groups string
     _Groups.append((size_t)1, '\0');
     ++_Group;
     }
   if (_Group == 0)
    ; // no thousands separators seen
   else if ('\0' < _Groups[_Group])
    ++_Group; // add trailing group to group count
   else
    _Bad = true; // trailing separator, fail

   while (!_Bad && 0 < _Group)
    if (*_Pg == 127 /* maximum signed   char value */ /* maximum char value */)
     break; // end of grouping constraints to check
    else if ((0 < --_Group && *_Pg != _Groups[_Group])
     || (0 == _Group && *_Pg < _Groups[_Group]))
     _Bad = true; // bad group size, fail
    else if ('\0' < _Pg[1])
     ++_Pg; // group size okay, advance to next test
   }

  if (_Seendigit && _Significant == 0)
   *_Ptr++ = '0'; // save at least one leading digit

  if (_First != _Last && *_First == _Punct_fac.decimal_point())
   *_Ptr++ = localeconv()->decimal_point[0], ++_First; // add .

  if (_Significant == 0)
   { // 0000. so far
   for (; _First != _Last && *_First == _Atoms[0];
    _Seendigit = true, ++_First)
    --_Phex; // just count leading fraction zeros
   if (_Phex < 0)
    *_Ptr++ = '0', ++_Phex; // put one back
   }

  for (; _First != _Last
    && (_Idx = _Find_elem(_Atoms, *_First)) < _NUMGET_SIGNOFF;
    _Seendigit = true, ++_First)
   if (_Significant < 48)
    { // save a significant fraction digit
    *_Ptr++ = _Src[_Idx];
    ++_Significant;
    }

  if (_Seendigit && _First != _Last
   && (*_First == _Atoms[_NUMGET_POFF + 1]
    || *_First == _Atoms[_NUMGET_POFF]))
   { // 'p' or 'P', collect exponent
   *_Ptr++ = 'p', ++_First;
   _Seendigit = false, _Significant = 0;

   if (_First == _Last)
    ; // 'p' or 'P' is last element
   else if (*_First == _Atoms[_NUMGET_SIGNOFF + 1])
    *_Ptr++ = '+', ++_First; // gather plus sign
   else if (*_First == _Atoms[_NUMGET_SIGNOFF])
    *_Ptr++ = '-', ++_First; // gather minus sign
   for (; _First != _Last && *_First == _Atoms[0]; )
    _Seendigit = true, ++_First; // strip leading zeros
   if (_Seendigit)
    *_Ptr++ = '0'; // put one back
   for (; _First != _Last
    && (_Idx = _Find_elem(_Atoms, *_First)) < _NUMGET_SIGNOFF;
    _Seendigit = true, ++_First)
    if (_Significant < 8 /* for parsing numerics */)
     { // save a significant exponent digit
     *_Ptr++ = _Src[_Idx];
     ++_Significant;
     }
   }

  if (_Bad || !_Seendigit)
   _Ptr = _Ac; // roll back pointer to indicate failure
  *_Ptr = '\0';
  *_Phexexp = _Phex; // power of 16 multiplier
  return (0); // power of 10 multiplier
  }
 };

  // STATIC num_get::id OBJECT
template<class _Elem,
 class _InIt>
                         locale::id num_get<_Elem, _InIt>::id;

  // TEMPLATE CLASS num_put
template<class _Elem,
 class _OutIt = ostreambuf_iterator<_Elem, char_traits<_Elem> > >
 class num_put
  : public locale::facet
 { // facet for converting encoded numbers to text
public:
 typedef numpunct<_Elem> _Mypunct;
 typedef basic_string<_Elem, char_traits<_Elem>, allocator<_Elem> >
  _Mystr;

 static size_t _Getcat(const locale::facet **_Ppf = 0,
  const locale *_Ploc = 0)
  { // return locale category mask and construct standard facet
  if (_Ppf != 0 && *_Ppf == 0)
   *_Ppf = new num_put<_Elem, _OutIt>(
    _Locinfo(_Ploc->c_str()));
  return (3);
  }

                         static locale::id id; // unique facet id

protected:
 virtual ~num_put()
  { // destroy the object
  }

 void _Init(const _Locinfo&)
  { // initialize from _Locinfo object
  }

public:
 explicit num_put(size_t _Refs = 0)
  : locale::facet(_Refs)
  { // construct from current locale
  { _Locinfo _Lobj;
   _Init(_Lobj);
  }
  }

        num_put(const _Locinfo& _Lobj, size_t _Refs = 0)
  : locale::facet(_Refs)
  { // construct from specified locale
  _Init(_Lobj);
  }

 typedef _Elem char_type;
 typedef _OutIt iter_type;

 _OutIt put(_OutIt _Dest,
  ios_base& _Iosbase, _Elem _Fill, bool _Val) const
  { // put formatted bool to _Dest
  return (do_put(_Dest, _Iosbase, _Fill, _Val));
  }

 _OutIt put(_OutIt _Dest,
  ios_base& _Iosbase, _Elem _Fill, long _Val) const
  { // put formatted long to _Dest
  return (do_put(_Dest, _Iosbase, _Fill, _Val));
  }

 _OutIt put(_OutIt _Dest,
  ios_base& _Iosbase, _Elem _Fill, unsigned long _Val) const
  { // put formatted unsigned long to _Dest
  return (do_put(_Dest, _Iosbase, _Fill, _Val));
  }


 _OutIt put(_OutIt _Dest,
  ios_base& _Iosbase, _Elem _Fill, long long _Val) const
  { // put formatted long long to _Dest
  return (do_put(_Dest, _Iosbase, _Fill, _Val));
  }

 _OutIt put(_OutIt _Dest,
  ios_base& _Iosbase, _Elem _Fill, unsigned long long _Val) const
  { // put formatted unsigned long long to _Dest
  return (do_put(_Dest, _Iosbase, _Fill, _Val));
  }


 _OutIt put(_OutIt _Dest,
  ios_base& _Iosbase, _Elem _Fill, double _Val) const
  { // put formatted double to _Dest
  return (do_put(_Dest, _Iosbase, _Fill, _Val));
  }

 _OutIt put(_OutIt _Dest,
  ios_base& _Iosbase, _Elem _Fill, long double _Val) const
  { // put formatted long double to _Dest
  return (do_put(_Dest, _Iosbase, _Fill, _Val));
  }

 _OutIt put(_OutIt _Dest,
  ios_base& _Iosbase, _Elem _Fill, const void *_Val) const
  { // put formatted void pointer to _Dest
  return (do_put(_Dest, _Iosbase, _Fill, _Val));
  }

protected:
 virtual _OutIt do_put(_OutIt _Dest,
  ios_base& _Iosbase, _Elem _Fill, bool _Val) const
  { // put formatted bool to _Dest
                       ;
  if (!(_Iosbase.flags() & ios_base::boolalpha))
   return (do_put(_Dest, _Iosbase, _Fill, (long)_Val));
  else
   { // put "false" or "true"
   const _Mypunct& _Punct_fac = use_facet< _Mypunct >(_Iosbase.getloc());
   _Mystr _Str;
   if (_Val)
    _Str.assign(_Punct_fac.truename());
   else
    _Str.assign(_Punct_fac.falsename());

   size_t _Fillcount = _Iosbase.width() <= 0
    || (size_t)_Iosbase.width() <= _Str.size()
     ? 0 : (size_t)_Iosbase.width() - _Str.size();

   if ((_Iosbase.flags() & ios_base::adjustfield) != ios_base::left)
    { // put leading fill
    _Dest = _Rep(_Dest, _Fill, _Fillcount);
    _Fillcount = 0;
    }
   _Dest = _Put(_Dest, _Str.c_str(), _Str.size()); // put field
   _Iosbase.width(0);
   return (_Rep(_Dest, _Fill, _Fillcount)); // put trailing fill
   }
  }

 virtual _OutIt do_put(_OutIt _Dest,
  ios_base& _Iosbase, _Elem _Fill, long _Val) const
  { // put formatted long to _Dest
  char _Buf[2 * 32], _Fmt[6];
  return (_Iput(_Dest, _Iosbase, _Fill, _Buf,
   ::std:: sprintf(_Buf, _Ifmt(_Fmt, "ld",
    _Iosbase.flags()), _Val)));
  }

 virtual _OutIt do_put(_OutIt _Dest,
  ios_base& _Iosbase, _Elem _Fill, unsigned long _Val) const
  { // put formatted unsigned long to _Dest
  char _Buf[2 * 32], _Fmt[6];
  return (_Iput(_Dest, _Iosbase, _Fill, _Buf,
   ::std:: sprintf(_Buf, _Ifmt(_Fmt, "lu",
    _Iosbase.flags()), _Val)));
  }


 virtual _OutIt do_put(_OutIt _Dest,
  ios_base& _Iosbase, _Elem _Fill, long long _Val) const
  { // put formatted long long to _Dest
  char _Buf[2 * 32], _Fmt[8];
  return (_Iput(_Dest, _Iosbase, _Fill, _Buf,
   ::std:: sprintf(_Buf, _Ifmt(_Fmt, "Ld",
    _Iosbase.flags()), _Val)));
  }

 virtual _OutIt do_put(_OutIt _Dest,
  ios_base& _Iosbase, _Elem _Fill, unsigned long long _Val) const
  { // put formatted unsigned long long to _Dest
  char _Buf[2 * 32], _Fmt[8];
  return (_Iput(_Dest, _Iosbase, _Fill, _Buf,
   ::std:: sprintf(_Buf, _Ifmt(_Fmt, "Lu",
    _Iosbase.flags()), _Val)));
  }


 virtual _OutIt do_put(_OutIt _Dest,
  ios_base& _Iosbase, _Elem _Fill, double _Val) const
  { // put formatted double to _Dest
  string _Buf;
  char _Fmt[8];
  bool _Isfixed = (_Iosbase.flags() & ios_base::floatfield)
   == ios_base::fixed;
  streamsize _Precision = _Iosbase.precision() <= 0 && !_Isfixed
   ? 6 : _Iosbase.precision(); // desired precision
  size_t _Bufsize = (size_t)_Precision;
  if (_Isfixed && 1e10 < ::std:: fabs(_Val))
   { // f or F format
   int _Ptwo;
   (void)::std:: frexp(_Val, &_Ptwo);
   _Bufsize += ::std:: abs(_Ptwo) * 30103L / 100000L;
   }
  _Buf.resize(_Bufsize + 50); // add fudge factor

  int _Ngen = ::std:: sprintf((char *)_Buf.c_str(),
   _Ffmt(_Fmt, 0, _Iosbase.flags()), (int)_Precision, _Val);
  return (_Fput(_Dest, _Iosbase, _Fill, _Buf.c_str(), _Ngen));
  }

 virtual _OutIt do_put(_OutIt _Dest,
  ios_base& _Iosbase, _Elem _Fill, long double _Val) const
  { // put formatted long double to _Dest
  string _Buf;
  char _Fmt[8];
  bool _Isfixed = (_Iosbase.flags() & ios_base::floatfield)
   == ios_base::fixed;
  streamsize _Precision = _Iosbase.precision() <= 0 && !_Isfixed
   ? 6 : _Iosbase.precision(); // desired precision
  size_t _Bufsize = (size_t)_Precision;
  if (_Isfixed && 1e10 < ::std:: fabsl(_Val))
   { // f or F format
   int _Ptwo;
   (void)::std:: frexpl(_Val, &_Ptwo);
   _Bufsize += ::std:: abs(_Ptwo) * 30103L / 100000L;
   }
  _Buf.resize(_Bufsize + 50); // add fudge factor

  int _Ngen = ::std:: sprintf((char *)_Buf.c_str(),
   _Ffmt(_Fmt, 'L', _Iosbase.flags()), (int)_Precision, _Val);
  return (_Fput(_Dest, _Iosbase, _Fill, _Buf.c_str(), _Ngen));
  }

 virtual _OutIt do_put(_OutIt _Dest,
  ios_base& _Iosbase, _Elem _Fill, const void *_Val) const
  { // put formatted void pointer to _Dest

  char _Buf[2 * 32], _Fmt[8];
  unsigned long long _Off = (unsigned long long)((char *)_Val - (char *)0);
  if (sizeof (void *) == sizeof (unsigned long))
   _Off = (unsigned long)_Off;
  return (_Iput(_Dest, _Iosbase, _Fill, _Buf,
   ::std:: sprintf(_Buf, _Ifmt(_Fmt, "Lu",
    ios_base::hex), _Off)));
  }

private:
 char * _Ffmt(char *_Fmt,
  char _Spec, ios_base::fmtflags _Flags) const
  { // generate sprintf format for floating-point
  char *_Ptr = _Fmt;
  *_Ptr++ = '%';

  if (_Flags & ios_base::showpos)
   *_Ptr++ = '+';
  if (_Flags & ios_base::showpoint)
   *_Ptr++ = '#';
  *_Ptr++ = '.';
  *_Ptr++ = '*'; // for precision argument
  if (_Spec != '\0')
   *_Ptr++ = _Spec; // 'L' qualifier for long double only

  ios_base::fmtflags _Ffl = _Flags & ios_base::floatfield;
  if (_Flags & ios_base::uppercase)
   *_Ptr++ = _Ffl == ios_base::fixed ? 'f'
    : _Ffl == ios_base::hexfloat ? 'A' // added with TR1
    : _Ffl == ios_base::scientific ? 'E' : 'G'; // specifier
  else
   *_Ptr++ = _Ffl == ios_base::fixed ? 'f'
    : _Ffl == ios_base::hexfloat ? 'a' // added with TR1
    : _Ffl == ios_base::scientific ? 'e' : 'g'; // specifier

  *_Ptr = '\0';
  return (_Fmt);
  }

 _OutIt _Fput(_OutIt _Dest,
  ios_base& _Iosbase, _Elem _Fill, const char *_Buf,
   size_t _Count) const
  { // put formatted floating-point to _Dest
                       ;
  size_t _Prefix = 0 < _Count && (*_Buf == '+' || *_Buf == '-')
   ? 1 : 0;

  const char *_Exps;
  if ((_Iosbase.flags() & ios_base::floatfield) != ios_base::hexfloat)
   _Exps = "eE";
  else
   { // correct for hexadecimal floating-point
   _Exps = "pP";
   if (_Prefix + 2 <= _Count && _Buf[_Prefix] == '0'
    && (_Buf[_Prefix + 1] == 'x' || _Buf[_Prefix + 1] == 'X'))
    _Prefix += 2;
   }
  const size_t _Eoff =
   ::std:: strcspn(&_Buf[0], _Exps); // find exponent
  char _Dp[2] = {"."};
  _Dp[0] = ::std:: localeconv()->decimal_point[0];
  const size_t _Poff =
   ::std:: strcspn(&_Buf[0], &_Dp[0]); // find decimal point

  const ctype<_Elem>& _Ctype_fac =
   use_facet< ctype<_Elem> >(_Iosbase.getloc());
  _Mystr _Groupstring(_Count, _Elem(0)); // reserve space
  _Ctype_fac.widen(&_Buf[0], &_Buf[_Count], &_Groupstring[0]);

  const _Mypunct& _Punct_fac = use_facet< _Mypunct >(_Iosbase.getloc());
  const string _Grouping = _Punct_fac.grouping();
  const _Elem _Kseparator = _Punct_fac.thousands_sep();

  if (_Poff != _Count)
   _Groupstring[_Poff] = _Punct_fac.decimal_point();

  size_t _Off = _Poff == _Count ? _Eoff : _Poff;
  const char *_Pg = &_Grouping[0];
  while (*_Pg != 127 /* maximum signed   char value */ /* maximum char value */ && '\0' < *_Pg
   && (size_t)*_Pg < _Off - _Prefix)
   { // add thousands separator
   _Groupstring.insert(_Off -= *_Pg, (size_t)1, _Kseparator);
   if ('\0' < _Pg[1])
    ++_Pg; // not last group, advance
   }

  _Count = _Groupstring.size();
  size_t _Fillcount = _Iosbase.width() <= 0
   || (size_t)_Iosbase.width() <= _Count
    ? 0 : (size_t)_Iosbase.width() - _Count;

  ios_base::fmtflags _Adjustfield =
   _Iosbase.flags() & ios_base::adjustfield;
  if (_Adjustfield != ios_base::left
   && _Adjustfield != ios_base::internal)
   { // put leading fill
   _Dest = _Rep(_Dest, _Fill, _Fillcount);
   _Fillcount = 0;
   _Dest = _Put(_Dest, &_Groupstring[0], _Prefix);
   }
  else if (_Adjustfield == ios_base::internal)
   { // put internal fill
   _Dest = _Put(_Dest, &_Groupstring[0], _Prefix);
   _Dest = _Rep(_Dest, _Fill, _Fillcount);
   _Fillcount = 0;
   }
  else
   _Dest = _Put(_Dest, &_Groupstring[0], _Prefix);

  _Dest = _Put(_Dest, &_Groupstring[_Prefix], _Count - _Prefix);
  _Iosbase.width(0);
  return (_Rep(_Dest, _Fill, _Fillcount)); // put trailing fill
  }

 char * _Ifmt(char *_Fmt,
  const char *_Spec, ios_base::fmtflags _Flags) const
  { // generate sprintf format for integer
  char *_Ptr = _Fmt;
  *_Ptr++ = '%';

  if (_Flags & ios_base::showpos)
   *_Ptr++ = '+';
  if (_Flags & ios_base::showbase)
   *_Ptr++ = '#';
  if (_Spec[0] != 'L')
   *_Ptr++ = _Spec[0]; // qualifier
  else
   { /* change L to ll */
   *_Ptr++ = 'l';
   *_Ptr++ = 'l';
   }


  ios_base::fmtflags _Basefield = _Flags & ios_base::basefield;
  *_Ptr++ = _Basefield == ios_base::oct ? 'o'
   : _Basefield != ios_base::hex ? _Spec[1] // 'd' or 'u'
   : _Flags & ios_base::uppercase ? 'X' : 'x';
  *_Ptr = '\0';
  return (_Fmt);
  }

 _OutIt _Iput(_OutIt _Dest,
  ios_base& _Iosbase, _Elem _Fill, char *_Buf, size_t _Count) const
  { // put formatted integer to _Dest
                       ;
  size_t _Prefix = 0 < _Count && (*_Buf == '+' || *_Buf == '-')
   ? 1 : 0;
  if ((_Iosbase.flags() & ios_base::basefield) == ios_base::hex
   && _Prefix + 2 <= _Count && _Buf[_Prefix] == '0'
   && (_Buf[_Prefix + 1] == 'x' || _Buf[_Prefix + 1] == 'X'))
   _Prefix += 2;

  const ctype<_Elem>& _Ctype_fac =
   use_facet< ctype<_Elem> >(_Iosbase.getloc());
  _Mystr _Groupstring(_Count, _Elem(0)); // reserve space
  _Ctype_fac.widen(&_Buf[0], &_Buf[_Count], &_Groupstring[0]);

  const _Mypunct& _Punct_fac = use_facet< _Mypunct >(_Iosbase.getloc());
  const string _Grouping = _Punct_fac.grouping();
  const char *_Pg = &_Grouping[0];
  if (*_Pg != 127 /* maximum signed   char value */ /* maximum char value */ && '\0' < *_Pg)
   { // grouping specified, add thousands separators
   const _Elem _Kseparator = _Punct_fac.thousands_sep();
   while (*_Pg != 127 /* maximum signed   char value */ /* maximum char value */ && '\0' < *_Pg
    && (size_t)*_Pg < _Count - _Prefix)
    { // insert thousands separator
    _Count -= *_Pg;
    _Groupstring.insert(_Count, 1, _Kseparator);
    if ('\0' < _Pg[1])
     ++_Pg; // not last group, advance
    }
   }

  _Count = _Groupstring.size();
  size_t _Fillcount = _Iosbase.width() <= 0
   || (size_t)_Iosbase.width() <= _Count
    ? 0 : (size_t)_Iosbase.width() - _Count;

  ios_base::fmtflags _Adjustfield =
   _Iosbase.flags() & ios_base::adjustfield;
  if (_Adjustfield != ios_base::left
   && _Adjustfield != ios_base::internal)
   { // put leading fill
   _Dest = _Rep(_Dest, _Fill, _Fillcount);
   _Fillcount = 0;
   _Dest = _Put(_Dest, &_Groupstring[0], _Prefix);
   }
  else if (_Adjustfield == ios_base::internal)
   { // put internal fill
   _Dest = _Put(_Dest, &_Groupstring[0], _Prefix);
   _Dest = _Rep(_Dest, _Fill, _Fillcount);
   _Fillcount = 0;
   }
  else
   _Dest = _Put(_Dest, &_Groupstring[0], _Prefix);

  _Dest = _Put(_Dest, &_Groupstring[_Prefix], _Count - _Prefix);
  _Iosbase.width(0);
  return (_Rep(_Dest, _Fill, _Fillcount)); // put trailing fill
  }

 _OutIt _Put(_OutIt _Dest,
  const _Elem *_Ptr, size_t _Count) const
  { // put [_Ptr, _Ptr + _Count) to _Dest
  for (; 0 < _Count; --_Count, ++_Dest, ++_Ptr)
   *_Dest = *_Ptr;
  return (_Dest);
  }

 _OutIt _Rep(_OutIt _Dest,
  _Elem _Ch, size_t _Count) const
  { // put _Count * _Ch to _Dest
  for (; 0 < _Count; --_Count, ++_Dest)
   *_Dest = _Ch;
  return (_Dest);
  }
 };

  // STATIC num_put::id OBJECT
template<class _Elem,
 class _OutIt>
                         locale::id num_put<_Elem, _OutIt>::id;
}


/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */


namespace std {
  // TEMPLATE CLASS basic_ios
template<class _Elem,
 class _Traits>
 class basic_ios
  : public ios_base
 { // base class for basic_istream/basic_ostream
public:
 typedef basic_ios<_Elem, _Traits> _Myt;
 typedef basic_ostream<_Elem, _Traits> _Myos;
 typedef basic_streambuf<_Elem, _Traits> _Mysb;
 typedef ctype<_Elem> _Ctype;
 typedef _Elem char_type;
 typedef _Traits traits_type;
 typedef typename _Traits::int_type int_type;
 typedef typename _Traits::pos_type pos_type;
 typedef typename _Traits::off_type off_type;

 explicit basic_ios(_Mysb *_Strbuf)
  { // construct from stream buffer pointer
  init(_Strbuf);
  }

 virtual ~basic_ios()
  { // destroy the object
  }

 void clear(iostate _State = goodbit,
  bool _Reraise = false)
  { // set state, possibly reraise exception
  ios_base::clear((iostate)(_Mystrbuf == 0
   ? (int)_State | (int)badbit : (int)_State), _Reraise);
  }

 void clear(io_state _State)
  { // set state to _State
  clear((iostate)_State);
  }

 void setstate(iostate _State,
  bool _Reraise = false)
  { // merge _State into state, possibly reraise exception
  if (_State != goodbit)
   clear((iostate)((int)rdstate() | (int)_State), _Reraise);
  }

 void setstate(io_state _State)
  { // merge _State into state
  setstate((iostate)_State);
  }

 _Myt& copyfmt(const _Myt& _Right)
  { // copy format parameters
  _Tiestr = _Right.tie();
  _Fillch = _Right.fill();
  ios_base::copyfmt(_Right);
  return (*this);
  }

 _Myos * tie() const
  { // return tie pointer
  return (_Tiestr);
  }

 _Myos * tie(_Myos *_Newtie)
  { // set tie pointer
  _Myos *_Oldtie = _Tiestr;
  _Tiestr = _Newtie;
  return (_Oldtie);
  }

 _Mysb * rdbuf() const
  { // return stream buffer pointer
  return (_Mystrbuf);
  }

 _Mysb * rdbuf(_Mysb *_Strbuf)
  { // set stream buffer pointer
  _Mysb *_Oldstrbuf = _Mystrbuf;
  _Mystrbuf = _Strbuf;
  clear();
  return (_Oldstrbuf);
  }

 locale imbue(const locale& _Loc)
  { // set locale to argument
  locale _Oldlocale = ios_base::imbue(_Loc);
  if (rdbuf() != 0)
   rdbuf()->pubimbue(_Loc);
  return (_Oldlocale);
  }

 _Elem fill() const
  { // return fill character
  return (_Fillch);
  }

 _Elem fill(_Elem _Newfill)
  { // set fill character
  _Elem _Oldfill = _Fillch;
  _Fillch = _Newfill;
  return (_Oldfill);
  }

 char narrow(_Elem _Ch, char _Dflt = '\0') const
  { // convert _Ch to byte using imbued locale
  const _Ctype& _Ctype_fac = use_facet< _Ctype >(getloc());
  return (_Ctype_fac.narrow(_Ch, _Dflt));
  }

 _Elem widen(char _Byte) const
  { // convert _Byte to character using imbued locale
  const _Ctype& _Ctype_fac = use_facet< _Ctype >(getloc());
  return (_Ctype_fac.widen(_Byte));
  }


 void move(_Myt& _Right)
  { // assign by moving _Right
  if (this != &_Right)
   { // different, do the move
   _Mystrbuf = 0;
   _Tiestr = 0;
   this->swap(_Right);
   }
  }

 void move(_Myt&& _Right)
  { // assign by moving _Right
  if (this != &_Right)
   { // different, do the move
   _Mystrbuf = 0;
   _Tiestr = 0;
   this->swap(_Right);
   }
  }

 void swap(_Myt& _Right)
  { // swap all but rdbuf() with right
  ios_base::swap(_Right);
  ::std:: swap(_Fillch, _Right._Fillch);
  ::std:: swap(_Tiestr, _Right._Tiestr);
  }

 void set_rdbuf(_Mysb *_Strbuf)
  { // set stream buffer pointer without changing state
  _Mystrbuf = _Strbuf;
  }


protected:
 void init(_Mysb *_Strbuf = 0,
  bool _Isstd = false)
  { // initialize with stream buffer pointer
  _Init(); // initialize ios_base
  _Mystrbuf = _Strbuf;
  _Tiestr = 0;
  _Fillch = widen(' ');

  if (_Mystrbuf == 0)
   setstate(badbit);

  if (_Isstd)
   _Addstd(this); // special handling for standard streams
  }

        basic_ios()
  { // default constructor, do nothing
  }

private:
 _Mysb *_Mystrbuf; // pointer to stream buffer
 _Myos *_Tiestr; // pointer to tied output stream
 _Elem _Fillch; // the fill character
 };

  // MANIPULATORS
inline ios_base& boolalpha(ios_base& _Iosbase)
 { // set boolalpha
 _Iosbase.setf(ios_base::boolalpha);
 return (_Iosbase);
 }

inline ios_base& dec(ios_base& _Iosbase)
 { // set basefield to dec
 _Iosbase.setf(ios_base::dec, ios_base::basefield);
 return (_Iosbase);
 }


inline ios_base& defaultfloat(ios_base& _Iosbase)
 { // clear floatfield
 _Iosbase.unsetf(ios_base::floatfield);
 return (_Iosbase);
 }


inline ios_base& fixed(ios_base& _Iosbase)
 { // set floatfield to fixed
 _Iosbase.setf(ios_base::fixed, ios_base::floatfield);
 return (_Iosbase);
 }

inline ios_base& hex(ios_base& _Iosbase)
 { // set basefield to hex
 _Iosbase.setf(ios_base::hex, ios_base::basefield);
 return (_Iosbase);
 }


inline ios_base& hexfloat(ios_base& _Iosbase)
 { // set floatfield to hexfloat
 _Iosbase.setf(ios_base::hexfloat, ios_base::floatfield);
 return (_Iosbase);
 }



namespace tr1 { // tr1 additions
using ::std:: hexfloat;
} // namespace tr1


inline ios_base& internal(ios_base& _Iosbase)
 { // set adjustfield to internal
 _Iosbase.setf(ios_base::internal, ios_base::adjustfield);
 return (_Iosbase);
 }

inline ios_base& left(ios_base& _Iosbase)
 { // set adjustfield to left
 _Iosbase.setf(ios_base::left, ios_base::adjustfield);
 return (_Iosbase);
 }

inline ios_base& noboolalpha(ios_base& _Iosbase)
 { // clear boolalpha
 _Iosbase.unsetf(ios_base::boolalpha);
 return (_Iosbase);
 }

inline ios_base& noshowbase(ios_base& _Iosbase)
 { // clear showbase
 _Iosbase.unsetf(ios_base::showbase);
 return (_Iosbase);
 }

inline ios_base& noshowpoint(ios_base& _Iosbase)
 { // clear showpoint
 _Iosbase.unsetf(ios_base::showpoint);
 return (_Iosbase);
 }

inline ios_base& noshowpos(ios_base& _Iosbase)
 { // clear showpos
 _Iosbase.unsetf(ios_base::showpos);
 return (_Iosbase);
 }

inline ios_base& noskipws(ios_base& _Iosbase)
 { // clear skipws
 _Iosbase.unsetf(ios_base::skipws);
 return (_Iosbase);
 }

inline ios_base& nounitbuf(ios_base& _Iosbase)
 { // clear unitbuf
 _Iosbase.unsetf(ios_base::unitbuf);
 return (_Iosbase);
 }

inline ios_base& nouppercase(ios_base& _Iosbase)
 { // clear uppercase
 _Iosbase.unsetf(ios_base::uppercase);
 return (_Iosbase);
 }

inline ios_base& oct(ios_base& _Iosbase)
 { // set oct in basefield
 _Iosbase.setf(ios_base::oct, ios_base::basefield);
 return (_Iosbase);
 }

inline ios_base& right(ios_base& _Iosbase)
 { // set right in adjustfield
 _Iosbase.setf(ios_base::right, ios_base::adjustfield);
 return (_Iosbase);
 }

inline ios_base& scientific(ios_base& _Iosbase)
 { // set scientific in floatfield
 _Iosbase.setf(ios_base::scientific, ios_base::floatfield);
 return (_Iosbase);
 }

inline ios_base& showbase(ios_base& _Iosbase)
 { // set showbase
 _Iosbase.setf(ios_base::showbase);
 return (_Iosbase);
 }

inline ios_base& showpoint(ios_base& _Iosbase)
 { // set showpoint
 _Iosbase.setf(ios_base::showpoint);
 return (_Iosbase);
 }

inline ios_base& showpos(ios_base& _Iosbase)
 { // set showpos
 _Iosbase.setf(ios_base::showpos);
 return (_Iosbase);
 }

inline ios_base& skipws(ios_base& _Iosbase)
 { // set skipws
 _Iosbase.setf(ios_base::skipws);
 return (_Iosbase);
 }

inline ios_base& unitbuf(ios_base& _Iosbase)
 { // set unitbuf
 _Iosbase.setf(ios_base::unitbuf);
 return (_Iosbase);
 }

inline ios_base& uppercase(ios_base& _Iosbase)
 { // set uppercase
 _Iosbase.setf(ios_base::uppercase);
 return (_Iosbase);
 }
}


/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */


namespace std {
  // I/O EXCEPTION MACROS
  // TEMPLATE CLASS basic_ostream
template<class _Elem,
 class _Traits>
 class basic_ostream
  : virtual public basic_ios<_Elem, _Traits>
 { // control insertions into a stream buffer
public:
 typedef basic_ostream<_Elem, _Traits> _Myt;
 typedef basic_ios<_Elem, _Traits> _Myios;
 typedef basic_streambuf<_Elem, _Traits> _Mysb;
 typedef ostreambuf_iterator<_Elem, _Traits> _Iter;
 typedef num_put<_Elem, _Iter> _Nput;


 explicit basic_ostream(
  basic_streambuf<_Elem, _Traits> *_Strbuf = 0,






  bool _Isstd = false)
  { // construct from a stream buffer pointer
  _Myios::init(_Strbuf, _Isstd);
  }

        basic_ostream(_Uninitialized, bool _Addit = true)
  { // construct uninitialized
  if (_Addit)
   this->_Addstd(this); // suppress for basic_iostream
  }


protected:
        basic_ostream(_Myt&& _Right)
  { // construct by moving _Right
  _Myios::init();
  _Myios::move(::std:: move(_Right));
  }

 _Myt& operator=(_Myt&& _Right)
  { // move from _Right
  this->swap(_Right);
  return (*this);
  }

 void swap(_Myt& _Right)
  { // swap with _Right
  if (this != &_Right)
   _Myios::swap(_Right);
  }
private:
         basic_ostream(const _Myt&); // not defined
  _Myt& operator=(const _Myt&); // not defined

public:


 virtual ~basic_ostream()
  { // destroy the object
  }

 typedef typename _Traits::int_type int_type;
 typedef typename _Traits::pos_type pos_type;
 typedef typename _Traits::off_type off_type;

 class _Sentry_base
  { // stores thread lock and reference to output stream
 public:
         _Sentry_base(_Myt& _Ostr)
   : _Myostr(_Ostr)
   { // lock the stream buffer, if there
   if (_Myostr.rdbuf() != 0)
    _Myostr.rdbuf()->_Lock();
   }

         ~_Sentry_base()
   { // destroy after unlocking
   if (_Myostr.rdbuf() != 0)
    _Myostr.rdbuf()->_Unlock();
   }

  _Myt& _Myostr; // the output stream, for _Unlock call at destruction

 private:
  _Sentry_base& operator=(const _Sentry_base&);
  };

 class sentry
  : public _Sentry_base
  { // stores thread lock and state of stream
 public:
  explicit sentry(_Myt& _Ostr)
   : _Sentry_base(_Ostr)
   { // construct locking and testing stream
   if (_Ostr.good() && _Ostr.tie() != 0 && _Ostr.tie() != &_Ostr)
    _Ostr.tie()->flush();
   _Ok = _Ostr.good(); // store test only after flushing tie
   }

         ~sentry()
   { // destroy the object

   if (!::std:: uncaught_exception())
    this->_Myostr._Osfx();




   }

                 operator bool() const
   { // test if stream state okay
   return (_Ok);
   }







 private:
         sentry(const sentry&); // not defined
  sentry& operator=(const sentry&); // not defined


  bool _Ok; // true if stream state okay at construction
  };

 bool opfx()
  { // test stream state and flush tie stream as needed (retained)
  if (this->good() && _Myios::tie() != 0 && _Myios::tie() != this)
   _Myios::tie()->flush();
  return (this->good());
  }

 void osfx()
  { // perform any wrapup (retained)
  _Osfx();
  }

 void _Osfx()
  { // perform any wrapup
  try {
  if (this->good() && this->flags() & ios_base::unitbuf)
   if (_Myios::rdbuf()->pubsync() == -1) // flush stream as needed
    _Myios::setstate(ios_base::badbit);
  } catch (...) {
  }
  }

 _Myt& operator<<(_Myt& ( *_Pfn)(_Myt&))
  { // call basic_ostream manipulator
                      ;
  return ((*_Pfn)(*this));
  }

 _Myt& operator<<(_Myios& ( *_Pfn)(_Myios&))
  { // call basic_ios manipulator
                      ;
  (*_Pfn)(*(_Myios *)this);
  return (*this);
  }

 _Myt& operator<<(ios_base& ( *_Pfn)(ios_base&))
  { // call ios_base manipulator
                      ;
  (*_Pfn)(*(ios_base *)this);
  return (*this);
  }

           _Myt& operator<<(bool _Val)
  { // insert a boolean
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to insert
   const _Nput& _Nput_fac = use_facet< _Nput >(this->getloc());

   try { /* begin try block */
   if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
    _Myios::fill(), _Val).failed())
    _State |= ios_base::badbit;
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& operator<<(short _Val)
  { // insert a short
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to insert
   const _Nput& _Nput_fac = use_facet< _Nput >(this->getloc());
   ios_base::fmtflags _Bfl =
    this->flags() & ios_base::basefield;
   long _Tmp = (_Bfl == ios_base::oct
    || _Bfl == ios_base::hex)
    ? (long)(unsigned short)_Val : (long)_Val;

   try { /* begin try block */
   if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
    _Myios::fill(), _Tmp).failed())
    _State |= ios_base::badbit;
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& operator<<(unsigned short _Val)
  { // insert an unsigned short
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to insert
   const _Nput& _Nput_fac = use_facet< _Nput >(this->getloc());

   try { /* begin try block */
   if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
    _Myios::fill(), (unsigned long)_Val).failed())
    _State |= ios_base::badbit;
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& operator<<(int _Val)
  { // insert an int
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to insert
   const _Nput& _Nput_fac = use_facet< _Nput >(this->getloc());
   ios_base::fmtflags _Bfl =
    this->flags() & ios_base::basefield;
   long _Tmp = (_Bfl == ios_base::oct
    || _Bfl == ios_base::hex)
    ? (long)(unsigned int)_Val : (long)_Val;

   try { /* begin try block */
   if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
    _Myios::fill(), _Tmp).failed())
    _State |= ios_base::badbit;
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& operator<<(unsigned int _Val)
  { // insert an unsigned int
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to insert
   const _Nput& _Nput_fac = use_facet< _Nput >(this->getloc());

   try { /* begin try block */
   if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
    _Myios::fill(), (unsigned long)_Val).failed())
    _State |= ios_base::badbit;
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& operator<<(long _Val)
  { // insert a long
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to insert
   const _Nput& _Nput_fac = use_facet< _Nput >(this->getloc());

   try { /* begin try block */
   if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
    _Myios::fill(), _Val).failed())
    _State |= ios_base::badbit;
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& operator<<(unsigned long _Val)
  { // insert an unsigned long
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to insert
   const _Nput& _Nput_fac = use_facet< _Nput >(this->getloc());

   try { /* begin try block */
   if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
    _Myios::fill(), _Val).failed())
    _State |= ios_base::badbit;
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }


           _Myt& operator<<(long long _Val)
  { // insert a long long
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to insert
   const _Nput& _Nput_fac = use_facet< _Nput >(this->getloc());

   try { /* begin try block */
   if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
    _Myios::fill(), _Val).failed())
    _State |= ios_base::badbit;
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& operator<<(unsigned long long _Val)
  { // insert an unsigned long long
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to insert
   const _Nput& _Nput_fac = use_facet< _Nput >(this->getloc());

   try { /* begin try block */
   if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
    _Myios::fill(), _Val).failed())
    _State |= ios_base::badbit;
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }


           _Myt& operator<<(float _Val)
  { // insert a float
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to insert
   const _Nput& _Nput_fac = use_facet< _Nput >(this->getloc());

   try { /* begin try block */
   if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
    _Myios::fill(), (double)_Val).failed())
    _State |= ios_base::badbit;
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& operator<<(double _Val)
  { // insert a double
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to insert
   const _Nput& _Nput_fac = use_facet< _Nput >(this->getloc());

   try { /* begin try block */
   if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
    _Myios::fill(), _Val).failed())
    _State |= ios_base::badbit;
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& operator<<(long double _Val)
  { // insert a long double
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to insert
   const _Nput& _Nput_fac = use_facet< _Nput >(this->getloc());

   try { /* begin try block */
   if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
    _Myios::fill(), _Val).failed())
    _State |= ios_base::badbit;
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& operator<<(const void *_Val)
  { // insert a void pointer
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to insert
   const _Nput& _Nput_fac = use_facet< _Nput >(this->getloc());

   try { /* begin try block */
   if (_Nput_fac.put(_Iter(_Myios::rdbuf()), *this,
    _Myios::fill(), _Val).failed())
    _State |= ios_base::badbit;
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& operator<<(_Mysb *_Strbuf)
  { // insert until end-of-file from a stream buffer
  ios_base::iostate _State = ios_base::goodbit;
  bool _Copied = false;
  const sentry _Ok(*this);

  if (_Ok && _Strbuf != 0)
   for (int_type _Meta = _Traits::eof(); ; _Copied = true)
    { // extract another character from stream buffer
    try {
    _Meta = _Traits::eq_int_type(_Traits::eof(), _Meta)
     ? _Strbuf->sgetc() : _Strbuf->snextc();
    } catch (...) {
     _Myios::setstate(ios_base::failbit);
     throw;
    }

    if (_Traits::eq_int_type(_Traits::eof(), _Meta))
     break; // end of file, quit

    try { /* begin try block */
     if (_Traits::eq_int_type(_Traits::eof(),
      _Myios::rdbuf()->sputc(
       _Traits::to_char_type(_Meta))))
      { // insertion failed, quit
      _State |= ios_base::badbit;
      break;
      }
    } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
    }

  this->width(0);
  _Myios::setstate(_Strbuf == 0 ? ios_base::badbit
   : !_Copied ? _State | ios_base::failbit : _State);
  return (*this);
  }

           _Myt& put(_Elem _Ch)
  { // insert a character
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (!_Ok)
   _State |= ios_base::badbit;
  else
   { // state okay, insert character
   try { /* begin try block */
   if (_Traits::eq_int_type(_Traits::eof(),
    _Myios::rdbuf()->sputc(_Ch)))
    _State |= ios_base::badbit;
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& write(const _Elem *_Str,
  streamsize _Count)
  { // insert _Count characters from array _Str
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (!_Ok)
   _State |= ios_base::badbit;
  else if (0 < _Count)
   { // state okay, insert characters
                       ;
   try { /* begin try block */
   if (_Myios::rdbuf()->sputn(_Str, _Count) != _Count)
    _State |= ios_base::badbit;
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& flush()
  { // flush output stream
  if (_Myios::rdbuf() != 0)
   { // buffer exists, flush it
   const sentry _Ok(*this);

   if (_Ok && _Myios::rdbuf()->pubsync() == -1)
    _Myios::setstate(ios_base::badbit); // sync failed
   }
  return (*this);
  }

           _Myt& seekp(pos_type _Pos)
  { // set output stream position to _Pos
  const sentry _Ok(*this);

  if (!this->fail()
   && (off_type)_Myios::rdbuf()->pubseekpos(_Pos,
    ios_base::out) == _BADOFF)
   _Myios::setstate(ios_base::failbit);
  return (*this);
  }

           _Myt& seekp(off_type _Off, ios_base::seekdir _Way)
  { // change output stream position by _Off, according to _Way
  const sentry _Ok(*this);

  if (!this->fail()
   && (off_type)_Myios::rdbuf()->pubseekoff(_Off, _Way,
    ios_base::out) == _BADOFF)
   _Myios::setstate(ios_base::failbit);
  return (*this);
  }

           pos_type tellp()
  { // return output stream position
  const sentry _Ok(*this);

  if (!this->fail())
   return (_Myios::rdbuf()->pubseekoff(0,
    ios_base::cur, ios_base::out));
  else
   return (pos_type(_BADOFF));
  }
 };

 // basic_ostream TEMPLATE OPERATORS

  // INSERTERS
template<class _Elem,
 class _Traits> inline
 basic_ostream<_Elem, _Traits>& operator<<(
  basic_ostream<_Elem, _Traits>& _Ostr, const char *_Val)
 { // insert NTBS
 ios_base::iostate _State = ios_base::goodbit;
 streamsize _Count = (streamsize)::std:: strlen(_Val); // may overflow
 streamsize _Pad = _Ostr.width() <= 0 || _Ostr.width() <= _Count
  ? 0 : _Ostr.width() - _Count;
 const typename basic_ostream<_Elem, _Traits>::sentry _Ok(_Ostr);

 if (!_Ok)
  _State |= ios_base::badbit;
 else
  { // state okay, insert characters
  try { /* begin try block */
  const ctype<_Elem>& _Ctype_fac = use_facet< ctype<_Elem> >(_Ostr.getloc());
  if ((_Ostr.flags() & ios_base::adjustfield) != ios_base::left)
   for (; 0 < _Pad; --_Pad) // pad on left
    if (_Traits::eq_int_type(_Traits::eof(),
     _Ostr.rdbuf()->sputc(_Ostr.fill())))
     { // insertion failed, quit
     _State |= ios_base::badbit;
     break;
     }

  for (; _State == ios_base::goodbit && 0 < _Count; --_Count, ++_Val)
   if (_Traits::eq_int_type(_Traits::eof(),
    _Ostr.rdbuf()->sputc(_Ctype_fac.widen(*_Val))))
     _State |= ios_base::badbit;

  if (_State == ios_base::goodbit)
   for (; 0 < _Pad; --_Pad) // pad on right
    if (_Traits::eq_int_type(_Traits::eof(),
     _Ostr.rdbuf()->sputc(_Ostr.fill())))
     { // insertion failed, quit
     _State |= ios_base::badbit;
     break;
     }
  _Ostr.width(0);
  } catch (...) { /* catch block for basic_ios x */ (_Ostr).setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
  }

 _Ostr.setstate(_State);
 return (_Ostr);
 }

template<class _Elem,
 class _Traits> inline
 basic_ostream<_Elem, _Traits>& operator<<(
  basic_ostream<_Elem, _Traits>& _Ostr, char _Ch)
 { // insert a character
 ios_base::iostate _State = ios_base::goodbit;
 const typename basic_ostream<_Elem, _Traits>::sentry _Ok(_Ostr);

 if (_Ok)
  { // state okay, insert
  const ctype<_Elem>& _Ctype_fac = use_facet< ctype<_Elem> >(_Ostr.getloc());
  streamsize _Pad = _Ostr.width() <= 1 ? 0 : _Ostr.width() - 1;

  try { /* begin try block */
  if ((_Ostr.flags() & ios_base::adjustfield) != ios_base::left)
   for (; _State == ios_base::goodbit && 0 < _Pad;
    --_Pad) // pad on left
    if (_Traits::eq_int_type(_Traits::eof(),
     _Ostr.rdbuf()->sputc(_Ostr.fill())))
     _State |= ios_base::badbit;

  if (_State == ios_base::goodbit
   && _Traits::eq_int_type(_Traits::eof(),
    _Ostr.rdbuf()->sputc(_Ctype_fac.widen(_Ch))))
   _State |= ios_base::badbit;

  for (; _State == ios_base::goodbit && 0 < _Pad;
   --_Pad) // pad on right
   if (_Traits::eq_int_type(_Traits::eof(),
    _Ostr.rdbuf()->sputc(_Ostr.fill())))
    _State |= ios_base::badbit;
  } catch (...) { /* catch block for basic_ios x */ (_Ostr).setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
  }

 _Ostr.width(0);
 _Ostr.setstate(_State);
 return (_Ostr);
 }

template<class _Traits> inline
 basic_ostream<char, _Traits>& operator<<(
  basic_ostream<char, _Traits>& _Ostr,
  const char *_Val)
 { // insert NTBS into char stream
 typedef char _Elem;
 typedef basic_ostream<_Elem, _Traits> _Myos;
 ios_base::iostate _State = ios_base::goodbit;
 streamsize _Count = (streamsize)_Traits::length(_Val); // may overflow
 streamsize _Pad = _Ostr.width() <= 0 || _Ostr.width() <= _Count
  ? 0 : _Ostr.width() - _Count;
 const typename _Myos::sentry _Ok(_Ostr);

 if (!_Ok)
  _State |= ios_base::badbit;
 else
  { // state okay, insert
  try { /* begin try block */
  if ((_Ostr.flags() & ios_base::adjustfield) != ios_base::left)
   for (; 0 < _Pad; --_Pad) // pad on left
    if (_Traits::eq_int_type(_Traits::eof(),
     _Ostr.rdbuf()->sputc(_Ostr.fill())))
     { // insertion failed, quit
     _State |= ios_base::badbit;
     break;
     }

  if (_State == ios_base::goodbit
   && _Ostr.rdbuf()->sputn(_Val, _Count) != _Count)
   _State |= ios_base::badbit;

  if (_State == ios_base::goodbit)
   for (; 0 < _Pad; --_Pad) // pad on right
    if (_Traits::eq_int_type(_Traits::eof(),
     _Ostr.rdbuf()->sputc(_Ostr.fill())))
     { // insertion failed, quit
     _State |= ios_base::badbit;
     break;
     }
  _Ostr.width(0);
  } catch (...) { /* catch block for basic_ios x */ (_Ostr).setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
  }

 _Ostr.setstate(_State);
 return (_Ostr);
 }

template<class _Traits> inline
 basic_ostream<char, _Traits>& operator<<(
  basic_ostream<char, _Traits>& _Ostr, char _Ch)
 { // insert a char into char stream
 typedef char _Elem;
 typedef basic_ostream<_Elem, _Traits> _Myos;
 ios_base::iostate _State = ios_base::goodbit;
 const typename _Myos::sentry _Ok(_Ostr);

 if (_Ok)
  { // state okay, insert
  streamsize _Pad = _Ostr.width() <= 1 ? 0 : _Ostr.width() - 1;

  try { /* begin try block */
  if ((_Ostr.flags() & ios_base::adjustfield) != ios_base::left)
   for (; _State == ios_base::goodbit && 0 < _Pad;
    --_Pad) // pad on left
    if (_Traits::eq_int_type(_Traits::eof(),
     _Ostr.rdbuf()->sputc(_Ostr.fill())))
     _State |= ios_base::badbit;

  if (_State == ios_base::goodbit
   && _Traits::eq_int_type(_Traits::eof(),
    _Ostr.rdbuf()->sputc(_Ch)))
   _State |= ios_base::badbit;

  for (; _State == ios_base::goodbit && 0 < _Pad;
   --_Pad) // pad on right
   if (_Traits::eq_int_type(_Traits::eof(),
    _Ostr.rdbuf()->sputc(_Ostr.fill())))
    _State |= ios_base::badbit;
  } catch (...) { /* catch block for basic_ios x */ (_Ostr).setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
  }

 _Ostr.width(0);
 _Ostr.setstate(_State);
 return (_Ostr);
 }

template<class _Elem,
 class _Traits> inline
 basic_ostream<_Elem, _Traits>& operator<<(
  basic_ostream<_Elem, _Traits>& _Ostr, const _Elem *_Val)
 { // insert NTCS
 typedef basic_ostream<_Elem, _Traits> _Myos;

 ios_base::iostate _State = ios_base::goodbit;
 streamsize _Count = (streamsize)_Traits::length(_Val); // may overflow
 streamsize _Pad = _Ostr.width() <= 0 || _Ostr.width() <= _Count
  ? 0 : _Ostr.width() - _Count;
 const typename _Myos::sentry _Ok(_Ostr);

 if (!_Ok)
  _State |= ios_base::badbit;
 else
  { // state okay, insert
  try { /* begin try block */
  if ((_Ostr.flags() & ios_base::adjustfield) != ios_base::left)
   for (; 0 < _Pad; --_Pad) // pad on left
    if (_Traits::eq_int_type(_Traits::eof(),
     _Ostr.rdbuf()->sputc(_Ostr.fill())))
     { // insertion failed, quit
     _State |= ios_base::badbit;
     break;
     }

  if (_State == ios_base::goodbit
   && _Ostr.rdbuf()->sputn(_Val, _Count) != _Count)
   _State |= ios_base::badbit;

  if (_State == ios_base::goodbit)
   for (; 0 < _Pad; --_Pad) // pad on right
    if (_Traits::eq_int_type(_Traits::eof(),
     _Ostr.rdbuf()->sputc(_Ostr.fill())))
     { // insertion failed, quit
     _State |= ios_base::badbit;
     break;
     }
  _Ostr.width(0);
  } catch (...) { /* catch block for basic_ios x */ (_Ostr).setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
  }

 _Ostr.setstate(_State);
 return (_Ostr);
 }

template<class _Elem,
 class _Traits> inline
 basic_ostream<_Elem, _Traits>& operator<<(
  basic_ostream<_Elem, _Traits>& _Ostr, _Elem _Ch)
 { // insert a character
 typedef basic_ostream<_Elem, _Traits> _Myos;

 ios_base::iostate _State = ios_base::goodbit;
 const typename _Myos::sentry _Ok(_Ostr);

 if (_Ok)
  { // state okay, insert
  streamsize _Pad = _Ostr.width() <= 1 ? 0 : _Ostr.width() - 1;

  try { /* begin try block */
  if ((_Ostr.flags() & ios_base::adjustfield) != ios_base::left)
   for (; _State == ios_base::goodbit && 0 < _Pad;
    --_Pad) // pad on left
    if (_Traits::eq_int_type(_Traits::eof(),
     _Ostr.rdbuf()->sputc(_Ostr.fill())))
     _State |= ios_base::badbit;

  if (_State == ios_base::goodbit
   && _Traits::eq_int_type(_Traits::eof(),
    _Ostr.rdbuf()->sputc(_Ch)))
   _State |= ios_base::badbit;

  for (; _State == ios_base::goodbit && 0 < _Pad;
   --_Pad) // pad on right
   if (_Traits::eq_int_type(_Traits::eof(),
    _Ostr.rdbuf()->sputc(_Ostr.fill())))
    _State |= ios_base::badbit;
  } catch (...) { /* catch block for basic_ios x */ (_Ostr).setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
  }

 _Ostr.width(0);
 _Ostr.setstate(_State);
 return (_Ostr);
 }

template<class _Traits> inline
 basic_ostream<char, _Traits>& operator<<(
  basic_ostream<char, _Traits>& _Ostr, const signed char *_Val)
 { // insert a signed char NTBS
 return (_Ostr << (const char *)_Val);
 }

template<class _Traits> inline
 basic_ostream<char, _Traits>& operator<<(
  basic_ostream<char, _Traits>& _Ostr, signed char _Ch)
 { // insert a signed char
 return (_Ostr << (char)_Ch);
 }

template<class _Traits> inline
 basic_ostream<char, _Traits>& operator<<(
  basic_ostream<char, _Traits>& _Ostr, const unsigned char *_Val)
 { // insert an unsigned char NTBS
 return (_Ostr << (const char *)_Val);
 }

template<class _Traits> inline
 basic_ostream<char, _Traits>& operator<<(
  basic_ostream<char, _Traits>& _Ostr, unsigned char _Ch)
 { // insert an unsigned char
 return (_Ostr << (char)_Ch);
 }




template<class _Elem,
 class _Traits,
 class _Ty> inline
 basic_ostream<_Elem, _Traits>&
  operator<<(basic_ostream<_Elem, _Traits>&& _Ostr, const _Ty& _Val)
 { // insert to rvalue stream
 return (_Ostr << _Val);
 }
  // MANIPULATORS
template<class _Elem,
 class _Traits> inline
 basic_ostream<_Elem, _Traits>&
          endl(basic_ostream<_Elem, _Traits>& _Ostr)
 { // insert newline and flush stream
 _Ostr.put(_Ostr.widen('\n'));
 _Ostr.flush();
 return (_Ostr);
 }

template<class _Elem,
 class _Traits> inline
 basic_ostream<_Elem, _Traits>&
          ends(basic_ostream<_Elem, _Traits>& _Ostr)
 { // insert null character
 _Ostr.put(_Elem());
 return (_Ostr);
 }

template<class _Elem,
 class _Traits> inline
 basic_ostream<_Elem, _Traits>&
          flush(basic_ostream<_Elem, _Traits>& _Ostr)
 { // flush stream
 _Ostr.flush();
 return (_Ostr);
 }


  // INSERTER FOR error_category
template<class _Elem,
 class _Traits> inline
 basic_ostream<_Elem, _Traits>&
  operator<<(basic_ostream<_Elem, _Traits>& _Ostr,
   const error_code& _Errcode)
 { // display error code
 return (_Ostr << _Errcode.category().name() << ':' << _Errcode.value());
 }

}


/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */


namespace std {
  // TEMPLATE CLASS basic_istream
template<class _Elem,
 class _Traits>
 class basic_istream
  : virtual public basic_ios<_Elem, _Traits>
 { // control extractions from a stream buffer
public:
 typedef basic_istream<_Elem, _Traits> _Myt;
 typedef basic_ios<_Elem, _Traits> _Myios;
 typedef basic_streambuf<_Elem, _Traits> _Mysb;
 typedef istreambuf_iterator<_Elem, _Traits> _Iter;
 typedef ctype<_Elem> _Ctype;
 typedef num_get<_Elem, _Iter> _Nget;


 explicit basic_istream(_Mysb *_Strbuf = 0,
  bool _Isstd = false)






  : _Chcount(0)
  { // construct from stream buffer pointer
  _Myios::init(_Strbuf, _Isstd);
  }

        basic_istream(_Uninitialized)
  { // construct uninitialized
  this->_Addstd(this);
  }


protected:
        basic_istream(_Myt&& _Right)
  : _Chcount(_Right._Chcount)
  { // construct by moving _Right
  _Myios::init();
  _Myios::move(::std:: move(_Right));
  _Right._Chcount = 0;
  }

 _Myt& operator=(_Myt&& _Right)
  { // move from _Right
  this->swap(_Right);
  return (*this);
  }

 void swap(_Myt& _Right)
  { // swap with _Right
  _Myios::swap(_Right);
  ::std:: swap(_Chcount, _Right._Chcount);
  }
private:
        basic_istream(const _Myt&); // not defined
 _Myt& operator=(const _Myt&); // not defined

public:


 virtual ~basic_istream()
  { // destroy the object
  }

 typedef typename _Traits::int_type int_type;
 typedef typename _Traits::pos_type pos_type;
 typedef typename _Traits::off_type off_type;

  // TEMPLATE CLASS sentry
 class _Sentry_base
  { // stores thread lock and reference to input stream
 public:
         _Sentry_base(_Myt& _Istr)
   : _Myistr(_Istr)
   { // lock the stream buffer, if there
   if (_Myistr.rdbuf() != 0)
    _Myistr.rdbuf()->_Lock();
   }

         ~_Sentry_base()
   { // destroy after unlocking
   if (_Myistr.rdbuf() != 0)
    _Myistr.rdbuf()->_Unlock();
   }

  _Myt& _Myistr; // the input stream, for _Unlock call at destruction

 private:
  _Sentry_base& operator=(const _Sentry_base&);
  };

 class sentry
  : public _Sentry_base
  { // stores thread lock and result of _Ipfx call
 public:
  explicit sentry(_Myt& _Istr, bool _Noskip = false)
   : _Sentry_base(_Istr)
   { // construct locking and calling _Ipfx
   _Ok = this->_Myistr._Ipfx(_Noskip);
   }

                 operator bool() const
   { // test if _Ipfx succeeded
   return (_Ok);
   }







 private:
         sentry(const sentry&); // not defined
  sentry& operator=(const sentry&); // not defined


  bool _Ok; // true if _Ipfx succeeded at construction
  };

           bool _Ipfx(bool _Noskip = false)
  { // test stream state and skip whitespace as needed
  if (this->good())
   { // state okay, flush tied stream and skip whitespace
   if (_Myios::tie() != 0)
    _Myios::tie()->flush();

   if (!_Noskip && this->flags() & ios_base::skipws)
    { // skip whitespace
    const _Ctype& _Ctype_fac = use_facet< _Ctype >(this->getloc());

    try { /* begin try block */
    int_type _Meta = _Myios::rdbuf()->sgetc();

    for (; ; _Meta = _Myios::rdbuf()->snextc())
     if (_Traits::eq_int_type(_Traits::eof(), _Meta))
      { // end of file, quit
      _Myios::setstate(ios_base::eofbit);
      break;
      }
     else if (!_Ctype_fac.is(_Ctype::space,
      _Traits::to_char_type(_Meta)))
      break; // not whitespace, quit
    } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
    }

   if (this->good())
    return (true);
   }
  _Myios::setstate(ios_base::failbit);
  return (false);
  }

 bool ipfx(bool _Noskip = false)
  { // test stream state and skip whitespace as needed (retained)
  return (_Ipfx(_Noskip));
  }

 void isfx()
  { // perform any wrapup (retained)
  }

 _Myt& operator>>(_Myt& ( *_Pfn)(_Myt&))
  { // call basic_istream manipulator
                      ;
  return ((*_Pfn)(*this));
  }

 _Myt& operator>>(_Myios& ( *_Pfn)(_Myios&))
  { // call basic_ios manipulator
                      ;
  (*_Pfn)(*(_Myios *)this);
  return (*this);
  }

 _Myt& operator>>(ios_base& ( *_Pfn)(ios_base&))
  { // call ios_base manipulator
                      ;
  (*_Pfn)(*(ios_base *)this);
  return (*this);
  }

           _Myt& operator>>(bool& _Val)
  { // extract a boolean
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to extract
   const _Nget& _Nget_fac = use_facet< _Nget >(this->getloc());

   try { /* begin try block */
   _Nget_fac.get(_Iter(_Myios::rdbuf()), _Iter(0),
    *this, _State, _Val);
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& operator>>(short& _Val)
  { // extract a short
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to extract
   long _Tmp = 0;
   const _Nget& _Nget_fac = use_facet< _Nget >(this->getloc());

   try { /* begin try block */
   _Nget_fac.get(_Iter(_Myios::rdbuf()), _Iter(0),
    *this, _State, _Tmp);
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }

   if (_State & ios_base::failbit
    || _Tmp < (-32767-1) /* minimum signed   short value */ || 32767 /* maximum signed   short value */ < _Tmp)
    _State |= ios_base::failbit;
   else
    _Val = (short)_Tmp;
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& operator>>(unsigned short& _Val)
  { // extract an unsigned short
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to extract
   const _Nget& _Nget_fac = use_facet< _Nget >(this->getloc());

   try { /* begin try block */
   _Nget_fac.get(_Iter(_Myios::rdbuf()), _Iter(0),
    *this, _State, _Val);
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& operator>>(int& _Val)
  { // extract an int
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to extract
   long _Tmp = 0;
   const _Nget& _Nget_fac = use_facet< _Nget >(this->getloc());

   try { /* begin try block */
   _Nget_fac.get(_Iter(_Myios::rdbuf()), _Iter(0),
    *this, _State, _Tmp);
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }

   if (_State & ios_base::failbit
    || _Tmp < (-2147483647L-1) /* minimum signed   long value */ /* minimum signed   int value */ || 2147483647L /* maximum signed   long value */ /* maximum signed   int value */ < _Tmp)
    _State |= ios_base::failbit;
   else
    _Val = _Tmp;
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& operator>>(unsigned int& _Val)
  { // extract an unsigned int
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);
  if (_Ok)
   { // state okay, use facet to extract
   const _Nget& _Nget_fac = use_facet< _Nget >(this->getloc());

   try { /* begin try block */
   _Nget_fac.get(_Iter(_Myios::rdbuf()), _Iter(0),
    *this, _State, _Val);
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& operator>>(long& _Val)
  { // extract a long
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to extract
   const _Nget& _Nget_fac = use_facet< _Nget >(this->getloc());
   try { /* begin try block */
   _Nget_fac.get(_Iter(_Myios::rdbuf()), _Iter(0),
    *this, _State, _Val);
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& operator>>(unsigned long& _Val)
  { // extract an unsigned long
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to extract
   const _Nget& _Nget_fac = use_facet< _Nget >(this->getloc());

   try { /* begin try block */
   _Nget_fac.get(_Iter(_Myios::rdbuf()), _Iter(0),
    *this, _State, _Val);
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }


           _Myt& operator>>(long long& _Val)
  { // extract a long long
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to extract
   const _Nget& _Nget_fac = use_facet< _Nget >(this->getloc());

   try { /* begin try block */
   _Nget_fac.get(_Iter(_Myios::rdbuf()), _Iter(0),
    *this, _State, _Val);
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& operator>>(unsigned long long& _Val)
  { // extract an unsigned long long
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);
  if (_Ok)
   { // state okay, use facet to extract
   const _Nget& _Nget_fac = use_facet< _Nget >(this->getloc());

   try { /* begin try block */
   _Nget_fac.get(_Iter(_Myios::rdbuf()), _Iter(0),
    *this, _State, _Val);
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }


           _Myt& operator>>(float& _Val)
  { // extract a float
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to extract
   const _Nget& _Nget_fac = use_facet< _Nget >(this->getloc());

   try { /* begin try block */
   _Nget_fac.get(_Iter(_Myios::rdbuf()), _Iter(0),
    *this, _State, _Val);
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& operator>>(double& _Val)
  { // extract a double
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);
  if (_Ok)
   { // state okay, use facet to extract
   const _Nget& _Nget_fac = use_facet< _Nget >(this->getloc());

   try { /* begin try block */
   _Nget_fac.get(_Iter(_Myios::rdbuf()), _Iter(0),
    *this, _State, _Val);
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& operator>>(long double& _Val)
  { // extract a long double
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to extract
   const _Nget& _Nget_fac = use_facet< _Nget >(this->getloc());
   try { /* begin try block */
   _Nget_fac.get(_Iter(_Myios::rdbuf()), _Iter(0),
    *this, _State, _Val);
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& operator>>(void *& _Val)
  { // extract a void pointer
  ios_base::iostate _State = ios_base::goodbit;
  const sentry _Ok(*this);

  if (_Ok)
   { // state okay, use facet to extract
   const _Nget& _Nget_fac = use_facet< _Nget >(this->getloc());

   try { /* begin try block */
   _Nget_fac.get(_Iter(_Myios::rdbuf()), _Iter(0),
    *this, _State, _Val);
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& operator>>(_Mysb *_Strbuf)
  { // extract until end-of-file into a stream buffer
  ios_base::iostate _State = ios_base::goodbit;
  bool _Copied = false;
  const sentry _Ok(*this);

  if (_Ok && _Strbuf != 0)
   { // state okay, extract characters
   try { /* begin try block */
   int_type _Meta = _Myios::rdbuf()->sgetc();

   for (; ; _Meta = _Myios::rdbuf()->snextc())
    if (_Traits::eq_int_type(_Traits::eof(), _Meta))
     { // end of file, quit
     _State |= ios_base::eofbit;
     break;
     }
    else
     { // got a character, insert it into buffer
     try {
      if (_Traits::eq_int_type(_Traits::eof(),
       _Strbuf->sputc(_Traits::to_char_type(_Meta))))
       break;
     } catch (...) {
      break;
     }
     _Copied = true;
     }
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(!_Copied ? _State | ios_base::failbit : _State);
  return (*this);
  }

           int_type get()
  { // extract a metacharacter
  int_type _Meta = 0;
  ios_base::iostate _State = ios_base::goodbit;
  _Chcount = 0;
  const sentry _Ok(*this, true);

  if (!_Ok)
   _Meta = _Traits::eof(); // state not okay, return EOF
  else
   { // state okay, extract a character
   try { /* begin try block */
   _Meta = _Myios::rdbuf()->sgetc();

   if (_Traits::eq_int_type(_Traits::eof(), _Meta))
    _State |= ios_base::eofbit | ios_base::failbit; // end of file
   else
    { // got a character, count it
    _Myios::rdbuf()->sbumpc();
    ++_Chcount;
    }
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (_Meta);
  }

 _Myt& get(_Elem *_Str, streamsize _Count)
  { // get up to _Count characters into NTCS
  return (get(_Str, _Count, _Myios::widen('\n')));
  }

           _Myt& get(_Elem *_Str,
  streamsize _Count, _Elem _Delim)
  { // get up to _Count characters into NTCS, stop before _Delim
  ios_base::iostate _State = ios_base::goodbit;
  _Chcount = 0;
  const sentry _Ok(*this, true);

  if (_Ok && 0 < _Count)
   { // state okay, extract characters
   try { /* begin try block */
   int_type _Meta = _Myios::rdbuf()->sgetc();

   for (; 0 < --_Count; _Meta = _Myios::rdbuf()->snextc())
    if (_Traits::eq_int_type(_Traits::eof(), _Meta))
     { // end of file, quit
     _State |= ios_base::eofbit;
     break;
     }
    else if (_Traits::to_char_type(_Meta) == _Delim)
     break; // got a delimiter, quit
    else
     { // got a character, add it to string
                         ;
     *_Str++ = _Traits::to_char_type(_Meta);
     ++_Chcount;
     }
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_Chcount == 0
   ? _State | ios_base::failbit : _State);
  *_Str = _Elem(); // add terminating null character
  return (*this);
  }

 _Myt& get(_Elem& _Ch)
  { // get a character
  int_type _Meta = get();
  if (!_Traits::eq_int_type(_Traits::eof(), _Meta))
   _Ch = _Traits::to_char_type(_Meta);
  return (*this);
  }

 _Myt& get(_Mysb& _Strbuf)
  { // extract up to newline and insert into stream buffer
  return (get(_Strbuf, _Myios::widen('\n')));
  }

           _Myt& get(_Mysb& _Strbuf, _Elem _Delim)
  { // extract up to delimiter and insert into stream buffer
  ios_base::iostate _State = ios_base::goodbit;
  _Chcount = 0;
  const sentry _Ok(*this, true);

  if (_Ok)
   { // state okay, use facet to extract
   try { /* begin try block */
   int_type _Meta = _Myios::rdbuf()->sgetc();

   for (; ; _Meta = _Myios::rdbuf()->snextc())
    if (_Traits::eq_int_type(_Traits::eof(), _Meta))
     { // end of file, quit
     _State |= ios_base::eofbit;
     break;
     }
    else
     { // got a character, insert it into stream buffer
     try {
      _Elem _Ch = _Traits::to_char_type(_Meta);
      if (_Ch == _Delim
       || _Traits::eq_int_type(_Traits::eof(),
        _Strbuf.sputc(_Ch)))
       break;
     } catch (...) {
      break;
     }
     ++_Chcount;
     }
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  if (_Chcount == 0)
   _State |= ios_base::failbit;
  _Myios::setstate(_State);
  return (*this);
  }

 _Myt& getline(_Elem *_Str, streamsize _Count)
  { // get up to _Count characters into NTCS, discard newline
  return (getline(_Str, _Count, _Myios::widen('\n')));
  }

           _Myt& getline(_Elem *_Str,
  streamsize _Count, _Elem _Delim)
  { // get up to _Count characters into NTCS, discard _Delim
  ios_base::iostate _State = ios_base::goodbit;
  _Chcount = 0;
  const sentry _Ok(*this, true);

  if (_Ok && 0 < _Count)
   { // state okay, use facet to extract
   int_type _Metadelim = _Traits::to_int_type(_Delim);

   try { /* begin try block */
   int_type _Meta = _Myios::rdbuf()->sgetc();

   for (; ; _Meta = _Myios::rdbuf()->snextc())
    if (_Traits::eq_int_type(_Traits::eof(), _Meta))
     { // end of file, quit
     _State |= ios_base::eofbit;
     break;
     }
    else if (_Meta == _Metadelim)
     { // got a delimiter, discard it and quit
     ++_Chcount;
     _Myios::rdbuf()->sbumpc();
     break;
     }
    else if (--_Count <= 0)
     { // buffer full, quit
     _State |= ios_base::failbit;
     break;
     }
    else
     { // got a character, add it to string
                         ;
     *_Str++ = _Traits::to_char_type(_Meta);
     ++_Chcount;
     }
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  *_Str = _Elem(); // add terminating null character
  _Myios::setstate(_Chcount == 0 ? _State | ios_base::failbit : _State);
  return (*this);
  }

           _Myt& ignore(streamsize _Count = 1,
  int_type _Metadelim = _Traits::eof())
  { // ignore up to _Count characters, discarding delimiter
  ios_base::iostate _State = ios_base::goodbit;
  _Chcount = 0;
  const sentry _Ok(*this, true);

  if (_Ok && 0 < _Count)
   { // state okay, use facet to extract
   try { /* begin try block */
   for (; ; )
    { // get a metacharacter if more room in buffer
    int_type _Meta;
    if (_Count != (numeric_limits<streamsize>::max)()
     && --_Count < 0)
     break; // buffer full, quit
    else if (_Traits::eq_int_type(_Traits::eof(),
     _Meta = _Myios::rdbuf()->sbumpc()))
     { // end of file, quit
     _State |= ios_base::eofbit;
     break;
     }
    else
     { // got a character, count it
     ++_Chcount;
     if (_Meta == _Metadelim)
      break; // got a delimiter, quit
     }
    }
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& read(_Elem *_Str, streamsize _Count)
  { // read up to _Count characters into buffer
  ios_base::iostate _State = ios_base::goodbit;
  _Chcount = 0;
  const sentry _Ok(*this, true);

  if (_Ok && 0 < _Count)
   { // state okay, use facet to extract
   try { /* begin try block */
                       ;
   const streamsize _Num = _Myios::rdbuf()->sgetn(_Str, _Count);
   _Chcount += _Num;
   if (_Num != _Count)
    _State |= ios_base::eofbit | ios_base::failbit; // short read
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           streamsize readsome(_Elem *_Str,
  streamsize _Count)
  { // read up to _Count characters into buffer, without blocking
  ios_base::iostate _State = ios_base::goodbit;
  _Chcount = 0;
  const sentry _Ok(*this, true);
  streamsize _Num;

  if (!_Ok)
   _State |= ios_base::failbit; // no buffer, fail
  else if ((_Num = _Myios::rdbuf()->in_avail()) < 0)
   _State |= ios_base::eofbit; // no characters available
  else if (0 < _Count && 0 < _Num)
   { // validate _Str and read
                       ;
   read(_Str, _Num < _Count ? _Num : _Count); // read available
   }

  _Myios::setstate(_State);
  return (gcount());
  }

           int_type peek()
  { // return next character, unconsumed
  ios_base::iostate _State = ios_base::goodbit;
  _Chcount = 0;
  int_type _Meta = 0;
  const sentry _Ok(*this, true);

  if (!_Ok)
   _Meta = _Traits::eof(); // state not okay, return EOF
  else
   { // state okay, read a character
   try { /* begin try block */
   if (_Traits::eq_int_type(_Traits::eof(),
    _Meta = _Myios::rdbuf()->sgetc()))
    _State |= ios_base::eofbit;
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (_Meta);
  }

           _Myt& putback(_Elem _Ch)
  { // put back a character
  _Chcount = 0;
  ios_base::iostate _State = ios_base::goodbit;
  ios_base::iostate _Oldstate = _Myios::rdstate();
  _Myios::clear(_Oldstate & ~ios_base::eofbit);
  const sentry _Ok(*this, true);

  if (_Ok)
   { // state okay, put character back
   try { /* begin try block */
   if (_Traits::eq_int_type(_Traits::eof(),
    _Myios::rdbuf()->sputbackc(_Ch)))
    _State |= ios_base::badbit | _Oldstate;
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

           _Myt& unget()
  { // put back last read character
  _Chcount = 0;
  ios_base::iostate _State = ios_base::goodbit;
  ios_base::iostate _Oldstate = _Myios::rdstate();
  _Myios::clear(_Oldstate & ~ios_base::eofbit);
  const sentry _Ok(*this, true);

  if (_Ok)
   { // state okay, put character back
   try { /* begin try block */
   if (_Traits::eq_int_type(_Traits::eof(),
    _Myios::rdbuf()->sungetc()))
    _State |= ios_base::badbit | _Oldstate;
   } catch (...) { /* catch block for _Myios */ _Myios::setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Myios::setstate(_State);
  return (*this);
  }

 streamsize gcount() const
  { // get count from last extraction
  return (_Chcount);
  }

           int sync()
  { // synchronize with input source
  const sentry _Ok(*this, true);

  if (_Myios::rdbuf() == 0)
   return (-1);
  else if (_Myios::rdbuf()->pubsync() == -1)
   { // sync failed
   _Myios::setstate(ios_base::badbit);
   return (-1);
   }
  else
   return (0);
  }

 _Myt& seekg(pos_type _Pos)
  { // set input stream position to _Pos
  ios_base::iostate _State = ios_base::goodbit;
  ios_base::iostate _Oldstate = _Myios::rdstate();
  _Myios::clear(_Oldstate & ~ios_base::eofbit);
  const sentry _Ok(*this, true);

  if (!this->fail()
   && (off_type)_Myios::rdbuf()->pubseekpos(_Pos,
    ios_base::in) == _BADOFF)
   _Myios::setstate(_State | ios_base::failbit);
  return (*this);
  }

 _Myt& seekg(off_type _Off, ios_base::seekdir _Way)
  { // change input stream position by _Off, according to _Way
  ios_base::iostate _State = ios_base::goodbit;
  ios_base::iostate _Oldstate = _Myios::rdstate();
  _Myios::clear(_Oldstate & ~ios_base::eofbit);
  const sentry _Ok(*this, true);

  if (!this->fail()
   && (off_type)_Myios::rdbuf()->pubseekoff(_Off, _Way,
    ios_base::in) == _BADOFF)
   _Myios::setstate(_State | ios_base::failbit);
  return (*this);
  }

 pos_type tellg()
  { // return input stream position
  const sentry _Ok(*this, true);

  if (!this->fail())
   return (_Myios::rdbuf()->pubseekoff(0,
    ios_base::cur, ios_base::in));
  else
   return (pos_type(_BADOFF));
  }

private:
 streamsize _Chcount; // the character count
 };

 // basic_istream TEMPLATE OPERATORS

  // TEMPLATE CLASS basic_iostream
template<class _Elem,
 class _Traits>
 class basic_iostream
 : public basic_istream<_Elem, _Traits>,
  public basic_ostream<_Elem, _Traits>
 { // control insertions and extractions from a stream buffer
public:
 typedef basic_iostream<_Elem, _Traits> _Myt;
 typedef basic_istream<_Elem, _Traits> _Myis;
 typedef basic_ostream<_Elem, _Traits> _Myos;
 typedef basic_ios<_Elem, _Traits> _Myios;
 typedef _Elem char_type;
 typedef _Traits traits_type;
 typedef typename _Traits::int_type int_type;
 typedef typename _Traits::pos_type pos_type;
 typedef typename _Traits::off_type off_type;

 explicit basic_iostream(basic_streambuf<_Elem, _Traits> *_Strbuf)
  : _Myis(_Strbuf, false),
   _Myos(_Noinit, false)
  { // construct from stream buffer pointer
  }


protected:
        basic_iostream(_Myt&& _Right)
  : _Myis(_Right.rdbuf(), false),
   _Myos(_Noinit, false)
  { // construct by moving _Right
  _Myios::init();
  _Myios::move(::std:: forward<_Myt>(_Right));
  }

 _Myt& operator=(_Myt&& _Right)
  { // move from _Right
  this->swap(_Right);
  return (*this);
  }

 void swap(_Myt& _Right)
  { // swap with _Right
  if (this != &_Right)
   _Myios::swap(_Right);
  }
private:
        basic_iostream(const _Myt&); // not defined
 _Myt& operator=(const _Myt&); // not defined

public:


 virtual ~basic_iostream()
  { // destroy the object
  }
 };

 // basic_iostream TEMPLATE OPERATORS

  // EXTRACTORS
template<class _Elem,
 class _Traits> inline
 basic_istream<_Elem, _Traits>& operator>>(
  basic_istream<_Elem, _Traits> & _Istr, _Elem *_Str)
 { // extract NTBS
                     ;
 typedef basic_istream<_Elem, _Traits> _Myis;
 typedef ctype<_Elem> _Ctype;
 ios_base::iostate _State = ios_base::goodbit;
 _Elem *_Str0 = _Str;
 const typename _Myis::sentry _Ok(_Istr);

 if (_Ok)
  { // state okay, extract characters
  const _Ctype& _Ctype_fac = use_facet< _Ctype >(_Istr.getloc());

  try { /* begin try block */
  streamsize _Count = 0 < _Istr.width() ? _Istr.width()
   : (numeric_limits<streamsize>::max)();
  typename _Myis::int_type _Meta = _Istr.rdbuf()->sgetc();
  _Elem _Ch;
  for (; 0 < --_Count; _Meta = _Istr.rdbuf()->snextc())
   if (_Traits::eq_int_type(_Traits::eof(), _Meta))
    { // end of file, quit
    _State |= ios_base::eofbit;
    break;
    }
   else if (_Ctype_fac.is(_Ctype::space,
    _Ch = _Traits::to_char_type(_Meta))
     || _Ch == _Elem())
    break; // whitespace or nul, quit
   else
    *_Str++ = _Traits::to_char_type(_Meta); // add it to string
  } catch (...) { /* catch block for basic_ios x */ (_Istr).setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
  }

 *_Str = _Elem(); // add terminating null character
 _Istr.width(0);
 _Istr.setstate(_Str == _Str0 ? _State | ios_base::failbit : _State);
 return (_Istr);
 }

template<class _Elem,
 class _Traits> inline
 basic_istream<_Elem, _Traits>& operator>>(
  basic_istream<_Elem, _Traits> & _Istr, _Elem& _Ch)
 { // extract a character
 typedef basic_istream<_Elem, _Traits> _Myis;

 typename _Myis::int_type _Meta;
 ios_base::iostate _State = ios_base::goodbit;
 const typename _Myis::sentry _Ok(_Istr);

 if (_Ok)
  { // state okay, extract characters
  try { /* begin try block */
  _Meta = _Istr.rdbuf()->sbumpc();
  if (_Traits::eq_int_type(_Traits::eof(), _Meta))
   _State |= ios_base::eofbit | ios_base::failbit; // end of file
  else
   _Ch = _Traits::to_char_type(_Meta); // got a character
  } catch (...) { /* catch block for basic_ios x */ (_Istr).setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
  }

 _Istr.setstate(_State);
 return (_Istr);
 }

template<class _Traits> inline
 basic_istream<char, _Traits>& operator>>(
  basic_istream<char, _Traits> & _Istr, signed char *_Str)
 { // extract a signed char NTBS
 return (_Istr >> (char *)_Str);
 }

template<class _Traits> inline
 basic_istream<char, _Traits>& operator>>(
  basic_istream<char, _Traits> & _Istr, signed char& _Ch)
 { // extract a signed char
 return (_Istr >> (char&)_Ch);
 }

template<class _Traits> inline
 basic_istream<char, _Traits>& operator>>(
  basic_istream<char, _Traits> & _Istr, unsigned char *_Str)
 { // extract an unsigned char NTBS
 return (_Istr >> (char *)_Str);
 }

template<class _Traits> inline
 basic_istream<char, _Traits>& operator>>(
  basic_istream<char, _Traits> & _Istr, unsigned char& _Ch)
 { // extract an unsigned char
 return (_Istr >> (char&)_Ch);
 }


template<class _Elem,
 class _Traits,
 class _Ty> inline
 basic_istream<_Elem, _Traits>&
  operator>>(basic_istream<_Elem, _Traits>&& _Istr, _Ty& _Val)
 { // extract from rvalue stream
 return (_Istr >> _Val);
 }
  // MANIPULATORS
template<class _Elem,
 class _Traits> inline
 basic_istream<_Elem, _Traits>&
          ws(basic_istream<_Elem, _Traits>& _Istr)
 { // consume whitespace
 typedef basic_istream<_Elem, _Traits> _Myis;
 typedef ctype<_Elem> _Ctype;

 if (!_Istr.eof())
  { // not at eof, okay to construct sentry and skip
  ios_base::iostate _State = ios_base::goodbit;
  const typename _Myis::sentry _Ok(_Istr, true);

  if (_Ok)
   { // state okay, extract characters
   const _Ctype& _Ctype_fac = use_facet< _Ctype >(_Istr.getloc());

   try { /* begin try block */
   for (typename _Traits::int_type _Meta = _Istr.rdbuf()->sgetc(); ;
    _Meta = _Istr.rdbuf()->snextc())
    if (_Traits::eq_int_type(_Traits::eof(), _Meta))
     { // end of file, quit
     _State |= ios_base::eofbit;
     break;
     }
    else if (!_Ctype_fac.is(_Ctype::space,
     _Traits::to_char_type(_Meta)))
     break; // not whitespace, quit
   } catch (...) { /* catch block for basic_ios x */ (_Istr).setstate(ios_base::badbit, true); /* set badbit and rethrow */ }
   }

  _Istr.setstate(_State);
  }
 return (_Istr);
 }
}


/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */

namespace std {
  // OBJECTS
static ios_base::Init _Ios_init; // force initialization of byte streams

extern istream cin;
extern ostream cout;
extern ostream cerr;







extern ostream clog;
  // CLASS _Winit
class _Winit
 { // controller for wide standard-stream initialization
public:
 _Winit();
 ~_Winit() ;
private:
 static int _Init_cnt;
 };

  // WIDE OBJECTS
static _Winit _Wios_init; // force initialization of wide streams
extern wistream wcin;
extern wostream wcout, wcerr, wclog;
}


/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:1422 */

   namespace MathFuncs
{
    // Returns a + b
    double Add(double a, double b);
    // Returns a - b
    double Subtract(double a, double b);
    // Returns a * b
    double Multiply(double a, double b);
    // Returns a / b
    double Divide(double a, double b);
}

int main()
{
    std::cout << "Test: " << MathFuncs::Add(12,23) << std::endl;
    return 0;
}
