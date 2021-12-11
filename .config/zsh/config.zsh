export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/Applications:$PATH"
export PATH="$HOME/Applications/nvim/bin:$PATH"
export PATH="$HOME/Applications/auto-cpufreq/bin:$PATH"
export PATH="$HOME/Applications/nvim-linux64/bin/:$PATH"
export PATH="$HOME/Documents/repos/picom/build/src:$PATH"
export PATH="$HOME/Downloads/node/bin:$PATH"
export PATH="$HOME/.local/share/nvim/lspinstall/cpp/clangd/bin:$PATH"
export PATH="/mnt/c/Applications/exa-linux-x86_64-v0.10.1/bin:$PATH"
export PATH="/mnt/c/Applications/node/bin:$PATH"
export PATH="/mnt/c/Applications/nvim-linux64/bin:$PATH"
export PATH="~/.emacs.d/bin:$PATH"
export PATH="/root/.local/bin:$PATH"
export PATH="$PATH:/usr/local/go/bin"

export SPOTIPY_CLIENT_ID="ddcb83352c5941a690a0ac72dbefdad8"
export SPOTIPY_CLIENT_SECRET="5105b5495db64626bc3b0f2890248790"

export STARSHIP_CACHE=~/.starship/cache

export EDITOR="nvim"

export TERM=xterm-256color

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000
setopt SHARE_HISTORY

# bindkey '^[[A' up-line-or-search
# bindkey '^[[B' down-line-or-search

# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  # source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# source $(which shml)

source ~/.config/zsh/aliases.zsh

# zsh-autosuggestions plugin
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting plugin
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/.config/zsh/plugins/gitstatus/gitstatus.prompt.zsh

# Set oh-my-posh prompt
# eval "$(oh-my-posh --init --shell zsh --config /home/ritux/.poshthemes/marcduiker.omp.json)"

# Set startship prompt
# eval "$(starship init zsh)"

# Set powerlevel10k prompt
source ~/.config/zsh/themes/powerlevel10k/powerlevel10k.zsh-theme

# fpath+=$HOME/.zsh/pure

source ~/.config/zsh/autostart.zsh

# autoload -U promptinit; promptinit
# prompt pure
#
# source ~/.config/zsh/themes/zsh-prompt.zsh-theme

# I want better search for my history of commands
source ~/.config/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

