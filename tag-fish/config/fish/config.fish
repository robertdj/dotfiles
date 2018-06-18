# Write the full path on one line and the prompt on a new line
function fish_prompt
    set_color $fish_color_cwd
	echo (dirs)
    set_color normal
    echo '$ '
end

# Get DHCP leases from EdgeOS router
function leases
	ssh edge "/opt/vyatta/bin/vyatta-op-cmd-wrapper show dhcp leases"
end

