#!/bin/bash
mkdir tmp && cd tmp
mkdir bin pkgtool
TMP=$(pwd)
cd ../scripts
cp installpkg removepkg $TMP/bin/
cp install.sh $TMP/pkgtool/
cd $TMP
tar -cvzf pkgtool.tar.gz *
mv pkgtool.tar.gz ../
cd ..
rm -rf tmp/
