export ZSH=/Users/michal/.oh-my-zsh
ZSH_THEME="muse"
ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(git osx docker docker-compose)

source $ZSH/oh-my-zsh.sh

alias poka_baterie="pmset -g batt"
alias daj_java8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`"
alias usmiechnieta_kupka="say 💩"
fetch_and_checkout(){ git fetch origin $1 && git checkout $1
}

export SBT_OPTS="-Xmx6G -XX:+CMSClassUnloadingEnabled -Xss2M  -Duser.timezone=GMT"

source $HOME/.zshrc-secrets

