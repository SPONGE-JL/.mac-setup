#!/bin/zsh

echo " "
echo "❯ Disable symlinks"
echo " "

# Remove
stow --delete .

ls -shalt ${HOME} | grep " l" || echo "empty"
echo " "
