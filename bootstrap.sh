#!/bin/sh

if [ ! -d ./m4 ]; then
	mkdir ./m4
fi

if [ "$(uname)" == "Darwin" ]; then
	include=" -I/opt/local/share/aclocal"
fi

autoreconf --install --verbose --force $include
