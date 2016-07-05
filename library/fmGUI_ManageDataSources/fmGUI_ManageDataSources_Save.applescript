-- fmGUI_ManageDataSources_Save(notInManageWindowIsError:null)
-- Daniel A. Shockley, NYHTC
-- Close ( and Save ) Manage Data Sources


(*
HISTORY:
	1.4 -
	1.3 - 
	1.2 - 
	1.1 - 
	1.0 - created


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
	
	fmGUI_ManageDataSources_Save({})
end run



--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDataSources_Save(prefs)
	-- version 1.4
	
	set defaultPrefs to {notInManageWindowIsError:true}
	
	set prefs to prefs & defaultPrefs
	
	
	set manageWindowNamePrefix to "Manage External Data Sources"
	set waitCycleDelaySeconds to 5 -- seconds
	set waitSaveTotalSeconds to 5 * minutes --seconds
	
	set waitCycleMax to round (waitSaveTotalSeconds / waitCycleDelaySeconds) rounding down
	
	try
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				my fmGUI_AppFrontMost()
				
				if name of window 1 starts with manageWindowNamePrefix then
					try
						set manageWindowName to name of window 1
						click (button "OK" of window 1)
						delay 1 -- let click register.
						-- will continue below to wait for window to close
						
					on error errMsg number errNum
						error "Couldn't save Manage Data Sources - " & errMsg number errNum
					end try
				else
					if notInManageWindowIsError of prefs then
						error "Manage Data Source window wasn't open, so nothing to close." number 1024
					else
						-- Not in Manage Data Source, but that is OK.
						return true
					end if
				end if
				
			end tell
			
			
			my windowWaitUntil({windowName:manageWindowName, windowNameTest:"does not contain", whichWindow:"any", waitCycleDelaySeconds:waitCycleDelaySeconds, waitCycleMax:waitCycleMax})
			
			
			delay 1 -- let normal window come to front. 
			
			return true
			
			
		end tell
	on error errMsg number errNum
		error "Couldn't save Manage Data Sources - " & errMsg number errNum
	end try
	
end fmGUI_ManageDataSources_Save

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on windowWaitUntil(prefs)
	tell helper to windowWaitUntil(prefs)
end windowWaitUntil
