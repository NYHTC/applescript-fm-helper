-- fmGUI_fullAccessToggle({ensureMode:null, script_enterFullAccess: null, script_leaveFullAccess: null, scriptFolderName:null, fullAccessAccountName:null, fullAccessPassword:null, userAccountName:null, userPassword:null})
-- version 1.1, Erik Shagdar, NYHTC
-- toggles ( or ensures ) the user is logged in with either a full access or user account.


(*
HISTORY:
	2017-10-18 ( eshagdar ): added debugging logging. added parenthesis around prefs value extraction.
	2017-10-17 ( eshagdar ): added ensureMode, script_enterFullAccess, script_leaveFullAccess params. fallback to running toggle script via scripts menu if FM privSet doesn't allow applescript events.
	2017-10-06 ( eshagdar ): created

REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ClickMenuItem
	fmGUI_isInFullAccessMode
	fmGUI_Relogin
	xor
*)


property debugMode : true
property scriptName : ""


on run
	set scriptName to name of me
	fmGUI_fullAccessToggle({ensureMode:"user", fullAccessAccountName:"admin", fullAccessPassword:"", userAccountName:"user", userPassword:""})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_fullAccessToggle(prefs)
	-- version 1.1, Erik Shagdar, NYHTC
	
	try
		set defaultPrefs to {ensureMode:null, script_enterFullAccess:"Full Access Switch ON", script_leaveFullAccess:"Full Access Switch OFF", scriptFolderName:"Shortcuts", fullAccessAccountName:null, fullAccessPassword:null, userAccountName:null, userPassword:null}
		set prefs to prefs & defaultPrefs
		
		set startInFullAccess to fmGUI_isInFullAccessMode({})
		
		if ensureMode of prefs is equal to "user" then
			set ensureUserMode to true
		else if ensureMode of prefs is equal to "full" then
			set ensureUserMode to false
		else
			set ensureUserMode to startInFullAccess
		end if
		if debugMode then logConsole(scriptName, "fmGUI_fullAccessToggle ensureUserMode: " & ensureUserMode)
		
		
		if ensureUserMode then
			-- LEAVE full access
			
			tell application "System Events"
				tell process "FileMaker Pro"
					set windowNames to name of every window
				end tell
			end tell
			
			if windowNames contains "Full Access" then
				try
					tell application "FileMaker Pro Advanced"
						do script (first FileMaker script whose name contains (script_leaveFullAccess of prefs))
						if debugMode then logConsole(scriptName, "fmGUI_fullAccessToggle ran script: " & script_leaveFullAccess)
					end tell
				on error
					-- privSet doesn't allow applescript events, so try to run via menu
					if debugMode then logConsole(scriptName, "fmGUI_fullAccessToggle failed to run script via app, trying via menu")
					tell application "System Events"
						tell process "FileMaker Pro"
							-- the scripts should inside a 'Shortcuts' folder
							set menuItem_toggleAccess to first menu item of menu (scriptFolderName of prefs) of menu item (scriptFolderName of prefs) of menu "Scripts" of menu bar item "Scripts" of menu bar 1 whose name contains (script_leaveFullAccess of prefs)
						end tell
					end tell
					fmGUI_ClickMenuItem({menuItemRef:menuItem_toggleAccess})
				end try
				fmGUI_Relogin({accountName:userAccountName of prefs, pwd:userPassword of prefs})
			end if
			
		else if startInFullAccess is false then
			-- enter full access			
			
			try
				tell application "FileMaker Pro Advanced"
					do script (first FileMaker script whose name contains (script_enterFullAccess of prefs))
					if debugMode then logConsole(scriptName, "fmGUI_fullAccessToggle ran script: " & script_enterFullAccess)
				end tell
			on error
				-- privSet doesn't allow applescript events, so try to run via menu
				if debugMode then logConsole(scriptName, "fmGUI_fullAccessToggle failed to run script via app, trying via menu")
				tell application "System Events"
					tell process "FileMaker Pro"
						-- the scripts should inside a 'Shortcuts' folder
						set menuItem_toggleAccess to first menu item of menu (scriptFolderName of prefs) of menu item (scriptFolderName of prefs) of menu "Scripts" of menu bar item "Scripts" of menu bar 1 whose name contains (script_enterFullAccess of prefs)
					end tell
				end tell
				fmGUI_ClickMenuItem({menuItemRef:menuItem_toggleAccess})
			end try
			
			if debugMode then logConsole(scriptName, "fmGUI_fullAccessToggle about to re-login")
			fmGUI_Relogin({accountName:fullAccessAccountName of prefs, pwd:fullAccessPassword of prefs})
			
		end if
		
		set endInFullAccess to fmGUI_isInFullAccessMode({})
		set modeSwitch to xor(startInFullAccess, endInFullAccess)
		if endInFullAccess then
			set exitMode to "full"
		else
			set exitMode to "user"
		end if
		
		return {modeSwitch:modeSwitch, exitMode:exitMode}
	on error errMsg number errNum
		error "unable to fullAccessToggle - " & errMsg number errNum
	end try
end fmGUI_fullAccessToggle

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

on fmGUI_isInFullAccessMode(prefs)
	tell application "htcLib" to fmGUI_isInFullAccessMode(prefs)
end fmGUI_isInFullAccessMode

on fmGUI_Relogin(prefs)
	tell application "htcLib" to fmGUI_Relogin(prefs)
end fmGUI_Relogin

on logConsole(processName, consoleMsg)
	tell application "htcLib" to logConsole(processName, consoleMsg)
end logConsole

on xor(firstBoolean, secondBoolean)
	tell application "htcLib" to xor(firstBoolean, secondBoolean)
end xor



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "htcLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString


