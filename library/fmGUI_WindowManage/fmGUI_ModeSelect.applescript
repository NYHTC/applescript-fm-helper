-- fmGUI_ModeSelect(modeToSelect)
-- Dan Shockley, NYHTC
-- Specify which mode to select - Layout, Browse, Find, Previiw


(*
HISTORY:
	1.1 - 2016-08-29 ( eshagdar ): wait until mode changes.
	1.0 - 201x-xx-xx ( dshockley ): first created
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	fmGUI_ModeSelect("Layout")
end run



--------------------
-- START OF CODE
--------------------

on fmGUI_ModeSelect(modeToSelect)
	-- version 1.1
	
	try
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				my fmGUI_AppFrontMost()
				my fmGUI_Inspector_Close()
				
				-- Need to click in upper-left corner of area before pasting
				set currentMode to first word of ((description of first group of window 1) as string)
				
				
				if currentMode is not equal to modeToSelect then
					set menuItemName to modeToSelect & " Mode"
					click (menu item menuItemName of menu 1 of menu bar item "View" of menu bar 1)
					
					--wait until the mode is selected ( or we time out )
					repeat 20 times
						set newMode to first word of ((description of first group of window 1) as string)
						if newMode is equal to modeToSelect then exit repeat
						delay 0.5
					end repeat
				end if
				
				return true
				
			end tell
		end tell
	on error errMsg number errNum
		error "Couldn't switch to mode '" & modeToSelect & "' - " & errMsg number errNum
	end try
end fmGUI_ModeSelect


--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_Inspector_Close()
	tell helper to fmGUI_Inspector_Close()
end fmGUI_Inspector_Close
