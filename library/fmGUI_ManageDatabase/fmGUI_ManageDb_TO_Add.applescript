-- fmGUI_ManageDb_TO_Add({tocName:null, dbName:null, doNotChangeExisting:false, baseTableName:null})
-- Daniel Shockley, NYHTC
-- add table occurence to the current database


(*
HISTORY:
	1.4.1 - 2017-08-23 ( eshagdar ): must pass credentials when going to relationships tab of manage DB
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


on run
	fmGUI_ManageDb_TO_Add({TOName:"bob", dbName:"a01_PERSON", baseTableName:"A_PERSON"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_TO_Add(prefs)
	-- version 1.4.1
	
	set defaultPrefs to {TOName:null, dbName:null, doNotChangeExisting:false, baseTableName:null}
	
	set prefs to prefs & defaultPrefs
	set dbName to dbName of prefs
	set baseTableName to baseTableName of prefs
	set TOName to TOName of prefs
	
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageDb_GoToTab_Relationships(prefs)
		
		
		-- add a new TO
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set addTocButton to first button of tab group 1 of window 1 whose description contains "Add a table"
			end tell
		end tell
		fmGUI_ObjectClick_AffectsWindow(addTocButton)
		delay 1
		
		
		-- specify Db of new TO
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set dataSourcePopUpButton to pop up button "Data Source:" of window 1
			end tell
		end tell
		
		try
			-- try to select existing data source
			fmGUI_PopupSet(dataSourcePopUpButton, dbName)
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					select (first row of table 1 of scroll area 1 of window 1 whose value of static text 1 is baseTableName)
				end tell
			end tell
			
		on error
			--Not an existing data source, so create it
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					key code 53 -- Hit 'Esc'
				end tell
			end tell
			fmGUI_PopupSet(dataSourcePopUpButton, "Manage Data Sources…")
			fmGUI_ManageDataSources_EnsureExists({dataSourceName:dbName})
			fmGUI_ManageDataSources_Save({})
			delay 1
			
			-- now that we've added the data source, try again
			fmGUI_PopupSet(dataSourcePopUpButton, dbName)
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					select (first row of table 1 of scroll area 1 of window 1 whose value of static text 1 is baseTableName)
				end tell
			end tell
		end try
		
		
		-- specify TO name
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set value of text field "Name" of window 1 to TOName
			end tell
		end tell
		if debugMode then logLEVEL(5, "TO added: '" & TOName & "'")
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set okButton to button "OK" of window 1
			end tell
		end tell
		fmGUI_ObjectClick_AffectsWindow(okButton)
		
		return true
	on error errMsg number errNum
		error "fmGUI_ManageDb_TO_Add - " & errMsg number errNum
	end try
	
end fmGUI_ManageDb_TO_Add

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageDataSources_EnsureExists(prefs)
	tell application "htcLib" to fmGUI_ManageDataSources_EnsureExists(prefs)
end fmGUI_ManageDataSources_EnsureExists

on fmGUI_ManageDataSources_Save(prefs)
	tell application "htcLib" to fmGUI_ManageDataSources_Save(prefs)
end fmGUI_ManageDataSources_Save

on fmGUI_ManageDb_GoToTab_Relationships(prefs)
	tell application "htcLib" to fmGUI_ManageDb_GoToTab_Relationships(prefs)
end fmGUI_ManageDb_GoToTab_Relationships

on fmGUI_ObjectClick_AffectsWindow(prefs)
	tell application "htcLib" to fmGUI_ObjectClick_AffectsWindow(prefs)
end fmGUI_ObjectClick_AffectsWindow

on fmGUI_PopupSet(popupObject, popupChoice)
	tell application "htcLib" to fmGUI_PopupSet(popupObject, popupChoice)
end fmGUI_PopupSet
