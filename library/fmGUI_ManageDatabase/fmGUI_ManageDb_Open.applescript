-- fmGUI_ManageDb_Open(prefs)
-- Daniel A. Shockley, NYHTC
-- Close ( and save ) Manage Database


(*
HISTORY:
	1.2 - added xDBC connection error trapping
	1.1 - 
	1.0 - created


TODO:
	- 2015-06-03 ( eshagdar ): probably going to need to open manageDB via openManageDB script if the menu item fails


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageDb_RelationshipsTab
*)


on run
	fmGUI_ManageDb_Open({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_Open(prefs)
	-- version 1.2
	
	try
		fmGUI_AppFrontMost()
		
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set windowName to name of window 1
			end tell
		end tell
		
		-- try to open Manage DB
		if windowName starts with "Manage Database for" then
			return true
		else
			fmGUI_Menu_OpenDB({})

			
			-- dismiss any initial xDBC connection errors
			fmGUI_ManageDb_DismissXDBCDialog({})
			
			
			-- to to the TOs tab and dismiss any xDBC connections that failed to connect
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

on fmGUI_ManageDb_RelationshipsTab(prefs)
	tell application "htcLib" to fmGUI_ManageDb_RelationshipsTab(prefs)
end fmGUI_ManageDb_RelationshipsTab
