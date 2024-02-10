#!/usr/bin/env bash

# ================= XDG =================
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# ================= DEFAULT =================
case $- in
  *i*) ;;
    *) return;;
esac

export LANG=en_US.UTF-8
export SSH_AUTH_SOCK="$HOME/.ssh/agent.sock"
export HISTFILE="$XDG_STATE_HOME/bash/history"

# ================= OH-MY-BASH =================
# Install oh-my-bash by this script:
# bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
export OSH="$XDG_DATA_HOME/oh-my-bash"
OSH_THEME="agnoster"
COMPLETION_WAITING_DOTS="true"
OMB_USE_SUDO=true
OMB_PROMPT_SHOW_PYTHON_VENV=true
completions=(git composer ssh)
aliases=(general ls)
plugins=(git bashmarks)
source "$OSH"/oh-my-bash.sh

# ================= WSL-SSH =================
# Windows WSL SSH config
ss -a | grep -q $SSH_AUTH_SOCK
if [ $? -ne 0 ]; then
  npiperelaypath=$XDG_DATA_HOME/npiperelay
  if [ -d $npiperelaypath ]; then
    rm -f $SSH_AUTH_SOCK
    (setsid socat UNIX-LISTEN:$SSH_AUTH_SOCK,fork EXEC:"$npiperelaypath/npiperelay.exe -ei -s //./pipe/openssh-ssh-agent",nofork &) >/dev/null 2>&1
  fi
fi
