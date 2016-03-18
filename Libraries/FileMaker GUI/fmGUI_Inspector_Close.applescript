-- fmGUI_Inspector_Close()
-- Dan Shockley, NYHTC
-- Closes FileMaker's Inspector window


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
	
	fmGUI_Inspector_Close()
end run



--------------------
-- START OF CODE
--------------------

on fmGUI_Inspector_Close()
	-- version 1.0, Dan Shockley
	
	tell application "System Events"
		tell application process "FileMaker Pro Advanced"
			my fmGUI_AppFrontMost()
			-- try the click twice in case the first only brings window to front.
			try
				set index of (first window whose name is "Inspector") to 1
			end try
			try
				click button 1 of (first window whose name is "Inspector")
			end try
			try
				click button 1 of (first window whose name is "Inspector")
			end try
		end tell
	end tell
end fmGUI_Inspector_Close

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost
