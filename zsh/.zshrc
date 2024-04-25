# XDG Configuration
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# ZSH Configuration
export ZSH="$XDG_DATA_HOME/oh-my-zsh"
export ZSH_THEME="spaceship"
export ZSH_COMPDUMP="$XDG_CACHE_HOME/zcompdump/zcompdump-$HOST"
export SPACESHIP_DIR_TRUNC_REPO=false
export SPACESHIP_TIME_SHOW=true
plugins=(
    git
    common-aliases
    dash
    fzf
)

# Extra Variable Configuration
export EDITOR=vim
export HOMEBREW_EDITOR=vim
export LANG=en_US.UTF-8
export SSH_AUTH_SOCK="$HOME/.ssh/agent"

# Custom XDG Configuration
export AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME/aws/credentials"
export AWS_CONFIG_FILE="$XDG_CONFIG_HOME/aws/config"
export VAGRANT_HOME="$XDG_DATA_HOME/vagrant"

# Custom Aliases
alias genpass='pwgen -syN1 64'
alias genpp='curl "https://api.dicebear.com/8.x/thumbs/svg?scale=75&randomizeIds=true&mouth=variant1,variant2,variant3,variant4&seed=$(date +%s)" 2>/dev/null | svg2png -w 512 > /Users/alireza/Pictures/avatar.png'
alias jlint='ssh jenkins01 -p22222 declarative-linter'

# Custom PATH
export PATH="/opt/homebrew/opt/php@8.0/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.0/sbin:$PATH"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

# Variables
export GROOVY_HOME=/opt/homebrew/opt/groovy/libexec

# Load OMZ
source $ZSH/oh-my-zsh.sh
