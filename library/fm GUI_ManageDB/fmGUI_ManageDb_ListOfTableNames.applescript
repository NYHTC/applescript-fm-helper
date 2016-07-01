-- fmGUI_ManageDb_ListOfTableNames({})
-- Daniel Shockley, NYHTC
-- Return a list of FileMaker table names.


(*
HISTORY:
	1.2 - ONLY return tables that are in FileMaker (no SQL shadow tables)
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_ManageDb_GoToTab_Tables
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	fmGUI_ManageDb_ListOfTableNames({})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_ListOfTableNames(prefs)
	-- version 1.2
	
	try
		fmGUI_ManageDb_GoToTab_Tables({})
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				my fmGUI_AppFrontMost()
				value of static text 1 of (every row of (table 1 of scroll area 1 of tab group 1 of window 1) whose value of static text 2 is "FileMaker")
				return result
			end tell
		end tell
	on error errMsg number errNum
		error "Couldn't get list of table names - " & errMsg number errNum
	end try
	
end fmGUI_ManageDb_ListOfTableNames

--------------------
-- END OF CODE
--------------------

on fmGUI_ManageDb_GoToTab_Tables(prefs)
	tell helper to fmGUI_ManageDb_GoToTab_Tables(prefs)
end fmGUI_ManageDb_GoToTab_Tables
