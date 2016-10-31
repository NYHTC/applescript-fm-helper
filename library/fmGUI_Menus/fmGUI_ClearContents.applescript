-- fmGUI_ClearContents()
-- Erik Shagdar, NYHTC
-- Clear contents/selected objects

(*
HISTORY:
	1.0 - 2016-10-28 ( eshagdar ): first created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_clickMenuItem
*)

property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	fmGUI_ClearContents()
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_ClearContents()
	-- version 1.0, Erik Shagdar
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set ClearMenuItem to first menu item of menu 1 of menu bar item "Edit" of menu bar 1 whose name is "Clear"
			end tell
		end tell
		
		return fmGUI_ClickMenuItem({menuItemRef:ClearMenuItem})
		
	on error errMsg number errNum
		error "Couldn't fmGUI_ClearContents - " & errMsg number errNum
	end try
	
end fmGUI_ClearContents

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ClickMenuItem(prefs)
	tell helper to fmGUI_ClickMenuItem(prefs)
end fmGUI_ClickMenuItem