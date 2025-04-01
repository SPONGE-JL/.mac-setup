<!-- https://badges.pages.dev/ -->
<!-- https://ileriayo.github.io/markdown-badges/#markdown-badges -->
[![Zsh Badge](https://img.shields.io/badge/Zsh-F15A24?logo=zsh&logoColor=fff&style=flat)][Page-Oh-My-Zsh]

[Page-Oh-My-Zsh]: https://ohmyz.sh/
[Page-Oh-My-Zsh-Plugins]: https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins#plugins

# [Oh-my-zsh][Page-Oh-My-Zsh]

## Setup

```bash
brew install wget
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Check
omz version
```

You can select [oh-my-zsh themes](https://github.com/ohmyzsh/ohmyzsh/wiki/themes)
at `ZSH_THEME="__REPLACE_HERE_"`,
but we will use [Oh My Posh](./brew.oh-my-posh.md) instead.

## [Oh-my-zsh Plugins][Page-Oh-My-Zsh-Plugins]

Install basic plugins:

```bash
# Install Syntax Highlight
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install Autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions.git \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

Enable plugins: $ `vi ~/.zshrc`

```bash
plugins=(
  # [plugins...]
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)
```
