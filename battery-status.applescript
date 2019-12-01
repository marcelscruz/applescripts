on trim_line(this_text, trim_chars, trim_indicator)
	-- 0 = beginning, 1 = end, 2 = both
	set x to the length of the trim_chars
	-- TRIM BEGINNING
	if the trim_indicator is in {0, 2} then
		repeat while this_text begins with the trim_chars
			try
				set this_text to characters (x + 1) thru -1 of this_text as string
			on error
				-- the text contains nothing but the trim characters
				return ""
			end try
		end repeat
	end if
	-- TRIM ENDING
	if the trim_indicator is in {1, 2} then
		repeat while this_text ends with the trim_chars
			try
				set this_text to characters 1 thru -(x + 1) of this_text as string
			on error
				-- the text contains nothing but the trim characters
				return ""
			end try
		end repeat
	end if
	return this_text
end trim_line


set chargeState to do shell script "pmset -g batt | awk '{printf \"%s %s\\n\", $4,$5;exit}'"

set percentLeft to do shell script "pmset -g batt | egrep -ow '([0-9]{1,3})[$%]'"

set percentLeft to trim_line(percentLeft, "%", 1) as number

log chargeState

if chargeState contains "AC Power" then return -- skip alert when charging

considering numeric strings
	
	if chargeState contains "Battery Power" and percentLeft ≤ 77 then
		
		-- say "The battery is very low at " & percentLeft & " percent. Please connect to Power."
		set isBelowLimit to true
		
		tell application "System Events"
			
			-- display alert "Battery less than " & percentLeft & "%. Please connect to power now!" giving up after 15
			
		end tell
		
		
		
	end if
	
end considering

return
