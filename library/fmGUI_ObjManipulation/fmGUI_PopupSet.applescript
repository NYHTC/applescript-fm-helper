-- fmGUI_PopupSet(popupObject, popupChoice)
-- Dan Shockley
-- Wrapper method for fmGUI_Popup_SelectByCommand that requires only an object and a choice


(*
HISTORY:
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
	
	fmGUI_PopupSet(TablePopupOnFieldTabOfManageDatabase, "ZZ_GLOBALS")
	
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_PopupSet(popupObject, popupChoice)
	-- version 1.0
	
	using terms from application "System Events"
		try
			fmGUI_Popup_SelectByCommand({popupObject:popupObject, popupChoice:popupChoice, selectCommand:"contains"})
			return result
			
		on error errMsg number errNum
			error "Couldn't select '" & popupChoice & "' in popup - " & errMsg number errNum
		end try
	end using terms from
end fmGUI_PopupSet

--------------------
-- END OF CODE
--------------------

on fmGUI_Popup_SelectByCommand(prefs)
	tell application "htcLib" to fmGUI_Popup_SelectByCommand(prefs)
end fmGUI_Popup_SelectByCommand