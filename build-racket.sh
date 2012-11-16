#!/bin/sh
set -uex

cd /tmp
curl -L10 -O https://github.com/plt/racket/archive/master.tar.gz
tar -zxf master.tar.gz
cd racket-master/src
./configure --prefix=/app/vendor
make -sj30
make -sj30 install
