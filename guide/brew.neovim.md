<!-- https://badges.pages.dev/ -->
<!-- https://ileriayo.github.io/markdown-badges/#markdown-badges -->
[![Neovim Badge](https://img.shields.io/badge/Neovim-57A143?logo=neovim&logoColor=fff&style=flat)][Page-NeoVim]

[Page-NeoVim]: https://neovim.io/

# [NeoVim][Page-NeoVim]

Vim-based text editor

```bash
brew install neovim

nvim -V1 -v
```

Add below snippet for `nvim` command for default `EDITOR`:

```bash
echo '# ---'                                  >> "${HOME}/.zshrc"
echo '# NeoVim as default editor in terminal' >> "${HOME}/.zshrc"
echo 'export EDITOR=nvim'                     >> "${HOME}/.zshrc"
echo 'alias vi=nvim'                          >> "${HOME}/.zshrc"
echo >> "${HOME}/.zshrc"

cat "${HOME}/.zshrc" | grep -B1 -A3 '# NeoVim'
```

> example: [`neovim.zsh`](../.zshrc-block/neovim.zsh)
