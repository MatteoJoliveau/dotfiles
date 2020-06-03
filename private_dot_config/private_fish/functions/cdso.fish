function cdso --description='cd ~/Software'
	set software_path ~/Software
	if count $argv > /dev/null
		cd $software_path/$argv[1]
	else
		cd $software_path
	end
end
