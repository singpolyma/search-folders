.PHONY: install depends

depends:
	cd depends/fusefs/ && make install && make distclean && cd -
	cd depends/daemonize/ && make install && make distclean && cd -

install: depends
	cp -p locate-mnt /usr/local/bin
