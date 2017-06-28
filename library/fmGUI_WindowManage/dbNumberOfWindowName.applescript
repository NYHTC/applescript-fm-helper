-- dbNumberOfWindowName(someWindowName)
-- Daniel A. Shockley
-- return the number of the specified window


(*
HISTORY:
	1.0 - created
*)


on run
	tell application "FileMaker Pro Advanced" to set frontmostWindowName to name of window 1
	dbNumberOfWindowName(frontmostWindowName)
end run

--------------------
-- START OF CODE
--------------------

on dbNumberOfWindowName(someWindowName)
	-- version 1.0
	
	tell application id "com.filemaker.client.advanced12"
		
		set dbCount to count of every database
		repeat with dbNum from 1 to dbCount
			try
				-- might not HAVE any windows:
				set dbWindows to name of windows of database dbNum
				if dbWindows contains someWindowName then return dbNum
			end try
		end repeat
		
		error "Could not find database number of window name specified: " & someWindowName number 1024
		
	end tell
	
end dbNumberOfWindowName

--------------------
-- END OF CODE
--------------------
