INCLUDES := $(shell pkg-config --cflags gimp-2.0)
LIBS := $(shell pkg-config --libs gimp-2.0)

GIMP_VERSION := $(basename $(shell pkg-config --modversion gimp-2.0))
INSTALL = install
INSTALL_DIR = ${HOME}/.gimp-${GIMP_VERSION}/plug-ins
RM = rm -f
