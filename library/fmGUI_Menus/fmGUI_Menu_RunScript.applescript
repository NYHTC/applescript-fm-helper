-- fmGUI_Menu_RunScript({})
-- Erik Shagdar, NYHTC
-- Run FM script from the menu


(*
HISTORY:
	1.0 - 2017-11-10 ( eshagdar ): created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ClickMenuItem
*)


on run
	fmGUI_Menu_RunScript({scriptName:"Full Access Switch OFF", scriptFolderList:{"Shortcuts"}})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_Menu_RunScript(prefs)
	-- version 1.0
	
	try
		set defaultPrefs to {scriptName:null, scriptFolderList:{}}
		set prefs to prefs & defaultPrefs
		
		
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell process "FileMaker Pro"
				
				-- put script workspace in the background if it's the frontmost window. we now will have access to the scripts menu
				try
					set scriptsMenu to menu "Scripts" of menu bar item "Scripts" of menu bar 1
				on error
					perform action "AXRaise" of (first window whose name does not start with "Script Workspace" and role description is "standard window")
				end try
				
				
				-- iterate through list of script folders, then get the script
				set scriptsMenu to menu "Scripts" of menu bar item "Scripts" of menu bar 1
				try
					repeat with oneParentFolderName in scriptFolderList of prefs
						set oneParentFolderName to contents of oneParentFolderName
						set scriptsMenu to menu oneParentFolderName of menu item oneParentFolderName of scriptsMenu
					end repeat
				end try
				set scriptItem to first menu item of scriptsMenu whose name contains (scriptName of prefs)
				
			end tell
		end tell
		
		return fmGUI_ClickMenuItem({menuItemRef:scriptItem})
	on error errMsg number errNum
		error "Couldn't fmGUI_Menu_RunScript - " & errMsg number errNum
	end try
end fmGUI_Menu_RunScript

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
