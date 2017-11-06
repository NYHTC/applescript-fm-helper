-- fmGUI_ObjectClick_Button({buttonName:null, buttonRef:null, windowNameThatCloses:null})
-- Erik Shagdar, NYHTC
-- Wrapper method for clicking the ok button and waiting for the window to close


(*
REQUIRES:
	clickObjectByCoords
	fmGUI_AppFrontMost
	fmGUI_NameOfFrontmostWindow
	windowWaitUntil_FrontNotIS
	

HISTORY:
	1.1 - made into a general use handler that can take a button name.
	1.0 - 2017-09-06 ( eshagdar ): created
*)


on run
	
	fmGUI_ObjectClick_Button({})
	
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ObjectClick_Button(prefs)
	-- version 1.1
	
	set defaultPrefs to {buttonName:null, buttonRef:null, windowNameThatCloses:null}
	set prefs to prefs & defaultPrefs
	set buttonRef to ensureObjectRef(buttonRef of prefs)
	set windowNameThatCloses to windowNameThatCloses of prefs
	
	try
		fmGUI_AppFrontMost()
		
		
		-- get frontmost window name if not specified
		if windowNameThatCloses is null then set windowNameThatCloses to fmGUI_NameOfFrontmostWindow()
		
		
		-- use the most commonly found button reference ( unless specified )
		if buttonRef is null then
			tell application "System Events"
				tell process "FileMaker Pro"
					set buttonRef to button (buttonName of prefs) of window 1
				end tell
			end tell
		end if
		
		
		-- click button and wait for it to close
		clickObjectByCoords(buttonRef)
		windowWaitUntil_FrontNotIS({windowName:windowNameThatCloses})
		
		return true
	on error errMsg number errNum
		error "Unable to fmGUI_ObjectClick_Button - " & errMsg number errNum
	end try
end fmGUI_ObjectClick_Button

--------------------
-- END OF CODE
--------------------

on clickObjectByCoords(someObject)
	tell application "htcLib" to clickObjectByCoords(my coerceToString(someObject))
end clickObjectByCoords

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_NameOfFrontmostWindow()
	tell application "htcLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on windowWaitUntil_FrontNotIS(prefs)
	tell application "htcLib" to windowWaitUntil_FrontNotIS(prefs)
end windowWaitUntil_FrontNotIS



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