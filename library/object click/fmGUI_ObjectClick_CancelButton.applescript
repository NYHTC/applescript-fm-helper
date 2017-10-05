-- fmGUI_ObjectClick_CancelButton({buttonRef:null, windowNameThatCloses:null})
-- Erik Shagdar, NYHTC
-- Wrapper method for clicking the cancel button and waiting for the window to close


(*
REQUIRES:
	clickObjectByCoords
	databaseNameOfFrontWindow
	fmGUI_AppFrontMost
	windowWaitUntil
	

HISTORY:
	1.0 - 2017-09-07 ( eshagdar ): created
*)


on run
	
	fmGUI_ObjectClick_CancelButton({})
	
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ObjectClick_CancelButton(prefs)
	-- version 1.1
	
	set defaultPrefs to {buttonRef:null, windowNameThatCloses:null}
	set prefs to prefs & defaultPrefs
	set buttonRef to ensureObjectRef(buttonRef of prefs)
	set windowNameThatCloses to windowNameThatCloses of prefs
	
	try
		fmGUI_AppFrontMost()
		
		
		-- get frontmost window name if not specified
		if windowNameThatCloses is null then
			tell application "System Events"
				tell process "FileMaker Pro"
					set windowNameThatCloses to name of window 1
				end tell
			end tell
		end if
		
		
		-- use the most commonly found button reference ( unless specified )
		if buttonRef is null then
			tell application "System Events"
				tell process "FileMaker Pro"
					set buttonRef to button "Cancel" of window 1
				end tell
			end tell
		end if
		
		
		-- click button and wait for it to close
		clickObjectByCoords(buttonRef)
		windowWaitUntil({windowName:windowNameThatCloses, windowNameTest:"is not", whichWindow:"front"})
		
		return true
	on error errMsg number errNum
		error "Unable to fmGUI_ObjectClick_CancelButton - " & errMsg number errNum
	end try
end fmGUI_ObjectClick_CancelButton

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on clickObjectByCoords(someObject)
	tell application "htcLib" to clickObjectByCoords(my coerceToString(someObject))
end clickObjectByCoords

on windowWaitUntil(prefs)
	tell application "htcLib" to windowWaitUntil(prefs)
end windowWaitUntil



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "htcLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString



on ensureObjectRef(someObjectRef)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a ensureObjectRef into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set ensureObjPath to (container of (container of (path to me)) as text) & "text parsing:ensureObjectRef.applescript"
	set codeEnsureObj to read file ensureObjPath as text
	tell application "htcLib" to set codeEnsureObj to "script codeEnsureObj " & return & getTextBetween({sourceText:codeEnsureObj, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeEnsureObj"
	set codeEnsureObj to run script codeEnsureObj
	tell codeEnsureObj to ensureObjectRef(someObjectRef)
end ensureObjectRef
