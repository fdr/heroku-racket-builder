#!/bin/sh
set -uex

cd /tmp
git clone https://github.com/plt/racket.git
cd racket
./configure --prefix=/app/vendor
make -sj30
make install
