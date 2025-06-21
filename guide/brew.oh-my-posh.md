[![logo](https://raw.githubusercontent.com/jandedobbeleer/oh-my-posh/main/website/static/img/logo.png)][Page-Oh-My-Posh]

[Page-Oh-My-Posh]: https://ohmyposh.dev/

# [Oh My Posh][Page-Oh-My-Posh]

Prompt theme engine for any shell

## Setup

```bash
brew install --cask oh-my-posh 2> /dev/null || brew install jandedobbeleer/oh-my-posh/oh-my-posh

oh-my-posh --version
```

If you have some interrupt during install, install it [manually](https://ohmyposh.dev/docs/installation/linux):

```bash
# Manual install
curl -s https://ohmyposh.dev/install.sh | bash -s
```

Add below snippet for `oh-my-zsh` command for your prompt:

```bash
# Setting
echo '# ---'                                                       >> "${HOME}/.zshrc"
echo '# Oh My Posh > https://ohmyposh.dev/docs/installation/linux' >> "${HOME}/.zshrc"
echo 'export PATH="${HOME}/.local/bin:${PATH}"'                    >> "${HOME}/.zshrc"
echo 'eval "$(oh-my-posh init zsh)"'                               >> "${HOME}/.zshrc"
echo >> "${HOME}/.zshrc"

cat "${HOME}/.zshrc" | grep -B1 -A3 '# Oh My Posh'

# Check
exec ${SHELL}
whereis oh-my-posh
oh-my-posh --version
```

Install a [Nerd Font](https://www.nerdfonts.com/):

```bash
# Required
oh-my-posh font install Meslo
# Optional
oh-my-posh font install D2Coding
oh-my-posh font install Hack
```

## Config

- [`_oh-my-posh.zsh`](../.zshrc-block/_oh-my-posh.zsh)

- [`M365Princess-custom.omp.yaml`](../.zshrc-block/theme/M365Princess-custom.omp.yaml) (custom theme)
