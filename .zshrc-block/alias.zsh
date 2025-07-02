# ---
# Preserve previous prompt > https://askubuntu.com/a/997893
alias clean="printf '\33[H\33[2J'"
alias clear="clean"

# ---
# Shortcut
alias bu="echo \"❯ brew update --auto-update && brew upgrade --greedy-auto-updates && brew cleanup\" && brew update --auto-update && brew upgrade --cask --greedy-auto-updates && brew cleanup"
alias bc="echo \"❯ rm -rf \$(brew --prefix)/var/homebrew/locks\" && rm -rf $(brew --prefix)/var/homebrew/locks"
