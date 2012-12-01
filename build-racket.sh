#!/bin/sh
set -uex

root=$(pwd)

cd /tmp
curl -L10 -O https://github.com/plt/racket/archive/master.tar.gz
tar -zxf master.tar.gz
cd racket-master/src
./configure --prefix=/app/vendor --disable-gracket --disable-docs
make -sj5
make -sj5 install
/app/vendor/bin/raco setup

cp -a /app/vendor $root/
