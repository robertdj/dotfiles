# Write the full path on one line and the prompt on a new line
function fish_prompt
    set_color $fish_color_cwd
	echo (dirs)
    set_color normal
    echo '$ '
end

function fish_user_key_bindings
    fzf_key_bindings
end

