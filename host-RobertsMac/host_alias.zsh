alias mvim='/Applications/MacVim.app/Contents/MacOS/vim'

alias ll='ls -lhG'
alias la='ll -A'

# Get DHCP leases from EdgeOS router
alias leases='ssh edge "/opt/vyatta/bin/vyatta-op-cmd-wrapper show dhcp leases"'
