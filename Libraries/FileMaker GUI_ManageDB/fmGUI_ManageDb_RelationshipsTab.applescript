-- fmGUI_ManageDb_RelationshipsTab({})
-- Daniel A. Shockley, NYHTC
-- Go to the "Relationship" tab of manage database


(*
HISTORY:
	1.3 - 2016-03-18 ( eshagdar ): use reference to tab control object to deal with different FM app types running concurrently.
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
	
	fmGUI_ManageDb_RelationshipsTab({})
end run



--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_RelationshipsTab(prefs)
	-- version 1.3
	
	try
		fmGUI_AppFrontMost()
		--fmGUI_ManageDb_Open({})
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set fieldsTabObject to a reference to (first radio button of tab group 1 of window 1 whose title contains "Relationship")
				if value of fieldsTabObject is not 1 then
					click fieldsTabObject
				end if
				return true
			end tell
		end tell
	on error errMsg number errNum
		error "Couldn't go to the Relationships tab - " & errMsg number errNum
	end try
	
end fmGUI_ManageDb_RelationshipsTab

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageDb_Open(prefs)
	tell helper to fmGUI_ManageDb_Open(prefs)
end fmGUI_ManageDb_Open
