-- fmGUI_ModeSelect(modeToSelect)
-- Dan Shockley, NYHTC
-- Specify which mode to select - Layout, Browse, Find, Previiw


(*
HISTORY:
	1.0 - created
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
	-- version 1.0, Dan Shockley
	
	try
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				my fmGUI_AppFrontMost()
				my fmGUI_Inspector_Close()
				
				-- Need to click in upper-left corner of area before pasting
				set modeWindow to window 1
				set modeContentArea to first group of modeWindow whose description ends with "Mode Content Area"
				set modeContentAreaDesc to description of modeContentArea
				set currentMode to first word of modeContentAreaDesc
				
				if currentMode is not equal to modeToSelect then
					delay 0.5
					set menuItemName to modeToSelect & " Mode"
					click (menu item menuItemName of menu 1 of menu bar item "View" of menu bar 1)
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
