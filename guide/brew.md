<!-- https://badges.pages.dev/ -->
<!-- https://ileriayo.github.io/markdown-badges/#markdown-badges -->
[![Homebrew Badge](https://img.shields.io/badge/Homebrew-FBB040?logo=homebrew&logoColor=fff&style=flat)][Page-Homebrew]

[Page-Homebrew]: https://brew.sh/

# [Homebrew][Page-Homebrew]

Package manager for macOS (or Linux)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

eval "$(/opt/homebrew/bin/brew shellenv)" && brew --version
```

Add below snippet for `brew` command to `PATH` variable:

```bash
echo '# ---'                                     >> "${HOME}/.zprofile"
echo '# Homebrew set to PATH variable'           >> "${HOME}/.zprofile"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "${HOME}/.zprofile"
echo >> "${HOME}/.zprofile"

cat "${HOME}/.zprofile" | grep -B1 -A2 '# Homebrew'
```

Disable last login message:

```bash
# Just create empty file to make disable
touch .hushlogin
```
