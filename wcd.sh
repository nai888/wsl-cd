#!/usr/bin/env bash

#=========
# wcd.sh
#
# cd to a Windows directory within WSL without needing to first convert the path using wslpath
#=========

# exit on any failure
set -e

# prevent literal globs when no matches
shopt -s nullglob

# ensure argument was specified
if [[ "$1" == "" ]]; then
  echo "Error: no directory specified. Add a path argument."
  exit 1
else
  cd "$(wslpath "$1")"
fi
