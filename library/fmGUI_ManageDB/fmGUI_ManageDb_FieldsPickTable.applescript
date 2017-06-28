-- fmGUI_ManageDb_FieldsPickTable(baseTableName)
-- Erik Shagdar, NYHTC
-- select the specified ( if not already selected ) base table on the Fields tab of Manage Database.


(*
HISTORY:
	1.4 - 2016-10-28 ( eshagdar ): ensure app is frontmost
	1.3 - 
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageDb_GoToTab_Fields
	fmGUI_PopupSet
*)


on run
	fmGUI_ManageDb_FieldsPickTable("ZZ_GLOBALS")
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_FieldsPickTable(baseTableName)
	-- version 1.4
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageDb_GoToTab_Fields({})
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
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageDb_GoToTab_Fields(prefs)
	tell application "htcLib" to fmGUI_ManageDb_GoToTab_Fields(prefs)
end fmGUI_ManageDb_GoToTab_Fields

on fmGUI_PopupSet(popupObject, popupChoice)
	tell application "htcLib" to fmGUI_PopupSet(popupObject, popupChoice)
end fmGUI_PopupSet
