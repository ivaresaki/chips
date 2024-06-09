#!/bin/sh

INCLUDES=/opt/guacamole/include/
LIBS=/opt/guacamole/lib/
SRC=guacd_plugin.c
OUT=libguac-client-eramvnc.so

gcc -v -shared -fpic -o $OUT \
   -I ${INCLUDES} \
   -L ${LIBS} \
   -ldl -Wl,-rpath /opt/guacamole/lib/ \
   ${SRC}
