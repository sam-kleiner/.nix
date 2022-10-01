########################################
# Load platform
########################################
unameOut="$(uname -s)"
case "${unameOut}" in
Linux*) PLATFORM=Linux ;;
Darwin*) PLATFORM=Mac ;;
*) PLATFORM="UNKNOWN:${unameOut}" ;;
esac

########################################
# ZSH settings
########################################
HIST_IGNORE_DUPS="true"   # remove duplicates from history.
HIST_IGNORE_SPACE="true"  # prevent adding commands starting with space to history.
HIST_REDUCE_BLANKS="true" # remove extra whitespace from cmmands in history.
SHARE_HISTORY="true"      # append in real time to history.
HYPHEN_INSENSITIVE="true" # use case and hyphen insensitive completion.
ENABLE_CORRECTION="true"  # enable command auto-correction.
CORRECT_IGNORE_FILE='.*'  # fix zsh corrections for ssh -> .ssh
PROMPT_EOL_MARK=''        # remove % from incomplete EOL

unsetopt BEEP

[ -f ~/.nix/users/common/zsh/.p10k.zsh ] && source ~/.nix/users/common/zsh/.p10k.zsh
[ -f ~/.nix/users/common/zsh/.aliases ] && source ~/.nix/users/common/zsh/.aliases

########################################
# Python
########################################
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH=$PATH:~/.pyenv/bin
export PIP_DISABLE_PIP_VERSION_CHECK=1

if [[ $PLATFORM == "Mac" ]]; then
    export PYTHON_CONFIGURE_OPTS="--enable-framework"
fi

if [ -x "$(command -v pyenv)" ]; then
    eval "$(pyenv init --path)"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi
