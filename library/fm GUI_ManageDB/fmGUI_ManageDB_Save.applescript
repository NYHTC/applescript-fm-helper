-- fmGUI_ManageDB_Save({notInManageDbIsError:""})
-- Daniel A. Shockley, NYHTC
-- Close ( and save ) FileMaker's 'Manage Database' window.


(*
HISTORY:
	1.4 - 
	1.0 - created
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
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
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				
				my fmGUI_AppFrontMost()
				
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
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on windowWaitUntil(prefs)
	tell helper to windowWaitUntil(prefs)
end windowWaitUntil
