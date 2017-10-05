-- fmGUI_ManageSecurity_PrivSet_Update_AccessRecord({accessRecord:null, recordAccess:null})
-- Erik Shagdar, NYHTC
-- update record access of the currently opened privilege set


(*
HISTORY:
	1.0 - 2017-09-07 ( eshagdar ): moved from fmGUI_ManageSecurity_PrivSet_Update.


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv
	fmGUI_ObjectClick_OkButton
	fmGUI_Popup_SelectByCommand
	fmGUI_PopupSet
	windowWaitUntil_FrontIS
*)


on run
	fmGUI_ManageSecurity_PrivSet_Update_AccessRecord({accessRecord:"Custom privileges...", recordAccess:{{baseTable:"ZZ_GLOBALS", viewAccess:"yes", editAccess:"yes", createAccess:"yes", deleteAccess:"yes", fieldAccess:"all", viewCalc:null, editCalc:null, createCalc:null, deleteCalc:null, fieldCalc:null}, {baseTable:"[Any New Table]", viewAccess:"yes", editAccess:"yes", createAccess:"yes", deleteAccess:"yes", fieldAccess:"all", viewCalc:null, editCalc:null, createCalc:null, deleteCalc:null, fieldCalc:null}}})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_PrivSet_Update_AccessRecord(prefs)
	
	set defaultPrefs to {accessRecord:null, recordAccess:null}
	set prefs to prefs & defaultPrefs
	
	set windowNameEditPrivSet to "Edit Privilege Set"
	set popUpExtras to {selectCommand:"contains", clickIfAlreadySet:true}
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell process "FileMaker Pro"
				set windowName to name of window 1
				set recordsPopup to pop up button "Records:" of window 1
			end tell
		end tell
		
		
		-- ensure we're starting on edit PrivSet window
		if windowName is not windowNameEditPrivSet then error "do not have " & windowNameEditPrivSet & " window open" number -1024
		
		
		-- set record access, setting custom privileges if needed
		fmGUI_Popup_SelectByCommand({objRef:recordsPopup, objValue:accessRecord of prefs} & popUpExtras)
		if accessRecord of prefs begins with "Custom privileges" then
			windowWaitUntil_FrontIS({windowName:"Custom Record Privileges"})
			
			-- get button refs to edit each row
			tell application "System Events"
				tell process "FileMaker Pro"
					set viewButton to pop up button "View" of window 1
					set editButton to pop up button "Edit" of window 1
					set createButton to pop up button "Create" of window 1
					set deleteButton to pop up button "Delete" of window 1
					set fieldAccessButton to pop up button "Field Access" of window 1
				end tell
			end tell
			
			
			-- look through each table, ensuring each type of access is set
			repeat with oneTableRec in recordAccess of prefs
				set oneTableRec to contents of oneTableRec
				tell application "System Events"
					tell process "FileMaker Pro"
						set oneTableRow to (first row of table 1 of scroll area 1 of window 1 whose name of static text 1 is equal to baseTable of oneTableRec)
						select oneTableRow
					end tell
				end tell
				
				-- edit comes before view since 'no' view disables edit button
				if editCalc of oneTableRec is not null then
					fmGUI_Popup_SelectByCommand({objRef:editButton, objValue:editAccess of oneTableRec, calcValue:editCalc of oneTableRec} & popUpExtras)
				else
					fmGUI_Popup_SelectByCommand({objRef:editButton, objValue:editAccess of oneTableRec})
				end if
				if viewCalc of oneTableRec is not null then
					fmGUI_Popup_SelectByCommand({objRef:viewButton, objValue:viewAccess of oneTableRec, calcValue:viewCalc of oneTableRec} & popUpExtras)
				else
					fmGUI_Popup_SelectByCommand({objRef:viewButton, objValue:viewAccess of oneTableRec})
				end if
				if createCalc of oneTableRec is not null then
					fmGUI_Popup_SelectByCommand({objRef:createButton, objValue:createAccess of oneTableRec, calcValue:createCalc of oneTableRec} & popUpExtras)
				else
					fmGUI_Popup_SelectByCommand({objRef:createButton, objValue:createAccess of oneTableRec})
				end if
				if deleteCalc of oneTableRec is not null then
					fmGUI_Popup_SelectByCommand({objRef:deleteButton, objValue:deleteAccess of oneTableRec, calcValue:deleteCalc of oneTableRec} & popUpExtras)
				else
					fmGUI_Popup_SelectByCommand({objRef:deleteButton, objValue:deleteAccess of oneTableRec})
				end if
				fmGUI_PopupSet({objRef:fieldAccessButton, objValue:fieldAccess of oneTableRec})
				if fieldCalc of oneTableRec is not null then fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv({fieldList:fieldCalc of oneTableRec})
			end repeat
			fmGUI_ObjectClick_OkButton({})
		end if
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update_AccessRecord - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Update_AccessRecord

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv(prefs)
	tell application "htcLib" to fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv(prefs)
end fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv

on fmGUI_ObjectClick_OkButton(prefs)
	tell application "htcLib" to fmGUI_ObjectClick_OkButton(prefs)
end fmGUI_ObjectClick_OkButton

on fmGUI_Popup_SelectByCommand(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "htcLib" to fmGUI_Popup_SelectByCommand({objRef:objRefStr} & prefs)
end fmGUI_Popup_SelectByCommand

on fmGUI_PopupSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "htcLib" to fmGUI_PopupSet({objRef:objRefStr} & prefs)
end fmGUI_PopupSet

on windowWaitUntil_FrontIS(prefs)
	tell application "htcLib" to windowWaitUntil_FrontIS(prefs)
end windowWaitUntil_FrontIS



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "htcLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceTEXT:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
