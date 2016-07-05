-- windowWaitUntil(windowName:"", windowNameTest:"", whichWindow:"", waitCycleDelaySeconds:"", waitCycleMax:"")
-- Daniel A. Shockely, NYHTC
-- keep checking until the frontmost window matches specified criteria.


(*
HISTORY:
	1.2 - 2015-09-30 ( eshagdar ): added 'is not test'
	1.1 - added 'is' as synonymous with 'equals'
	1.0 - created
*)


on run
	windowWaitUntil({windowName:"Times Square"})
end run


--------------------
-- START OF CODE
--------------------

on windowWaitUntil(prefs)
	-- version 1.2
	
	set defaultPrefs to {windowName:null, windowNameTest:"contains", whichWindow:"any", waitCycleDelaySeconds:0.5, waitCycleMax:20}
	set prefs to prefs & defaultPrefs
	
	set windowName to windowName of prefs
	set windowNameTest to windowNameTest of prefs
	set whichWindow to whichWindow of prefs
	
	set checkResult to false
	
	repeat waitCycleMax of prefs times
		tell application "System Events"
			if whichWindow is "any" then
				set windowNameCheck to name of every window of application process "FileMaker Pro Advanced"
			else if whichWindow is "front" then
				set windowNameCheck to name of window 1 of application process "FileMaker Pro Advanced"
			else -- whichWindow  is window index number:
				set windowIndex to whichWindow as number
				set windowNameCheck to name of window windowIndex of application process "FileMaker Pro Advanced"
			end if
		end tell
		
		
		if windowNameTest is "contains" then
			set checkResult to (windowNameCheck contains windowName)
			
		else if windowNameTest is "does not contain" then
			set checkResult to (windowNameCheck does not contain windowName)
			
		else if windowNameTest is "equals" then
			set checkResult to (windowNameCheck is equal to windowName)
			
		else if windowNameTest is "is" then
			set checkResult to (windowNameCheck is equal to windowName)
			
		else if windowNameTest is "starts with" then
			set checkResult to (windowNameCheck starts with windowName)
			
		else if windowNameTest is "does not start with" then
			set checkResult to (windowNameCheck does not start with windowName)
			
		else if windowNameTest is "ends with" then
			set checkResult to (windowNameCheck ends with windowName)
			
		else if windowNameTest is "does not end with" then
			set checkResult to (windowNameCheck does not end with windowName)
		else if windowNameTest is "is not" then
			set checkResult to (windowNameCheck is not windowName)
			
		end if
		
		if checkResult then exit repeat
		
		delay waitCycleDelaySeconds of prefs
		
		
	end repeat
	
	return checkResult
	
end windowWaitUntil

--------------------
-- END OF CODE
--------------------
