# This script requires two libs. Download them:
# https://itunes.apple.com/ru/app/json-helper-for-applescript/id453114608?l=en&mt=12 
# https://itunes.apple.com/ru/app/location-helper-for-applescript/id488536386?mt=12 

tell application "Location Helper"
	set clocation_coords to get location coordinates
	tell application "JSON Helper"
		set weather to fetch JSON from "http://api.openweathermap.org/data/2.5/weather?lat=" & item 1 of clocation_coords & "&lon=" & item 2 of clocation_coords & "&units=metric&appid=32c4256d09a4c52b38aecddba7a078f6"
		set temp to temp of main of weather as string
		return temp & "¡C"
	end tell
end tell