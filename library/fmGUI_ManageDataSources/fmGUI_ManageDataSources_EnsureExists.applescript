-- fmGUI_ManageDataSources_EnsureExists(dataSourceName:null, dataSourcePath:null)
-- Daniel A. Shockley, NYHTC
-- Ensure the specified data source exists, adding it if necessary


(*
HISTORY:
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	fmGUI_ManageDataSources_EnsureExists({dataSourceName:"a01_PERSON"})
end run



--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDataSources_EnsureExists(prefs)
	-- version 1.2
	
	set defaultPrefs to {dataSourceName:null, dataSourcePath:null}
	set prefs to prefs & defaultPrefs
	
	set dataSourceName to dataSourceName of prefs
	set dataSourcePath to dataSourcePath of prefs
	
	-- default is just a relative path to data source name in same location as database being edited:
	if dataSourcePath is null then set dataSourcePath to "file:" & dataSourceName
	
	
	try
		fmGUI_ManageDataSources_Open({})
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				my fmGUI_AppFrontMost()

				-- Make sure a specified Data Source exists.
				if not (exists (first row of (table 1 of scroll area 1 of window 1) whose name of static text 1 is dataSourceName)) then
					-- need to create it: 

					my fmGUI_ObjectClick_AffectsWindow(first button of window 1 whose name starts with "New")
					delay 0.5
					
					set value of text field 1 of window 1 to dataSourceName
					set value of text area 1 of scroll area 1 of window 1 to dataSourcePath
					my fmGUI_ObjectClick_AffectsWindow(first button of window 1 whose name starts with "OK")
					delay 0.5
					
					return "Added: " & dataSourceName
				else -- already existed:
					return "Existed: " & dataSourceName
				end if
			end tell
		end tell
		
	on error errMsg number errNum
		error "Couldn't ensure existence of data source '" & dataSourceName & "' - " & errMsg number errNum
	end try
	
end fmGUI_ManageDataSources_EnsureExists

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageDataSources_Open(prefs)
	tell helper to fmGUI_ManageDataSources_Open(prefs)
end fmGUI_ManageDataSources_Open

on fmGUI_ObjectClick_AffectsWindow(prefs)
	tell helper to fmGUI_ObjectClick_AffectsWindow(prefs)
end fmGUI_ObjectClick_AffectsWindow
