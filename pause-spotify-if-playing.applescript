if application "Spotify" is running then
	tell application "Spotify"
		if (player state as string = "playing") then pause
	end tell
end if
