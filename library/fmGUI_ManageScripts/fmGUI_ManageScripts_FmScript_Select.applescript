-- fmGUI_ManageScripts_FmScript_Select({fmScriptName:null, altPatterns:null})
-- Daniel A. Shockley, NYHTC
-- Select an existing script in the Script Workspace.


(*
HISTORY:
	2020-03-03 ( dshockley, hdu ): Updated as standalone function for fm-scripts git repository.
	1.3.1 - 2017-06-05 ( eshagdar ): the name of the script is the name of UI elemnt, not the value of a text field.
	1.3 - 2017-01-12 ( eshagdar ): updated for FM15 - script names are now in a splitter group.
	2017-06-05 ( eshagdar ): we should just be using the search bar instead of scanning through the list

REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_DataViewer_Close
	fmGUI_Inspector_Close
	fmGUI_ManageScripts_Open
	fmGUI_ManageScripts_ScriptListFocus
	fmGUI_ManageScripts_SearchBoxClear
	fmGUI_ManageScripts_SearchBoxFind
	quoteString
	unParseChars
	
*)

property debugMode : true
property ScriptName : "fmGUI_ManageScripts_FmScript_Select"

on run
	fmGUI_ManageScripts_FmScript_Select({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageScripts_FmScript_Select(prefs)
	-- version 1.3.1
	
	-- Attempt to select a FileMaker Script based on name or, alternatively, other partial matches.
	
	
	set defaultPrefs to {fmScriptName:null, altPatterns:null}
	set prefs to prefs & defaultPrefs
	(* EXAMPLE:
	altPatterns:{
		{pattern:{{testType:"is", testMatch:"z_Auto1"}}},
		{pattern:{{testType:"startsWith", testMatch:"z"},{testType:"endsWith", testMatch:"_Auto1"}}}
		}
	*)
	
	
	-- CONSTANTS: 
	set testCodeHeader to "tell application \"System Events\"" & return & "tell application process \"FileMaker Pro Advanced\"" & return
	set selectCode to "select ("
	set rowRefCode to "first row of (outline 1 of scroll area 1 of splitter group 1 of window 1)"
	set whoseCode to " whose "
	set scriptNameObjectCode to "name of UI Element 1"
	-- (then some test will be inserted)
	set betweenTestsCode to " and "
	-- (then possibly some other test will be inserted)
	set afterAllTestsCode to ")"
	set testCodeFooter to return & "end tell" & return & "end tell"
	
	
	try
		if fmScriptName of prefs is equal to "-" then error "This is a SEPARATOR SCRIPT - don't try to edit it!" number -1024
		
		fmGUI_AppFrontMost()
		fmGUI_Inspector_Close()
		fmGUI_DataViewer_Close()
		fmGUI_ManageScripts_Open({})
		fmGUI_ManageScripts_ScriptListFocus({})
		
		
		fmGUI_ManageScripts_SearchBoxFind({searchCriteria:fmScriptName of prefs})
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				(*
				set searchField to text field 1 of splitter group 1 of window 1
				set focused of searchField to true
				delay 0.25
				keystroke "a" using command down
				key code 51 -- clear the search box
				delay 0.25
				set value of searchField to fmScriptName of prefs
				keystroke tab
				*)
				
				-- SELECT the easy way if the object is directly available:
				if (exists (first row of (outline 1 of scroll area 1 of splitter group 1 of window 1) whose name of UI element 1 is fmScriptName of prefs)) then
					select (first row of (outline 1 of scroll area 1 of splitter group 1 of window 1) whose name of UI element 1 is fmScriptName of prefs)
					return true
					
					
				else -- if NOT found, then seek by alternate patterns, if specified: 
					
					-- NOT FOUND, so try each altPattern: 
					set scriptNowSelected to false
					
					my fmGUI_ManageScripts_SearchBoxClear({})
					repeat with oneAltPattern in altPatterns of prefs
						set testList to contents of pattern of oneAltPattern
						if testList is equal to {{}} then
							--list of empty list, so we can't do anything with it							
						else
							-- there are some valid items, so loop over them
							
							try
								-- BEGIN: try oneAltPattern: 
								set testCode to {}
								repeat with oneTestRec in testList
									copy ("" & testType of oneTestRec & " " & quoteString(testMatch of oneTestRec)) to end of testCode
								end repeat
								
								set testCode to unParseChars(testCode, betweenTestsCode & scriptNameObjectCode & " ")
								set testCode to selectCode & rowRefCode & whoseCode & scriptNameObjectCode & " " & testCode & afterAllTestsCode
								set testCode to testCodeHeader & testCode & testCodeFooter
								tell me to run script testCode
								
								set scriptNowSelected to true -- no error, so we selected it.
								exit repeat -- no need to keep checking altPatterns
								
								-- ERROR: try oneAltPattern. 
							on error errMsg number errNum
								if errNum is not -1719 then
									-- some error OTHER than not found in list:
									error errMsg number errNum
								else
									-- just try the next altPattern, so continue repeat loop.
								end if
								-- END OF: try oneAltPattern. 
							end try
							-- END OF: List had things. 
						end if
					end repeat
				end if
			end tell
		end tell
		
		return scriptNowSelected
	on error errMsg number errNum
		error "unable to fmGUI_ManageScripts_FmScript_Select '" & fmScriptName of prefs & "' - " & errMsg number errNum
	end try
end fmGUI_ManageScripts_FmScript_Select

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_DataViewer_Close()
	tell application "htcLib" to fmGUI_DataViewer_Close()
end fmGUI_DataViewer_Close

on fmGUI_Inspector_Close()
	tell application "htcLib" to fmGUI_Inspector_Close()
end fmGUI_Inspector_Close

on fmGUI_ManageScripts_Open(prefs)
	tell application "htcLib" to fmGUI_ManageScripts_Open(prefs)
end fmGUI_ManageScripts_Open

on fmGUI_ManageScripts_ScriptListFocus(prefs)
	tell application "htcLib" to fmGUI_ManageScripts_ScriptListFocus(prefs)
end fmGUI_ManageScripts_ScriptListFocus

on fmGUI_ManageScripts_SearchBoxClear(prefs)
	tell application "htcLib" to fmGUI_ManageScripts_SearchBoxClear(prefs)
end fmGUI_ManageScripts_SearchBoxClear

on fmGUI_ManageScripts_SearchBoxFind(prefs)
	tell application "htcLib" to fmGUI_ManageScripts_SearchBoxFind(prefs)
end fmGUI_ManageScripts_SearchBoxFind

on quoteString(prefs)
	tell application "htcLib" to quoteString(prefs)
end quoteString

on unParseChars(prefs)
	tell application "htcLib" to unParseChars(prefs)
end unParseChars

