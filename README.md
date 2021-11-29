# Dotfiles
## ⚠️ *Warning**, this is my new dotfiles repository, not all the configs have been move over from the old one, it'll take some time.


## What is dotfiles?

Dotfiles are the customization files that are used to personalize your Linux or other Unix-based system.  You can tell that a file is a dotfile because the name of the file will begin with a period–a dot!  The period at the beginning of a filename or directory name indicates that it is a hidden file or directory.  This repository contains my personal dotfiles.  They are stored here for convenience so that I may quickly access them on new machines or new installs.  Also, others may find some of my configurations helpful in customizing their own dotfiles.



## Configs of mine: 

1. bspwm ( *my current window manager* )
2. i3-gaps ( *I don't use it anymore* )
3. xfce4-panel ( *I don't use it anymore* )
4. dunst ( *notification daemon* )
5. picom ( *the program that adds transparency to bspwm and i3* )
6. sxhkd ( *hotkey daemon* )
7. polybar ( *the panel on the top* )
8. neovim ( *for python development* )
9. vim
10. zsh ( *with zsh-autosuggestions, zsh-syntax-highlighting, custom zsh prompt* )



## How to install all of these programs?

**For bspwm and sxhkd:**

```shell
sudo apt install bspwm
```

**For xfce4-panel:**

```shell
sudo apt install xfce4-panel
```

**For i3-gaps:**

```shell
sudo add-apt-repository -y ppa:regolith-linux/stable
sudo apt install i3-gaps
```

**For polybar:**

```shell
sudo apt install polybar
```

**For neovim:**

```shell
sudo apt install neovim
```

**For neovim plugins:**

```shell
sudo apt install nodejs npm
```

**For vim:**

```shell
sudo apt install vim
```

**For zsh:**

```shell
sudo apt install zsh
```


## What to do with dotfiles?

There are a hundred ways to manage your dotfiles. Personally, I use the **Git and Github** for managing my dotfiles. 

Articles discussing dotfiles management are listed below:

- [Managing dotfiles with style with rcm](https://distrotube.com/guest-articles/managing-dotfiles-with-rcm.html) (Ronnie Nissan)
- [Interactive dotfile management with dotbare](https://distrotube.com/guest-articles/interactive-dotfile-management-dotbare.html) (Kevin Zhuang)




