-- fmGUI_PopupSet(popupObject, popupChoice)
-- Dan Shockley
-- Wrapper method for fmGUI_Popup_SelectByCommand that requires only an object and a choice


(*
HISTORY:
	1.1 - 2017-07-06 ( eshagdar ): narrowed scope
	1.0 - created


TODO:
	- convert params to a record
*)


on run
	tell application "System Events"
		tell application process "FileMaker Pro"
			set frontmost to true
			set TablePopupOnFieldTabOfManageDatabase to (pop up button "Table:" of tab group 1 of window 1)
		end tell
	end tell
	
	fmGUI_PopupSet(my coerceToString(TablePopupOnFieldTabOfManageDatabase), "ZZ_GLOBALS")
	
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_PopupSet(popupObject, popupChoice)
	-- version 1.1
	
	try
		using terms from application "System Events"
			fmGUI_Popup_SelectByCommand({popupObject:popupObject, popupChoice:popupChoice, selectCommand:"contains"})
		end using terms from
		
		return result
	on error errMsg number errNum
		error "Couldn't select '" & popupChoice & "' in popup - " & errMsg number errNum
	end try
end fmGUI_PopupSet

--------------------
-- END OF CODE
--------------------

on fmGUI_Popup_SelectByCommand(prefs)
	tell application "htcLib" to fmGUI_Popup_SelectByCommand(prefs)
end fmGUI_Popup_SelectByCommand

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
			if errMsg starts with "System Events got an error: Can’t make some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D of " and errMsg ends with "into type specifier." then
				set errMsgLead to "System Events got an error: Can’t make some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D of "
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