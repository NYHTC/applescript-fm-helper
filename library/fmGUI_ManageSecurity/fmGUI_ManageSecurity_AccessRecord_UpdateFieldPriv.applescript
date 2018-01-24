-- fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv({fieldList:{}})
-- Erik Shagdar, NYHTC
-- update the field-level access for the currently opened table of manage security


(*
HISTORY:
	1.1 - 2017-12-21 ( eshagdar ): added params to force all fields in a table to a specific privilege
	1.0 - 2017-09-06 ( eshagdar ):created


REQUIRES:
	clickObjectByCoords
	fmGUI_AppFrontMost
	fmGUI_ObjectClick_OkButton
	windowWaitUntil_FrontIS
*)


on run
	fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv({fieldList:{}})
	-- sample fieldList: {{fieldName:"myField", fieldPriv:"view only"}, {fieldName:"anotherField", fieldPriv:"modifiable"}}
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv(prefs)
	-- version 1.1
	
	set defaultPrefs to {fieldList:{}, FieldsModifiable:false, FieldsViewOnly:false, FieldsNoAccess:false}
	set prefs to prefs & defaultPrefs
	set fieldList to fieldList of prefs
	
	set windowNameFieldPriv to "Custom Field Privileges"
	
	try
		fmGUI_AppFrontMost()
		windowWaitUntil_FrontIS({windowName:windowNameFieldPriv})
		
		
		-- if true, then force every field in this table to be ViewOnly
		if FieldsViewOnly of prefs or FieldsModifiable of prefs or FieldsNoAccess of prefs then
			tell application "System Events"
				tell process "FileMaker Pro"
					set fieldsInTable to value of static text 1 of rows of table 1 of scroll area 1 of window 1
				end tell
			end tell
			if FieldsViewOnly of prefs then
				set action to "view only"
			else if FieldsModifiable of prefs then
				set action to "modifiable"
			else if FieldsNoAccess of prefs then
				set action to "no access"
			else
				error "unable to set action" number -1024
			end if
			repeat with field in fieldsInTable
				set field to contents of field
				copy {fieldName:field, fieldPriv:action} to end of fieldList
			end repeat
		end if
		
		
		repeat with oneFieldRec in fieldList
			set oneFieldRec to contents of oneFieldRec
			tell application "System Events"
				tell process "FileMaker Pro"
					select (first row of table 1 of scroll area 1 of window 1 whose value of static text 1 is fieldName of oneFieldRec)
					set fieldPrivObj to (first checkbox of window 1 whose name contains fieldPriv of oneFieldRec)
				end tell
			end tell
			clickObjectByCoords(fieldPrivObj)
		end repeat
		
		fmGUI_ObjectClick_OkButton({})
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv

--------------------
-- END OF CODE
--------------------

on clickObjectByCoords(prefs)
	tell application "htcLib" to clickObjectByCoords(my coerceToString(prefs))
end clickObjectByCoords

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ObjectClick_OkButton(prefs)
	tell application "htcLib" to fmGUI_ObjectClick_OkButton(prefs)
end fmGUI_ObjectClick_OkButton

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
