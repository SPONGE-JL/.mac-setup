# ---
# SDKMAN-CLI :: https://github.com/sdkman/homebrew-tap
export SDKMAN_DIR="/opt/homebrew/opt/sdkman-cli/libexec" # $(brew --prefix sdkman-cli)/libexec
[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh" || true
