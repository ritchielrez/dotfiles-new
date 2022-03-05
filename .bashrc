#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias dotfiles="/usr/bin/git --git-dir=$HOME/.git/ --work-tree=$HOME"
PS1='[\u@\h \W]\$ '
alias gs='git status'
alias ga='git add'
alias gp='git push -u origin'

alias dts='dotfiles status'
alias dta='dotfiles add'
alias dtc='dotfiles cz'
alias dtp='dotfiles push -u origin'

# PATH varibale needed to set for local programs
export PATH="$HOME/opts/go/bin/:$PATH"

# Oh my posh, my bash prompt
eval "$(oh-my-posh --init --shell bash --config $HOME/.config/oh-my-posh/zash1.omp.json)"


