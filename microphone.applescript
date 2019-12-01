set inputVolume to input volume of (get volume settings)

if inputVolume is not missing value then
	-- System Apps
	if application "FaceTime" is running then return inputVolume
	if application "Voice Memos" is running then return inputVolume
	
	-- Communications Apps
	if application "Discord" is running then return inputVolume
	if application "Discord Canary" is running then return inputVolume
	if application "Skype" is running then return inputVolume
	if application "Skype for Business" is running then return inputVolume
	if application "TeamSpeak" is running then return inputVolume
	if application "zoom.us" is running then return inputVolume
	if application "Cisco Jabber" is running then return inputVolume
	if application "GoToMeeting" is running then return inputVolume
	
	-- Video editing tools
	if application "Final Cut Pro" is running then return inputVolume
	if application "iMovie" is running then return inputVolume
	if application "Adobe Premiere Pro CC 2018" is running then return inputVolume
	
	-- Audio workstations
	if application "Logic Pro X" is running then return inputVolume
	if application "GarageBand" is running then return inputVolume
	if application "Adobe Audition CC" is running then return inputVolume
	if application "Audacity" is running then return inputVolume
	if application "FL Studio" is running then return inputVolume
	if application "Pro Tools" is running then return inputVolume
	if application "Reason" is running then return inputVolume
	if application "Live" is running then return inputVolume
	if application "Cubase" is running then return inputVolume
	if application "Studio One" is running then return inputVolume
	
	return ""
else
	return ""
end if