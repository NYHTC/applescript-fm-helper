-- fmGUI_Database_DbNameOfFrontWindow({})
-- Dan Shockley, NYHTC
-- return the database name of frontmost window


(*
HISTORY:
	1.1 - 
	1.0 - 20xx-xx-xx ( dshockley ): created.
	

REQUIRES:
	fmGUI_DataViewer_Close
	fmGUI_Inspector_Close
	fmGUI_NameOfFrontmostWindow
	namesOfTOsOfWindowName
*)


on run
	fmGUI_Database_DbNameOfFrontWindow({})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_Database_DbNameOfFrontWindow(prefs)
	-- version 1.1
	try
		fmGUI_DataViewer_Close()
		fmGUI_Inspector_Close()
		
		return dbNameOfWindowName(fmGUI_NameOfFrontmostWindow())
		
	on error errMsg number errNum
		error "Couldn't get fmGUI_Database_DbNameOfFrontWindow - " & errMsg number errNum
	end try
	
end fmGUI_Database_DbNameOfFrontWindow

--------------------
-- END OF CODE
--------------------

on fmGUI_DataViewer_Close()
	tell application "htcLib" to fmGUI_DataViewer_Close()
end fmGUI_DataViewer_Close

on fmGUI_Inspector_Close()
	tell application "htcLib" to fmGUI_Inspector_Close()
end fmGUI_Inspector_Close

on fmGUI_NameOfFrontmostWindow()
	tell application "htcLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on dbNameOfWindowName(prefs)
	tell application "htcLib" to dbNameOfWindowName(prefs)
end dbNameOfWindowName
