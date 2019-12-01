tell application "System Events"
		display alert "Battery less than " & percentLeft & "%. Please connect to power now!" giving up after 15
end tell