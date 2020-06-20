Dotfiles
========

This is a collection of my dotfiles used on GNU/Linux and Mac OS X.

The files are managed using [rcm](https://github.com/thoughtbot/rcm).


## Contents

The dotfiles are related to

- BASH
- Git
- Julia
- LaTeX
- Mutt
- R
- rcrc
- tmux
- Vim
- ZSH


## Computer specific setup

I have one Mac and multiple computers with GNU/Linux. When possible I use ZSH as my shell and tmux as my terminal multiplexer. Alternatively, I use BASH.
To manage this, I have the following setup:

- A `tag` folder for my Mac.
- A `tag` for GNU/Linux.
- A `tag` for BASH.

Currently the operating systems only differ in the shell aliases.

I use further tagging to manage

- Latex: [tikz2pdf](https://github.com/robertdj/tikz2pdf) and [latexmk](http://ctan.org/pkg/latexmk).
- Computing tools: [Julia](http://julialang.org), [R](http://www.r-project.org) and RStudio. The RStudio preferences can also be used on Windows (in the hidden folder `C:/Users/<user>/AppData/Roaming/RStudio`)
- [Mutt](http://www.mutt.org).
- [tmux](https://tmux.github.io).


## tmux

I use the Ruby gem [tmuxinator](https://github.com/tmuxinator/tmuxinator) for tmux templates.


## Vim

My one & only editor is Vim and I manage plugins with [vim-plug](https://github.com/junegunn/vim-plug).
On a fresh install/new user vim-plug has to be installed and the plugins have to be downloaded and installed.
As illustrated on the Thoughbots [webpage](https://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos), this can be accomplished with a hook.

The `.vim` directory is symlinked on the top level (as specified in the `rcrc` file).


## ZSH

My ZSH plugins are managed by [zgen](https://github.com/tarjoilija/zgen).

My `zshrc` file is heavily inspired [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh).

