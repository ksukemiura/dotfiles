#!/bin/bash

for file in .??*; do
  [[ "$file" == ".git" ]] && continue
  [[ "$file" == ".gitignore" ]] && continue
  [[ "$file" == ".gitmodules" ]] && continue

  ln -s "$PWD/$file" "$HOME/$file"
done