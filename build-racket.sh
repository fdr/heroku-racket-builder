#!/bin/sh
set -uex

root=$(pwd)

cd /tmp
curl -L10 -O https://github.com/plt/racket/archive/master.tar.gz
tar -zxf master.tar.gz

# Clean collets of questionable use in industry.  These blow up the
# emitted slug and can cause timeouts.
for collect in "2htdp
algol60
at-exp
browser
deinprogramm
drracket
drscheme
embedded-gui
eopl
framework
future-visualizer
games
graphics
gui-debugger
handin-client
handin-server
help
hierlist
honu
htdp
icons
images
macro-debugger
mred
mrlib
mysterx
mzcom
mzlib
mzscheme
picturing-programs
plai
r5rs
r6rs
rnrs
scheme
schemeunit
sgl
swindle
teachpack
wxme"
do rm -r racket-master/collects/${collect}; done;

cd racket-master/src
./configure --prefix=/app/vendor --disable-docs --disable-gracket
make -sj30
PLT_SETUP_OPTIONS="-j 30" make -sj30 install

mv /app/vendor $root/
