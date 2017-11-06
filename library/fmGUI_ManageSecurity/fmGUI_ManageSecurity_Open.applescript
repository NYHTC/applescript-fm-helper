-- fmGUI_ManageSecurity_Open({fullAccessAccountName:null, fullAccessPassword:null})
-- Daniel A. Shockley, NYHTC
-- Open Manage Security window


(*
HISTORY:
	1.3 - 2017-10-19 ( eshagdar ): authentication done via sub-hndler. no need to test for credentails since that test happens later on. click menu item via sub-handler. test auth via sub-handler.
	1.2 - 2017-10-17 ( eshagdar ): updated error message. full-access test should run ONLY if not already in manage security.
	1.1 - 2017-06-28 ( eshagdar ): updated for Fm15 ( authenticate up-front )
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_AuthenticateDialog
	fmGUI_ClickMenuItem
	fmGUI_isInFullAccessMode
	fmGUI_NameOfFrontmostWindow*)


on run
	fmGUI_ManageSecurity_Open({fullAccessAccountName:"admin", fullAccessPassword:""})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_Open(prefs)
	-- version 1.3
	
	set defaultPrefs to {fullAccessAccountName:null, fullAccessPassword:null}
	set prefs to prefs & defaultPrefs
	
	set authWindowName to "Enter credentials for"
	
	try
		fmGUI_AppFrontMost()
		if fmGUI_NameOfFrontmostWindow() does not contain "Manage Security for" then
			if not fmGUI_isInFullAccessMode({}) then error "must be logged as full-access" number -1024
			
			
			-- open Manage security
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set manageSecMenuItem to first menu item of menu 1 of menu item "Manage" of menu 1 of menu bar item "File" of menu bar 1 whose name starts with "Security"
				end tell
			end tell
			fmGUI_ClickMenuItem({menuItemRef:manageSecMenuItem})
			
			
			-- enter credentials
			if fmGUI_NameOfFrontmostWindow() starts with authWindowName then fmGUI_AuthenticateDialog({accountName:fullAccessAccountName of prefs, pwd:fullAccessPassword of prefs, windowname:authWindowName})
		end if
		
		return true
	on error errMsg number errNum
		error "Couldn't fmGUI_ManageSecurity_Open - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_Open

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_AuthenticateDialog(prefs)
	tell application "htcLib" to fmGUI_AuthenticateDialog(prefs)
end fmGUI_AuthenticateDialog

on fmGUI_ClickMenuItem(prefs)
	set prefs to {menuItemRef:my coerceToString(menuItemRef of prefs)} & prefs
	tell application "htcLib" to fmGUI_ClickMenuItem(prefs)
end fmGUI_ClickMenuItem

on fmGUI_isInFullAccessMode(prefs)
	tell application "htcLib" to fmGUI_isInFullAccessMode(prefs)
end fmGUI_isInFullAccessMode

on fmGUI_NameOfFrontmostWindow()
	tell application "htcLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "htcLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
