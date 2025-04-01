<!-- https://badges.pages.dev/ -->
<!-- https://ileriayo.github.io/markdown-badges/#markdown-badges -->
[![Git Badge](https://img.shields.io/badge/Git-F05032?logo=git&logoColor=fff&style=flat)][Page-Git]
[![pre-commit Badge](https://img.shields.io/badge/pre--commit-FAB040?logo=precommit&logoColor=fff&style=flat)][Page-Pre-commit]

# [Git][Page-Git]

Distributed version control system

```bash
brew install git pre-commit difftastic

git --version
pre-commit --version
difft --version
```

- [git][Page-Git]
- [pre-commit][Page-Pre-commit]
- [difftastic][Page-Difftastic]

[Page-Git]: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
[Page-Pre-commit]: https://pre-commit.com/
[Page-Difftastic]: https://difftastic.wilfred.me.uk/

## Configurations

Set global git credentials at `.gitcredentials`:

```toml
[user]
name       = SPONGE-JL
email      = dev2sponge@gmail.com
signingkey = %%%%%%%%%%%%%%%%

[commit]
gpgsign = true

[tag]
gpgsign = true
```

### [Connection with SSH on GitHub](https://github.com/settings/keys)

1. [Generate new SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

2. [Regist the SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)

3. [SSH agent forwarding](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/using-ssh-agent-forwarding)

4. [Test SSH connection](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/testing-your-ssh-connection)

> Note: [Using multiple repositories on one server](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/managing-deploy-keys#using-multiple-repositories-on-one-server)

### [Verification commit signature with GPG GitHub](https://github.com/settings/keys)

1. [Install the `GnuPG` as GPG command line tool](https://www.gnupg.org/download/):

    ```bash
    brew install gnupg
    gpg --version
    ```

2. [Genereate new GPG key](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key)

3. [Regist the GPG key](https://docs.github.com/en/authentication/managing-commit-signature-verification/adding-a-gpg-key-to-your-github-account)

4. [Tell git about your siging](https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key)

5. Sign your activities:

    - [Signing commits](https://docs.github.com/en/authentication/managing-commit-signature-verification/signing-commits)

    - [Signing tags](https://docs.github.com/en/authentication/managing-commit-signature-verification/signing-tags)

---

## Helpful guide

1. Configurations: [`.gitconfig`](../.gitconfig), [`.gitmessage`](../.gitmessage)

2. [So You Think You Know Git - FOSDEM 2024][YouTube-So-Git-P1]:

    [![So You Think You Know Git - FOSDEM 2024][YouTube-So-Git-P1-Thumbnail]][YouTube-So-Git-P1]

3. [So You Think You Know Git Part.2 - DevWorld 2024][YouTube-So-Git-P2]:

    [![So You Think You Know Git Part.2 - DevWorld 2024][YouTube-So-Git-P2-Thumbnail]][YouTube-So-Git-P2]

[YouTube-So-Git-P1]: https://www.youtube.com/watch?v=aolI_Rz0ZqY
[YouTube-So-Git-P1-Thumbnail]: https://i.ytimg.com/vi/aolI_Rz0ZqY/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLAwDOibG5HTmJuOl7eDl68qjLDqgw

[YouTube-So-Git-P2]: https://www.youtube.com/watch?v=Md44rcw13k4
[YouTube-So-Git-P2-Thumbnail]: https://i.ytimg.com/vi/Md44rcw13k4/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLBMaCEH7l5SC2IXt72UtZe6vFr4wA
