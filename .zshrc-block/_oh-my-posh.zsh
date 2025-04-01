# ---
# Oh My Posh > https://ohmyposh.dev/docs/installation/linux
export PATH="${HOME}/.local/bin:${PATH}"
if command -v oh-my-posh > /dev/null; then
    # https://ohmyposh.dev/docs/themes
    OMP_THEME=M365Princess-custom
    eval "$(oh-my-posh init zsh --config "${HOME}/.zshrc-block/theme/${OMP_THEME}.omp.yaml")"
fi
