#!/bin/sh


# ensure ~/bin exists
mkdir -p ~/bin

# build all swifties & copy build artifact to ~/bin

for dir in */; do
  [ -d "$dir" ] || continue
  (
    NAME=`basename $dir`
    cd "$dir" || exit
    echo "👧🏼 $NAME"
    swift build -c release 1> /dev/null
    cp .build/release/$NAME ~/bin
  )
done
