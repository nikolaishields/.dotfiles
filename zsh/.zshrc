# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR=vim

export ZSH="/home/kolya/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
  aws
  common-aliases
  direnv
  docker-compose
  fzf
  git
  kubectl 
  terraform docker 
  zsh-completions
)
source $ZSH/oh-my-zsh.sh

# Keybindings
# give us access to ^Q
stty -ixon
# vi mode
bindkey -v
bindkey "^F" vi-cmd-mode
# handy keybindings
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^K" kill-line
bindkey "^R" history-incremental-search-backward
bindkey "^P" history-search-backward
bindkey "^Y" accept-and-hold
bindkey "^N" insert-last-word
bindkey "^Q" push-line-or-edit
bindkey -s "^T" "^[Isudo ^[A" # "t" for "toughguy"

# History
setopt hist_ignore_all_dups inc_append_history
HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096
export ERL_AFLAGS="-kernel shell_history enabled"   

# Completions
#source <(glooctl completion zsh)
#source <(kubectl completion zsh)
#source <(stern --completion=zsh)
autoload -U compinit && compinit
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
