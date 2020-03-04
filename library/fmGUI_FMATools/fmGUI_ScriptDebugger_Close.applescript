-- fmGUI_ScriptDebugger_Close()
-- Daniel A. Shockley, NYHTC
-- Closes FileMaker's Script Debugger window


(*
HISTORY:
	2020-03-04 ( dshockley ): First created. 


REQUIRES:
	fmGUI_AppFrontMost
*)


on run
	fmGUI_ScriptDebugger_Close()
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_ScriptDebugger_Close()
	-- version 2020-03-04
	
	fmGUI_AppFrontMost()
	tell application "System Events"
		tell process "FileMaker Pro Advanced"
			try
				click button 1 of (first window whose name is "Script Debugger")
			end try
			return true
		end tell
	end tell
end fmGUI_ScriptDebugger_Close

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost
