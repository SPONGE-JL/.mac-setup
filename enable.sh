#!/bin/zsh
stow --ignore=.DS_Store \
     --ignore=.vscode \
     --ignore=.commitlintrc.yaml \
     --ignore=.editorconfig \
     --ignore=.gitignore \
     --ignore=.go-version \
     --ignore=.markdownlint.yaml \
     --ignore=.nvmrc \
     --ignore=.pre-commit-config.yaml \
     --ignore=.python-version \
     --ignore=.sdkmanrc \
     --ignore=.yarmlint.yaml \
     --ignore=guide \
     --ignore=disable.sh \
     --ignore=enable.sh \
     .

ls -shalt ${HOME} | grep ' l' || echo 'empty'
