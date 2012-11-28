#!/bin/sh
set -uex

root=$(pwd)

cd /tmp
curl -L10 -O https://github.com/plt/racket/archive/master.tar.gz
tar -zxf master.tar.gz
cd racket-master/src
./configure --prefix=/app/vendor --disable-docs --disable-gracket
make -sj30
make -sj30 plain-install

cp -a /app/vendor $root/
