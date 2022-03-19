# Commands to run in interactive sessions can go here
if not status is-interactive
end

# Aliases
alias ls='ls --color=auto'
alias ll='ls -la'
alias dotfiles="/usr/bin/git --git-dir=$HOME/.git/ --work-tree=$HOME"
alias gs='git status'
alias ga='git add'
alias gp='git push -u origin'

alias dts='dotfiles status'
alias dta='dotfiles add'
alias dtc='dotfiles cz'
alias dtp='dotfiles push -u origin'

# theme_gruvbox dark medium

# Prompt
oh-my-posh prompt init fish | source
