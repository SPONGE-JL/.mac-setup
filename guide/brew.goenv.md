<!-- https://badges.pages.dev/ -->
<!-- https://ileriayo.github.io/markdown-badges/#markdown-badges -->
[![GoEnv Badge](https://img.shields.io/badge/goenv-F4DD4B?logo=goenv&logoColor=white&style=flat)][Page-GoEnv]
[![Go Bardge](https://img.shields.io/badge/go-%2300ADD8.svg?style=flat&logo=go&logoColor=white)][Page-Go]

[Page-GoEnv]: https://github.com/go-nv/goenv#readme
[Page-Go]: https://endoflife.date/go

# [GoEnv][Page-GoEnv]

Simple node version manager

## [Setup](https://github.com/go-nv/goenv/blob/master/INSTALL.md#installation)

```bash
brew install goenv

# Check
eval "$(goenv init -)"
goenv --version
```

Add snippet([`goenv.zsh`](../.zshrc-block/goenv.zsh)) to `.zshrc`

## [Usage](https://github.com/go-nv/goenv/blob/master/COMMANDS.md#command-reference)

Simple way

```bash
goenv latest
go version
```

Install and use [specific published go][Page-Go]

```bash
goenv install 1.24.3
goenv global 1.24.3

# Check
goenv version
go version
```
