-- Spotify - if running, take priority over not playing Chrome tabs
if application "Spotify" is running then
	tell application "Spotify"
		if player state is playing then
			-- if player state is playing then
			set sName to (get name of current track)
			set nowPlaying to (get artist of current track) & " - " & sName
			set artworkURL to artwork url of current track
			do shell script "curl " & artworkURL & " -o /Users/marcelcruz/Library/Application\\ Support/BetterTouchTool/spotify_cover.png"
			set fileName to ((((path to application support folder from user domain) as text) & "BetterTouchTool:" as text) & "spotify_cover.png")
			return "{\"text\":\"" & nowPlaying & "\", \"icon_path\":\"" & (POSIX path of fileName as text) & "\" }"
			else
				return ""
		end if
	end tell
  else
    return ""
end if

-- Chrome - YouTube
-- if application "Google Chrome" is running then
-- 	tell application "Google Chrome"
-- 		repeat with t in tabs of windows
-- 			tell t
-- 				if URL starts with "http://www.youtube.com/watch" or URL starts with "https://www.youtube.com/watch" then
-- 					tell t to set videoTitle to execute javascript "document.getElementById('info-contents').getElementsByClassName('title')[0].textContent"
-- 					-- tell t to set playPauseButton to execute javascript "document.getElementsByClassName('ytp-play-button')[0].getAttribute('aria-label')"
-- 					-- tell t to set isPlaying to playPauseButton does not contain "Play"
-- 					-- if isPlaying then
-- 						set fileName to ((((path to application support folder from user domain) as text) & "BetterTouchTool:" as text) & "youtube.png")
-- 						return "{\"text\":\"" & videoTitle & "\", \"icon_path\":\"" & (POSIX path of fileName as text) & "\"}"
-- 					-- end if
					
-- 				end if
-- 			end tell
-- 		end repeat
-- 	end tell
-- end if

-- Chrome - Netflix


-- Spotify -- not running, but app is open and Chrome isn't playing
-- if application "Spotify" is running then
-- 	tell application "Spotify"
-- 		-- if player state is playing then
-- 		set sName to (get name of current track)
-- 		set nowPlaying to (get artist of current track) & " - " & sName
-- 		set artworkURL to artwork url of current track
-- 		do shell script "curl " & artworkURL & " -o /Users/marcelcruz/Library/Application\\ Support/BetterTouchTool/spotify_cover.png"
-- 		set fileName to ((((path to application support folder from user domain) as text) & "BetterTouchTool:" as text) & "spotify_cover.png")
-- 		return "{\"text\":\"" & nowPlaying & "\", \"icon_path\":\"" & (POSIX path of fileName as text) & "\" }"
-- 		-- else
-- 		-- 	return ""
-- 		-- end if
-- 	end tell
-- end if

-- return ""

-- if application "iTunes" is running then
-- 	tell application "iTunes" to tell artwork 1 of current track
-- 		set srcBytes to raw data
-- 		-- figure out the proper file extension
-- 		if format is Çclass PNG È then
-- 			set ext to ".png"
-- 		else
-- 			set ext to ".jpg"
-- 		end if
-- 	end tell

-- 	set fileName to ((((path to application support folder from user domain) as text) & "BetterTouchTool:" as text) & "itunes_cover" & ext)
-- 	-- write to file
-- 	set outFile to open for access file fileName with write permission
-- 	-- truncate the file
-- 	set eof outFile to 0
-- 	-- write the image bytes to the file
-- 	write srcBytes to outFile
-- 	close access outFile

-- 	tell application "iTunes"
-- 		set playState to (player state as text)
-- 		if playState is equal to "playing" then
-- 			set trackName to name of current track
-- 			set artistName to artist of current track
-- 			set albumName to album of current track
-- 			if length of trackName is greater than maxSize then
-- 				set trackName to text 1 thru (maxSize - 3) of trackName & "..."
-- 			end if
-- 			if length of artistName is greater than maxSize then
-- 				set artistName to text 1 thru (maxSize - 3) of artistName & "..."
-- 			end if
-- 			set trackInfo to trackName & " | " & artistName
-- 		else
-- 			set trackInfo to ""
-- 		end if
-- 		return "{\"text\":\"" & trackInfo & "\", \"icon_path\":\"" & (POSIX path of fileName as text) & "\", 
-- \"background_color\": \"255,85,100,255\"}"
-- 	end tell
-- end if
