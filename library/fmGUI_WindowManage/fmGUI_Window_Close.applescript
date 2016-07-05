-- fmGUI_Window_Close(someWindowName)
-- Daniel A. Shockley, NYHTC
-- Closes specify window name


(*
HISTORY:
	1.1 - 
	1.0 - created
*)


on run
	fmGUI_Window_Close("NameOfWindowToClose")
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_Window_Close(someWindowName)
	-- version 1.1
	
	tell application id "com.filemaker.client.advanced12"
		
		close window someWindowName
		
	end tell
	
	return true
	
end fmGUI_Window_Close

--------------------
-- END OF CODE
--------------------
