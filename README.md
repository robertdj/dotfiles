Dotfiles
========

This is a collection of my dotfiles used on GNU/Linux and Mac OS X.

The files are managed using [rcm](https://github.com/thoughtbot/rcm).


## Contents ##

The dotfiles are related to

- BASH
- Git
- GNU Screen
- GNU Stow
- LaTeX
- Mutt
- R
- rcrc
- Ruby gems
- tmux
- Vim
- ZSH

## Computer specific setup

At home I have one Mac and multiple computers with GNU/Linux.
At work I have a laptop with GNU/Linux and access to (but no administration rights over) servers with GNU/Linux.

Where possible, I use ZSH as my shell and tmux as my terminal multiplexer.
Alternatively, I use BASH and GNU Screen.
To manage this, I have the following setup:

- A `host` folder for my Mac.
- A `tag` for GNU/Linux.
- A `tag` for BASH (that also includes the `screenrc`).

Currently the operating systems only differ in the shell aliases.

I use further tagging to manage

- Latex: [tikz2pdf](https://github.com/robertdj/tikz2pdf) and [latexmk](http://ctan.org/pkg/latexmk).
- Computing tools: [Julia](http://julialang.org), [R](http://www.r-project.org) and [INLA](http://www.r-inla.org).
- A `tag` for Mutt.


## tmux

I use the Ruby gem [tmuxinator](https://github.com/tmuxinator/tmuxinator) for tmux templates.


## Vim

My one & only editor is Vim and I manage plugins with [Vundle](https://github.com/gmarik/Vundle.vim).
On a fresh install/new user Vundle has to be installed and the plugins have to be downloaded and installed.
As illustrated on the Thoughbots [webpage](https://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos), this can be accomplished with a hook.

The `.vim` directory is symlinked on the top level (as specified in the `rcrc` file).


## ZSH

My ZSH plugins are managed by [zgen](https://github.com/tarjoilija/zgen).

My `zshrc` file is heavily inspired [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh).

