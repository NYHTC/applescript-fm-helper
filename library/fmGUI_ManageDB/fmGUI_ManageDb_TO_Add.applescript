-- fmGUI_ManageDb_TO_Add({tocName:null, dbName:null, doNotChangeExisting:false, baseTableName:null})
-- Daniel Shockley, NYHTC
-- add table occurence to the current database


(*
HISTORY:
	1.4 - 2016-08-23 ( eshagdar ): declare all params. fixed error message.
	1.3 - 2015-04-24 ( eshagdar ): creates a data source if needed
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageDataSources_EnsureExists
	fmGUI_ManageDataSources_Save
	fmGUI_ManageDb_GoToTab_Relationships
	fmGUI_ObjectClick_AffectsWindow
	fmGUI_PopupSet
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	fmGUI_ManageDb_TO_Add({tocName:"bob", dbName:"a01_PERSON", baseTableName:"A_PERSON"})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_TO_Add(prefs)
	-- version 1.4
	
	set defaultPrefs to {TOName:null, dbName:null, doNotChangeExisting:false, baseTableName:null}
	
	set prefs to prefs & defaultPrefs
	set dbName to dbName of prefs
	set baseTableName to baseTableName of prefs
	set TOName to TOName of prefs
	
	
	try
		fmGUI_ManageDb_GoToTab_Relationships({})
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				my fmGUI_AppFrontMost()
				set addTocButton to first button of tab group 1 of window 1 whose description contains "Add a table"
				my fmGUI_ObjectClick_AffectsWindow(addTocButton)
				delay 1
				set dataSourcePopUpButton to pop up button "Data Source:" of window 1
				try
					my fmGUI_PopupSet(dataSourcePopUpButton, dbName)
					select (first row of table 1 of scroll area 1 of window 1 whose value of static text 1 is baseTableName)
				on error
					--Not an existing data source, so create it
					key code 53 -- Hit 'Esc'
					my fmGUI_PopupSet(dataSourcePopUpButton, "Manage Data Sources…")
					my fmGUI_ManageDataSources_EnsureExists({dataSourceName:dbName})
					my fmGUI_ManageDataSources_Save({})
					delay 1
					
					-- now that we've added the data source, try again
					my fmGUI_PopupSet(dataSourcePopUpButton, dbName)
					select (first row of table 1 of scroll area 1 of window 1 whose value of static text 1 is baseTableName)
				end try
				--if debugMode then my logLEVEL(5, "Add TO 003")
				--if debugMode then my logLEVEL(5, "About to edit name")
				set value of text field "Name" of window 1 to TOName
				if debugMode then my logLEVEL(5, "TO added: '" & TOName & "'")
				
				my fmGUI_ObjectClick_AffectsWindow(button "OK" of window 1)
				
				return true
			end tell
		end tell
	on error errMsg number errNum
		error "fmGUI_ManageDb_TO_Add - " & errMsg number errNum
	end try
	
end fmGUI_ManageDb_TO_Add

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageDataSources_EnsureExists(prefs)
	tell helper to fmGUI_ManageDataSources_EnsureExists(prefs)
end fmGUI_ManageDataSources_EnsureExists

on fmGUI_ManageDataSources_Save(prefs)
	tell helper to fmGUI_ManageDataSources_Save(prefs)
end fmGUI_ManageDataSources_Save

on fmGUI_ManageDb_GoToTab_Relationships(prefs)
	tell helper to fmGUI_ManageDb_GoToTab_Relationships(prefs)
end fmGUI_ManageDb_GoToTab_Relationships

on fmGUI_ObjectClick_AffectsWindow(prefs)
	tell helper to fmGUI_ObjectClick_AffectsWindow(prefs)
end fmGUI_ObjectClick_AffectsWindow

on fmGUI_PopupSet(popupObject, popupChoice)
	tell helper to fmGUI_PopupSet(popupObject, popupChoice)
end fmGUI_PopupSet
