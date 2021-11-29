alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

alias zshconf="nvim ~/.config/zsh/"
alias so="source ~/.zshrc"

alias cd="pushd"

alias sc="pushd ~/Pictures/screenshots"
alias dot="pushd ~/repos/dotfiles/"
alias dwd="pushd ~/.config/suckless/dwm"

# alias neofetch="neofetch --ascii_distro darwin"

alias cls="clear"

alias suck="sudo rm config.h; sudo rm patches.h; sudo make install"

alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

alias grep="grep --color=auto"

alias config='/usr/bin/git --git-dir=/mnt/c/Repos/dotfiles-new --work-tree=$HOME'

alias e="exit"
alias t="tmux"

alias md="mkdir"

alias spicetify="~/spicetify-cli/spicetify"

alias gs="git status | lolcat"
alias ga="git add ."

function gc()
{
  git commit -m "$1"
}

function gac()
{
    git add . 
    git commit -m "$1"
}

function gacp()
{
	git add . 
	git commit -m "$1"
	git push -u --force origin $2
}

### ARCHIVE EXTRACTION
# usage: ex <file>
function ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

alias todo="nvim ~/.config/zsh/todo.zsh"

alias ls="exa --icons --git"
alias ll="exa -la --icons --git"

# Youtube-dl: a command line program to download youtube video orf just audio
alias yt="youtube-dl"
alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "
alias ytv-best="youtube-dl -f bestvideo+bestaudio "


# apt aliases
(( $+commands[apt] )) && APT=apt || APT=apt-get

alias acs='apt-cache search'

alias afs='apt-file search --regexp'

# These are apt/apt-get only
alias ags="$APT source"

alias acp='apt-cache policy'

#List all installed packages
alias agli='apt list --installed'

# List available updates only
alias aglu='apt list --upgradable'

# superuser operations ######################################################

alias afu='sudo apt-file update'

alias ppap='sudo ppa-purge'

alias age="sudo $APT"
alias aga="sudo $APT autoclean"
alias agb="sudo $APT build-dep"
alias agc="sudo $APT clean"
alias agd="sudo $APT dselect-upgrade"
alias agi="sudo $APT install"
alias agp="sudo $APT purge"
alias agr="sudo $APT remove"
alias agu="sudo $APT update"
alias agud="sudo $APT update && sudo $APT dist-upgrade"
alias agug="sudo $APT upgrade"
alias aguu="sudo $APT update && sudo $APT upgrade"
alias agar="sudo $APT autoremove"

