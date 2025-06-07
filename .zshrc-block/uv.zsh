# ---
# Shell autocompletion :: https://docs.astral.sh/uv/getting-started/installation/
# if command -v uv > /dev/null; then
#   eval "$(uv generate-shell-completion zsh)"
#   eval "$(uvx --generate-shell-completion zsh)"
# fi

# Command mapping :: https://github.com/astral-sh/uv/issues/6265#issuecomment-2685435645
alias pip="uv pip"
alias python="uv run python"
alias venv="uv venv"

# Command helper
if ! command -v pyenv > /dev/null 2>&1; then
  alias pyenv="uv help --no-pager && echo -e '❯ Please use «uv» command instead.\n'"
fi
