-- fmGUI_ManageSecurity_GetInfo_PrivSet({getAccessInfo:false})
-- Erik Shagdar, NYHTC
-- gather all the info about the currently opened privSet


(*
HISTORY:
	1.0 - 2017-06-29 ( eshagdar ):created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageSecurity_OpenSelectedPrivSet
*)


on run
	fmGUI_ManageSecurity_GetInfo_PrivSet({getAccessInfo:true})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_GetInfo_PrivSet(prefs)
	-- version 1.0
	
	set defaultPrefs to {getAccessInfo:false}
	set prefs to prefs & defaultPrefs
	
	set customPriv to "Custom privileges..."
	
	try
		fmGUI_AppFrontMost()
		
		-- open edit PrivSet window if needed
		set needToOpenEditWindow to true
		tell application "System Events"
			tell process "FileMaker Pro"
				if name of window 1 is "Edit Privilege Set" then set needToOpenEditWindow to false
			end tell
		end tell
		
		if needToOpenEditWindow then fmGUI_ManageSecurity_OpenSelectedPrivSet({})
		
		
		
		-- now the the info
		tell application "System Events"
			tell process "FileMaker Pro"
				set privSetInfo to {privSetName:value of text field "Privilege Set Name" of window 1, privSetDesc:value of text field "Description" of window 1, accessRecord:value of pop up button "Records:" of window 1, accessLayouts:value of pop up button "Layouts:" of window 1, accessVL:value of pop up button "Value Lists:" of window 1, accessScripts:value of pop up button "Scripts:" of window 1, extendedPrivs:name of checkbox 1 of (every row of table 1 of scroll area 1 of window 1 whose value of checkbox 1 is 1), allowPrinting:value of checkbox "Allow printing" of window 1, allowExporting:value of checkbox "Allow exporting" of window 1, mangeExtPriv:value of checkbox "Manage extended privileges" of window 1, allowOverride:value of checkbox "Allow user to override data validation warnings" of window 1, disconnectIdle:value of checkbox "Disconnect user from server when idle" of window 1, modifyPwd:value of checkbox "Allow user to modify their own password" of window 1, menuCommands:value of pop up button "Available menu commands:" of window 1}
			end tell
		end tell
		
		
		-- should we get detailed access info:
		if getAccessInfo of prefs then
			
			-- record level
			if accessRecord of privSetInfo is equal to customPriv then
				tell application "System Events"
					tell process "FileMaker Pro"
						set popUpButtonRef to pop up button "Records:" of window 1
						click popUpButtonRef
						click menu item customPriv of menu 1 of popUpButtonRef
					end tell
				end tell
				set recordAccess to fmGUI_ManageSecurity_AccessRecord_GetInfo({})
				tell application "System Events"
					tell process "FileMaker Pro"
						click button "Cancel" of window 1
					end tell
				end tell
				set privSetInfo to privSetInfo & {recordAccess:recordAccess}
			end if
			
			
			-- layout access
			if accessLayouts of privSetInfo is equal to customPriv then
				tell application "System Events"
					tell process "FileMaker Pro"
						set popUpButtonRef to pop up button "Layouts:" of window 1
						click popUpButtonRef
						click menu item customPriv of menu 1 of popUpButtonRef
					end tell
				end tell
				set layoutAccess to fmGUI_ManageSecurity_AccessLayout_GetInfo({})
				tell application "System Events"
					tell process "FileMaker Pro"
						click button "Cancel" of window 1
					end tell
				end tell
				set privSetInfo to privSetInfo & {layoutAccess:layoutAccess}
			end if
			
			-- value list access
			if accessVL of privSetInfo is equal to customPriv then
				tell application "System Events"
					tell process "FileMaker Pro"
						set popUpButtonRef to pop up button "Value Lists:" of window 1
						click popUpButtonRef
						click menu item customPriv of menu 1 of popUpButtonRef
					end tell
				end tell
				set vlAccess to fmGUI_ManageSecurity_AccessValueList_GetInfo({})
				tell application "System Events"
					tell process "FileMaker Pro"
						click button "Cancel" of window 1
					end tell
				end tell
				set privSetInfo to privSetInfo & {vlAccess:vlAccess}
			end if
			
			-- script access
			if accessScripts of privSetInfo is equal to customPriv then
				tell application "System Events"
					tell process "FileMaker Pro"
						set popUpButtonRef to pop up button "Scripts:" of window 1
						click popUpButtonRef
						click menu item customPriv of menu 1 of popUpButtonRef
					end tell
				end tell
				set scriptsAccess to fmGUI_ManageSecurity_AccessScripts_GetInfo({})
				tell application "System Events"
					tell process "FileMaker Pro"
						click button "Cancel" of window 1
					end tell
				end tell
				set privSetInfo to privSetInfo & {scriptsAccess:scriptsAccess}
			end if
		end if
		
		
		return privSetInfo
	on error errMsg number errNum
		error "unable to getPrivSetInfo - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_GetInfo_PrivSet

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageSecurity_OpenSelectedPrivSet(prefs)
	tell application "htcLib" to fmGUI_ManageSecurity_OpenSelectedPrivSet(prefs)
end fmGUI_ManageSecurity_OpenSelectedPrivSet

on fmGUI_ManageSecurity_AccessLayout_GetInfo(prefs)
	tell application "htcLib" to fmGUI_ManageSecurity_AccessLayout_GetInfo(prefs)
end fmGUI_ManageSecurity_AccessLayout_GetInfo

on fmGUI_ManageSecurity_AccessRecord_GetInfo(prefs)
	tell application "htcLib" to fmGUI_ManageSecurity_AccessRecord_GetInfo(prefs)
end fmGUI_ManageSecurity_AccessRecord_GetInfo

on fmGUI_ManageSecurity_AccessScripts_GetInfo(prefs)
	tell application "htcLib" to fmGUI_ManageSecurity_AccessScripts_GetInfo(prefs)
end fmGUI_ManageSecurity_AccessScripts_GetInfo

on fmGUI_ManageSecurity_AccessValueList_GetInfo(prefs)
	tell application "htcLib" to fmGUI_ManageSecurity_AccessValueList_GetInfo(prefs)
end fmGUI_ManageSecurity_AccessValueList_GetInfo
