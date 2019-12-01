tell application "Finder" to close every window
tell application "Finder" to open the startup disk
tell application "Finder" to get the name of front Finder window
tell application "Finder" to close Finder window "Macintosh HD"
tell application "Finder" to open home
tell application "Finder" to get the name of Finder Window 2
tell application "Finder" to  get the index of the front Finder window
tell application "Finder" to get the index of the  Finder window before the last Finder window
tell application "Finder" to  set the index of the last Finder window to 1
tell application "Finder" to get the target of the front Finder window
tell application "Finder" to ¬
 set the target of the front Finder window to the startup disk


 on run
    set theBattString to (do shell script "pmset -g batt")
    -- the above will return something like...
    -- Now drawing from 'Battery Power' -InternalBattery-0  82%; discharging; 4:06 remaining
end run