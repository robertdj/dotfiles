alias mvim='/Applications/MacVim.app/Contents/MacOS/vim'

alias ..='cd ..'
alias ...='cd ../..'
alias -- -='cd -'

alias ll='ls -lhG'
alias la='ll -a'

# Get DHCP leases from EdgeOS router
alias leases='ssh edge "/opt/vyatta/bin/vyatta-op-cmd-wrapper show dhcp leases"'
