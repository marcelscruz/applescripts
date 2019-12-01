tell application "Google Chrome"
	set isYouTube to false
	
	repeat with w in windows
		set i to 1
		
		repeat with t in tabs of w
			
			get properties of t
			
			if URL of t contains "https://www.youtube.com/watch" then
				-- tell w execute javascript "document.queryElementsByClassName('ytp-play-button')"
				
				set active tab index of w to i -- brings tab to front"
				set index of w to 1
				set isYouTube to true
				return "YouTube"
			end if
			set i to i + 1
			
		end repeat
		
	end repeat
	
end tell

