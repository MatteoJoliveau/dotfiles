function gemset
	if count $argv > /dev/null
		rvm gemset use $argv
	else
		rvm gemset list
	end
end
