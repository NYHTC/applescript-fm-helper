-- fmGUI_ManageDb_ListOfXDBCTableNames({})
-- Daniel Shockley, NYHTC
-- Return a list of XDBC table names.


(*
HISTORY:
	1.2.1 - 2018-04-30 ( eshagdar ): updated error message.
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_ManageDb_GoToTab_Tables
	fmGUI_ManageDB_Save
*)


on run
	fmGUI_ManageDb_ListOfXDBCTableNames({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_ListOfXDBCTableNames(prefs)
	-- version 1.2
	
	try
		fmGUI_ManageDb_GoToTab_Tables({})
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set xDBCTableNames to value of static text 1 of (every row of (table 1 of scroll area 1 of tab group 1 of window 1) whose value of static text 2 is not "FileMaker")
				my fmGUI_ManageDB_Save({})
				return xDBCTableNames
			end tell
		end tell
	on error errMsg number errNum
		error "unable to fmGUI_ManageDb_ListOfXDBCTableNames - " & errMsg number errNum
	end try
end fmGUI_ManageDb_ListOfXDBCTableNames

--------------------
-- END OF CODE
--------------------

on fmGUI_ManageDb_GoToTab_Tables(prefs)
	tell application "htcLib" to fmGUI_ManageDb_GoToTab_Tables(prefs)
end fmGUI_ManageDb_GoToTab_Tables

on fmGUI_ManageDB_Save(prefs)
	tell application "htcLib" to fmGUI_ManageDB_Save(prefs)
end fmGUI_ManageDB_Save
