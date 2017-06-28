-- fmGUI_CustomFunctions_Open({})
-- Dan Shockley, NYHTC
-- Open Manage Custom Functions window


(*
HISTORY:
	1.2 - 2016-06-30 ( eshagdar ): wait for the window to appear.
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_ManageDb_GoToTab
*)


on run
	fmGUI_CustomFunctions_Open({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_CustomFunctions_Open(prefs)
	-- version 1.2
	
	
	try
		set frontmostWindowName to fmGUI_NameOfFrontmostWindow()
		if frontmostWindowName starts with "Manage Custom Functions for" then
			return true
		else
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					click (first menu item of menu 1 of menu item "Manage" of menu 1 of menu bar item "File" of menu bar 1 whose name starts with "Custom Functions")
					click pop up button "View by" of window 1
					click menu item "function name" of menu 1 of pop up button "View by" of window 1
				end tell
			end tell
			windowWaitUntil({windowName:"Manage Custom Functions for", windowNameTest:"contains", whichWindow:"front"})
			
			return true
		end if
	on error errMsg number errNum
		error "Couldn't open Manage Custom Functions - " & errMsg number errNum
	end try
	
end fmGUI_CustomFunctions_Open

--------------------
-- END OF CODE
--------------------

on fmGUI_NameOfFrontmostWindow()
	tell application "htcLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on windowWaitUntil(prefs)
	tell application "htcLib" to windowWaitUntil(prefs)
end windowWaitUntil
