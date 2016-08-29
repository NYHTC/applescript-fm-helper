-- fmGUI_Inspector_Ensure()
-- Daniel A. Shockley, NYHTC
-- Opens FileMaker's Inspector window


(*
HISTORY:
	1.1 - 2016-08-29 ( eshagdar ): added documentation.
	1.0 - 201x-xx-xx ( dshockley ): first created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ModeEnsure_Layout
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	fmGUI_Inspector_Ensure()
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_Inspector_Ensure()
	-- version 1.1
	
	try
		fmGUI_ModeEnsure_Layout()
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				if not (exists (first window whose name contains "Inspector")) then
					click (first menu item of menu 1 of menu bar item "View" of menu bar 1 whose name is "Inspector")
				end if
				return true
			end tell
		end tell
	on error errMsg number errNum
		error "Couldn't open Inspector - " & errMsg number errNum
	end try
	
end fmGUI_Inspector_Ensure

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ModeEnsure_Layout()
	tell helper to fmGUI_ModeEnsure_Layout()
end fmGUI_ModeEnsure_Layout
