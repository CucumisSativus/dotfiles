export ZSH=/Users/michal/.oh-my-zsh
ZSH_THEME="muse"
ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(git osx docker docker-compose)

source $ZSH/oh-my-zsh.sh

alias poka_baterie="pmset -g batt"
alias daj_java8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`"

source .zshrc-secrets

