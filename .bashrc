#
# ~/.bashrc
#

# Don't forget to source the login profile
#source /etc/profile

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Default bash prompt
PS1='[\u@\h \W]\$ '

alias ls='exa --icons'
alias ll='ls -la'
alias tree="ls --tree"
# alias dotfiles="/usr/bin/git --git-dir=$HOME/.git/ --work-tree=$HOME"
alias gs='git status'
alias ga='git add'
alias gp='git push -u origin'

alias dts='yadm status'
alias dta='yadm add'
alias dtc='dotfiles cz'
alias dtp='yadm push -u origin'

alias dtnv='yadm enter nvim'

# lf
# alias lf="lfub"

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

# bat
export BAT_THEME=Nord

# set EDITOR as neovim
export EDITOR="nvim"

# Fish shell
# fish

# Golang
export PATH=$PATH:/home/ritux/.go/bin
export GOPATH=/home/ritux/go
export PATH=$PATH:/home/ritux/go/bin

# fnm
# export PATH=/home/ritux/.fnm:$PATH
# eval "`fnm env`"

# PATH variable needed to set for local programs
export PATH="~/opts/:$PATH"

export PATH="~/opts/go/bin/:$PATH"
export PATH="~/go/bin/:$PATH"
export PATH="/usr/local/go/bin/:$PATH"

export PATH="~/.local/bin/:$PATH"
export PATH="~/.scripts/:$PATH"

export PATH=$PATH:/home/ritux/.spicetify

# zoxide(https://github.com/ajeetdsouza/zoxide) configuration
eval "$(zoxide init bash)"

# vcpkg cmake integration
# export CMAKE_TOOLCHAIN_FILE=$HOME/dev/vcpkg/scripts/buildsystems/vcpkg.cmake

# For wezterm undercurl support
# export TERM=wezterm

# Oh my posh, my bash prompt
eval "$(oh-my-posh --init --shell bash --config $HOME/.config/oh-my-posh/zash1.omp.json)"

# cargo enviroment variables
. "$HOME/.cargo/env"

# dotnet enviroment variables
export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet
