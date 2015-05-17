# Get the .bashrc
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi


# ------------------------------------------------------------ 
# Customize terminal

# Change the prompt
PS1="\h:\w\n $ "

# change title of the terminal
PROMPT_COMMAND='echo -ne "\033]0;${PWD/$HOME/~}\007"'


# ------------------------------------------------------------ 
# Bash history

# avoid duplicates in history
export HISTCONTROL=ignoredups

# Commands starting with space don't show up in history;
# alternatively use up arrow and CTRL-U to delete
export HISTIGNORE=' *'


# ------------------------------------------------------------ 
# Set environment variables

# Add to PATH: The usual suspects
export PATH="/usr/local/bin:/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin:$PATH"

# Add to PATH: Latex, Anaconda's Python
export PATH="usr/local/texlive/2014/bin/x86_64-linux:/usr/local/anaconda3/bin:$PATH"

# Add to PATH: My scripts
export PATH=$PATH:~/Documents/scripts

export INFOPATH="/usr/local/texlive/2014/texmf-dist/doc/info:$INFOPATH"
export MANPATH="/usr/local/texlive/2014/texmf-dist/doc/man:$MANPATH"

export TEXSKIP1="+\cref"
export VIMHOME="~/.vim"
export C_INCLUDE_PATH="/usr/local/llvm/build/:$C_INCLUDE_PATH"

export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim

# ------------------------------------------------------------ 


# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh;


# added by Anaconda 2.1.0 installer
export PATH="/usr/local/anaconda/bin:$PATH"
