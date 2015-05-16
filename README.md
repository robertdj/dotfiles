Dotfiles
========

This is a collection of my dotfiles used on GNU/Linux and Mac OS X.

The files are managed using [rcm](https://github.com/thoughtbot/rcm).


## Contents ##

The dotfiles are related to

- BASH
- GNU Screen
- GNU Stow
- Git
- LaTeX
- R
- Ruby gems
- Vim
- ZSH
- rcrc
- tmux

The `.vim` directory is symlinked on the top level (as specified in the `rcrc` file).
Note the separate plugin for Vim called "Find.vim", which I found at [http://www.cs.ubc.ca/~emtiyaz/useful.html](http://www.cs.ubc.ca/~emtiyaz/useful.html).
This plugin allows you to search recursively for `<file>` using the command 

	:Find <file>

Wildcards are allowed (as in the usual `find` command), but the recursion level should not be too deep if you don't want to wait too long.


## Acknowledgement ##

My `zshrc` file is heavily inspired [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh).

