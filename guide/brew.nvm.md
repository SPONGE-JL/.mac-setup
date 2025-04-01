<!-- https://badges.pages.dev/ -->
<!-- https://ileriayo.github.io/markdown-badges/#markdown-badges -->
[![nvm Badge](https://img.shields.io/badge/nvm-F4DD4B?logo=nvm&logoColor=000&style=flat)][Page-NVM]
[![Node.js Badge](https://img.shields.io/badge/Node.js-5FA04E?logo=nodedotjs&logoColor=fff&style=flat)][Page-Node]
[![npm Badge](https://img.shields.io/badge/npm-CB3837?logo=npm&logoColor=fff&style=flat)][Page-NPM]
[![Yarn Badge](https://img.shields.io/badge/Yarn-2C8EBB?logo=yarn&logoColor=fff&style=flat)][Page-Yarn]
[!![pnpm Badge](https://img.shields.io/badge/pnpm-F69220?logo=pnpm&logoColor=fff&style=flat)][Page-PNPM]

[Page-NVM]: https://github.com/nvm-sh/nvm#readme
[Page-Node]: https://endoflife.date/nodejs
[Page-NPM]: https://docs.npmjs.com/about-npm-versions
[Page-Yarn]: https://classic.yarnpkg.com/lang/en/docs/install/#mac-stable
[Page-PNPM]: https://pnpm.io/installation#using-npm

# [NVM][Page-NVM]

Simple node version manager

## Setup

```bash
brew install nvm

# Create binary home
mkdir -p ${HOME}/.nvm

# Check
. "$(brew --prefix nvm)/nvm.sh"
nvm --version
```

Add snippet([`nvm.zsh`](../.zshrc-block/nvm.zsh)) to `.zshrc`

## [Usage](https://github.com/nvm-sh/nvm#usage)

```bash
# Install node.js runtimes
nvm ls-remote     # list available versions
nvm install --lts # "node" is an alias for the latest version
nvm use --lts     # maybe already setup

# Install package manager per each runtime
nvm install-latest-npm              # upgrade to the latest working version of npm
npm install --global yarn@latest    # yarn per node version
npm install --global pnpm@latest-10 # pnpm per node version

# Check
node --version
npm --version
yarn --version
pnpm --version
```
