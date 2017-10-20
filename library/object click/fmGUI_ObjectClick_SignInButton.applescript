-- fmGUI_ObjectClick_SignInButton({buttonRef:null, windowNameThatCloses:null})
-- Erik Shagdar, NYHTC
-- Wrapper method for clicking the ok button and waiting for the window to close


(*
REQUIRES:
	fmGUI_ObjectClick_Button


HISTORY:
	1.0 - 2017-10-20 ( eshagdar ): created
*)


on run
	
	fmGUI_ObjectClick_SignInButton({})
	
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ObjectClick_SignInButton(prefs)
	-- version 1.0
	
	try
		return fmGUI_ObjectClick_Button({buttonName:"Sign In"} & prefs)
	on error errMsg number errNum
		error "Unable to fmGUI_ObjectClick_SignInButton - " & errMsg number errNum
	end try
end fmGUI_ObjectClick_SignInButton

--------------------
-- END OF CODE
--------------------

on fmGUI_ObjectClick_Button(prefs)
	tell application "htcLib" to fmGUI_ObjectClick_Button(prefs)
end fmGUI_ObjectClick_Button
