-- fmGUI_ManageScripts_ScriptListFocus({})
-- NYHTC
-- Focus script workspace


(*
HISTORY
	1.2 - 2017-01-12 ( eshagdar ): updated for FM15 - list of scripts is now in a splitter group.
	1.1 - 
	1.0 - 201x-xx-xx ( xxxxx ): first created


REQUIRES:
	fmGUI_ManageScripts_Open
*)


on run
	fmGUI_ManageScripts_ScriptListFocus({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageScripts_ScriptListFocus(prefs)
	-- version 1.2
	
	try
		fmGUI_ManageScripts_Open({})
		
		set windowNamePrefix to "Script Workspace"
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set focused of (outline 1 of scroll area 1 of splitter group 1 of window 1) to true
			end tell
		end tell
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageScripts_Open - " & errMsg number errNum
	end try
end fmGUI_ManageScripts_ScriptListFocus

--------------------
-- END OF CODE
--------------------

on fmGUI_ManageScripts_Open(prefs)
	tell application "htcLib" to fmGUI_ManageScripts_Open(prefs)
end fmGUI_ManageScripts_Open
