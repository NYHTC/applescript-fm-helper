-- windowWaitUntil(windowName:"", windowNameTest:"", whichWindow:"", waitCycleDelaySeconds:"", waitCycleMax:"")
-- Daniel A. Shockley, NYHTC
-- keep checking until the frontmost window matches specified criteria.


(*
HISTORY:
	1.3 - 2016-10-20 ( dshockley ): if using "any", then need to do the name tests in a loop for each window.
	1.2 - 2015-09-30 ( eshagdar ): added 'is not test'.
	1.1 - 2014-xx-xx ( dshockley ): added 'is' as synonymous with 'equals'.
	1.0 - 2014-xx-xx ( dshockley ): created.
*)


on run
	delay 1
	windowWaitUntil({whichWindow:"any", windowNameTest:"contains", windowName:"Authenticate"})
end run

--------------------
-- START OF CODE
--------------------

on windowWaitUntil(prefs)
	-- version 1.3, Daniel A. Shockley
	
	set defaultPrefs to {windowName:null, windowNameTest:"contains", whichWindow:"any", waitCycleDelaySeconds:0.5, waitCycleMax:20}
	set prefs to prefs & defaultPrefs
	
	set windowName to windowName of prefs
	set windowNameTest to windowNameTest of prefs
	set whichWindow to whichWindow of prefs
	
	set checkResult to false
	
	repeat waitCycleMax of prefs times
		tell application "System Events"
			if whichWindow is "any" then
				set windowNameList to name of every window of application process "FileMaker Pro Advanced"
			else if whichWindow is "front" then
				set frontWindowName to name of window 1 of application process "FileMaker Pro Advanced"
				set windowNameList to {frontWindowName} -- we are only checking ONE window, but need a list (of one item) for below.
			else -- whichWindow  is window index number:
				set windowIndex to whichWindow as number
				set chosenWindowName to name of window windowIndex of application process "FileMaker Pro Advanced"
				set windowNameList to {chosenWindowName} -- we are only checking ONE window, but need a list (of one item) for below.
			end if
		end tell
		
		
		
		repeat with oneWindowName in windowNameList
			-- BEGIN: loop over one (or more) windows.	
			set oneWindowName to contents of oneWindowName
			
			if windowNameTest is "contains" then
				set checkResult to (oneWindowName contains windowName)
				
			else if windowNameTest is "does not contain" then
				set checkResult to (oneWindowName does not contain windowName)
				
			else if windowNameTest is "equals" then
				set checkResult to (oneWindowName is equal to windowName)
				
			else if windowNameTest is "is" then
				set checkResult to (oneWindowName is equal to windowName)
				
			else if windowNameTest is "starts with" then
				set checkResult to (oneWindowName starts with windowName)
				
			else if windowNameTest is "does not start with" then
				set checkResult to (oneWindowName does not start with windowName)
				
			else if windowNameTest is "ends with" then
				set checkResult to (oneWindowName ends with windowName)
				
			else if windowNameTest is "does not end with" then
				set checkResult to (oneWindowName does not end with windowName)
				
			else if windowNameTest is "is not" then
				set checkResult to (oneWindowName is not windowName)
				
			end if
			
			if checkResult then exit repeat
			
			-- END OF: loop over one (or more) windows.	
		end repeat
		
		
		if checkResult then exit repeat
		
		delay waitCycleDelaySeconds of prefs
		
		-- END OF: waiting loop.			
	end repeat
	
	return checkResult
	
end windowWaitUntil

--------------------
-- END OF CODE
--------------------
