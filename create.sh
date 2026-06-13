#!/bin/zsh
today=$(date '+%Y%m%d')
title="${1#"${1%%[![:space:]]*}"}"; title="${title%"${title##*[![:space:]]}"}"

dirname=$(echo $title | sed "s/\.\ /_/g" | sed "s/\ /_/g" | sed "s/?/Question_Mark/g" | sed "s/'/_/g" )

git switch -C $dirname

if [ ! -d "history/$dirname/$today" ]; then
  cp -r 0_xxx "history/$dirname"
  mv "history/$dirname/202" "history/$dirname/$today"

  echo "create history/$dirname/$today"
  echo "done!"
fi
