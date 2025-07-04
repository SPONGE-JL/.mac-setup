#!/bin/zsh

echo " "
echo "❯ Enable symlinks"
echo " "

# Pull latest case
GIT_OPT="--quiet"
git fetch --all --tags --prune --prune-tags --atomic --auto-maintenance ${GIT_OPT}
git pull --autostash --rebase --show-forced-updates --summary ${GIT_OPT} origin $(git branch --show-current)

# Prune previous symlinks
stow --delete .

# Create symlinks
stow --ignore=.DS_Store \
     --ignore=.aws \
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

echo " "
echo "❯ Refresh your shell prompt"
echo " "

exec ${SHELL:-/usr/bin/zsh}
