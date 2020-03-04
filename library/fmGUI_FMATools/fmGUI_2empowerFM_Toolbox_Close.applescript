-- fmGUI_2empowerFM_Toolbox_Close()
-- Daniel A. Shockley, NYHTC
-- Closes floating 2empowerFM Toolbox utility window. 


(*
HISTORY:
	2020-03-04 ( dshockley ): first created


REQUIRES:
	fmGUI_AppFrontMost
*)


on run
	fmGUI_2empowerFM_Toolbox_Close()
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_2empowerFM_Toolbox_Close()
	-- version 2020-03-04
	
	fmGUI_AppFrontMost()
	tell application "System Events"
		tell process "FileMaker Pro Advanced"
			try
				click button 1 of (first window whose name is "2empowerFM Toolbox")
				-- gets an error even if button exists, but still works. 
			end try
			return true
		end tell
	end tell
end fmGUI_2empowerFM_Toolbox_Close

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost
