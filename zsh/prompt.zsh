# ls colors
autoload colors; colors;
export LSCOLORS="Gxfxcxdxbxegedabagacad"
#export LS_COLORS

#setopt no_beep
setopt auto_cd
setopt multios
setopt cdablevarS

# Apply theming defaults
PS1="%n@%m:%~%# "

# git theming default: Variables for theming the git info prompt
ZSH_THEME_GIT_PROMPT_PREFIX="git:(" # Prefix at the very beginning of the prompt, before the branch name
ZSH_THEME_GIT_PROMPT_SUFFIX=")"     # At the very end of the prompt
ZSH_THEME_GIT_PROMPT_DIRTY="*"      # Text to display if the branch is dirty
ZSH_THEME_GIT_PROMPT_CLEAN=""       # Text to display if the branch is clean

# Setup the prompt with pretty colors
setopt prompt_subst

# Set the prompt
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
PROMPT='%{$fg[cyan]%}${PWD/#$HOME/~} %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}
$ '
# The alternative for %~ is found at stevelosh.com

ZSH_THEME_GIT_PROMPT_PREFIX="| git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

