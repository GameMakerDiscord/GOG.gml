#!/bin/sh
g++ -m32 -O3 -fPIC -g -c -o GOG.gml/GOG.gml.o GOG.gml/GOG.gml.cpp -std=c++11 
g++ -m32 GOG.gml/GOG.gml.o -shared -o GOG.gml.gmx/extensions/GOG.gml/GOG.gml.dylib -Wl,-rpath,assets/ -LGOG/Libraries -lgalaxy
