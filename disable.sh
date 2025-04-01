#!/bin/zsh
stow --delete .

ls -shalt ${HOME} | grep ' l' || echo 'empty'
