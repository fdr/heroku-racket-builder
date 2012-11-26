#!/bin/sh
set -uex

root=$(pwd)

cd /tmp
curl -L10 -O https://github.com/plt/racket/archive/master.tar.gz
tar -zxf master.tar.gz
cd racket-master/src
./configure --prefix=/app/vendor --disable-docs
make -sj30 plain-install

mv /app/vendor $root/
