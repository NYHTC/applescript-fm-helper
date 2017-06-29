-- fmGUI_ManageSecurity_OpenEditWindowForSelectedPrivSet({})
-- Erik Shagdar, NYHTC
-- Open the edit window for the selected privSet


(*
HISTORY:
	1.0 - 2017-06-29 ( eshagdar ): created.


REQUIRES:
	clickObjectByCoords
*)


on run
	fmGUI_ManageSecurity_OpenEditWindowForSelectedPrivSet({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_OpenEditWindowForSelectedPrivSet(prefs)
	-- version 1.1
	
	try
		set defaultPrefs to {}
		set prefs to prefs & defaultPrefs
		
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set editButton to first button of tab group 1 of window 1 whose name is "Edit…"
			end tell
		end tell
		clickObjectByCoords(editButton)
		
		return true
		
	on error errMsg number errNum
		error "Couldn't fmGUI_ManageSecurity_OpenEditWindowForSelectedPrivSet - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_OpenEditWindowForSelectedPrivSet

--------------------
-- END OF CODE
--------------------

on clickObjectByCoords(buttonRef)
	tell application "htcLib" to clickObjectByCoords(buttonRef)
end clickObjectByCoords
