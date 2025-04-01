<!-- https://badges.pages.dev/ -->
<!-- https://ileriayo.github.io/markdown-badges/#markdown-badges -->
[![uv Badge](https://img.shields.io/badge/uv-DE5FE9?logo=uv&logoColor=fff&style=flat)][Page-UV]
[![Python Badge](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=fff&style=flat)][Page-Python]

[Page-UV]: https://docs.astral.sh/uv/
[Page-Python]: https://devguide.python.org/versions/

# [uv][Page-UV]

An extremely fast Python package and project manager, written in Rust

> Note
>
> If you already have `pyenv`, uninstall it to manage the python version in `uv`
>
> ```bash
> # Check installed python version
> pyenv versions
> pyenv uninstall x.x.x
>
> # Check
> python --version
> # zsh: command not found: python
> ```

## Setup

```bash
brew install uv

uv --version
uvx --version
```

## Config

```bash
# ---
# uv :: https://docs.astral.sh/uv/getting-started/installation/
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"

# python command mapping :: https://github.com/astral-sh/uv/issues/6265#issuecomment-2685435645
alias python="uv run python"
```

> example: [`.zshrc-block/uv.zsh`](../.zshrc-block/uv.zsh)

## Usage

Request to install python version:

```bash
# Install latest distributed version (cpython)
uv python install 3.12 3.13 3.14
```

Check python versions in your system:

```bash
uv python list --only-installed
```

Automatically work with [`.python-version` file](https://docs.astral.sh/uv/concepts/python-versions/#python-version-files):

- Set global version

  ```bash
  uv python pin --global 3.13.3

  uv python find --system
  uv run python --version
  ```

- Set local version

  ```bash
  uv python pin 3.12.10

  uv python find --system
  uv run python --version
  ```

Check some detail [spec features](https://docs.astral.sh/uv/getting-started/features/)
and [integration with pre-commit](https://docs.astral.sh/uv/guides/integration/pre-commit/).
