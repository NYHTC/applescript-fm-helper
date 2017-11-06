-- fmGUI_ManageLayouts_Open(prefs)
-- NYHTC
-- close Manage Layouts


(*
HISTORY:
	1.1.1 - 2017-11-06 ( eshagdar ): added to htcLib.
	1.1 - 201x-xx-xx ( xxxxx ): 
	1.0 - 201x-xx-xx ( xxxxx ): created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_DataViewer_Close
	fmGUI_NameOfFrontmostWindow
*)


on run
	fmGUI_ManageLayouts_Close({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageLayouts_Close(prefs)
	-- version 1.1.1
	
	try
		fmGUI_AppFrontMost()
		fmGUI_DataViewer_Close()
		
		if fmGUI_NameOfFrontmostWindow() starts with "Manage Layouts" then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					click button 1 of window 1
				end tell
			end tell
			
			return true
		end if
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageLayouts_Close - " & errMsg number errNum
	end try
end fmGUI_ManageLayouts_Close

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_DataViewer_Close()
	tell application "htcLib" to fmGUI_DataViewer_Close()
end fmGUI_DataViewer_Close

on fmGUI_NameOfFrontmostWindow()
	tell application "htcLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow
