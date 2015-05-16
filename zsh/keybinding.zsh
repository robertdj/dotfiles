## ctrl-j newline
#bindkey '^n' accept-line
#bindkey -a '^n' accept-line
#
## another rotation to match qwerty
#bindkey -a 'n' down-line-or-history
#bindkey -a 'e' up-line-or-history
#bindkey -a 'i' vi-forward-char
#
## make qwerty
#bindkey -a 'k' vi-repeat-search
#bindkey -a 'K' vi-rev-repeat-search
#bindkey -a 'u' vi-insert
#bindkey -a 'U' vi-insert-bol
#bindkey -a 'l' vi-undo-change
#bindkey -a 'N' vi-join
#
## spare
#bindkey -a 'j' vi-forward-word-end
#bindkey -a 'J' vi-forward-blank-word-end


# ------------------------------------------------------------ 
#
# To discover what keycode is being sent, hit ^v
# and then the key you want to test.

# Bind HOME/CTRL-a
#bindkey '\e[1~' beginning-of-line
bindkey '^A' beginning-of-line

# Bind END/CTRL-e
#bindkey '\e[4~' end-of-line
bindkey '^E' end-of-line

# Bind backspace
bindkey '^?' backward-delete-char

# Bind delete
bindkey '^[[3~' delete-char

# Bind CTRL-r
bindkey '^R' history-incremental-search-backward

# Bind UP and DOWN arrow keys
if [[ "$OSTYPE" = darwin* ]] || [[ "$OSTYPE" = freebsd* ]]; then
	UP='^[[A'
	DOWN='^[[B'
elif [[ "$OSTYPE" = linux* ]]; then
	UP='^[OA'
	DOWN='^[OB'
fi

bindkey $UP history-substring-search-up
bindkey $DOWN history-substring-search-down
#bindkey $UP history-beginning-search-backward
#bindkey $DOWN history-beginning-search-forward

