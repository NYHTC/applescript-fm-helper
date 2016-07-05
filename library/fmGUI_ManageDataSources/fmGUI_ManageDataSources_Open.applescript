-- fmGUI_ManageDataSources_Open(prefs)
-- Daniel A. Shockley, NYHTC
-- Open Manage Data Sources


(*
HISTORY:
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	fmGUI_ManageDataSources_Open({})
end run



--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDataSources_Open(prefs)
	-- version 1.1
	
	try
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				my fmGUI_AppFrontMost()
				
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
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost
