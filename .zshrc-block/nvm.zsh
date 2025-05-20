# ---
# NVM
export NVM_DIR="${HOME}/.nvm"
[ ! -d "${NVM_DIR}" ] && mkdir -p ${NVM_DIR} || true

if brew list nvm > /dev/null 2>&1; then
  brew_nvm_preix="/opt/homebrew/opt/nvm" # "$(brew --prefix nvm)"
  [ -s "${brew_nvm_preix}/nvm.sh" ] && \. "${brew_nvm_preix}/nvm.sh" # This loads nvm
fi

# Read .nvmrc - https://github.com/nvm-sh/nvm?tab=readme-ov-file#zsh
load-nvmrc() {
  local nvmrc_path
  nvmrc_path="$(nvm_find_nvmrc)"
  # When detect .nvmrc
  if [ -n "${nvmrc_path}" ]; then
    local nvmrc_node_version
    nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")
    if [ "${nvmrc_node_version}" = "N/A" ]; then
      echo "❯ 🆕 Need to install '$(cat "${nvmrc_path}")' via .nvmrc"
      nvm install
      echo " "
    fi
    if [ "${nvmrc_node_version}" != "$(nvm version)" ]; then
      echo "❯ 🔄 Switch to installed '$(cat "${nvmrc_path}")' via .nvmrc"
      nvm use
      echo " "
    fi
    return
  fi

  # When escapse folder that has different version at .nvmrc
  if [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "❯ ↩️ Restore to default version"
    nvm use default
    echo " "
    return
  fi
}

autoload -U add-zsh-hook
add-zsh-hook chpwd load-nvmrc
