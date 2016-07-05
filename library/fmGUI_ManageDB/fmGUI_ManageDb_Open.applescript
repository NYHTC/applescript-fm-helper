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


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	fmGUI_ManageDb_Open({})
end run



--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_Open(prefs)
	-- version 1.2
	
	try
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				my fmGUI_AppFrontMost()

				-- try to open Manage DB
				if name of window 1 starts with "Manage Database for" then
					return true
				else
					click (first menu item of menu 1 of menu item "Manage" of menu 1 of menu bar item "File" of menu bar 1 whose name starts with "Database")
					
					-- do this in case already on relationships tab
					delay 1 -- seconds
					set lookingForXDBCError to true
					repeat while lookingForXDBCError
						if name of window 1 begins with "Connect to " then
							click (first button of window 1 whose name is "Cancel")
							delay 1 -- seconds
						else
							set lookingForXDBCError to false
						end if
					end repeat
					
					-- to to the TOs tab and dismiss any xDBC connections that failed to connect
					my fmGUI_ManageDb_GoToTab_Relationships({})
					delay 1 -- seconds
					set lookingForXDBCError to true
					repeat while lookingForXDBCError
						if name of window 1 begins with "Connect to " then
							click (first button of window 1 whose name is "Cancel")
							delay 1 -- seconds
						else
							set lookingForXDBCError to false
						end if
					end repeat
					
					--zoom out to show all TOs and dismiss any that weren't already dismissed
					keystroke "i" using command down
					delay 1 -- seconds
					set lookingForXDBCError to true
					repeat while lookingForXDBCError
						if name of window 1 begins with "Connect to " then
							click button "Cancel" of window 1
							delay 1 -- seconds
						else
							set lookingForXDBCError to false
						end if
					end repeat
					
					-- zoom back in
					set zoomField to text field 1 of tab group 1 of window 1
					set focused of zoomField to true
					set value of zoomField to "100"
					set focused of scroll area 1 of tab group 1 of window 1 to true
					set value of scroll bar 1 of scroll area 1 of tab group 1 of window 1 to 0
					set value of scroll bar 2 of scroll area 1 of tab group 1 of window 1 to 0
					
					return true
				end if
			end tell
		end tell
	on error errMsg number errNum
		error "Couldn't open manage DB - " & errMsg number errNum
	end try
	
end fmGUI_ManageDb_Open

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageDb_RelationshipsTab(prefs)
	tell helper to fmGUI_ManageDb_RelationshipsTab(prefs)
end fmGUI_ManageDb_RelationshipsTab
