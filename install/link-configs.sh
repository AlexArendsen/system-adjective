#!/bin/bash

echo "Linking .config..."

for f in ../config/*/; do
  dirname=$(basename ${f})
  replace=y
  if [[ -e "$HOME/.config/$dirname" ]]; then
    replace=n
    echo -n "Configuration for ${dirname} already exists. Replace it? [yN]: "
    read -r replace
  fi
  if [[ "${replace}" == "y" ]]; then
    echo "Linking in config for ${dirname}"
    ln -fs "$(realpath ${f})" "$HOME/.config/${dirname}" 
  fi
done
