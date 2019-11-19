# dwm version
VERSION = 6.0

# Customize below to fit your system

# paths
PREFIX = ${HOME}/.local
MANPREFIX = ${PREFIX}/share/man

# FreeBSD
X11INC = /usr/local/include
X11LIB = /usr/local/lib
# OpenBSD
# X11INC = /usr/X11R6/include
# X11LIB = /usr/X11R6/lib
# Linux
# X11INC = /usr/include/X11
# X11LIB = /usr/lib/X11

# Xinerama
XINERAMALIBS = -L${X11LIB} -lXinerama
XINERAMAFLAGS = -DXINERAMA

# Xft and FreeType
# FreeBSD
FTINC = /usr/local/include/freetype2
# OpenBSD
# FTINC = /usr/X11R6/include/freetype2/
# Linux
# FTINC = /usr/include/freetype2

# includes and libs
INCS = -I. -I/usr/include -I${X11INC} -I${FTINC}
LIBS = -L/usr/lib -lc -L${X11LIB} -lX11 ${XINERAMALIBS} -lXft

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS}
# CFLAGS = -g -std=c99 -pedantic -Wall -O0 ${INCS} ${CPPFLAGS}
# LDFLAGS = -g ${LIBS}
CFLAGS = -std=c99 -pedantic -Wall -Os ${INCS} ${CPPFLAGS}
LDFLAGS = -s ${LIBS}
# Solaris
# CFLAGS = -fast ${INCS} -DVERSION=\"${VERSION}\"
# LDFLAGS = ${LIBS}

# compiler and linker
CC = cc
