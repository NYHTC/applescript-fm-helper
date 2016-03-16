-- fmGUI_ModeEnsure_Browse()
-- Dan Shockley, NYHTC
-- Go to 'Browse' mode


--------------------
-- START OF CODE
--------------------

on fmGUI_ModeEnsure_Browse()
	-- version 1.0
	
	try
		fmGUI_ModeSelect("Browse")
		
	on error errMsg number errNum
		error "Couldn't ensure in Browse Mode - " & errMsg number errNum
	end try
	
	
end fmGUI_ModeEnsure_Browse



--------------------
-- END OF CODE
--------------------

on run
	fmGUI_ModeEnsure_Browse()
end run


on fmGUI_ModeSelect(modeToSelect)
	
	
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

on fmGUI_AppFrontMost()
	-- 1.1 - 2015-04-14 ( eshagdar ): close FMEmpower window if open
	
	tell application "System Events"
		tell application process "FileMaker Pro Advanced"
			if frontmost is not true then
				set frontmost to true
				delay 1
				
				--close FMEmpower window if it's open
				if name of window 1 is equal to "2empowerFM Toolbox" then
					click button 1 of window 1
					delay 1
				end if
			end if
		end tell
	end tell
end fmGUI_AppFrontMost

on fmGUI_Inspector_Close()
	tell application "System Events"
		tell application process "FileMaker Pro Advanced"
			my fmGUI_AppFrontMost()
			-- try the click twice in case the first only brings window to front.
			try
				set index of (first window whose name is "Inspector") to 1
			end try
			try
				click button 1 of (first window whose name is "Inspector")
			end try
			try
				click button 1 of (first window whose name is "Inspector")
			end try
		end tell
	end tell
end fmGUI_Inspector_Close