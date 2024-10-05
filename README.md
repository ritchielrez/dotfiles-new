# Dotfiles/Configuration files
This is my new dotfiles repository. Lot of the old configs are kept unmaintained on the older repository.

## What is dotfiles?

Dotfiles are the customization files that are used to personalize your Linux or other Unix-based system.  You can tell that a file is a dotfile because the name of the file will begin with a period–a dot!  The period at the beginning of a filename or directory name indicates that it is a hidden file or directory.  This repository contains my personal dotfiles.  They are stored here for convenience so that I may quickly access them on new machines or new installs.  Also, others may find some of my configurations helpful in customizing their own dotfiles.


## What to do with dotfiles?

There are a hundred ways to manage your dotfiles. Personally, I use the **git, yadm and GitHub** for managing my dotfiles. 

Articles discussing dotfiles management are listed below:

- [Managing dotfiles with style with rcm](https://distrotube.com/guest-articles/managing-dotfiles-with-rcm.html) (Ronnie Nissan)
- [Interactive dotfile management with dotbare](https://distrotube.com/guest-articles/interactive-dotfile-management-dotbare.html) (Kevin Zhuang)
- [Manage Dotfiles With a Bare Git Repository](https://harfangk.github.io/2016/09/18/manage-dotfiles-with-a-git-bare-repository.html) (Bonghyun Kim)


## How set up these dotfiles?

First you need to install [yadm](https://yadm.io/), then run these commands to clone this repository with `yadm`:
```bash
cd ~
yadm clone https://github.com/ritchielrez/dotfiles-new
```

Then replace the local configs with the configs from this repository:
```bash
yadm checkout --force
```

Now you should be able to use all of configs!! If you want to **stage, commit** and
do git commands on this repository. Instead of providing the arguments to `git`, ***provide them
to the `dotfiles` alias or `yadm` command.***.    

Show let's suppose I want to check *status* of this repository, I run `dotfiles status`/`yadm status`, instead 
of `git status`. And you have done it! You can now, commit changes to my repository, make pull requests, or just, 
test it out. Before leaving out, don't forget to **STAR** this repository! Thanks for checking out.
