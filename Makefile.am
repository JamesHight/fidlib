ACLOCAL_AMFLAGS = -I m4

pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = $(top_builddir)/fidlib.pc

include_HEADERS = fidlib.h

bin_PROGRAMS =
lib_LTLIBRARIES = libfidlib.la


libfidlib_la_CFLAGS = $(AM_CFLAGS) -Wall -Wextra -I$(top_srcdir)
libfidlib_la_LDFLAGS = $(LTLDFLAGS) $(LDFLAGS)
libfidlib_la_SOURCES = fidlib.c

if BUILD_TEST
bin_PROGRAMS += firun

firun_SOURCES = firun.c
firun_LDADD = $(top_builddir)/libfidlib.la
firun_CFLAGS = $(AM_CFLAGS) -Wall $(TEST_CFLAGS) -I$(top_srcdir)
firun_LDFLAGS = $(LTLDFLAGS) $(TEST_LIBS)

EXTRA_DIST = README.firun
endif
