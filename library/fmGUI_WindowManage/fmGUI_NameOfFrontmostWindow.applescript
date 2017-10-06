-- fmGUI_NameOfFrontmostWindow()
-- Erik Shagdar, NYHTC
-- Return the name of the frontmost window.


(*
HISTORY:
	1.0 - 2017-04-03 ( eshagdar ): created.
*)


on run
	fmGUI_NameOfFrontmostWindow()
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_NameOfFrontmostWindow()
	-- version 1.0
	
	fmGUI_AppFrontMost()
	
	tell application "System Events"
		tell application process "FileMaker Pro Advanced"
			return name of window 1
		end tell
	end tell
end fmGUI_NameOfFrontmostWindow

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost
