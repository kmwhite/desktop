# dmenu version
VERSION = 4.5

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

# Xinerama, comment if you don't want it
XINERAMALIBS  = -lXinerama
XINERAMAFLAGS = -DXINERAMA

# Xft, comment if you don't want it
# FreeBSD
XFTINC = /usr/local/include/freetype2
# OpenBSD
# XFTINC = /usr/X11R6/include/freetype2
# Linux
# XFTINC = /usr/include/freetype2
XFTLIBS  = -lXft -lXrender -lfreetype -lz -lfontconfig

# includes and libs
INCS = -I${X11INC} -I${XFTINC}
LIBS = -L${X11LIB} -lX11 ${XINERAMALIBS} ${XFTLIBS}

# flags
CPPFLAGS+= -D_BSD_SOURCE -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS}
#CFLAGS   = -g -std=c99 -pedantic -Wall -O0 ${INCS} ${CPPFLAGS}
CFLAGS  += -std=c99 ${INCS} ${CPPFLAGS}
LDFLAGS += ${LIBS}

# compiler and linker
CC?= cc
