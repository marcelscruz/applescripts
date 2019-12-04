-- widget
if application "Spotify" is running then
	tell application "Spotify"
		if player state is playing then return "pause"
	end tell
end if

return "play"


-- action
if application "Spotify" is running then
	tell application "Spotify" to playpause
else
	tell application "Spotify" to activate
end if
