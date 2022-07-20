#!/usr/bin/env sh

if [[ $1 == "clean" ]]; then
  if ! command -v latexmk &> /dev/null; then
    make clean
  else
    latexmk -c
  fi

else
  if ! command -v latexmk &> /dev/null; then
    make
  else
    if [[ ! -d out ]]; then
      mkdir -p out
    fi
    latexmk paper.tex && echo "File available at out/paper.pdf"
  fi
fi
