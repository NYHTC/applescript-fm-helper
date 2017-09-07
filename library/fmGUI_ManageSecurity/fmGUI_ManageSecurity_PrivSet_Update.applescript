-- fmGUI_ManageSecurity_PrivSet_Update({})
-- Erik Shagdar, NYHTC
-- update a privilege set


(*
HISTORY:
	1.0 - 2017-08-29 ( eshagdar ): taken most logic from fmGUI_ManageSecurity_PrivSets_CustomizeALL ( TuneUp Tool ).


REQUIRES:
	
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
	set dataAccessMustSetDetails to "Custom privileges"
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
				
				set recordsPopup to pop up button "Records:" of window 1
				set layoutsPopup to pop up button "Layouts:" of window 1
				set valueListsPopup to pop up button "Value Lists:" of window 1
				set scriptsPopup to pop up button "Scripts:" of window 1
				set menuPopup to pop up button "Available menu commands:" of window 1
				
				set extendPrivRows to rows of table 1 of scroll area 1 of window 1
			end tell
		end tell
		
		
		-- ensure fields match incoming params
		fmGUI_TextFieldSet({objRef:descriptionTextField, objValue:privSetDesc of prefs})
		fmGUI_CheckboxSet({objRef:allowPrintingCheckbox, objValue:allowPrinting of prefs})
		fmGUI_CheckboxSet({objRef:allowExportingCheckbox, objValue:allowExporting of prefs})
		fmGUI_CheckboxSet({objRef:mangeExtPrivCheckbox, objValue:mangeExtPriv of prefs})
		fmGUI_CheckboxSet({objRef:allowOverrideCheckbox, objValue:allowOverride of prefs})
		fmGUI_CheckboxSet({objRef:disconnectIdleCheckbox, objValue:disconnectIdle of prefs})
		fmGUI_CheckboxSet({objRef:modifyPwdCheckbox, objValue:modifyPwd of prefs})
		fmGUI_PopupSet({objRef:menuPopup, objValue:menuCommands of prefs})
		
		
		-- extended privs
		repeat with oneExtendedPrivRow in extendPrivRows
			set oneExtendedPrivRow to contents of oneExtendedPrivRow
			tell application "System Events"
				tell process "FileMaker Pro"
					set oneExtendedPrivCheckbox to checkbox 1 of oneExtendedPrivRow
					set oneExtendedPrivName to name of oneExtendedPrivCheckbox
				end tell
			end tell
			if oneExtendedPrivName is in extendedPrivList of prefs then
				fmGUI_CheckboxSet({objRef:oneExtendedPrivCheckbox, objValue:1})
			else
				fmGUI_CheckboxSet({objRef:oneExtendedPrivCheckbox, objValue:0})
			end if
		end repeat
		
		
		-- record access
		fmGUI_Popup_SelectByCommand({objRef:recordsPopup, objValue:accessRecord of prefs, selectCommand:selectCommand, clickIfAlreadySet:true})
		if accessRecord of prefs begins with dataAccessMustSetDetails then
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
					fmGUI_Popup_SelectByCommand({objRef:editButton, objValue:editAccess of oneTableRec, calcValue:editCalc of oneTableRec, selectCommand:selectCommand, clickIfAlreadySet:true})
				else
					fmGUI_Popup_SelectByCommand({objRef:editButton, objValue:editAccess of oneTableRec})
				end if
				if viewCalc of oneTableRec is not null then
					fmGUI_Popup_SelectByCommand({objRef:viewButton, objValue:viewAccess of oneTableRec, calcValue:viewCalc of oneTableRec, selectCommand:selectCommand, clickIfAlreadySet:true})
				else
					fmGUI_Popup_SelectByCommand({objRef:viewButton, objValue:viewAccess of oneTableRec})
				end if
				if createCalc of oneTableRec is not null then
					fmGUI_Popup_SelectByCommand({objRef:createButton, objValue:createAccess of oneTableRec, calcValue:createCalc of oneTableRec, selectCommand:selectCommand, clickIfAlreadySet:true})
				else
					fmGUI_Popup_SelectByCommand({objRef:createButton, objValue:createAccess of oneTableRec})
				end if
				if deleteCalc of oneTableRec is not null then
					fmGUI_Popup_SelectByCommand({objRef:deleteButton, objValue:deleteAccess of oneTableRec, calcValue:deleteCalc of oneTableRec, selectCommand:selectCommand, clickIfAlreadySet:true})
				else
					fmGUI_Popup_SelectByCommand({objRef:deleteButton, objValue:deleteAccess of oneTableRec})
				end if
				fmGUI_PopupSet({objRef:fieldAccessButton, objValue:fieldAccess of oneTableRec})
				if fieldCalc of oneTableRec is not null then fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv({fieldList:fieldCalc of oneTableRec})
			end repeat
			fmGUI_ObjectClick_OkButton({})
		end if
		
		
		-- layouts access
		fmGUI_Popup_SelectByCommand({objRef:layoutsPopup, objValue:accessLayouts of prefs, selectCommand:selectCommand, clickIfAlreadySet:true})
		if accessLayouts of prefs begins with dataAccessMustSetDetails then
			windowWaitUntil_FrontIS({windowName:"Custom Layout Privileges"})
			
			-- get button refs to for each radio button
			tell application "System Events"
				tell process "FileMaker Pro"
					set allowCreate to checkbox "Allow creation of new layouts" of window 1
					
					-- need to do it by reference since the 2 sets of radio buttons 'checkboxes' have the same name
					set layoutModify to a reference to checkbox 2 of window 1
					set layoutView to a reference to checkbox 3 of window 1
					set layoutNoAccess to a reference to checkbox 4 of window 1
					set recordModify to a reference to checkbox 5 of window 1
					set recordView to a reference to checkbox 6 of window 1
					set recordNoAccess to a reference to checkbox 7 of window 1
				end tell
			end tell
			
			
			-- update allow create new layouts checkbox
			fmGUI_CheckboxSet({objRef:allowCreate, objValue:allowCreate of layoutAccess of prefs})
			
			
			-- look through each layout, ensuring the proper access is set
			repeat with oneLayoutRec in layoutPrivList of layoutAccess of prefs
				set oneLayoutRec to contents of oneLayoutRec
				tell application "System Events"
					tell process "FileMaker Pro"
						set oneLayoutRow to (first row of table 1 of scroll area 1 of window 1 whose name of static text 1 is layoutName of oneLayoutRec)
						select oneLayoutRow
						
						
						-- NOTE: we need to have FM click the radio buttons since they have the same name ( and so get de-referenced when the object is stringified ).
						-- now edit access for each row
						if layoutAccess of oneLayoutRec is equal to "modifiable" then
							click layoutModify
						else if layoutAccess of oneLayoutRec is equal to "view only" then
							click layoutView
						else if layoutAccess of oneLayoutRec is equal to "no access" then
							click layoutNoAccess
						end if
						
						if dataAccess of oneLayoutRec is equal to "modifiable" then
							click recordModify
						else if dataAccess of oneLayoutRec is equal to "view only" then
							click recordView
						else if dataAccess of oneLayoutRec is equal to "no access" then
							click recordNoAccess
						end if
					end tell
				end tell
			end repeat
			fmGUI_ObjectClick_OkButton({})
		end if
		
		
		
		
		-- value lists access
		-- scripts access
		
		
		
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update - " & errMsg number errNum
	end try
	
	
	
	
	
	
	
	(*
	
	set viewMod to viewMod of prefs
	set viewCalc to modCalc of viewMod
	
	set deleteMod to deleteMod of prefs
	set deleteCalc to modCalc of deleteMod
	
	set xDBCTableNames to xDBCTableNames of prefs
	
	if oneTableName of prefs is not null then if length of (oneTableName of prefs) is 0 then set oneTableName of prefs to null
	
	try
		
		tell application "htcLib" to set currentDbName to fmGUI_Database_DbNameOfFrontWindow({})
		
		tell application "htcLib" to fmGUI_ManageSecurity_GoToTab_PrivSets(fullAccessCredentials)
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set privSetCount to count of rows of table 1 of scroll area 1 of tab group 1 of window 1
			end tell
		end tell
		
		
		-- Loop over each privilege set:
		repeat with privSetIndex from 1 to privSetCount
			
			--if debugMode then my logLEVEL(5, "fmGUI_ManageSecurity_PrivSets_CustomizeALL  index: " & privSetIndex & "/" & privSetCount)
			
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set privSetName to (value of first static text of row privSetIndex of table 1 of scroll area 1 of tab group 1 of window 1)
				end tell
			end tell
			
			if privSetName starts with "[" then
				
				-- DO NOTHING - it's a built-in priv set ( cannot be modified )
				
				
			else if not shouldProcessPrivSet(currentDbName, privSetName, privSetsThatShouldNotModifyAccess) then
				
				-- This privilege is not supposed to have its access modified at all, so do NOT modify its privileges:
				if debugMode then my logLEVEL(5, privSetName & " - SKIPPED")
				
				
			else
				-- BEGIN: Editable Privilege Set:
				
				
				-- Select the privilege set:
				tell application "System Events"
					tell application process "FileMaker Pro Advanced"
						select row privSetIndex of table 1 of scroll area 1 of tab group 1 of window 1
						
						-- Edit the privilege set:
						set editButton to (first button of tab group 1 of window 1 whose name is "EditÉ")
					end tell
				end tell
				clickObjFromHtcLib(editButton)
				
				delay 0.5
				
				-- Select Custom privilegesÉ for the Records: 
				tell application "System Events"
					tell application process "FileMaker Pro Advanced"
						set recordPopup to (first pop up button of window 1 whose name is "Records:")
					end tell
				end tell
				fmGUI_Popup_SelectByCommand({popupObject:recordPopup, selectCommand:"beginsWith", popupChoice:"Custom privileges", clickIfAlreadySet:true})
				
				logConsole(ScriptName, "PrivSet: " & privSetName & " - Selected Records --> Custom PrivilegesÉ")
				
				
				-- RECORD PRIVILEGES for TABLES: 
				if (oneTableName of prefs) is not null then
					set tableCount to 1
				else
					tell application "System Events"
						tell application process "FileMaker Pro Advanced"
							set tableCount to count of rows of table 1 of scroll area 1 of window 1
						end tell
					end tell
				end if
				
				repeat with oneTableIndex from 1 to tableCount
					
					tell application "System Events"
						tell application process "FileMaker Pro Advanced"
							if (oneTableName of prefs) is not null then
								set tableRow to (first row of table 1 of scroll area 1 of window 1 whose (name of static text 1) is (oneTableName of prefs))
							else
								set tableRow to row oneTableIndex of table 1 of scroll area 1 of window 1
							end if
							
							select tableRow -- need to select it so the pop up menus below correspond. 
							
							set oneTableName to value of static text 1 of tableRow
						end tell
					end tell
					
					if oneTableName is not in xDBCTableNames then
						
						--if debugMode then my logConsole(ScriptName, "DATABASE '" & currentDbName & "' - " & DbTablePairs of tablesThatShouldNotGetStandardFields)
						--display dialog "die now"
						--error -128
						
						if oneTableName is "[Any New Table]" then
							-- TURN OFF EVERYTHING for new tables to force developers to fix this: 
							tell application "System Events"
								tell application process "FileMaker Pro Advanced"
									set viewButton to pop up button "View" of window 1
									set editButton to pop up button "Edit" of window 1
									set createButton to pop up button "Create" of window 1
									set deleteButton to pop up button "Delete" of window 1
									set fieldAccessButton to pop up button "Field Access" of window 1
								end tell
							end tell
							fmGUI_PopupSet(viewButton, "no")
							fmGUI_PopupSet(editButton, "no")
							fmGUI_PopupSet(createButton, "no")
							fmGUI_PopupSet(deleteButton, "no")
							fmGUI_PopupSet(fieldAccessButton, "none")
							
						else if not shouldProcessTable(currentDbName, oneTableName, tablesThatShouldNotGetStandardFields) then
							-- This table was EXCEPTED from the standard fields, so do NOT modify its privileges:
							
						else
							-- BEGIN: shouldProcessTable.
							
							tell application "System Events"
								tell application process "FileMaker Pro Advanced"
									set viewPrivs to value of static text 2 of tableRow
									set deletePrivs to value of static text 5 of tableRow
									set accessPrivs to value of static text 6 of tableRow
								end tell
							end tell
							
							
							set modifyDelete to true
							set modifyView to true
							set modifyAccess to false
							
							------------------------------------------------------------------------
							------ VIEW PRIVILEGES --------------------------------------------
							------------------------------------------------------------------------
							
							
							if viewPrivs is "yes" then
								set changeViewPrivs to true
								set wasAlreadyLimited to false -- even if there is an calc in the "limitedÉ" option, that was OLD because the View was set to YES
								
							else if viewPrivs is "limitedÉ" then
								set changeViewPrivs to true
								set wasAlreadyLimited to true -- if there is an calc in the "limitedÉ" option, MUST include it, since it is in use
								
							else -- if they are NO, just leave that:
								set changeViewPrivs to false
								set wasAlreadyLimited to false
							end if
							
							
							
							if oneTableName is in BaseTableList of tablesThatShouldNotModifyPrivSetViewCalc then
								set changeViewPrivs to false
							else if not shouldProcessTable(currentDbName, oneTableName, tablesThatShouldNotModifyPrivSetViewCalc) then
								set changeViewPrivs to false
								
								
							end if
							
							
							
							if changeViewPrivs then
								
								set calcVersion to calcVersion of viewMod
								set prevVersionBefore to prevVersionBefore of viewMod
								set prevVersionAfter to prevVersionAfter of viewMod
								set prevCalcBegin to prevCalcBegin of viewMod
								set prevCalcEnd to prevCalcEnd of viewMod
								tell application "System Events"
									tell application process "FileMaker Pro Advanced"
										set viewPopup to (pop up button "View" of window 1)
									end tell
								end tell
								fmGUI_Popup_SelectByCommand({popupObject:viewPopup, selectCommand:"beginsWith", popupChoice:"limited", clickIfAlreadySet:true})
								
								tell application "System Events"
									tell application process "FileMaker Pro Advanced"
										set calcTextArea to text area 1 of scroll area "Records can be viewed when:" of window 1
									end tell
								end tell
								set newViewCalc to "" -- if it doesn't get set to something, no need to change.
								
								if wasAlreadyLimited then
									-- Check for previous version of standard calc, then replace that portion.
									-- Or, tack on ('and' this) to some custom calc.
									-- Or, just set to this standard calc. 
									tell application "System Events"
										tell application process "FileMaker Pro Advanced"
											set oldCalc to value of calcTextArea
										end tell
									end tell
									
									if oldCalc is equal to viewCalc then
										-- no need to do anything
										
									else if oldCalc contains prevCalcBegin and oldCalc contains prevCalcEnd then
										
										set prevStandardCalc to getTextBetween({sourceTEXT:oldCalc, beforeText:prevCalcBegin, afterText:prevCalcEnd, includeMarkers:true})
										set prevStandardVersion to getTextBetween({sourceTEXT:prevStandardCalc, beforeText:prevVersionBefore, afterText:prevVersionAfter, includeMarkers:false})
										set prevStandardVersion to prevStandardVersion as number
										
										if prevStandardVersion is greater than or equal to calcVersion then
											-- the version already installed is up-to-date, so do NOT modify:
											set modifyView to false
											
										else -- previous is outdated, so need to replace it:
											set modifyView to true
											
											tell application "htcLib" to set newViewCalc to replaceSimple({oldCalc, prevStandardCalc, viewCalc})
											
										end if
										
									else -- no previous version of standard, so 'AND' it with what is there:
										set modifyView to true
										set newViewCalc to oldCalc & return & " and " & return & viewCalc
										
									end if
									
									-- END OF: WasAlreadyLimited
									
								else -- was NOT Already Limited, so just set to the standard:
									set newViewCalc to viewCalc
									
									-- END OF: was NOT Already Limited
								end if
								
								
								
								tell application "System Events"
									tell application process "FileMaker Pro Advanced"
										if modifyView then
											set value of calcTextArea to newViewCalc
											set closeButton to button "OK" of window 1
										else
											set closeButton to button "Cancel" of window 1
										end if
									end tell
								end tell
								clickObjFromHtcLib(closeButton)
								delay 0.25 --seconds
								
							end if --END: changeViewPrivs
							
							
							
							------------------------------------------------------------------------
							------ DELETE PRIVILEGES ------------------------------------------
							------------------------------------------------------------------------
							if deletePrivs is "yes" then
								set modifyDelete to true
								set wasAlreadyLimited to false -- even if there is an calc in the "limitedÉ" option, that was OLD because the View was set to YES
								
							else if deletePrivs is "limitedÉ" then
								set modifyDelete to true
								set wasAlreadyLimited to true -- if there is an calc in the "limitedÉ" option, MUST include it, since it is in use
								
							else -- if they are NO, just leave that:
								set modifyDelete to false
								set wasAlreadyLimited to false
							end if
							
							if modifyDelete then -- TRUE for now (some future limits?)
								(* LOGIC: 
											If no, leave it, but must make SyncDeK_pubFlag VIEW-ONLY.
											OR, if yes, switch to standard calc.
											OR, if limited already, see if it it had standard calc to be ugpraded.
										*)
								
								set calcVersion to calcVersion of deleteMod
								set prevVersionBefore to prevVersionBefore of deleteMod
								set prevVersionAfter to prevVersionAfter of deleteMod
								set prevCalcBegin to prevCalcBegin of deleteMod
								set prevCalcEnd to prevCalcEnd of deleteMod
								
								
								if deletePrivs is "-" or deletePrivs is "no" then
									-- If the privilege was NOT allowed to Delete records, then 
									-- make Field Access for SyncDeK_pubFlag to VIEW-ONLY
									
									-- NOTE: in the table row it is dash (as of 2013-11-06), but the pop up button below is "no" -- This code covers both, just in case.
									
									-- SyncDeK_pubFlag --> VIEW-ONLY
									tell application "System Events"
										tell application process "FileMaker Pro Advanced"
											set fieldAccessButton to pop up button "Field Access" of window 1
										end tell
									end tell
									set fieldAccessPopup to (fieldAccessButton)
									set popupParams to {popupObject:fieldAccessPopup, selectCommand:"beginsWith", popupChoice:"limited", clickIfAlreadySet:true}
									fmGUI_Popup_SelectByCommand(popupParams)
									
									tell application "System Events"
										tell application process "FileMaker Pro Advanced"
											select (first row of table 1 of scroll area 1 of window 1 whose value of static text 1 is "SyncDeK_pubFlag")
											
											click checkbox "view only 2 of 3" of window 1
											set okButton to button "OK" of window 1
										end tell
									end tell
									clickObjFromHtcLib(okButton)
									
									set modifyDelete to false
									
								end if
								
							end if
							
							
							
							if deletePrivs is not "-" and deletePrivs is not "no" then
								-- Now, disable Delete for ALL privilege sets, no matter what
								tell application "System Events"
									tell application process "FileMaker Pro Advanced"
										
										set deletePopup to (pop up button "Delete" of window 1)
										
										set popupParams to {popupObject:deletePopup, selectCommand:"beginsWith", popupChoice:"limited", clickIfAlreadySet:true}
									end tell
								end tell
								fmGUI_Popup_SelectByCommand(popupParams)
								
								tell application "System Events"
									tell application process "FileMaker Pro Advanced"
										
										set calcTextArea to text area 1 of scroll area "Records can be deleted when:" of window 1
									end tell
								end tell
								set newDeleteCalc to "" -- if it doesn't get set to something, no need to change.
								
								if wasAlreadyLimited then
									-- Check for previous version of standard calc, then replace that portion.
									-- Or, tack on ('and' this) to some custom calc.
									-- Or, just set to this standard calc. 
									tell application "System Events"
										tell application process "FileMaker Pro Advanced"
											
											set oldCalc to value of calcTextArea
										end tell
									end tell
									if oldCalc is equal to deleteCalc then
										-- no need to do anything
										
									else if oldCalc contains prevCalcBegin and oldCalc contains prevCalcEnd then
										
										set prevStandardCalc to getTextBetween({sourceTEXT:oldCalc, beforeText:prevCalcBegin, afterText:prevCalcEnd, includeMarkers:true})
										set prevStandardVersion to getTextBetween({sourceTEXT:prevStandardCalc, beforeText:prevVersionBefore, afterText:prevVersionAfter, includeMarkers:false})
										set prevStandardVersion to prevStandardVersion as number
										
										if prevStandardVersion is greater than or equal to calcVersion then
											-- the version already installed is up-to-date, so do NOT modify:
											set modifyDelete to false
											
										else -- previous is outdated, so need to replace it:
											set modifyDelete to true
											
											tell application "htcLib" to set newDeleteCalc to replaceSimple({oldCalc, prevStandardCalc, deleteCalc})
											
										end if
										
									else -- no previous version of standard, so 'AND' it with what is there:
										set modifyDelete to true
										set newDeleteCalc to oldCalc & return & " and " & return & deleteCalc
										
									end if
									
									-- END OF: WasAlreadyLimited
									
								else -- was NOT Already Limited, so just set to the standard:
									set newDeleteCalc to deleteCalc
									
									-- END OF: was NOT Already Limited
								end if
								
								
								tell application "System Events"
									tell application process "FileMaker Pro Advanced"
										if modifyDelete then
											set value of calcTextArea to newDeleteCalc
											set closeButton to button "OK" of window 1
										else
											set closeButton to button "Cancel" of window 1
										end if
									end tell
								end tell
								clickObjFromHtcLib(closeButton)
								delay 0.25 --seconds
								
								
							end if
							
							
							-- END OF: shouldProcessTable.
						end if
						
						-- END of: table is NOT an xDBC table
					end if
					
					-- END OF: Loop over tables.							
				end repeat
				
				-- SAVE changes to Custom Record Privileges:		
				tell application "System Events"
					tell application process "FileMaker Pro Advanced"
						set okButton to button "OK" of window 1
					end tell
				end tell
				clickObjFromHtcLib(okButton)
				delay 0.25 --seconds
				
				-- SAVE changes to Privilege Set:						
				tell application "System Events"
					tell application process "FileMaker Pro Advanced"
						set okButton to button "OK" of window 1
					end tell
				end tell
				clickObjFromHtcLib(okButton)
				delay 0.25 --seconds
				
				-- END OF: Editable Privilege Set:
				
			end if
			
			
		end repeat
		
		
		-- NOTE: Saving the Manage Security changes must be called from the main script, since that is where the full access account and password are available.
		
		
		
		return true
		
	on error errMsg number errNum
		error "Couldn't fmGUI_ManageSecurity_PrivSet_Update - " & errMsg number errNum
	end try
	
	*)
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

on fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv(prefs)
	tell application "htcLib" to fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv(prefs)
end fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv

on fmGUI_ManageSecurity_PrivSet_OpenSelected(prefs)
	tell application "htcLib" to fmGUI_ManageSecurity_PrivSet_OpenSelected(prefs)
end fmGUI_ManageSecurity_PrivSet_OpenSelected

on fmGUI_ManageSecurity_PrivSet_Select(prefs)
	tell application "htcLib" to fmGUI_ManageSecurity_PrivSet_Select(prefs)
end fmGUI_ManageSecurity_PrivSet_Select

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

on fmGUI_TextFieldSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "htcLib" to fmGUI_TextFieldSet({objRef:objRefStr} & prefs)
end fmGUI_TextFieldSet

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
