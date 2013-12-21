# set -x verbose

# defaults
ZSH="$HOME/.zsh"
DEFAULT_ZSH_REPO="git://github.com/zzzsochi/zsh_config.git"

# load configs
[ -f "$HOME/.profile" ] && source "$HOME/.profile"
[ -f "$HOME/.zprofile" ] && source "$HOME/.zprofile"

# load some base configs
source "$ZSH/environment"
source "$ZSH/history"
source "$ZSH/aliases"

[[ $DISABLE_ALIASES != 1 ]] && source "$ZSH/aliases"
[[ $DISABLE_COMPLETION != 1 ]] && source "$ZSH/completion"
[[ $DISABLE_ZKDB != 1 ]] && source "$ZSH/zkbd"

# load python-specific configs
if [[ $PYTHON_MANAGER == "pyenv" ]]; then
    source "$ZSH/pyenv"
elif [[ $PYTHON_MANAGER == "pythonbrew" ]]; then
    source "$ZSH/pythonbrew"
elif [[ $PYTHON_MANAGER == "virtualenvwrapper" ]]; then
    source "$ZSH/virtualenvwrapper"
fi

# function for quick update
function zsh_config_update() {
    if [ -z $ZSH_REPO ]; then
        ZSH_REPO="git://github.com/zzzsochi/zsh_config.git"
    fi

    echo "Updating zsh config..."
    (
        cd "$ZSH"
        git reset --quiet --hard
        git pull  --quiet "$ZSH_REPO"
    )
    echo "Please restart zsh..."
}
