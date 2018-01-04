#!/bin/bash

zim --index content/notebook.zim

[ -e public/ ] && rm -rf public/

zim --export \
    --format=html --template=GitLabPagesTemplate \
    --output=./public \
    --overwrite \
    --verbose \
  content/notebook.zim

cp -a files/ public/
