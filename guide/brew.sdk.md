<!-- https://badges.pages.dev/ -->
<!-- https://ileriayo.github.io/markdown-badges/#markdown-badges -->
[![SDKMAN Badge](https://img.shields.io/badge/SDKMAN-8A2BE2?logo=openjdk&logoColor=white&style=flat)][Page-SDKMAN]
[![Corretto Badge](https://img.shields.io/badge/Corretto-%23ED8B00.svg?style=Flat&logo=amazon&logoColor=white)][Page-Corretto]
[![Gradle Badge](https://img.shields.io/badge/Gradle-%02303A.svg?style=Flat&logo=gradle&logoColor=white)][Page-Gradle]

[Page-Corretto]: https://endoflife.date/amazon-corretto
[Page-Gradle]: https://endoflife.date/gradle
[Page-SDKMAN]: https://sdkman.io

# [SDKMAN][Page-SDKMAN]

## Setup

```bash
brew tap sdkman/tap
brew install sdkman-cli

# Check
export SDKMAN_DIR=$(brew --prefix sdkman-cli)/libexec
source "${SDKMAN_DIR}/bin/sdkman-init.sh"
sdk version
```

Add snippet([`sdk.zsh`](../.zshrc-block/sdk.zsh)) to `.zshrc`

## [Usage](https://sdkman.io/usage)

Setting auto detecting `.sdkmanrc` file:

```bash
sdk config
```

```diff
# ...
- sdkman_auto_env=false
+ sdkman_auto_env=true
# ...
```

```bash
# Install declarative settings
sdk env install

# Check
sdk env

# Revert settings
sdk env clear
```

### Manual Installation [Amazon Corretto][Page-Corretto]

```bash
# Check list
sdk list java | egrep "Corretto|amzn"

# Install selected version
sdk install java 24.0.1-amzn
sdk install java 21.0.7-amzn
sdk install java 17.0.15-amzn

# Set specific version
sdk use java 21.0.7-amzn

# Set default version
sdk default java 21.0.7-amzn

# Check
sdk current java
sdk home java 21.0.7-amzn
which java
java --version
which javac
javac --version
```

Release with [end of support][Page-Corretto]:

- [Amazon Corretto 24](https://github.com/corretto/corretto-24/releases)
- [Amazon Corretto 21](https://github.com/corretto/corretto-21/releases)
- [Amazon Corretto 17](https://github.com/corretto/corretto-17/releases)

### Manual Installation [Gradle][Page-Gradle]

```bash
# Check list
sdk list gradle

# Install selected version
sdk install gradle 8.14

# Set specific version
sdk use gradle 8.14

# Set default version
sdk default gradle 8.14

# Check
sdk current gradle
sdk home gradle 8.14
which gradle
gradle --version
```

Release with [end of support][Page-Gradle]:

- [Gradle current](https://docs.gradle.org/current/userguide/userguide.html)
- [Gradle 8.14](https://docs.gradle.org/8.14/userguide/userguide.html)
- [Gradle 7.6.2](https://docs.gradle.org/7.6.2/userguide/userguide.html)
