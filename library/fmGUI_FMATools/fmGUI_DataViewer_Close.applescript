-- fmGUI_DataViewer_Close()
-- Daniel A. Shockley, NYHTC
-- Closes FileMaker's Inspector window


(*
HISTORY:
	1.1 - 2016-08-29 ( eshagdar ): return a result. added documentation.
	1.0 - 201x-xx-xx ( dshockley ): first created


REQUIRES:
	fmGUI_AppFrontMost
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	fmGUI_DataViewer_Close()
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_DataViewer_Close()
	-- version 1.1
	
	fmGUI_AppFrontMost()
	tell application "System Events"
		tell application process "FileMaker Pro Advanced"
			try
				click button 1 of (first window whose name is "Data Viewer")
			end try
			return true
		end tell
	end tell
end fmGUI_DataViewer_Close

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost
