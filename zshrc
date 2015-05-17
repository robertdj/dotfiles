# Changing/making/removing directory
setopt auto_name_dirs

setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_ALL_DUPS


# ------------------------------------------------------------ 
# Use vi(m) keybindings in shell: 
# ESC to enter normal mode and use vi(m) commands; i to enter insert mode
# Load this before custom key bindings
bindkey -v


# ------------------------------------------------------------ 
# ZSH bundles handled by zgen

source ~/.zsh/zgen/zgen.zsh

if ! zgen saved; then
	echo "Creating a zgen save\n"

	# Funky syntax highlighting
	# Should be loaded before history search script
	zgen load zsh-users/zsh-syntax-highlighting

	# Search history
	# Match the already written part
	zgen load zsh-users/zsh-history-substring-search

	# Save all to init script
	zgen save
fi


# ------------------------------------------------------------ 
# Source configurations
# Many are copied from Oh My ZSH

source ~/.zsh/alias.zsh 	 # Aliases
source ~/.host_alias.zsh 	 # Host specific aliases
source ~/.zsh/completion.zsh
source ~/.zsh/envvar.zsh 	 # Environment variables
source ~/.zsh/function.zsh 	 # Shell functions
source ~/.zsh/history.zsh 	 # History options
source ~/.zsh/misc.zsh
source ~/.zsh/keybinding.zsh
#source ~/.zsh/grep.zsh
source ~/.zsh/spectrum.zsh
source ~/.zsh/prompt.zsh 	 # Prompt


# ------------------------------------------------------------ 
# Set short hostname and completion dump file
source ~/.zsh/compdump.zsh

# Load and run compinit
autoload -U compinit
compinit -i -d "${ZSH_COMPDUMP}"

