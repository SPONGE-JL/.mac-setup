# ---
# SDKMAN-CLI :: https://github.com/sdkman/homebrew-tap
if brew list sdkman-cli > /dev/null 2>&1; then
  export SDKMAN_DIR="$(brew --prefix sdkman-cli)/libexec"
  [[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh" || true
fi
