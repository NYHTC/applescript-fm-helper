-- fmGUI_SelectAll({})
-- Erik Shagdar, NYHTC
-- Copy the selected objects in the current window in FileMaker

(*
HISTORY:
	1.3 - 2016-10-18 ( eshagdar ): use fmGUI_clickMenuItem handler
	1.2 - 2016-10-18 ( eshagdar ): make sure the menu item is available again
	1.1 - 2016-10-14 ( eshagdar ): 1.0 was looking only for script steps. now looks at non-zero length


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_menuItemAvailable
*)

property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	fmGUI_SelectAll()
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_SelectAll()
	-- version 1.1, Erik Shagdar
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set SelectAllMenuItem to first menu item of menu 1 of menu bar item "Edit" of menu bar 1 whose name is "Select All"
			end tell
		end tell
		
		return fmGUI_ClickMenuItem({menuItemRef: SelectAllMenuItem})

	on error errMsg number errNum
		error "Couldn't fmGUI_SelectAll - " & errMsg number errNum
	end try
	
end fmGUI_SelectAll

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_menuItemAvailable(prefs)
	tell helper to fmGUI_menuItemAvailable(prefs)
end fmGUI_menuItemAvailable
