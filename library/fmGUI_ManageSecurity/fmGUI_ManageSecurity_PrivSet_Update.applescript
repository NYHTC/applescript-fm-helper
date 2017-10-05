-- fmGUI_ManageSecurity_PrivSet_Update({})
-- Erik Shagdar, NYHTC
-- update a privilege set


(*
HISTORY:
	1.0 - 2017-08-29 ( eshagdar ): taken most logic from fmGUI_ManageSecurity_PrivSets_CustomizeALL ( TuneUp Tool ).


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_CheckboxSet
	fmGUI_ManageSecurity_PrivSet_OpenSelected
	fmGUI_ManageSecurity_PrivSet_Select
	fmGUI_ManageSecurity_PrivSet_Update_AccessLayout
	fmGUI_ManageSecurity_PrivSet_Update_AccessRecord
	fmGUI_ManageSecurity_PrivSet_Update_AccessScript
	fmGUI_ManageSecurity_PrivSet_Update_AccessValueList
	fmGUI_ManageSecurity_PrivSet_Update_ExtendedPrivileges
	fmGUI_ObjectClick_OkButton
	fmGUI_PopupSet
	fmGUI_TextFieldSet
*)


on run
	fmGUI_ManageSecurity_PrivSet_Update({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_PrivSet_Update(prefs)
	
	set defaultPrefs to {privSetName:null, privSetDesc:null, accessRecord:null, accessLayouts:null, accessVL:null, accessScripts:null, extendedPrivList:null, allowPrinting:null, allowExporting:null, mangeExtPriv:null, allowOverride:null, disconnectIdle:null, modifyPwd:null, menuCommands:null, recordAccess:null, layoutAccess:null, vlAccess:null, scriptsAccess:null, fullAccessAccountName:null, fullAccessPassword:""}
	set prefs to prefs & defaultPrefs
	set privSetName to privSetName of prefs
	set fullAccessCredentials to {fullAccessAccountName:fullAccessAccountName of prefs, fullAccessPassword:fullAccessPassword of prefs}
	
	set editPrivSetWindowName to "Edit Privilege Set"
	set selectCommand to "contains"
	
	
	try
		fmGUI_AppFrontMost()
		
		
		-- open selected priv ( if needed )
		tell application "System Events"
			tell process "FileMaker Pro"
				set windowName to name of window 1
			end tell
		end tell
		if windowName is not editPrivSetWindowName then
			fmGUI_ManageSecurity_PrivSet_Select(fullAccessCredentials & {privSetName:privSetName})
			fmGUI_ManageSecurity_PrivSet_OpenSelected({})
			
			-- now check again since we should have opened the privSet
			tell application "System Events"
				tell process "FileMaker Pro"
					set windowName to name of window 1
				end tell
			end tell
			if windowName is not editPrivSetWindowName then error "unable to open privSet '" & privSetName & "'" number -1024
		end if
		
		
		-- ensure we're dealing with the correct PrivSet
		tell application "System Events"
			tell process "FileMaker Pro"
				set currentlyOpenPrivSet to value of text field 1 of window 1
			end tell
		end tell
		if currentlyOpenPrivSet is not equal to privSetName then error "not editing '" & privSetName & "' privSet" number -1024
		
		
		-- get object references for privSet
		tell application "System Events"
			tell process "FileMaker Pro"
				set descriptionTextField to text field "Description" of window 1
				
				set allowPrintingCheckbox to checkbox "Allow printing" of window 1
				set allowExportingCheckbox to checkbox "Allow exporting" of window 1
				set mangeExtPrivCheckbox to checkbox "Manage extended privileges" of window 1
				set allowOverrideCheckbox to checkbox "Allow user to override data validation warnings" of window 1
				set disconnectIdleCheckbox to checkbox "Disconnect user from server when idle" of window 1
				set modifyPwdCheckbox to checkbox "Allow user to modify their own password" of window 1
				
				set menuPopup to pop up button "Available menu commands:" of window 1
				
			end tell
		end tell
		
		
		-- other privileges
		fmGUI_TextFieldSet({objRef:descriptionTextField, objValue:privSetDesc of prefs})
		
		fmGUI_CheckboxSet({objRef:allowPrintingCheckbox, objValue:allowPrinting of prefs})
		fmGUI_CheckboxSet({objRef:allowExportingCheckbox, objValue:allowExporting of prefs})
		fmGUI_CheckboxSet({objRef:mangeExtPrivCheckbox, objValue:mangeExtPriv of prefs})
		fmGUI_CheckboxSet({objRef:allowOverrideCheckbox, objValue:allowOverride of prefs})
		fmGUI_CheckboxSet({objRef:disconnectIdleCheckbox, objValue:disconnectIdle of prefs})
		fmGUI_CheckboxSet({objRef:modifyPwdCheckbox, objValue:modifyPwd of prefs})
		
		fmGUI_PopupSet({objRef:menuPopup, objValue:menuCommands of prefs})
		
		
		-- extended privs
		fmGUI_ManageSecurity_PrivSet_Update_ExtendedPrivileges({extendedPrivList:extendedPrivList of prefs})
		
		-- data access
		fmGUI_ManageSecurity_PrivSet_Update_AccessRecord({accessRecord:accessRecord of prefs, recordAccess:recordAccess of prefs})
		fmGUI_ManageSecurity_PrivSet_Update_AccessLayout({accessLayout:accessLayout of prefs, layoutAccess:layoutAccess of prefs})
		fmGUI_ManageSecurity_PrivSet_Update_AccessValueList({accessVL:accessVL of prefs, vlAccess:vlAccess of prefs})
		fmGUI_ManageSecurity_PrivSet_Update_AccessScript({accessScript:accessScript of prefs, scriptsAccess:scriptsAccess of prefs})
		
		
		-- confirm changes
		fmGUI_ObjectClick_OkButton({})
		
		
		
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Update

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_CheckboxSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "htcLib" to fmGUI_CheckboxSet({objRef:objRefStr} & prefs)
end fmGUI_CheckboxSet

on fmGUI_ManageSecurity_PrivSet_OpenSelected(prefs)
	tell application "htcLib" to fmGUI_ManageSecurity_PrivSet_OpenSelected(prefs)
end fmGUI_ManageSecurity_PrivSet_OpenSelected

on fmGUI_ManageSecurity_PrivSet_Select(prefs)
	tell application "htcLib" to fmGUI_ManageSecurity_PrivSet_Select(prefs)
end fmGUI_ManageSecurity_PrivSet_Select

on fmGUI_ManageSecurity_PrivSet_Update_AccessLayout(prefs)
	tell application "htcLib" to fmGUI_ManageSecurity_PrivSet_Update_AccessLayout(prefs)
end fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv

on fmGUI_ManageSecurity_PrivSet_Update_AccessRecord(prefs)
	tell app "htcLib" to fmGUI_ManageSecurity_PrivSet_Update_AccessRecord(prefs)
end

on fmGUI_ManageSecurity_PrivSet_Update_AccessScript(prefs)
	tell app "htcLib" to fmGUI_ManageSecurity_PrivSet_Update_AccessScript(prefs)
end

on fmGUI_ManageSecurity_PrivSet_Update_AccessValueList(prefs)
	tell app "htcLib" to fmGUI_ManageSecurity_PrivSet_Update_AccessValueList(prefs)
end

on fmGUI_ManageSecurity_PrivSet_Update_ExtendedPrivileges(prefs)
	tell app "htcLib" to fmGUI_ManageSecurity_PrivSet_Update_ExtendedPrivileges(prefs)
end

on fmGUI_ObjectClick_OkButton(prefs)
	tell application "htcLib" to fmGUI_ObjectClick_OkButton(prefs)
end fmGUI_ObjectClick_OkButton

on fmGUI_PopupSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "htcLib" to fmGUI_PopupSet({objRef:objRefStr} & prefs)
end fmGUI_PopupSet

on fmGUI_TextFieldSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "htcLib" to fmGUI_TextFieldSet({objRef:objRefStr} & prefs)
end fmGUI_TextFieldSet



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "htcLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceTEXT:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
