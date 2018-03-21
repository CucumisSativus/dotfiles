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
# fzf via Homebrew
if [ -e /usr/local/opt/fzf/shell/completion.zsh ]; then
  source /usr/local/opt/fzf/shell/key-bindings.zsh
  source /usr/local/opt/fzf/shell/completion.zsh
fi
#
# fzf + ag configuration
export FZF_DEFAULT_COMMAND='ag --nocolor -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='
--color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
--color info:108,prompt:109,spinner:108,pointer:168,marker:168
'

