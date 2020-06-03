function goodnight --wraps shutdown --description='Turn off the computer'
	read -l -P 'Shutting down. Confirm? [y/N] ' confirm
	
	switch $confirm
	  case Y y
	    shutdown -h now
          case '' N n
            return 0
        end
end
