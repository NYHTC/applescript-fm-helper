-- fmGUI_isInFullAccessMode({})
-- Erik Shagdar, NYHTC
-- check to see if the user is logged in with a full access account ( can go into manage database ).


(*
HISTORY:
	1.0.2 - 2019-01-02 ( eshagdar ): FM17 has only advanced
	1.0.1 - 2017-11-01 ( eshagdar ): updated error message
	1.0 - 201x-xx-xx ( eshagdar ): created


REQUIRES:
	fmGUI_AppFrontMost
*)


on run
	fmGUI_isInFullAccessMode({})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_isInFullAccessMode(prefs)
	--version 1.0.2, Erik Shagdar
	
	fmGUI_AppFrontMost()
	--fmGUI_ManageLayouts_Close({})
	
	try
		set listOfFullAccessWindowNames to {}
		if fmGUI_NameOfFrontmostWindow() contains listOfFullAccessWindowNames then return true
		
		tell application "System Events"
			tell process "FileMaker Pro Advanced"
				set canAccessManageDB to enabled of first menu item of menu 1 of menu item "Manage" of menu "File" of menu bar item "File" of menu bar 1 whose name begins with "Database"
			end tell
		end tell
		
		return canAccessManageDB
	on error errMsg number errNum
		error "Unable to fmGUI_isInFullAccessMode - " & errMsg number errNum
	end try
	
end fmGUI_isInFullAccessMode

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost
