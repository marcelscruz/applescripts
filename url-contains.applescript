use AppleScript version "2.4"
use scripting additions

tell application "Spotify"
	set c to the current track
	get properties
end tell

tell application "Google Chrome"
	get properties of window 1
	set tabUrl to URL of active tab of window 1
	
	if (tabUrl contains "youtube.com/watch") then
		set isWatchingYouTube to true
	else
		set isWatchingYouTube to false
		
	end if
end tell