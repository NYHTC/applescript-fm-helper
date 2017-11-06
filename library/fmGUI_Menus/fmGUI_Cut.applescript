-- fmGUI_Cut({})
-- Erik Shagdar, NYHTC
-- Cut the selected objects in the current window in FileMaker


(*
HISTORY:
	1.0 - 2017-08-07 ( eshagdar ): copied logic from fmGUI_SelectAll


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_Wait_MenuItemAvailable
*)


on run
	fmGUI_Cut()
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_Cut()
	-- version 1.1, Erik Shagdar
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set cutMenuItem to first menu item of menu 1 of menu bar item "Edit" of menu bar 1 whose name is "Cut"
			end tell
		end tell
		
		return fmGUI_ClickMenuItem({menuItemRef:cutMenuItem})
	on error errMsg number errNum
		error "Couldn't fmGUI_SelectAll - " & errMsg number errNum
	end try
end fmGUI_Cut

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ClickMenuItem(prefs)
	set prefs to {menuItemRef:my coerceToString(menuItemRef of prefs)} & prefs
	tell application "htcLib" to fmGUI_ClickMenuItem(prefs)
end fmGUI_ClickMenuItem



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "htcLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
