-- fmGUI_Inspector_Close()
-- Dan Shockley, NYHTC
-- Closes FileMaker's Inspector window


--------------------
-- START OF CODE
--------------------

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

--------------------
-- END OF CODE
--------------------

on run
	fmGUI_Inspector_Close()
end run


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