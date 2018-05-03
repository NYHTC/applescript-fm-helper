-- fmGUI_ModeEnsure_Layout()
-- Dan Shockley, NYHTC
-- Go to 'Layout' mode


(*
HISTORY:
	1.0 - created
*)


on run
	fmGUI_ModeEnsure_Layout()
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ModeEnsure_Layout()
	-- version 1.0
	
	try
		fmGUI_ModeSelect("Layout")
		
	on error errMsg number errNum
		error "Couldn't ensure in Browse Mode - " & errMsg number errNum
	end try
	
end fmGUI_ModeEnsure_Layout


--------------------
-- END OF CODE
--------------------

on fmGUI_ModeSelect(modeToSelect)
	tell application "htcLib" to fmGUI_ModeSelect(modeToSelect)
end fmGUI_ModeSelect
