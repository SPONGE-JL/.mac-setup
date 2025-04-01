<!-- https://badges.pages.dev/ -->
<!-- https://ileriayo.github.io/markdown-badges/#markdown-badges -->
[![iTerm2 Badge](https://img.shields.io/badge/iTerm2-000?logo=iterm2&logoColor=fff&style=flat)][Page-iTerm2]

[Page-iTerm2]: https://iterm2.com/

# [GoEnv][Page-iTerm2]

## Setup

```bash
brew install --cask iterm2
open `/Applications/iTerm.app`
```

## Configuration

Change minimal window style:

1. Open settings pannel(`command + ,`).

2. Click the `Appearance` tab at the top of the setting pannel.

3. In the `General` small tab, select **`Minimal`** in `Theme` items.

4. In the `Pane` small tab, set `Side margin` value to **`6`**.

Import the [`iTerm2 Status Bar Profile.json`](./config/iTerm2%20Status%20Bar%20Profile.json)

1. Click the `Profile` tab at the top of the setting pannel.

2. Click the `Other Actions...` dropdown at the corner of left-down.
    Then click the **`Import JSON Profiles...`** at the bottom.

3. Click the imported profile, then click the **`Set as Default`** at the top.

4. Re-open the terminal.

Support auto-parsing in status bar via [GNU Stow](./brew.stow.md):

- [`.zshrc`](../.zshrc)

- [`.zshrc-block/iterm2.zsh`](../.zshrc-block/iterm2.zsh)

- [`.iterm2_shell_integration.zsh`](../.iterm2_shell_integration.zsh)
