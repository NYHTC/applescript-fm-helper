-- fmGUI_AuthenticateDialog({accountName:null, pwd:null, windowName:null})
-- Erik Shagdar, NYHTC
-- authenticate with the provided credentials


(*
REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_NameOfFrontmostWindow
	fmGUI_ObjectClick_OkButton
	fmGUI_TextFieldSet
	windowWaitUntil
	windowWaitUntil_FrontNotIS
	

HISTORY:
	1.0 - 2017-10-07 ( eshagdar ): created
*)


on run
	
	fmGUI_AuthenticateDialog({accountName:"admin", pwd:"", windowName:"Authenticate"})
	
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_AuthenticateDialog(prefs)
	-- version 1.0
	
	set defaultPrefs to {accountName:null, pwd:null, windowName:"Open"}
	set prefs to prefs & defaultPrefs
	
	
	try
		fmGUI_AppFrontMost()
		
		set authWindowName to fmGUI_NameOfFrontmostWindow()
		if authWindowName contains windowName of prefs then
			set possibleAccountNameLabels to {"Account Name:", "User Name:", "Full Access Account:"}
			tell application "System Events"
				tell process "FileMaker Pro"
					repeat with oneName in possibleAccountNameLabels
						try
							set objAccount to text field oneName of window 1
							exit repeat
						end try
					end repeat
					set objPassword to text field "Password:" of window 1
				end tell
			end tell
			fmGUI_TextFieldSet({objRef:objAccount, objValue:accountName of prefs})
			fmGUI_TextFieldSet({objRef:objPassword, objValue:pwd of prefs})
			fmGUI_ObjectClick_OkButton({})
			
			if fmGUI_NameOfFrontmostWindow() is equal to "FileMaker Pro" then error "incorrect credentials" number -1024
			
			return windowWaitUntil_FrontNotIS({windowName:authWindowName})
		end if
		
		return true
	on error errMsg number errNum
		error "Unable to fmGUI_relogin - " & errMsg number errNum
	end try
end fmGUI_AuthenticateDialog

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_NameOfFrontmostWindow()
	tell application "htcLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on fmGUI_ObjectClick_OkButton(prefs)
	tell application "htcLib" to fmGUI_ObjectClick_OkButton(prefs)
end fmGUI_ObjectClick_OkButton

on fmGUI_TextFieldSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "htcLib" to fmGUI_TextFieldSet({objRef:objRefStr} & prefs)
end fmGUI_TextFieldSet

on windowWaitUntil(prefs)
	tell application "htcLib" to windowWaitUntil(prefs)
end windowWaitUntil

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