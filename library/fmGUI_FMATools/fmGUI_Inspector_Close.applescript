-- fmGUI_Inspector_Close()
-- Daniel A. Shockley, NYHTC
-- Closes FileMaker's Inspector window


(*
HISTORY:
	1.2 - 2016-09-16 ( eshagdar ): wait until the window no longer exists.
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
	
	fmGUI_Inspector_Close()
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_Inspector_Close()
	-- version 1.2
	
	fmGUI_AppFrontMost()
	tell application "System Events"
		tell application process "FileMaker Pro Advanced"
			-- try the click twice in case the first only brings window to front.
			try
				set index of (first window whose name is "Inspector") to 1
			end try
			try
				click button 1 of (first window whose name is "Inspector")
			end try
			
			--wait until the window no longer exists ( or we time out )
			repeat 20 times
				try
					get first window whose name is "Inspector"
				on error
					exit repeat
				end try
				delay 0.5
			end repeat
			
			return true
		end tell
	end tell
end fmGUI_Inspector_Close

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost
