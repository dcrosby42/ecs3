#!/bin/bash
pushd `dirname ${BASH_SOURCE[0]}` > /dev/null; HERE=`pwd`; popd > /dev/null

SOURCE=$HOME/Pictures/game-art/zelda-like
DEST=$HERE/assets/maps

set -x
cd $HERE
cp $SOURCE/map1.lua $DEST
cp $SOURCE/Overworld.png $DEST
