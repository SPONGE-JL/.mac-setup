#!/bin/zsh
stow --ignore=.DS_Store \
     --ignore=.commitlintrc.yaml \
     --ignore=.editorconfig \
     --ignore=.gitignore \
     --ignore=.markdownlint.yaml \
     --ignore=.pre-commit-config.yaml \
     --ignore=.yarmlint.yaml \
     --ignore=guide \
     --ignore=disable.sh \
     --ignore=enable.sh \
     .

ls -shalt ${HOME} | grep ' l' || echo 'empty'
