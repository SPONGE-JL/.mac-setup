# ---
# Preserve previous prompt > https://askubuntu.com/a/997893
alias clean="printf '\33[H\33[2J'"
alias clear="clean"

# ---
# Shortcut
alias bu=brew-update-and-upgrade
alias bc=brew-clean-lock

function brew-not-found() {
  echo "❯ 🚨 [ERROR] Homebrew not found."
  echo " "
}

function brew-update-and-upgrade() {
  echo " "
  if ! command -v brew 2>&1 > /dev/null; then
    brew-not-found
    return
  fi

  echo "❯ brew update --auto-update && { brew upgrade --greedy --cask 2> /dev/null || brew upgrade --formulae } && brew cleanup"
  echo " "
  brew update --auto-update && { brew upgrade --greedy 2> /dev/null || brew upgrade --formulae } && brew cleanup
  echo " "
}

function brew-clean-lock() {
  echo " "
  if ! command -v brew 2>&1 > /dev/null; then
    brew-not-found
    return
  fi

  echo "❯ rm -rf \$(brew --prefix)/var/homebrew/locks"
  rm -rf $(brew --prefix)/var/homebrew/locks
  echo " "
}
