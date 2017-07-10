-- fmGUI_Popup_SelectByCommand(popupObject:"", popupChoice:"", selectCommand:"", clickIfAlreadySet:"")
-- Daniel A. Shockley, NYHTC
-- Selects a choice from a popup menu


(*
HISTORY:
	1.1 - 2017-06-29 ( eshagdar ): prefs must be a record. incoming param may be a string, so ensure that it's an object reference.
	1.0 - created
*)


on run
	tell application "System Events"
		tell application process "FileMaker Pro"
			set frontmost to true
			delay 1
			set popUpButtonRef to pop up button "Records:" of window 1
		end tell
	end tell
	
	fmGUI_Popup_SelectByCommand({popupObject:my coerceToString(popUpButtonRef), popupChoice:"Custom privileges..."})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_Popup_SelectByCommand(prefs)
	-- version 1.1
	
	set defaultPrefs to {popupObject:null, popupChoice:null, selectCommand:"is", clickIfAlreadySet:false}
	set prefs to prefs & defaultPrefs
	
	set popupObject to ensureObjectRef(popupObject of prefs)
	set selectCommand to selectCommand of prefs
	set popupChoice to popupChoice of prefs
	set clickIfAlreadySet to clickIfAlreadySet of prefs -- re-select even if popup is the requested value.
	
	
	try
		tell application "System Events"
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
			end if
		end tell
		
		return true
	on error errMsg number errNum
		error "Couldn't select menu item whose value _" & selectCommand & "_ '" & popupChoice & "' in popup - " & errMsg number errNum
	end try
end fmGUI_Popup_SelectByCommand

--------------------
-- END OF CODE
--------------------

on ensureObjectRef(someObjectRef)
	
	tell application "System Events"
		
		if class of someObjectRef is equal to class of "fakestring" then
			set objCode to "script someObject" & return & Â
				"tell app \"System Events\" to " & someObjectRef & return & Â
				"end script" & return & Â
				"run someObject"
			
			set someObjectRef to run script objCode
			
		end if
		
		return someObjectRef
		
	end tell
	
end ensureObjectRef

on coerceToString(incomingObject)
	-- version 2.2
	
	if class of incomingObject is string then
		set {text:incomingObject} to (incomingObject as string)
		return incomingObject
	else if class of incomingObject is integer then
		set {text:incomingObject} to (incomingObject as string)
		return incomingObject as string
	else if class of incomingObject is real then
		set {text:incomingObject} to (incomingObject as string)
		return incomingObject as string
	else if class of incomingObject is Unicode text then
		set {text:incomingObject} to (incomingObject as string)
		return incomingObject as string
	else
		-- LIST, RECORD, styled text, or unknown
		try
			try
				set some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D of "XXXX" to "some_UUID_Value_54F827C7379E4073B5A216BB9CDE575D"
				
				-- GENERATE the error message for a known 'object' (here, a string) so we can get 
				-- the 'lead' and 'trail' part of the error message
			on error errMsg number errNum
				set {oldDelims, AppleScript's text item delimiters} to {AppleScript's text item delimiters, {"\"XXXX\""}}
				set {errMsgLead, errMsgTrail} to text items of errMsg
				set AppleScript's text item delimiters to oldDelims
			end try
			
			-- now, generate error message for the SPECIFIED object: 
			set some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D of incomingObject to "some_UUID_Value_54F827C7379E4073B5A216BB9CDE575D"
			
			
		on error errMsg
			if errMsg starts with "System Events got an error: CanÕt make some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D of " and errMsg ends with "into type specifier." then
				set errMsgLead to "System Events got an error: CanÕt make some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D of "
				set errMsgTrail to " into type specifier."
				
				set {od, AppleScript's text item delimiters} to {AppleScript's text item delimiters, errMsgLead}
				
				set objectString to text item 2 of errMsg
				set AppleScript's text item delimiters to errMsgTrail
				
				set objectString to text item 1 of objectString
				set AppleScript's text item delimiters to od
				
				
				
			else
				--tell me to log errMsg
				set objectString to errMsg
				
				if objectString contains errMsgLead then
					set {od, AppleScript's text item delimiters} to {AppleScript's text item delimiters, errMsgLead}
					set objectString to text item 2 of objectString
					set AppleScript's text item delimiters to od
				end if
				
				if objectString contains errMsgTrail then
					set {od, AppleScript's text item delimiters} to {AppleScript's text item delimiters, errMsgTrail}
					set AppleScript's text item delimiters to errMsgTrail
					set objectString to text item 1 of objectString
					set AppleScript's text item delimiters to od
				end if
				
				--set {text:objectString} to (objectString as string) -- what does THIS do?
			end if
		end try
		
		return objectString
	end if
end coerceToString