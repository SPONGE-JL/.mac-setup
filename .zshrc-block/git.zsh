# ---
# For SSH key
eval "$(ssh-agent -s)"

# ---
# For GnuPG via Homebrew
if brew list gnupg > /dev/null 2>&1; then
  export PATH="$(brew --prefix gnupg)/bin:${PATH}"
fi

# ---
# For GPG key
export GPG_TTY=$(tty)
