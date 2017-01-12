-- fmGUI_ModeCurrent({})
-- Erik Shagdar, NYHTC
-- Return the mode of the frontmost layout.


(*
HISTORY:
	1.0 - 2016-11-16 ( eshagdar ):created
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	fmGUI_ModeCurrent({})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_ModeCurrent(prefs)
	-- version 1.0
	
	try
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set currentMode to first word of ((description of first group of window 1) as string)
				return currentMode
			end tell
		end tell
	on error errMsg number errNum
		error "unable to fmGUI_ModeCurrent - " & errMsg number errNum
	end try
	
end fmGUI_ModeCurrent

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost
