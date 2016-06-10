#!/bin/bash

cd ~/
mkdir .skel && cd.skel

git clone git@github.com:johnnybgoode/dotfiles.git
git clone git@github.com:johnnybgoode/vimfiles.git

cd ~/
for file in ~/.skel/vimfiles/*; do
  f=$(basename "$file")
  echo "Linking $f"
  ln -s "$file" ."$f"
done

for file in ~/.skel/dotfiles/*; do
  f=$(basename "$file")
  echo "Linking $f"
  ln -s "$file" ."$f"
done
