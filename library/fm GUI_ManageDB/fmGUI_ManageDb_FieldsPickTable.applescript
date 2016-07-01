-- fmGUI_ManageDb_FieldsPickTable(baseTableName)
-- Erik Shagdar, NYHTC
-- select the specified ( if not already selected ) base table on the Fields tab of Manage Database.


(*
HISTORY:
	1.3 - 
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageDb_FieldsTab
	fmGUI_PopupSet
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	fmGUI_ManageDb_FieldsPickTable("ZZ_GLOBALS")
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_FieldsPickTable(baseTableName)
	-- version 1.3
	
	try
		fmGUI_ManageDb_FieldsTab({})
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				my fmGUI_PopupSet(pop up button "Table:" of tab group 1 of window 1, baseTableName)
				return true
			end tell
		end tell
	on error errMsg number errNum
		error "Couldn't select table '" & baseTableName & "' - " & errMsg number errNum
	end try
	
end fmGUI_ManageDb_FieldsPickTable

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageDb_FieldsTab(prefs)
	tell helper to fmGUI_ManageDb_FieldsTab(prefs)
end fmGUI_ManageDb_FieldsTab

on fmGUI_PopupSet(popupObject, popupChoice)
	tell helper to fmGUI_PopupSet(popupObject, popupChoice)
end fmGUI_PopupSet
