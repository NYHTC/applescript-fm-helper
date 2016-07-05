-- fmGUI_ModeEnsure_Find()
-- Dan Shockley, NYHTC
-- Go to 'Find' mode


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
	
	fmGUI_ModeEnsure_Find()
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_ModeEnsure_Find()
	-- version 1.0
	
	try
		fmGUI_ModeSelect("Find")
		
	on error errMsg number errNum
		error "Couldn't ensure in Browse Mode - " & errMsg number errNum
	end try
	
	
end fmGUI_ModeEnsure_Find



--------------------
-- END OF CODE
--------------------

on fmGUI_ModeSelect(modeToSelect)
	tell helper to fmGUI_ModeSelect(modeToSelect)
end fmGUI_ModeSelect
