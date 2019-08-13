include config.mk

.SUFFIXES: .o .c

SRC = farbfeld.c
OBJ = ${SRC:.c=.o}

all: farbfeld

${OBJ}: config.mk

.c.o:
	${CC} ${INCLUDES} ${CFLAGS} -o $@ -c $<

farbfeld: ${OBJ}
	${CC} -o $@ ${OBJ} ${LIBS} ${LDFLAGS}

clean:
	rm -f farbfeld ${OBJ}

install: farbfeld
	${INSTALL} -d ${INSTALL_DIR}
	${INSTALL} -m 0755 farbfeld ${INSTALL_DIR}

uninstall:
	${RM} ${INSTALL_DIR}/farbfeld

.PHONY: all clean install
