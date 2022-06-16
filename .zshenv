. "$HOME/.cargo/env"

# Zsh config dir
export ZDOTDIR=$HOME/.config/zsh

# HISTFILE="$XDG_DATA_HOME"/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000

export PATH="$HOME/.local/bin":$PATH
export MANPAGER='nvim +Man!'
export MANWIDTH=999

export XDG_CACHE_HOME="$HOME/.cache"

export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.local/share/go/bin:$PATH
export GOPATH=$HOME/.local/share/go
export PATH=$HOME/.fnm:$PATH
export PATH="$PATH:./node_modules/.bin"
export PATH="$PATH:$HOME/opts/lazygit"
export PATH="$PATH:$HOME/opts/node/bin"
export PATH="$PATH:$HOME/dev/vcpkg"
source ~/.cargo/env
# eval "$(fnm env)"
# eval "$(zoxide init zsh)"
# eval "`pip completion --zsh`"
