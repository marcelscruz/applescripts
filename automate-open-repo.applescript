use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

set iTerm to application "iTerm"

tell application "iTerm"
	if (iTerm) is running then
		-- activate
		tell the current window
			set appTasks to create tab with profile "Default"
		end tell
	else
		open window
	end if
end tell

tell application "iTerm"
	-- tell the current window
	-- 	set appTasks to create tab with profile "Default"
	
	tell the current window
		tell the current session
			set name to "homepage"
			write text "homepage"
			write text "npm start"
			
			set emptyTab to split vertically with default profile
			
			tell emptyTab
				set name to "homepage"
				write text "homepage"
				select -- focus on current pane
			end tell
		end tell
	end tell
	
	-- 		set freeTab to create tab with profile "Default"
	
end tell

