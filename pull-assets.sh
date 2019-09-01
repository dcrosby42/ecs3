#!/bin/bash
pushd `dirname ${BASH_SOURCE[0]}` > /dev/null; HERE=`pwd`; popd > /dev/null

SOURCE=$HOME/Pictures/game-art/ecs3
ASSETS=$HERE/assets

set -x
cd $HERE

cp $SOURCE/map1.lua $ASSETS/maps
cp $SOURCE/cavetest.lua $ASSETS/maps
cp $SOURCE/southgarden.lua $ASSETS/maps
cp $SOURCE/island.lua $ASSETS/maps
cp $SOURCE/cliffcave.lua $ASSETS/maps

cp $SOURCE/Overworld.png $ASSETS/maps
cp $SOURCE/character.png $ASSETS/maps
cp $SOURCE/cave.png $ASSETS/maps

cp $SOURCE/character.png $ASSETS/sprites
cp $SOURCE/character.json $ASSETS/sprites

