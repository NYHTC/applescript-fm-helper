-- fmGUI_ClickMenuItem({menuItemRef:null})
-- Erik Shagdar, NYHTC
-- click on a menu item in FileMaker


(*
HISTORY:
	1.0 - 2016-10-18 ( eshagdar ): first created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_menuItemAvailable
*)


on run
	tell application "System Events"
		tell application process "FileMaker Pro Advanced"
			set frontmost to true
			set copyMenuItem to menu item "Copy" of menu 1 of menu bar item "Edit" of menu bar 1
		end tell
	end tell
	set copyMenuItem to coerceToString(copyMenuItem)
	fmGUI_ClickMenuItem({menuItemRef:copyMenuItem})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ClickMenuItem(prefs)
	-- version 1.0, Erik Shagdar
	
	set defaultPrefs to {menuItemRef:null}
	set prefs to prefs & defaultPrefs
	set menuItemRef to ensureObjectRef(menuItemRef of prefs)
	
	try
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				click menuItemRef
			end tell
		end tell
		return fmGUI_menuItemAvailable(prefs)
		
	on error errMsg number errNum
		error "Unable to fmGUI_ClickMenuItem - " & errMsg number errNum
	end try
end fmGUI_ClickMenuItem

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_menuItemAvailable(prefs)
	set prefs to {menuItemRef:my coerceToString(menuItemRef of prefs)} & prefs
	tell application "htcLib" to fmGUI_menuItemAvailable(prefs)
end fmGUI_menuItemAvailable



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


