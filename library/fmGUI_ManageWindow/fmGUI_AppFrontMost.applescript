-- fmGUI_AppFrontMost()
-- Erik Shagdar, NYHTC
-- Ensures FileMaker Advanced is the frontmost window. Closes 2empowerFM Toolbox window if it is visible


(*
HISTORY:
	1.1 - 2015-04-14 ( eshagdar ): close FMEmpower window if open
	1.0 - created
*)


on run
	fmGUI_AppFrontMost()
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_AppFrontMost()
	-- version 1.1
	
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

--------------------
-- END OF CODE
--------------------
