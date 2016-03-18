-- fmGUI_ManageDb_FieldsTab({})
-- Erik Shagdar, NYHTC
-- Go to the "Fields" tab of manage database


(*
HISTORY:
	1.2 - only click if needed
	1.1 - 
	1.0 - created
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	fmGUI_ManageDb_FieldsTab({})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_FieldsTab(prefs)
	-- version 1.2, Daniel A. Shockley
	
	try
		fmGUI_ManageDb_Open({})
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				my fmGUI_AppFrontMost()
				set fieldsTabObject to first radio button of tab group 1 of window 1 whose title contains "Field"
				if value of fieldsTabObject is not 1 then
					click fieldsTabObject
				end if
				return true
			end tell
		end tell
	on error errMsg number errNum
		error "Couldn't go to the fields tab - " & errMsg number errNum
	end try
	
end fmGUI_ManageDb_FieldsTab

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageDb_Open(prefs)
	tell helper to fmGUI_ManageDb_Open(prefs)
end fmGUI_ManageDb_Open
