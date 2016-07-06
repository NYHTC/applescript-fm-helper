-- fmGUI_ManageDb_TableListFocus({})
-- NYHTC
-- Focus in the list of fields in the "Fields" tab of Manage Database


(*
HISTORY:
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_ManageDb_GoToTab_Fields
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	fmGUI_ManageDb_TableListFocus({})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_TableListFocus(prefs)
	-- version 1.1
	
	try
		fmGUI_ManageDb_GoToTab_Tables({})
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set focused of (table 1 of scroll area 1 of tab group 1 of window 1) to true
				return true
			end tell
		end tell
		
	on error errMsg number errNum
		error "Couldn't focus on Field list - " & errMsg number errNum
	end try
	
end fmGUI_ManageDb_TableListFocus

--------------------
-- END OF CODE
--------------------

on fmGUI_ManageDb_GoToTab_Fields(prefs)
	tell helper to fmGUI_ManageDb_GoToTab_Fields(prefs)
end fmGUI_ManageDb_GoToTab_Fields
