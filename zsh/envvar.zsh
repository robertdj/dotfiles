# ------------------------------------------------------------ 
# Set environment variables

# Color support; needed for vim-airline
export TERM='xterm-256color'

export INFOPATH="/usr/local/texlive/2018/texmf-dist/doc/info:$INFOPATH"
export MANPATH="/usr/local/texlive/2018/texmf-dist/doc/man:$MANPATH"

export EDITOR="vim"
export VIMHOME="$HOME/.vim"

export R_HOME="/opt/R/4.3.2/lib/R"
export LD_LIBRARY_PATH="/opt/R/4.3.2/lib/R/lib:$LD_LIBRARY_PATH"

export JULIA_NUM_THREADS=4

export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --exclude .venv'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export PATH=$HOME/.local/bin:$PATH

