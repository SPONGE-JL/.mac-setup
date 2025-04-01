# ---
# Easy to switch AWS Profile
function parse-aws-profile() {
  sed -n "s/\[profile \(.*\)\]/\1/gp" ~/.aws/config | grep -v "#" | sort
}

function choose-aws-profile-via-fzf() {
  fzf --no-sort --cycle --no-multi --layout reverse --height 50% --info inline --border --padding=1 \
      --preview "echo -e '⬇︎ in ~/.aws/credentials\n' && cat ~/.aws/credentials | grep -A3 {}" \
      --preview-window 'right,75%' || true
}

function select-aws-profile() {
  # Select AWS Profile
  local selected_aws_profile=$(parse-aws-profile | choose-aws-profile-via-fzf)
  if [ -z "${selected_aws_profile}" ]; then
    echo "❯ ❗ You have not selected any AWS Profile."
    echo " "
    echo "❯  Current AWS_PROFILE: ${AWS_PROFILE:-undefined} @ ${AWS_REGION:-unknown-region}"
    echo " "
    return
  fi
  export AWS_PROFILE=${selected_aws_profile}

  # Select AWS Region
  if [ -z "${AWS_REGION}" ]; then
    export AWS_REGION=$(aws configure get ${AWS_PROFILE}.region 2> /dev/null || echo "ap-northeast-2")
  fi

  # Result
  echo "❯  You have switched to \"${AWS_PROFILE}\" (${AWS_REGION})"
  echo " "
}


function get-aws-account-name() {
  aws account get-contact-information --query ContactInformation.FullName --output text 2> /dev/null || true
}

function query-aws-account-name() {
  local aws_account_name=$(get-aws-account-name)

  if [ -z "${aws_account_name}" ] && [[ "${AWS_PROFILE}" == *SSO* ]]; then
    echo "❯  Maybe need to AWS SSO Login"
    aws sso login
    echo " "
    aws_account_name=$(get-aws-account-name)
  fi

  if [ -z "${aws_account_name}" ]; then
    echo "❯ ❗ It seems current AWS Profile setting is invalid."
    echo " "
    echo "    1. Check your profile setting is right:"
    echo " "
    echo "       $ vi ~/.aws/config"
    echo "       $ vi ~/.aws/credentials"
    echo " "
    echo "    2. Check environment variables in current session:"
    echo " "
    echo "       $ env | grep AWS_"
    echo "       $ unset AWS_??? # If needs.."
    echo " "
    return
  fi

  echo "❯  Your Account Name is \"${aws_account_name}\""
}

function aws-profile() {
  echo " "

  select-aws-profile
  if [ -z "${AWS_PROFILE}" ]; then
    return
  fi

  query-aws-account-name


  # Result
  echo "❯  Caller Identity as You:"
  aws sts get-caller-identity --output json | jq
  echo " "
}

# Deprecated lagacy

# # ---
# # Easy to switch AWS Profile > https://medium.com/@vitali-s/easy-switch-between-aws-profiles-787daff5c92f
# alias aws-profile='export AWS_PROFILE=${$(parse-aws-profile | choose-with-fzf-credentials):-default}; parse-aws-region; print-aws-profile'

# # Shortcut for aws-cli
# alias parse-aws-profile='sed -n "s/\[profile \(.*\)\]/\1/gp" ~/.aws/config | grep -v "#" | sort'
# alias parse-aws-region='export AWS_REGION=${AWS_REGION:-$(aws configure get ${AWS_PROFILE}.region || echo "ap-northeast-2")}'
# alias print-aws-profile='selected-aws-profile && selected-aws-acc-name && sts-caller-identity'
# alias selected-aws-profile='echo "❯  You have switched to \"${AWS_PROFILE}\" (${AWS_REGION})"'
# alias selected-aws-acc-name='echo "❯  Your Account Name is \"${$(get-aws-acc-name):-INVALID}\""'
# alias get-aws-acc-name='aws account get-contact-information --query ContactInformation.FullName --output text || aws sso login'
# alias sts-caller-identity='aws sts get-caller-identity --output json | jq'

# Shortcut for fzf-cli
# alias choose-with-fzf-credentials="fzf --no-sort --cycle --no-multi --height 50% --layout reverse --info inline --border --padding=1 --preview 'echo -e \"⬇︎ in ~/.aws/credentials\\n\" && cat ~/.aws/credentials | grep -A3 {}' --preview-window 'right,75%'"
