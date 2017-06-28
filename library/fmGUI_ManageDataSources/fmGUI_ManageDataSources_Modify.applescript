-- fmGUI_ManageDataSources_Modify(dataSourceName:null, dataSourcePath:null)
-- Daniel A. Shockley, NYHTC
-- Update an existing data source


(*
HISTORY:
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageDataSources_Open
	fmGUI_ObjectClick_AffectsWindow
*)


on run
	fmGUI_ManageDataSources_Modify({dataSourceName:"a01_PERSON"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDataSources_Modify(prefs)
	-- version 1.2
	
	set defaultPrefs to {dataSourceName:null, dataSourcePath:null}
	set prefs to prefs & defaultPrefs
	
	set dataSourceName to dataSourceName of prefs
	set dataSourcePath to dataSourcePath of prefs
	
	-- default is just a relative path to data source name in same location as database being edited:	
	if dataSourcePath is null then set dataSourcePath to "file:" & dataSourceName
	
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageDataSources_Open({})
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				if (exists (first row of (table 1 of scroll area 1 of window 1) whose name of static text 1 is dataSourceName)) then
					-- it DOES exist, so modify it: 
					
					select (first row of (table 1 of scroll area 1 of window 1) whose name of static text 1 is dataSourceName)
					my fmGUI_ObjectClick_AffectsWindow(first button of window 1 whose name starts with "Edit")
					delay 0.5
					
					set value of text field 1 of window 1 to dataSourceName
					set value of text area 1 of scroll area 1 of window 1 to dataSourcePath
					my fmGUI_ObjectClick_AffectsWindow(first button of window 1 whose name starts with "OK")
					delay 0.5
					
					return "Existed: " & dataSourceName
				else -- DOES NOT  exist:
					return "Do NOT Exist: " & dataSourceName
					
				end if
			end tell
		end tell
		
	on error errMsg number errNum
		error "Couldn't ensure existence of data source '" & dataSourceName & "' - " & errMsg number errNum
	end try
end fmGUI_ManageDataSources_Modify

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageDataSources_Open(prefs)
	tell application "htcLib" to fmGUI_ManageDataSources_Open(prefs)
end fmGUI_ManageDataSources_Open

on fmGUI_ObjectClick_AffectsWindow(prefs)
	tell application "htcLib" to fmGUI_ObjectClick_AffectsWindow(prefs)
end fmGUI_ObjectClick_AffectsWindow
