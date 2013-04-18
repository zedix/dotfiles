#!/bin/bash

# ./bootstrap.sh

for file in .{path,bash_profile,bash_prompt,bashrc,exports,aliases,functions,extra,gitconfig,vim,vimrc}; do

    if [ -e "$PWD/$file" ]; then
        if [ -f "$HOME/$file" ]; then
            echo "Removing $HOME/$file"
            rm -rf "$HOME/$file"
        fi
        echo "Linking $HOME/$file"
        ln -s "$PWD/$file" "$HOME/$file"
    fi

done
unset file

source ~/.bash_profile