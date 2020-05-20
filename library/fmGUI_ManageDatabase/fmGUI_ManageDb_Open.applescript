-- fmGUI_ManageDb_Open(prefs)
-- Daniel A. Shockley, NYHTC
-- Open Manage Database


(*
HISTORY:
	1.4 - 2020-05-20 ( dshockley ): added multiple missing sub-handlers. 
	1.3 - 2018-04-30 ( eshagdar ): get window name via handler.
	1.2 - added xDBC connection error trapping
	1.1 - 
	1.0 - created


TODO:
	- 2015-06-03 ( eshagdar ): probably going to need to open manageDB via openManageDB script if the menu item fails


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageDb_DismissXDBCDialog
	fmGUI_ManageDb_GoToTab_Relationships
	fmGUI_ManageDb_RelationshipsTab
	fmGUI_Menu_OpenDB
	fmGUI_NameOfFrontmostWindow
*)


on run
	fmGUI_ManageDb_Open({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_Open(prefs)
	-- version 1.4
	
	try
		fmGUI_AppFrontMost()
		
		
		-- try to open Manage DB
		set windowName to fmGUI_NameOfFrontmostWindow()
		if windowName starts with "Manage Database for" then
			return true
		else
			fmGUI_Menu_OpenDB({})
			
			
			-- dismiss any initial xDBC connection errors
			fmGUI_ManageDb_DismissXDBCDialog({})
			
			
			-- go to the TOs tab and AGAIN dismiss any xDBC connections that failed to connect
			fmGUI_ManageDb_GoToTab_Relationships({})
			delay 1
			fmGUI_ManageDb_DismissXDBCDialog({})
			
			
			--zoom out to show all TOs and dismiss any xDBC errors that weren't already dismissed
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					keystroke "i" using command down
				end tell
			end tell
			delay 1
			fmGUI_ManageDb_DismissXDBCDialog({})
			
			
			-- zoom back in
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set zoomField to text field 1 of tab group 1 of window 1
					set focused of zoomField to true
					set value of zoomField to "100"
				end tell
			end tell
			
			return true
		end if
	on error errMsg number errNum
		error "Couldn't open manage DB - " & errMsg number errNum
	end try
	
end fmGUI_ManageDb_Open

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageDb_DismissXDBCDialog(prefs)
	tell application "htcLib" to fmGUI_ManageDb_DismissXDBCDialog(prefs)
end fmGUI_ManageDb_DismissXDBCDialog

on fmGUI_ManageDb_GoToTab_Relationships(prefs)
	tell application "htcLib" to fmGUI_ManageDb_GoToTab_Relationships(prefs)
end fmGUI_ManageDb_GoToTab_Relationships

on fmGUI_ManageDb_RelationshipsTab(prefs)
	tell application "htcLib" to fmGUI_ManageDb_RelationshipsTab(prefs)
end fmGUI_ManageDb_RelationshipsTab

on fmGUI_Menu_OpenDB(prefs)
	tell application "htcLib" to fmGUI_Menu_OpenDB(prefs)
end fmGUI_Menu_OpenDB

on fmGUI_NameOfFrontmostWindow()
	tell application "htcLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow
