# ---
# curl
if brew list curl > /dev/null 2>&1; then
  export PATH="$(brew --prefix curl)/bin:${PATH}"
fi
