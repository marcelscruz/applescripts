tell application "BetterTouchTool"
	try
		set isActive to get_number_variable "SystemDoNotDisturbState"
		if isActive is 1.0 then
			return 0
		else
			return ""
		end if
	end try
end tell

