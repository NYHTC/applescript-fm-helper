-- fmGUI_ManageDataSources_Open(prefs)
-- Daniel A. Shockley, NYHTC
-- Open Manage Data Sources


(*
HISTORY:
	1.1.1 - 2017-06-26 ( eshagdar ): moved frontmost to outer scope
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
*)


on run
	fmGUI_ManageDataSources_Open({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDataSources_Open(prefs)
	-- version 1.1.1
	
	try
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				-- try to open Manage window:
				if name of window 1 starts with "Manage External Data Sources" then
					return true
				else
					click (first menu item of menu 1 of menu item "Manage" of menu 1 of menu bar item "File" of menu bar 1 whose name starts with "External Data Source")
					return true
				end if
			end tell
		end tell
	on error errMsg number errNum
		error "Couldn't open Manage Data Sources - " & errMsg number errNum
	end try
end fmGUI_ManageDataSources_Open

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost
