# Dotfiles/Configuration files
This is my new dotfiles repository. Lot of the old configs are kept unmaintained on the older repository.

## What is dotfiles?

Dotfiles are the customization files that are used to personalize your Linux or other Unix-based system.  You can tell that a file is a dotfile because the name of the file will begin with a period–a dot!  The period at the beginning of a filename or directory name indicates that it is a hidden file or directory.  This repository contains my personal dotfiles.  They are stored here for convenience so that I may quickly access them on new machines or new installs.  Also, others may find some of my configurations helpful in customizing their own dotfiles.


## What to do with dotfiles?

There are a hundred ways to manage your dotfiles. Personally, I use the **Git and Github** for managing my dotfiles. 

Articles discussing dotfiles management are listed below:

- [Managing dotfiles with style with rcm](https://distrotube.com/guest-articles/managing-dotfiles-with-rcm.html) (Ronnie Nissan)
- [Interactive dotfile management with dotbare](https://distrotube.com/guest-articles/interactive-dotfile-management-dotbare.html) (Kevin Zhuang)


## How set up these dotfiles?

First you need clone bare version of this repository in your home folder:
```bash
git clone https://github.com/ritchielrez/dotfiles-new --bare .git
```

Then set a temporary alias, to change, stage and commit to this dotfiles repository:
```bash
alias dotfiles="/usr/bin/git --git-dir=$HOME/.git/ --work-tree=$HOME"
```

Then replace the local configs with the configs from this repository:
```bash
dotfiles checkout --force
```

And make sure that, the configs that are untracked, doesn't show up in `git status`:
```bash
dotfiles config --local status.showUntrackedFiles no
```
