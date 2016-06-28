-- fmGUI_SelectAllAndCopy(prefs)
-- Erik Shagdar, NYHTC
-- select all and copy in whatever the context is

(*
HISTORY:
	1.0 - 2016-06-28 ( eshagdar ): first created
*)

property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	fmGUI_SelectAllAndCopy({})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_SelectAllAndCopy(prefs)
	-- version 1.0, Erik Shagdar
	
	my fmGUI_AppFrontMost()
	
	tell application "System Events"
		tell process "FileMaker Pro"
			
			try
				click (first menu item of menu 1 of menu bar item "Edit" of menu bar 1 whose name is "Select All")
			on error errMsg number errNum
				error "Unable to click 'Select All' menu item - " & errMsg number errNum
			end try
			
			try
				click (menu item "Copy" of menu 1 of menu bar item "Edit" of menu bar 1)
			on error errMsg number errNum
				error "Unable to click 'Copy' menu item - " & errMsg number errNum
			end try
		end tell
	end tell
	
	return true
	
end fmGUI_SelectAllAndCopy

--------------------
-- END OF CODE
--------------------
on fmGUI_AppFrontMost()
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost
