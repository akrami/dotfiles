# XDG Configuration
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# ZSH Configuration
export ZSH="$XDG_DATA_HOME/oh-my-zsh"
export BULLETTRAIN_PROMPT_ORDER=(screen virtualenv git dir)
export BULLETTRAIN_PROMPT_SEPARATE_LINE=false
export BULLETTRAIN_VIRTUALENV_FG=black
export ZSH_THEME="bullet-train"
export ZSH_COMPDUMP="$XDG_CACHE_HOME/zcompdump/zcompdump-$HOST"
plugins=(git)

# Extra Variable Configuration
export LANG=en_US.UTF-8
export SSH_AUTH_SOCK="$HOME/.ssh/agent"

# Custom XDG Configuration
export AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME/aws/credentials"
export AWS_CONFIG_FILE="$XDG_CONFIG_HOME/aws/config"
export VAGRANT_HOME="$XDG_DATA_HOME/vagrant"

# Custom Aliases

# Custom PATH
export PATH="/opt/homebrew/opt/php@8.0/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.0/sbin:$PATH"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

# Load OMZ
source $ZSH/oh-my-zsh.sh
