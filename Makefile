ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

# PREFIX is environment variable, but if it is not set, then set default value
ifeq ($(PREFIX),)
	PREFIX := /usr/local
endif

build:
	chmod +x ${ROOT_DIR}/mingw-w64-build
	${ROOT_DIR}/mingw-w64-build --enable-pthreads i686 x86_64
