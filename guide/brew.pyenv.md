<!-- https://badges.pages.dev/ -->
<!-- https://ileriayo.github.io/markdown-badges/#markdown-badges -->
[![Python Badge](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=fff&style=flat)](https://devguide.python.org/versions/)

# [PyEnv](https://github.com/pyenv/pyenv#readme)

Simple python version manager

<details>
<summary>❗ Recommand: use <code>uv</code> to make you fast. But if you need to install, click to open:</summary>
<br/>

## Setup

```bash
brew install pyenv

pyenv --version
```

Also, prepare to [build dependencies for python]((https://github.com/pyenv/pyenv/wiki#suggested-build-environment)):

```bash
brew install openssl readline sqlite3 xz zlib tcl-tk@8 libb2
```

Add snippet([`pyenv.zsh`](../.zshrc-block/pyenv.zsh)) to `.zshrc`

## [Usage](https://github.com/pyenv/pyenv#usage)

Install latest python version from [all available versions](https://www.python.org/doc/versions/) via `pyenv`:

```bash
# List all available versions except EOS
pyenv install -l | grep -v '-' | grep -E '3\.1[2-9]+\.[0-9]+$'

# Pick latest python version
export LATEST_PYTHON_VERSION=$(pyenv install -l | grep -v '-' | grep -E '3\.1[1-9]+\.[0-9]+$' | tail -n 1 | tr -d ' ')
env | grep LATEST_PYTHON_VERSION

# Download and install
pyenv install --skip-existing ${LATEST_PYTHON_VERSION} # maybe take 3 minutes or more to complete

# Switch
pyenv global ${LATEST_PYTHON_VERSION} # select globally for your user account

# Check
pyenv versions # List all Python versions available to pyenv
python --version # In current shell
```

</details>
