#
# ~/.bashrc
#

# Don't forget to source the login profile
#source /etc/profile

# XDG Base Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Default bash prompt
PS1='[\u@\h \W]\$ '

alias ls='eza --icons'
alias ll='ls -la'
alias tree="ls --tree"
# alias dotfiles="/usr/bin/git --git-dir=$HOME/.git/ --work-tree=$HOME"
alias gs='git status'
alias ga='git add'
alias gp='git push -u origin'

alias dotfiles='yadm'
alias dts='yadm status'
alias dta='yadm add'
alias dtc='dotfiles cz'
alias dtp='yadm push -u origin'

alias dtnv='yadm enter nvim'

# lf
alias lf="lfub"

export LF_ICONS="\
tw=:\
st=:\
ow=:\
dt=:\
di=:\
fi=:\
ln=:\
or=:\
ex=:\
*.c=:\
*.cc=:\
*.clj=:\
*.coffee=:\
*.cpp=:\
*.css=:\
*.d=:\
*.dart=:\
*.erl=:\
*.exs=:\
*.fs=:\
*.go=:\
*.h=:\
*.hh=:\
*.hpp=:\
*.hs=:\
*.html=:\
*.java=:\
*.jl=:\
*.js=:\
*.json=:\
*.lua=:\
*.md=:\
*.php=:\
*.pl=:\
*.pro=:\
*.py=:\
*.rb=:\
*.rs=:\
*.scala=:\
*.ts=:\
*.vim=:\
*.cmd=:\
*.ps1=:\
*.sh=:\
*.bash=:\
*.zsh=:\
*.fish=:\
*.tar=:\
*.tgz=:\
*.arc=:\
*.arj=:\
*.taz=:\
*.lha=:\
*.lz4=:\
*.lzh=:\
*.lzma=:\
*.tlz=:\
*.txz=:\
*.tzo=:\
*.t7z=:\
*.zip=:\
*.z=:\
*.dz=:\
*.gz=:\
*.lrz=:\
*.lz=:\
*.lzo=:\
*.xz=:\
*.zst=:\
*.tzst=:\
*.bz2=:\
*.bz=:\
*.tbz=:\
*.tbz2=:\
*.tz=:\
*.deb=:\
*.rpm=:\
*.jar=:\
*.war=:\
*.ear=:\
*.sar=:\
*.rar=:\
*.alz=:\
*.ace=:\
*.zoo=:\
*.cpio=:\
*.7z=:\
*.rz=:\
*.cab=:\
*.wim=:\
*.swm=:\
*.dwm=:\
*.esd=:\
*.jpg=:\
*.jpeg=:\
*.mjpg=:\
*.mjpeg=:\
*.gif=:\
*.bmp=:\
*.pbm=:\
*.pgm=:\
*.ppm=:\
*.tga=:\
*.xbm=:\
*.xpm=:\
*.tif=:\
*.tiff=:\
*.png=:\
*.svg=:\
*.svgz=:\
*.mng=:\
*.pcx=:\
*.mov=:\
*.mpg=:\
*.mpeg=:\
*.m2v=:\
*.mkv=:\
*.webm=:\
*.ogm=:\
*.mp4=:\
*.m4v=:\
*.mp4v=:\
*.vob=:\
*.qt=:\
*.nuv=:\
*.wmv=:\
*.asf=:\
*.rm=:\
*.rmvb=:\
*.flc=:\
*.avi=:\
*.fli=:\
*.flv=:\
*.gl=:\
*.dl=:\
*.xcf=:\
*.xwd=:\
*.yuv=:\
*.cgm=:\
*.emf=:\
*.ogv=:\
*.ogx=:\
*.aac=:\
*.au=:\
*.flac=:\
*.m4a=:\
*.mid=:\
*.midi=:\
*.mka=:\
*.mp3=:\
*.mpc=:\
*.ogg=:\
*.ra=:\
*.wav=:\
*.oga=:\
*.opus=:\
*.spx=:\
*.xspf=:\
*.pdf=:\
*.nix=:\
"

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp" >/dev/null
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# trash-cli
alias rm=trash

# bat
export BAT_THEME=Nord

# set EDITOR as neovim
export EDITOR="nvim"

# Fish shell
# fish

# cargo enviroment variables
. "$HOME/.cargo/env"

# Golang
export PATH=$PATH:"$HOME/.go/bin"
export GOPATH="$HOME/ritux/go"
export PATH="$PATH:$HOME/ritux/go/bin"
export PATH="$PATH:/usr/local/go/bin"

# PATH variable needed to set for local programs
export PATH="~/opts/:$PATH"

export PATH="~/opts/go/bin/:$PATH"
export PATH="~/go/bin/:$PATH"
export PATH="/usr/local/go/bin/:$PATH"

export PATH="~/.local/bin/:$PATH"
export PATH="~/.scripts/:$PATH"

export PATH="~/.local/share/nvim/mason/bin/:$PATH"

export PATH=$PATH:/home/ritux/.spicetify

# Homebrew package manager
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# zoxide(https://github.com/ajeetdsouza/zoxide) configuration
eval "$(zoxide init bash)"

# vcpkg cmake integration
# export CMAKE_TOOLCHAIN_FILE=$HOME/dev/vcpkg/scripts/buildsystems/vcpkg.cmake

# For wezterm undercurl support
# export TERM=wezterm

# Oh my posh, my bash prompt
eval "$(oh-my-posh --init --shell bash --config $HOME/.config/oh-my-posh/zash1.omp.json)"
eval "$(/bin/brew shellenv)"
# Added by zap installation script
PATH=$PATH:$HOME/.local/bin

# ble.sh - syntax highlighting for bash
# source ~/.local/share/blesh/ble.sh

# bleopt complete_auto_history=
#
# ble-face -s region                    none
# ble-face -s region_target             none
# ble-face -s region_match              none
# ble-face -s disabled                  none
# ble-face -s auto_complete             none
# ble-face -s menu_filter_fixed         none
# ble-face -s menu_filter_input         none
# ble-face -s vbell                     none
# ble-face -s vbell_erase               none
# ble-face -s vbell_flash               none
# ble-face -s prompt_status_line        none
#
# ble-face -s syntax_error fg=red
# ble-face -s command_function fg=green
# ble-face -s filename_directory        underline,fg=blue
# ble-face -s filename_directory_sticky underline,fg=blue
# ble-face -s filename_link             underline,fg=blue
# ble-face -s filename_orphan           underline,fg=blue
# ble-face -s filename_executable       underline,fg=green
# ble-face -s filename_setuid           underline,fg=blue
# ble-face -s filename_setgid           underline,fg=blue
# ble-face -s filename_other            underline,fg=blue
# ble-face -s filename_socket           underline,fg=blue
# ble-face -s filename_pipe             underline,fg=blue
# ble-face -s filename_character        underline,fg=blue
# ble-face -s filename_block            underline,fg=blue
# ble-face -s filename_warning          underline,fg=red
# ble-face -s filename_url              underline,fg=blue
# ble-face -s filename_ls_colors        underline
# export VOLTA_HOME="$HOME/.volta"
# export PATH="$VOLTA_HOME/bin:$PATH"

# fnm
# export PATH="~/.local/share/fnm:$PATH"
# eval "`fnm env`"
# eval "$(fnm env --use-on-cd)"

# xmake 
test -f "/home/ritux/.xmake/profile" && source "/home/ritux/.xmake/profile"

# cutefetch
export PATH="~/opts/cutefetch:$PATH"

# fzf catppuccin color
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#181825,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

# sdkman
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# slint-viewer
export PATH="~/opts/slint-viewer:$PATH"

