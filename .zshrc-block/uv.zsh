# ---
# uv :: https://docs.astral.sh/uv/getting-started/installation/
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"

# python command mapping :: https://github.com/astral-sh/uv/issues/6265#issuecomment-2685435645
alias python="uv run python"
alias pip="uv pip"
