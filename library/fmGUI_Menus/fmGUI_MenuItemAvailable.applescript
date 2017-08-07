-- fmGUI_MenuItemAvailable({menuItemRef:null, maxTimeoutSec:60, checkFrequencySec:0.5})
-- Erik Shagdar, NYHTC
-- wait until the specified menu item is available


(*
HISTORY:
	1.0 - 2016-10-18 ( eshagdar ): created


REQUIRES:
	fmGUI_AppFrontMost
*)


on run
	tell application "System Events"
		tell application process "FileMaker Pro Advanced"
			set copyMenuItem to menu item "Copy" of menu 1 of menu bar item "Edit" of menu bar 1
		end tell
	end tell
	--set copyMenuItem to coerceToString(copyMenuItem)
	fmGUI_MenuItemAvailable({menuItemRef:copyMenuItem})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_MenuItemAvailable(prefs)
	--version 1.0, Erik Shagdar
	
	fmGUI_AppFrontMost()
	
	set defaultPrefs to {menuItemRef:null, maxTimeoutSec:60, checkFrequencySec:0.5}
	set prefs to prefs & defaultPrefs
	set menuItemRef to ensureObjectRef(menuItemRef of prefs)
	set menuItemAvailable to false
	
	try
		if menuItemRef is null then error "menuItemRef not specified" number -1024
		
		repeat ((maxTimeoutSec of prefs) / (checkFrequencySec of prefs) as integer) times
			try
				if exists menuItemRef then
					set menuItemAvailable to true
					exit repeat
				end if
			end try
		end repeat
		
		return menuItemAvailable
		
	on error errMsg number errNum
		error "Couldn't fmGUI_MenuItemAvailable - " & errMsg number errNum
	end try
	
end fmGUI_MenuItemAvailable

--------------------
-- END OF CODE
--------------------
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



on ensureObjectRef(someObjectRef)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a ensureObjectRef into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set ensureObjPath to (container of (container of (path to me)) as text) & "text parsing:ensureObjectRef.applescript"
	set codeEnsureObj to read file ensureObjPath as text
	tell application "htcLib" to set codeEnsureObj to "script codeEnsureObj " & return & getTextBetween({sourceText:codeEnsureObj, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeEnsureObj"
	set codeEnsureObj to run script codeEnsureObj
	tell codeEnsureObj to ensureObjectRef(someObjectRef)
end ensureObjectRef


