# ---
# GoEnv > https://github.com/go-nv/goenv/blob/master/INSTALL.md#homebrew-on-mac-os-x
if command -v goenv > /dev/null; then
  eval "$(goenv init -)"
fi

# GoEnv variables > https://github.com/go-nv/goenv/blob/master/ENVIRONMENT_VARIABLES.md
export GOENV_AUTO_INSTALL=1 # auto-create '.go-version' file
