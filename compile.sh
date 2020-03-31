#!/usr/bin/env bash

error() {
  echo "Failed !" >&2
  exit 1
}

echo "Compiling: loader.xml..."
swfmake -f loader.xml || error

echo "Compiling: swfmake.xml..."
swfmake -f swfmake.xml || error

echo "Done."
xdg-open swf/loader.swf
