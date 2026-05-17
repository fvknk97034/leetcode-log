#!/bin/zsh
today=$(date '+%Y%m%d')
title=$1
dirname=$(echo $title | sed "s/\.\ /_/g" | sed "s/\ /_/g")

git switch -C $dirname

if [ ! -e "history/$dirname/$today/README.md" ]; then
  cp -r 0_xxx "history/$dirname"
  mv "history/$dirname/202" "history/$dirname/$today"

  text=$(sed "s/^# $/# $title/" "history/$dirname/$today/README.md")
  echo $text > "history/$dirname/$today/README.md"
fi
