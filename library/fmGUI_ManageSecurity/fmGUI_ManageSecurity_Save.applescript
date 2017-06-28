-- fmGUI_ManageSecurity_Save({fullAccount:null, fullPassword:null})
-- Daniel A. Shockley, NYHTC
-- Close ( and save ) Manage Security


(*
HISTORY:
	1.3 - 2016-07-20 ( eshagdar ): converted params from list to record
	1.2 - parameter as 'prefs' list for now, instead of two parameters.
	1.1 - 
	1.0 - created


REQUIRES:
	clickObjectByCoords
	fmGUI_AppFrontMost
*)


on run
	fmGUI_ManageSecurity_Save({fullAccount:"masteAccountName", fullPassword:"someAwesomePassword"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_Save(prefs)
	--version 1.3
	
	set defaulPrefs to {fullAccount:null, fullPassword:null}
	set prefs to prefs & defaulPrefs
	
	try
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				
				if name of window 1 does not contain "Manage Security for" then
					error "Not in main Manage Security window." number 1024
				end if
				
				-- SAVE edits: click OK
				repeat 5 times
					-- give a bit of extra time, if needed:
					my clickObjectByCoords(first button of window 1 whose name is "OK")
					if name of window 1 does not start with "Manage Security for" then
						-- finished closing the window, can leave.
						exit repeat
					end if
					delay 1
				end repeat
				
				delay 0.5
				
				if name of window 1 is "Confirm Full access Login" then
					set value of text field "Full Access Account:" of window 1 to fullAccount of prefs
					set value of text field "Password:" of window 1 to fullPassword of prefs
					
					my clickObjectByCoords(first button of window 1 whose name is "OK")
					delay 0.5
				end if
				
				
			end tell
		end tell
	on error errMsg number errNum
		error "Couldn't save Manage Security - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_Save

--------------------
-- END OF CODE
--------------------

on clickObjectByCoords(prefs)
	tell application "htcLib" to clickObjectByCoords(prefs)
end clickObjectByCoords

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost
