set batteryStatus to do shell script "pmset -g batt"
set powerSource to word 4 of batteryStatus
set percentage to word 11 of batteryStatus as integer

if powerSource contains "AC Power" then return -- skip alert when charging

considering numeric strings
	
	if powerSource contains "Battery Power" and percentLeft ² 77 then
		
		-- say "The battery is very low at " & percentLeft & " percent. Please connect to Power."
		set isBelowLimit to true
		
		tell application "System Events"
			
			-- display alert "Battery less than " & percentLeft & "%. Please connect to power now!" giving up after 15
			
		end tell
		
		
		
	end if
	
end considering

return
