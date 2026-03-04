#!/bin/sh

# remove all build intermediates & caches

for dir in */; do
  [ -d "$dir" ] || continue
  (
    NAME=`basename $dir`
    echo "👧🏼 $NAME"
    rm -rf "$dir/.build" || exit
    rm -rf "$dir/.swiftpm" || exit
  )
done
