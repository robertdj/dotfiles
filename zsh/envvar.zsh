# ------------------------------------------------------------ 
# Set environment variables

# Color support; needed for vim-airline
export TERM='xterm-256color'

export INFOPATH="/usr/local/texlive/2015/texmf-dist/doc/info:$INFOPATH"
export MANPATH="/usr/local/texlive/2015/texmf-dist/doc/man:$MANPATH"
# export MANPATH="/usr/local/man:$MANPATH"

export GOROOT="/usr/local/go"
export GOPATH="$HOME/Documents/gocode"

export EDITOR="vim"
export VIMHOME="$HOME/.vim"

# Save Ruby gems locally
export GEM_HOME="$HOME/.gems"

export PATH=$HOME/bin:/usr/local/bin:$PATH
# Add to PATH: Latex, Anaconda's Python, Ruby gems
export PATH="$HOME/.gems/bin:/usr/local/texlive/2015/bin/x86_64-linux:/usr/local/anaconda/bin:$PATH"

