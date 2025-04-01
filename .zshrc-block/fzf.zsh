# ---
# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh || true

# fzf shell integration > https://github.com/junegunn/fzf#setting-up-shell-integration
command -v fzf > /dev/null && source <(fzf --zsh) || true

# ---
# Easy to switch Git Project in child directories
alias repo='export PICKED_FOLDER=$(search-git-repo | rev | awk -F"/" "{print \$1}" | rev | choose-with-fzf) && change-directory'
alias search-git-repo="find ${PROJ_HOME:-.}/repo -type d -exec test -e '{}/.git' ';' -print -prune | grep -v \"${PROJ_HOME:-\\.}/\.\" | sed -e 's/^\.\///g' | sort -t '/' -k 2 --dictionary-order"
alias change-directory='[ ! -z "${PICKED_FOLDER}" ] && [ -d "${PROJ_HOME:-.}/repo/${PICKED_FOLDER}" ] && echo "❯ Go! \"${PICKED_FOLDER}\"" && cd ${PROJ_HOME:-.}/repo/${PICKED_FOLDER} || echo "❯ Not found in path: ${PROJ_HOME:-.}/repo/${PICKED_FOLDER}"'

# Easy to open VScode Workspace in current directory
alias vsc='export PICKE_VSC_WS=$(search-vsc-ws | rev | awk -F"/" "{print \$1}" | rev | choose-with-fzf) && open-vsc-ws'
alias search-vsc-ws='find ${PROJ_HOME:-.}/*.code-workspace | sort --dictionary-order'
alias open-vsc-ws='[ ! -z "${PICKE_VSC_WS}" ] && echo "❯ Open \"${PICKE_VSC_WS}\"" && code ${PROJ_HOME:-.}/${PICKE_VSC_WS}'

# Shortcut for fzf-cli
alias choose-with-fzf="fzf --no-sort --cycle --no-multi --height 50% --layout reverse --info inline --border --padding=1"
