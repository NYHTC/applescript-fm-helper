-- fmGUI_ManageSecurity_Save({fullAccessAccountName:null, fullAccessPassword:null})
-- Daniel A. Shockley, NYHTC
-- Close ( and save ) Manage Security


(*
HISTORY:
	1.4 - 2017-07-14 ( eshagdar ): renamed params: fullAccount -> fullAccessAccountName and fullPassword -> fullAccessPassword. wait until windows are gone.
	1.3 - 2016-07-20 ( eshagdar ): converted params from list to record
	1.2 - parameter as 'prefs' list for now, instead of two parameters.
	1.1 - 
	1.0 - created


REQUIRES:
	clickObjectByCoords
	fmGUI_AppFrontMost
*)


on run
	fmGUI_ManageSecurity_Save({fullAccessAccountName:"admin", fullAccessPassword:""})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_Save(prefs)
	--version 1.4
	
	set defaulPrefs to {fullAccessAccountName:null, fullAccessPassword:null}
	set prefs to prefs & defaulPrefs
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				if name of window 1 does not contain "Manage Security for" then error "Not in main Manage Security window." number 1024
				set okButton to button "OK" of window 1
			end tell
		end tell
		
		-- save security changes
		clickObjectByCoords(okButton)
		delay 0.5
		
		
		-- confirm with full access account
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				if name of window 1 is "Confirm Full access Login" then
					set value of text field "Full Access Account:" of window 1 to fullAccessAccountName of prefs
					set value of text field "Password:" of window 1 to fullAccessPassword of prefs
				end if
			end tell
		end tell
		clickObjectByCoords(okButton)
		
		
		-- wait until window is gone
		windowWaitUntil({whichWindow:"front", windowNameTest:"is not", windowName:"Confirm Full access Login"})
		windowWaitUntil({whichWindow:"front", windowNameTest:"does not start with", windowName:"Manage Security"})
		
		return true
	on error errMsg number errNum
		error "Couldn't save Manage Security - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_Save

--------------------
-- END OF CODE
--------------------

on clickObjectByCoords(prefs)
	tell application "htcLib" to clickObjectByCoords(my coerceToString(prefs))
end clickObjectByCoords

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "htcLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString

