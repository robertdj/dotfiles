Dotfiles
========

This is a collection of my dotfiles used on GNU/Linux and Mac OS X.

The files are managed using [rcm](https://github.com/thoughtbot/rcm).
I use tags as explained in rcm's README. 
Each tag is explained in a section below.

When possible I use ZSH as my shell and if that is not available, I use BASH.


## Contents

The dotfiles are related to

- BASH
- Git
- Julia
- LaTeX
- R
- rcrc
- tmux
- Vim
- VS Code
- ZSH


## Computer specific setup

I have one Mac and multiple computers with GNU/Linux. 
These are managed with the tags `mac` and `linux`.
Currently the operating systems only differ in the shell aliases.


## Computing tag

My computing tools are [Julia](http://julialang.org) and [R](http://www.r-project.org) with [RStudio](https://rstudio.com). 

RStudio's preferences can also be used on Windows in the hidden folder `C:/Users/<user>/AppData/Roaming/RStudio`.

I sometimes use [VS Code](https://code.visualstudio.com) as an IDE for Julia with the [Julia for VS Code](https://www.julia-vscode.org) extension.


## Fish tag

Once upon a time I tried the [fish shell](https://fishshell.com) and this tag sets the prompt in a way I like.


## LaTeX tag

For writing nicely stylised documents LaTeX is my number one choice. 
I [rely heavily](http://dahl-jacobsen.dk/tips/blog/2020-04-23-my-workflow-with-latexmk) on [latexmk](http://ctan.org/pkg/latexmk).

For custom drawings in LaTeX I have relied on [TikZ & PGF](https://github.com/pgf-tikz/pgf) and used [tikz2pdf](https://github.com/robertdj/tikz2pdf) to speed up the iterative process.


## tmux tag

As a terminal multiplexer I use [tmux](https://tmux.github.io).


## Vim tag

My one & only editor is Vim and I manage plugins with [vim-plug](https://github.com/junegunn/vim-plug).
On a fresh install/new user vim-plug has to be installed and the plugins have to be downloaded and installed.

As illustrated on the Thoughbots [webpage](https://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos), this can be accomplished with rcm using a hook.

The `.vim` directory is symlinked on the top level (as specified in the `rcrc` file).


## VS Code tag

The settings file can be used across platforms, but the [location depends on the operating system](https://code.visualstudio.com/docs/getstarted/settings#_settings-file-locations).


## ZSH tag

My ZSH plugins are managed by [zgen](https://github.com/tarjoilija/zgen).

My `zshrc` file is heavily inspired [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh).

