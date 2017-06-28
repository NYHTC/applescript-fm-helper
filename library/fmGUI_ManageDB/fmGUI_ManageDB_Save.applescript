-- fmGUI_ManageDB_Save({notInManageDbIsError:""})
-- Daniel A. Shockley, NYHTC
-- Close ( and save ) FileMaker's 'Manage Database' window.


(*
HISTORY:
	1.4 - 2016-06-29 ( eshagdar ): wait until the close/save is complete
	1.3 - 
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageDb_RelationshipsTab
*)


on run
	fmGUI_ManageDB_Save({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDB_Save(prefs)
	-- version 1.4
	
	set defaultPrefs to {notInManageDbIsError:true}
	
	set prefs to prefs & defaultPrefs
	
	
	set manageDbWindowNamePrefix to "Manage Database for"
	set waitCycleDelaySeconds to 10 -- seconds
	set waitSaveTotalSeconds to 60 * minutes --seconds
	
	set waitCycleMax to round (waitSaveTotalSeconds / waitCycleDelaySeconds) rounding down
	
	try
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				if name of window 1 starts with manageDbWindowNamePrefix then
					try
						set manageDbWindowName to name of window 1
						click (button "OK" of window 1)
						delay 1 -- let click register.
						-- will continue below to wait for window to close
						
					on error errMsg number errNum
						error "Couldn't save Manage Database - " & errMsg number errNum
					end try
				else
					if notInManageDbIsError of prefs then
						error "Manage Database window wasn't open, so nothing to close." number 1024
					else
						-- Not in Manage Database, but that is OK.
						return true
					end if
				end if
				
			end tell
			
			my windowWaitUntil({windowName:manageDbWindowName, windowNameTest:"does not contain", whichWindow:"any", waitCycleDelaySeconds:waitCycleDelaySeconds, waitCycleMax:waitCycleMax})
			
			delay 1 -- let normal window come to front. 
			
			return true
			
		end tell
		
		
	on error errMsg number errNum
		error "Couldn't save Manage Database - " & errMsg number errNum
	end try
	
end fmGUI_ManageDB_Save

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on windowWaitUntil(prefs)
	tell application "htcLib" to windowWaitUntil(prefs)
end windowWaitUntil
