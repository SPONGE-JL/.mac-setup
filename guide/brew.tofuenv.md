<!-- https://badges.pages.dev/ -->
<!-- https://ileriayo.github.io/markdown-badges/#markdown-badges -->
[![tfenv Badge](https://img.shields.io/badge/tfenv-0B3D8D?style=flat&logo=terraform&logoColor=green)][Page-OpTfEnv]
[![Terraform Badge](https://img.shields.io/badge/terraform-%235835CC.svg?style=Flat&logo=terraform&logoColor=white)][Page-OpTF]

[Page-OpTfEnv]: https://tofuutils.github.io/tofuenv/
[Page-OpTF]: https://opentofu.org/

# [OpenTofu][Page-OpTF] with [TofuEnv][Page-OpTfEnv]

Simple opentofu version manager

## Setup

```bash
brew install tofuenv

tofuenv --version
```

## Usage

Default opentofu client version setting:

```bash
# Check remote stable versions
tofuenv list-remote | grep -e "^1\.\d*.\d$" | head -n 7

# Set latest stable version as default
tofuenv use $(tofuenv list-remote | grep -e "^1.\d*.\d$" | head -n 1)

# Check opentofu client
tofuenv version-name
tofu --version

# Check installed opentofu client versions
tofuenv list
which tofu
```

> Also you can work with [`.opentofu-version` file](https://github.com/tofuutils/tofuenv?tab=readme-ov-file#opentofu-version)
> work with [`tofuenv.zsh`](../.zshrc-block/tofuenv.zsh).

## Third parties with [`pre-commit-terraform`](https://github.com/antonbabenko/pre-commit-terraform?tab=readme-ov-file#how-to-install)

Check in [`tfenv.zsh`](./brew.tfenv.md#third-parties-with-pre-commit-terraform).
