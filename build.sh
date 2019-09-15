#!/usr/bin/env bash

docker build . -t latexmk
docker run --rm -w /usr/src/project -v "$PWD":/usr/src/project latexmk bash -c 'cd example && latexmk -cd -f -lualatex -interaction=nonstopmode -synctex=1 cv.tex'
