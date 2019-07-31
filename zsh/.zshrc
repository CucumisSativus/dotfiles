export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="muse-lambda"
ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

case "$(uname -s)" in

   Darwin)
     plugins=(git osx docker docker-compose emacs)
     FZF_BINDIGNS_PATH="/usr/local/opt/fzf/shell/key-bindings.zsh"
     ;;

   Linux)
     plugins=(git fedora docker docker-compose emacs)
     FZF_BINDIGNS_PATH="/usr/share/fzf/shell/key-bindings.zsh"
     ;;
esac

source $ZSH/oh-my-zsh.sh

fetch_and_checkout(){ git fetch origin $1 && git checkout $1 }

export SBT_OPTS="-Xmx6G -XX:+CMSClassUnloadingEnabled -Xss2M  -Duser.timezone=GMT"
export PATH="$HOME/.bloop:$HOME/.local/bin:$PATH"

source $HOME/.zshrc-secrets

# Secrets
if [ -f $HOME/.zshrc-secrets ]; then
    source $HOME/.zshrc-secrets
fi

# jenv
if [ -d  $HOME/.jenv/bin ]; then
    export PATH="$HOME/.jenv/bin:$HOME/bin:$PATH"
    eval "$(jenv init -)"
fi

# fzf
if [ -f $FZF_BINDIGNS_PATH ]; then
    source $FZF_BINDIGNS_PATH
fi

# bloop completion
if [ -d $HOME/.bloop ]; then
  fpath=($HOME/.bloop/zsh $fpath)
fi

# rust completion
if [ -d $HOME/.zfunc ]; then
  fpath+=~/.zfunc
fi  

autoload -U compinit
compinit
