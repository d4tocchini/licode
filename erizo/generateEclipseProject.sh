#!/usr/bin/env bash

set -e

BIN_DIR="build"
if [ -d $BIN_DIR ]; then
  cd $BIN_DIR
  # Set to Debug to be able to debug in Eclipse
  cmake -G"Eclipse CDT4 - Unix Makefiles" -D ERIZO_BUILD_TYPE=debug ../src
  echo "Done"
  cd ..
else
  echo "Error, build directory does not exist, run generateProject.sh first"
fi
