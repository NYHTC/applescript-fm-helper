-- fmGUI_Popup_SelectByCommand(popupObject:"", popupChoice:"", selectCommand:"", clickIfAlreadySet:"")
-- Daniel A. Shockley, NYHTC
-- Selects a choice from a popup menu


(*
HISTORY:
	1.0 - created
*)


on run
	tell application "System Events"
		tell application process "FileMaker Pro"
			set frontmost to true
			set TablePopupOnFieldsTabOfManageDatabase to (pop up button "Table:" of tab group 1 of window 1)
		end tell
	end tell
	
	fmGUI_Popup_SelectByCommand({popupObject:TablePopupOnFieldsTabOfManageDatabase, popupChoice:"ZZ_GLOBALS"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_Popup_SelectByCommand(prefs)
	-- version 1.0
	
	set defaultPrefs to {popupObject:null, popupChoice:null, selectCommand:"is", clickIfAlreadySet:false}
	
	if class of prefs is equal to class of {"a", 2} then
		set prefs to {popupObject:item 1 of prefs, popupChoice:item 2 of prefs}
	end if
	
	
	set prefs to prefs & defaultPrefs
	
	set popupObject to popupObject of prefs
	set selectCommand to selectCommand of prefs
	set popupChoice to popupChoice of prefs
	set clickIfAlreadySet to clickIfAlreadySet of prefs -- re-select even if popup is the requested value.
	
	
	using terms from application "System Events"
		try
			if not (exists popupObject) then
				-- does NOT exist, so error with that:
				error "The specified popupObject does not exist." number 1024
				
			else
				-- the popupObject DOES exist
				set mustPick to false
				if not (exists value of popupObject) then
					-- first check if the value of the popupObject exists - if it doesn't, then we can't test it directly
					set mustPick to true
					
				else -- we can see the value without 'picking' the menu, so test it:
					-- note that our selection might be one of several 'matching' commands:
					if clickIfAlreadySet then
						-- RE-SELECT even if popup already is the requested value.
						set mustPick to true
						
					else if selectCommand is equal to "is" then
						if value of popupObject is not popupChoice then
							set mustPick to true
						end if
						
					else if selectCommand is equal to "contains" then
						if value of popupObject does not contain popupChoice then
							set mustPick to true
						end if
						
					else if selectCommand is equal to "startsWith" then
						if value of popupObject does not start with popupChoice then
							set mustPick to true
						end if
						
					else if selectCommand is equal to "beginsWith" then
						if value of popupObject does not start with popupChoice then
							set mustPick to true
						end if
						
					else if selectCommand is equal to "endsWith" then
						if value of popupObject does not end with popupChoice then
							set mustPick to true
						end if
						
					end if
				end if
				
				if mustPick then
					if popupChoice is not null then
						click popupObject
						if selectCommand is equal to "is" then
							click (first menu item of menu 1 of popupObject whose name is popupChoice)
						else if selectCommand is equal to "contains" then
							click (first menu item of menu 1 of popupObject whose name contains popupChoice)
							
						else if selectCommand is equal to "beginsWith" then
							click (first menu item of menu 1 of popupObject whose name starts with popupChoice)
							
						else if selectCommand is equal to "endsWith" then
							click (first menu item of menu 1 of popupObject whose name ends with popupChoice)
							
						end if
						
					end if
				end if
				
				return true
				
			end if
		on error errMsg number errNum
			error "Couldn't select menu item whose value _" & selectCommand & "_ '" & popupChoice & "' in popup - " & errMsg number errNum
		end try
	end using terms from
end fmGUI_Popup_SelectByCommand

--------------------
-- END OF CODE
--------------------
