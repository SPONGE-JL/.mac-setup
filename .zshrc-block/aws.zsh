# ---
# Easy to switch AWS Profile
function parse-aws-profile() {
  sed -n "s/\[profile \(.*\)\]/\1/gp" ~/.aws/config | grep -v "#" | sort
}

function choose-aws-profile-via-fzf() {
  fzf --no-sort --cycle --no-multi --layout reverse --height 50% --info inline --border --padding=1 \
      --preview "echo -e '⬇︎ in ~/.aws/credentials\n' && cat ~/.aws/credentials | grep -A3 {} | grep -v '#' | head -n 4" \
      --preview-window 'right,75%' || true
}

function clear-credentials-variables() {
  unset AWS_ACCESS_KEY_ID
  unset AWS_SECRET_ACCESS_KEY
  unset AWS_SECRET_ACCESS_KEY
}

function select-aws-profile() {
  local selected_aws_profile=$(parse-aws-profile | choose-aws-profile-via-fzf)

  # Cancled to select
  if [ -z "${selected_aws_profile}" ]; then
    echo "❯ 🛑 You should select a profile first"
    echo " "
    return
  fi
  export AWS_PROFILE=${selected_aws_profile}

  # Set default region
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

function get-sso-keyword-count() {
  cat ~/.aws/credentials | grep -A4 "${AWS_PROFILE}" | grep "sso" | wc -l | tr -d ' ' || echo 0
}

function query-aws-account-name() {
  local aws_account_name
  aws_account_name=$(get-aws-account-name)

  # SSO session timeout
  if [ -z "${aws_account_name}" ] && [ "$(get-sso-keyword-count)" != "0" ]; then
    echo "❯  Refresh your AWS SSO session:"
    echo " "
    aws sso login
    echo " "
    aws_account_name=$(get-aws-account-name)
  fi

  # Invalid credentials
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
  fi

  echo "❯  Your Account Name is \"${aws_account_name}\""
  echo " "
  echo "❯  Caller Identity as You:"
  aws sts get-caller-identity --output json | jq
  echo " "
}

function aws-profile() {
  echo " "
  clear-credentials-variables
  select-aws-profile
  [ -n "${AWS_PROFILE}" ] && query-aws-account-name
}
