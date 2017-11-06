-- fmGUI_ManageLayouts_LayoutListFocus(prefs)
-- Daniel A. Shockley, NYHTC
-- open Manage Layouts


(*
HISTORY:
	1.1 - 201x-xx-xx ( dshockley ): 
	1.0 - 201x-xx-xx ( dshockley ): created


REQUIRES:
	fmGUI_Menu_OpenLayouts
*)


on run
	fmGUI_ManageLayouts_LayoutListFocus({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageLayouts_LayoutListFocus(prefs)
	-- version 1.0
	
	try
		fmGUI_ManageLayouts_Open({})
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set focused of (outline 1 of scroll area 1 of window 1) to true
			end tell
		end tell
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageLayouts_LayoutListFocus - " & errMsg number errNum
	end try
end fmGUI_ManageLayouts_LayoutListFocus

--------------------
-- END OF CODE
--------------------

on fmGUI_ManageLayouts_Open(prefs)
	tell application "htcLib" to fmGUI_ManageLayouts_Open(prefs)
end fmGUI_Menu_OpenLayouts
