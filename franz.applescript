tell application "BetterTouchTool" to set dndEnabled to get_number_variable "SystemDoNotDisturbState"

if dndEnabled is 0 then
	tell application "BetterTouchTool"
		set badgeNumber to get_dock_badge_for "Franz" update_interval 5
		set handoffDevice to get_dock_badge_for "Franz-handoff" update_interval 5
	end tell
	if badgeNumber is not missing value and handoffDevice is missing value then
		if application "Franz" is running then
			return badgeNumber
		else
			return ""
		end if
	else if handoffDevice is not missing value then
		if handoffDevice contains "iPhone" then
			return "iPhone"
		else if handoffDevice contains "iPad" then
			return "iPad"
		else if handoffDevice contains "watch" then
			return "Watch"
		else if handoffDevice contains "Mac" then
			return "Mac"
		end if
	else
		return ""
	end if
else
	return ""
end if