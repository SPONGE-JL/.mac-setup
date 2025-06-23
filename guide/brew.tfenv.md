<!-- https://badges.pages.dev/ -->
<!-- https://ileriayo.github.io/markdown-badges/#markdown-badges -->
[![tfenv Badge](https://img.shields.io/badge/tfenv-0B3D8D?style=flat&logo=terraform&logoColor=green)][Page-TfEnv]
[![Terraform Badge](https://img.shields.io/badge/terraform-%235835CC.svg?style=Flat&logo=terraform&logoColor=white)][Page-TF]

[Page-TfEnv]: https://github.com/tfutils/tfenv?tab=readme-ov-file#installation
[Page-TF]: https://developer.hashicorp.com/terraform/downloads?product_intent=terraform

# [Terraform][Page-TF] with [tfenv][Page-TfEnv]

Simple terraform version manager

## Setup

> 📌 Notice:
>
> We have controlled multiple terraform workspaces with multiple versions of terraform client.
> So we have decided to control using [`tfenv`][Page-TfEnv] for [Terraform-CLI][Page-TF].
>
> 🚨 🚨 **IMPORTANT** 🚨🚨
>
> If you have installed any terraform in your local machine,
> **remove the installed it first** before install Rancher Desktop.
>
> ```bash
> # Check
> which terraform
> # Need to respond: 'terraform not found'
>
> # Handover management terraform version to tfenv
> brew unlink terraform
> brew uninstall terraform hashicorp/tap/terraform
> ```

Install `tfenv`:

```bash
brew install tfenv

tfenv --version
```

## Usage

Default terraform client version setting:

```bash
# Check remote stable versions
tfenv list-remote | grep -e "^1.\d*." 2> /dev/null | grep -v "-" | head -n 7

# Set latest stable version as default (include installation)
tfenv use $(tfenv list-remote | grep -e "^1.\d*." 2> /dev/null | grep -v "-" | head -n 1)

# Check terraform client
terraform --version

# Check installed terraform client versions
tfenv list
which terraform
```

> Also you can work with [`.terraform-version` file](https://github.com/tfutils/tfenv?tab=readme-ov-file#terraform-version)
> work with [`tfenv.zsh`](../.zshrc-block/tfenv.zsh).

## Third parties with [`pre-commit-terraform`](https://github.com/antonbabenko/pre-commit-terraform?tab=readme-ov-file#how-to-install)

```bash
brew install terraform-docs tflint infracost

terraform-docs --version
tflint --version
infracost --version
```

- [`terraform-docs`][terraform-docs repo] 0.12.0+ required for `terraform_docs` hook
- [`TFLint`][tflint repo] required for `terraform_tflint` hook
- [`infracost`][infracost repo] required for `infracost_breakdown` hook

```bash
brew install tfsec trivy checkov terrascan

checkov --version
tfsec --version
trivy --version
terrascan version
```

- [`checkov`][checkov repo] required for `terraform_checkov` hook
- [`TFSec`][tfsec repo] required for `terraform_tfsec` hook
- [`Trivy`][trivy repo] required for `terraform_trivy` hook
- [`terrascan`][terrascan repo] required for `terrascan` hook

<!-- Tools links -->
[terraform-docs repo]: https://github.com/terraform-docs/terraform-docs
[tflint repo]: https://github.com/terraform-linters/tflint
[infracost repo]: https://github.com/infracost/infracost
[checkov repo]: https://github.com/bridgecrewio/checkov
[tfsec repo]: https://github.com/aquasecurity/tfsec
[trivy repo]: https://github.com/aquasecurity/trivy
[terrascan repo]: https://github.com/tenable/terrascan

## References

- [AWS Workshop | Terraform Developer Accelerator 🚀](https://catalog.workshops.aws/terraform-developer-accelerator/en-US)

- [AWS Workshop | Terraform](https://workshops.aws/categories/Terraform)
