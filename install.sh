#!/bin/bash 

files=(.vimrc .inputrc)
# Method 1: No git 
if [[ -n "$1" && "$1" == "link" ]]; then 
   cd ~
   git clone https://github.com/jbshep/devopsdotfiles .dotfiles
   cd .dotfiles
   for f in ${files[@]}; do
   	ln -s $PWD/$f $HOME/$f 
   done 

else
   for f in ${files[@]}; do
       wget https://raw.githubusercontent.com/jbshep/devopsdotfiles/refs/heads/main/$f	
   done

fi	
