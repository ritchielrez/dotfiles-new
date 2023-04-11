# Commands to run in interactive sessions can go here
if not status is-interactive
end

# Aliases
alias ls='exa --icons'
alias ll='ls -la'
alias sl='ls'

alias dotfiles="/usr/bin/git --git-dir=$HOME/.git/ --work-tree=$HOME"
alias gs='git status'
alias ga='git add'
alias gp='git push -u origin'

alias dts='dotfiles status'
alias dta='dotfiles add'
alias dtc='dotfiles cz'
alias dtp='dotfiles push -u origin'

# Path
export PATH="$HOME/.cargo/bin/:$PATH"

# theme_gruvbox dark medium

# zoxide configuration
zoxide init fish | source

# Prompt
oh-my-posh prompt init fish | source
