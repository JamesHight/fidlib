
# Define a few constants using m4 macros to prevent multiple definitions.
m4_define([FIDLIB_MAJOR],	[0])
m4_define([FIDLIB_MINOR],	[9])
m4_define([FIDLIB_PATCH],	[11])
m4_define([FIDLIB_RC],		[])
m4_define([FIDLIB_BUGS],	[jim@uazu.net])
m4_define([FIDLIB_VERSION_STRING], FIDLIB_MAJOR[.]FIDLIB_MINOR[.]FIDLIB_PATCH[]FIDLIB_RC)

m4_pattern_allow([AM_PROG_AR])

# Library versioning
# These numbers should be tweaked on every release. Read carefully:
# http://www.gnu.org/software/libtool/manual/html_node/Updating-version-info.html
# http://sourceware.org/autobook/autobook/autobook_91.html
lt_current="0"
lt_revision="2"
lt_age="1"
LTLDFLAGS="-version-info ${lt_current}:${lt_revision}:${lt_age}"


# Initialize autoconf.
AC_INIT([fidlib], [FIDLIB_VERSION_STRING], [FIDLIB_BUGS])

AC_PREREQ(2.64)

AC_CONFIG_SRCDIR([fidlib.h])
AC_CONFIG_FILES([
	fidlib.pc \
	Makefile
])
#AC_CONFIG_AUX_DIR([config])
#AC_CONFIG_HEADERS([config.h:config.h.in])
AC_CONFIG_MACRO_DIR([m4])

#AC_CANONICAL_SYSTEM
AC_CANONICAL_HOST
AC_CANONICAL_BUILD
AC_CANONICAL_TARGET

# Initialize automake.
AM_INIT_AUTOMAKE([foreign subdir-objects])

# Checks for language.
AC_LANG([C])

# Checks for programs.
AC_PROG_CC([gcc clang])
AC_PROG_CC_C99
m4_ifdef([AM_PROG_AR], [AM_PROG_AR])

# Checks for header files
AC_C_CONST
AC_HEADER_STDC
AC_CHECK_HEADERS([math.h unistd.h errno.h])

# Initialize libtool.
AC_PROG_LIBTOOL

AC_ARG_ENABLE([test],
	AS_HELP_STRING([--enable-test], [Enable test application firun (default: disabled)]),
	[enable_test=$enableval],
	[enable_test="no"])


AS_IF([test "x$enable_test" = "xyes"], [
	AC_DEFINE([USE_TEST], 1, [Enable Test Application])
])

# Checks for libraries.
LIBS="-lm $LIBS"

# Requires for pkg-config
AC_SUBST([LIBS])
AC_SUBST([TEST_LIBS])

# Should the unit tests be built?
AM_CONDITIONAL([BUILD_TEST], [test "x$enable_test" = "xyes"])

# Generate the "configure" script
AC_OUTPUT
