# Mac Dot-files

The following repository is meant to be checked out and used to manage the contents under the `/Users/<username>/.config` directory.

# Goals and Principles

The principles I am trying to setup here, using this repository and set of tools, in order to gain the most productivity are the following:
* limited mouse usage - keep hands on the keyboard and learn shortcuts more than clicks and trackpad actions
* automate everything in code - the repository here contains everything I need to setup a Mac and start using it productively
* tracking - all configurations which are customized are kept in git
* KISS - although many YouTube videos suggest customization and plugins, I avoid those unless absolutely necessary. Less complexity is more productivity
* distraction free - avoid screen setups with lots of visualization candy to keep focused on work

# My Environment

For my development environment on a Mac I am using the following:

* Alacritty - terminal emmulator, replacement for default Terminal app
* tmux - tty multiplexor

## Installation
It can be checked out via the following command:

```
git clone git@github.com:devsysape/mac-dotfiles.git ~/.config
rm ~/.zprofile
./.config/initial-install.sh 
```

This is only necessary the *first* time on a new Mac.
It should not be run more than once, although no commands would cause the environment to have an issue or data to be lost.

## Scripts
Under the `.config/` directory will be two scripts:

* `initial-install.sh` - used on a brand new Mac, first time, to automate installation of software and settings

* `git-config.sh` - used to set global configuration for Git, including helpfule aliases

As my environment expands, I will add to the `initial-install.sh` script so I could easily re-build from scratch should I need to.

# Disclaimer

These are my personal configuration files for a Mac environment.
I make no warranty on their contents, and they are bring provided AS IS as an example to others
who may want to do something similar for themselves.
