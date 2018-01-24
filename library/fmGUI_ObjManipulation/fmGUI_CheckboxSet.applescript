-- fmGUI_CheckboxSet({objRef:null, objValue:null})
-- Dan Shockley, NYHTC
-- (de)select checkbox object


(*
HISTORY:
	1.1 - 2017-09-05 ( eshagdar ): converted prefs to record.
	1.0 - created

*)


on run
	tell application "System Events"
		tell process "FileMaker Pro"
			set frontmost to true
			set checkboxRef to checkbox "Item Name:" of window 1
		end tell
	end tell
	
	fmGUI_CheckboxSet({objRef:checkboxRef, objValue:0})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_CheckboxSet(prefs)
	-- version 1.1
	
	set defaultPrefs to {objRef:null, objValue:null}
	set prefs to prefs & defaultPrefs
	set objRef to ensureObjectRef(objRef of prefs)
	set objValue to objValue of prefs
	
	try
		using terms from application "System Events"
			if objValue is not null then
				if value of objRef is not objValue then
					my clickObjectByCoords(objRef)
				end if
				return true
			end if
		end using terms from
		
		return false
	on error errMsg number errNum
		error "Unable to fmGUI_CheckboxSet ( couldn't select '" & objValue & "' for checkbox ) - " & errMsg number errNum
	end try
end fmGUI_CheckboxSet

--------------------
-- END OF CODE
--------------------

on clickObjectByCoords(objRef)
	tell application "htcLib" to clickObjectByCoords(my coerceToString(objRef))
end clickObjectByCoords



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
