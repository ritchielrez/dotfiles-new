# Commands to run in interactive sessions can go here
if not status is-interactive
end

# Aliases
alias ls='exa --icons'
alias ll='ls -la'
alias sl='ls'

# alias dotfiles="/usr/bin/git --git-dir=$HOME/.git/ --work-tree=$HOME"
alias gs='git status'
alias ga='git add'
alias gp='git push -u origin'

alias dts='yadm status'
alias dta='yadm add'
alias dtc='yadm cz'
alias dtp='yadm push -u origin'

# Path
export PATH="$HOME/.cargo/bin/:$PATH"

export PATH="$HOME/dev/projectGenerate/build/:$PATH"

# theme_gruvbox dark medium

# zoxide configuration
zoxide init fish | source

# Prompt
# oh-my-posh prompt init fish | source

# volta configuration
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
