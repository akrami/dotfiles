case $- in
  *i*) ;;
    *) return;;
esac

# Install oh-my-bash by this script:
# bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
export OSH="$HOME"/.oh-my-bash

OSH_THEME="agnoster"

COMPLETION_WAITING_DOTS="true"

OMB_USE_SUDO=true
OMB_PROMPT_SHOW_PYTHON_VENV=true

completions=(
  git
  composer
  ssh
)

aliases=(
  general
  ls
)

plugins=(
  git
  bashmarks
)

source "$OSH"/oh-my-bash.sh
export LANG=en_US.UTF-8

# Windows WSL SSH config
export SSH_AUTH_SOCK=$HOME/.ssh/agent.sock
ss -a | grep -q $SSH_AUTH_SOCK
if [ $? -ne 0 ]; then
  echo 'process not found'
  npiperelaypath=$HOME/.local/npiperelay
  if [ -d $npiperelaypath ]; then
    echo 'piperelay found'
    rm -f $SSH_AUTH_SOCK
    (setsid socat UNIX-LISTEN:$SSH_AUTH_SOCK,fork EXEC:"$npiperelaypath/npiperelay.exe -ei -s //./pipe/openssh-ssh-agent",nofork &) >/dev/null 2>&1
  fi
fi
