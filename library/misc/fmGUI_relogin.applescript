-- fmGUI_relogin({accountName:null, pwd:null})
-- Erik Shagdar, NYHTC
-- re-login with specified credentials. must be triggered elsewhere - this handler only deals with the re-login window.


(*
REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ObjectClick_OkButton
	fmGUI_TextFieldSet
	windowWaitUntil
	

HISTORY:
	1.0 - 2017-10-07 ( eshagdar ): created
*)


on run
	
	fmGUI_relogin({accountName:"admin", pwd:""})
	
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_relogin(prefs)
	-- version 1.0
	
	set defaultPrefs to {accountName:null, pwd:null}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		windowWaitUntil({windowname:"Open", windownameTest:"contains", whichWindow:"front"})
		
		
		tell application "System Events"
			tell process "FileMaker Pro"
				set objAccount to text field "Account Name:" of window 1
				set objPassword to text field "Password:" of window 1
			end tell
		end tell
		fmGUI_TextFieldSet({objRef:objAccount, objValue:accountName of prefs})
		fmGUI_TextFieldSet({objRef:objPassword, objValue:pwd of prefs})
		fmGUI_ObjectClick_OkButton({})
		
		
		windowWaitUntil({windowname:"Open", windownameTest:"does not contain", whichWindow:"front"})
		return true
	on error errMsg number errNum
		error "Unable to fmGUI_relogin - " & errMsg number errNum
	end try
end fmGUI_relogin

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

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



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "htcLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString