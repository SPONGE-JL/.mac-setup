# ---
# iTerm Status Bar (Cloud-native Tools) - https://medium.com/@msvechla/customizing-the-new-iterm2-status-bar-to-your-needs-252eee06bf39
function setITermUserVarsForStatusBar() {
  if [[ "${TERM_PROGRAM}" = "iTerm.app" ]]; then
    # iTerm2 Shell Integration - https://iterm2.com/documentation-shell-integration.html
    test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
    # init
    function iterm2_print_user_vars() {
      # AWS Profile
      iterm2_set_user_var awsProfile ${AWS_PROFILE:-default}
      # AWS Region
      iterm2_set_user_var awsRegion ${AWS_REGION:-ap-northeast-2}
      # Terraform Workspace
      iterm2_set_user_var tfWorkspace $(terraform workspace show)
      # K8s Context
      iterm2_set_user_var kubeContext $(CTX=$(kubectl config current-context | cut -d'/' -f2 | cut -d'@' -f2) 2> /dev/null;if [ $? -eq 0 ]; then echo ${CTX:-no-context};fi)
    }
  fi
}
setITermUserVarsForStatusBar
