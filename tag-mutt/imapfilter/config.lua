options.limit = 50
options.timeout = 60

-- Copied from Greg Hurrell's dotfiles:
-- https://github.com/wincent/wincent
-- Removes trailing newline when reading password
function trim(str)
	return str:gsub('^%s+', ''):gsub('%s+$', '')
end

-- Get the password by reading the output of the gpg command used in the other
-- Mutt related config files
function get_imap_password(file)
	local command = "gpg2 -q --for-your-eyes-only --no-tty -d " .. file
	local f = io.popen(command)
	local password = f:read("*a")
	f:close()
	return trim(password)
end


dofile(os.getenv('HOME') .. '/.imapfilter/maps.lua')
dofile(os.getenv('HOME') .. '/.imapfilter/robert.lua')
