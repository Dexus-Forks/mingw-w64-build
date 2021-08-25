# PREFIX is environment variable, but if it is not set, then set default value
ifeq ($(PREFIX),)
    PREFIX := /usr/local
endif

install: #unixlib.a
#    install -d $(DESTDIR)$(PREFIX)/lib/
#    install -m 644 unixlib.a $(DESTDIR)$(PREFIX)/lib/
#    install -d $(DESTDIR)$(PREFIX)/include/
#    install -m 644 unixlib.h $(DESTDIR)$(PREFIX)/include/

build:
    chmod +x ./mingw-w64-build
    ./mingw-w64-build --enable-pthreads i686 x86_64
