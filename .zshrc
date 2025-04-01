# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"


# ---
export LANG=en_US.UTF-8


# ---
# Oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)
# plugin > auto suggestion > https://github.com/zsh-users/zsh-autosuggestions#configuration
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_HISTORY_IGNORE="cat *|cd *|echo *|rm *|ls *"
# loading
source "${ZSH}/oh-my-zsh.sh"


# ---
# ZSH better history > https://www.soberkoder.com/better-zsh-history/
export HISTFILE=~/.zshistory
export HISTFILESIZE=999999999
export HISTSIZE=999999999
setopt APPEND_HISTORY
setopt SHARE_HISTORY
# Print timestamp when read history
export HISTTIMEFORMAT="[%F %T] "
setopt INC_APPEND_HISTORY
# Add timestamp to history
setopt EXTENDED_HISTORY
# Handling duplicates
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
# Add Key bind - autocompletion using arrow keys (based on history)
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward
# No beep sound
setopt NO_BEEP


# ---
# Custom scripts
for shell_file in $(find "${HOME}/.zshrc-block/." -type f | grep "zsh$" | sort); do
  source "${shell_file}"
done


# ---
# Rancher Desktop - manual setting
export PATH="${HOME}/.rd/bin:${PATH}"


# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
