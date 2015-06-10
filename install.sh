#!/bin/bash

dir=~/dotfiles                    # dotfiles directory
files="gitconfig gitignore tmux.conf vimrc zprofile zshrc"    # list of files/folders to symlink in homedir

echo "Changing to the $dir directory"
cd $dir
echo "...done"

for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
