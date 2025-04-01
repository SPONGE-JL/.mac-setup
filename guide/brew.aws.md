<!-- https://badges.pages.dev/ -->
<!-- https://ileriayo.github.io/markdown-badges/#markdown-badges -->
[![Amazon Web Services Badge](https://img.shields.io/badge/Amazon%20Web%20Services-232F3E?logo=amazonwebservices&logoColor=fff&style=flat)][Page-AWS-CLI]

[Page-AWS-CLI]: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html#getting-started-install-instructions

# [AWS CLI][Page-AWS-CLI]

Command line interface for AWS cloud

## Setup

```bash
brew install awscli

aws --version
```

### Optional tools

[iamlive](https://onecloudplease.com/project/iamlive):
Generate an IAM policy from AWS calls

```bash
brew install iann0036/iamlive/iamlive

iamlive -set-ini -sort-alphabetical # escape with ctrl + c
```

[e1s](https://github.com/keidarcy/e1s#readme):
Easily Manage AWS ECS Resources in Terminal

```bash
brew install keidarcy/tap/e1s

e1s --version
```

- [Config](https://github.com/keidarcy/e1s?tab=readme-ov-file#config-filesample)
- [Theme](https://github.com/keidarcy/e1s?tab=readme-ov-file#theme-and-colors)
- [Features](https://github.com/keidarcy/e1s?tab=readme-ov-file#features)

## Configuration

### For AWS SSO

Make aws configuration folder: `mkdir -p ${HOME}/.aws`

Add configuration for profile: `vi ~/.aws/config`

```toml
# =============================================================================

[sso-session BOUNDARY-SSO]
sso_region = ap-northeast-2
sso_registration_scopes = sso:account:access
sso_start_url = https://___EDIT_HERE___.awsapps.com/start/#

[profile BOUNDARY-ENV-SSO-ROLE-NAME]
region = ap-northeast-2
output = json

# =============================================================================
```

Add credentials of profile: `vi ~/.aws/credentials`

```toml
# =============================================================================

[BOUNDARY-ENV-SSO-ROLE-NAME]
sso_session    = BOUNDARY-SSO
sso_account_id = 111122223333
sso_role_name  = SSO-ROLE-NAME

[BOUNDARY-ENV-MACHINE-ROLE-NAME]
source_profile = BOUNDARY-ENV-SSO-ROLE-NAME
role_arn = arn:aws:iam::111122223333:role/MACHINE-ROLE-NAME

# =============================================================================
```

Use `aws-profile` with source [`aws.zsh`](../.zshrc-block/aws.zsh)
(depend on [fzf](https://junegunn.github.io/fzf/))
