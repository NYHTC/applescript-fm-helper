-- fmGUI_PopupSet(popupObject, popupChoice)
-- Dan Shockley
-- Wrapper method for fmGUI_Popup_SelectByCommand that requires only an object and a choice


(*
HISTORY:
	1.0 - created
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
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
	-- version 1.0, Dan Shockley
	
	using terms from application "System Events"
		try
			
			fmGUI_Popup_SelectByCommand({popupObject:popupObject, popupChoice:popupChoice})
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
	tell helper to fmGUI_Popup_SelectByCommand(prefs)
end fmGUI_Popup_SelectByCommand