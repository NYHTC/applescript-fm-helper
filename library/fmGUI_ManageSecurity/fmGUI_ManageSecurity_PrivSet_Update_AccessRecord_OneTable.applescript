-- fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable({baseTable:null, viewAccess:null, editAccess:null, createAccess:null, deleteAccess:null, fieldAccess:null, viewCalc:null, editCalc:null, createCalc:null, deleteCalc:null, fieldCalc:null})
-- Erik Shagdar, NYHTC
-- update record access for the specified base table.


(*
HISTORY:
	1.0 - 2017-09-22 ( eshagdar ): moved from fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_AllTables handler


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv
	fmGUI_NameOfFrontmostWindow
	fmGUI_Popup_SelectByCommand
	fmGUI_PopupSet*)


on run
	fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable({baseTable:"ZZ_GLOBALS", viewAccess:"yes", editAccess:"yes", createAccess:"yes", deleteAccess:"yes", fieldAccess:"all", viewCalc:null, editCalc:null, createCalc:null, deleteCalc:null, fieldCalc:null})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable(prefs)
	-- version 1.0
	
	set defaultPrefs to {baseTable:null, viewAccess:null, editAccess:null, createAccess:null, deleteAccess:null, fieldAccess:null, viewCalc:null, editCalc:null, createCalc:null, deleteCalc:null, fieldCalc:null}
	set prefs to prefs & defaultPrefs
	
	set windowNameEditPrivSet to "Edit Privilege Set"
	set popUpExtras to {selectCommand:"contains", clickIfAlreadySet:true}
	
	try
		fmGUI_AppFrontMost()
		if fmGUI_NameOfFrontmostWindow() is not equal to "Custom Record Privileges" then error "must have 'Custom Record Privileges' window open" number -1024
		
		
		tell application "System Events"
			tell process "FileMaker Pro"
				-- get button refs to edit each row
				set viewButton to pop up button "View" of window 1
				set editButton to pop up button "Edit" of window 1
				set createButton to pop up button "Create" of window 1
				set deleteButton to pop up button "Delete" of window 1
				set fieldAccessButton to pop up button "Field Access" of window 1
				
				-- look through each table, ensuring each type of access is set
				set oneTableRow to (first row of table 1 of scroll area 1 of window 1 whose name of static text 1 is equal to baseTable of prefs)
				select oneTableRow
			end tell
		end tell
		
		
		-- view
		if viewCalc of prefs is not null then
			fmGUI_Popup_SelectByCommand({objRef:viewButton, objValue:viewAccess of prefs, calcValue:viewCalc of prefs} & popUpExtras)
		else
			fmGUI_Popup_SelectByCommand({objRef:viewButton, objValue:viewAccess of prefs})
		end if
		
		
		-- edit
		if viewCalc of prefs is not equal to "no" then
			-- edit is disabled if view is set to 'no'
			if editCalc of prefs is not null then
				fmGUI_Popup_SelectByCommand({objRef:editButton, objValue:editAccess of prefs, calcValue:editCalc of prefs} & popUpExtras)
			else
				fmGUI_Popup_SelectByCommand({objRef:editButton, objValue:editAccess of prefs})
			end if
		end if
		
		
		-- create
		if createCalc of prefs is not null then
			fmGUI_Popup_SelectByCommand({objRef:createButton, objValue:createAccess of prefs, calcValue:createCalc of prefs} & popUpExtras)
		else
			fmGUI_Popup_SelectByCommand({objRef:createButton, objValue:createAccess of prefs})
		end if
		
		
		-- delete
		if deleteCalc of prefs is not null then
			fmGUI_Popup_SelectByCommand({objRef:deleteButton, objValue:deleteAccess of prefs, calcValue:deleteCalc of prefs} & popUpExtras)
		else
			fmGUI_Popup_SelectByCommand({objRef:deleteButton, objValue:deleteAccess of prefs})
		end if
		
		
		-- field access
		fmGUI_PopupSet({objRef:fieldAccessButton, objValue:fieldAccess of prefs})
		if fieldCalc of prefs is not null then fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv({fieldList:fieldCalc of prefs})
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv(prefs)
	tell application "htcLib" to fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv(prefs)
end fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv

on fmGUI_NameOfFrontmostWindow()
	tell application "htcLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on fmGUI_Popup_SelectByCommand(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "htcLib" to fmGUI_Popup_SelectByCommand({objRef:objRefStr} & prefs)
end fmGUI_Popup_SelectByCommand

on fmGUI_PopupSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "htcLib" to fmGUI_PopupSet({objRef:objRefStr} & prefs)
end fmGUI_PopupSet



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "htcLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceTEXT:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
