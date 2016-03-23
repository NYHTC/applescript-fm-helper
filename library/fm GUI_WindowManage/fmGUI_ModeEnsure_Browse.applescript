-- fmGUI_ModeEnsure_Browse()
-- Dan Shockley, NYHTC
-- Go to 'Browse' mode


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
	
	fmGUI_ModeEnsure_Browse()
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_ModeEnsure_Browse()
	-- version 1.0
	
	try
		fmGUI_ModeSelect("Browse")
		
	on error errMsg number errNum
		error "Couldn't ensure in Browse Mode - " & errMsg number errNum
	end try
	
	
end fmGUI_ModeEnsure_Browse



--------------------
-- END OF CODE
--------------------

on fmGUI_ModeSelect(modeToSelect)
	tell helper to fmGUI_ModeSelect(modeToSelect)
end fmGUI_ModeSelect
