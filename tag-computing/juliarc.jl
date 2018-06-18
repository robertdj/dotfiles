# Extend path
push!(LOAD_PATH, homedir() * "/Dropbox/julia")

ENV["EDITOR"] = "vim"

# REPL colors
ENV["JULIA_STACKFRAME_LINEINFO_COLOR"] = :cyan;
ENV["JULIA_STACKFRAME_FUNCTION_COLOR"] = :yellow;

