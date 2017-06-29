-- fmGUI_ManageSecurity_Open(fullAccessAccountName:null, fullAccessPassword:null)
-- Daniel A. Shockley, NYHTC
-- Open Manage Security window


(*
HISTORY:
	1.1 - 2017-06-28 ( eshagdar ): updated for Fm15 ( authenticate up-front )
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
*)


on run
	fmGUI_ManageSecurity_Open({fullAccessAccountName:"admin", fullAccessPassword:""})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_Open(prefs)
	-- version 1.1
	
	try
		set defaultPrefs to {fullAccessAccountName:null, fullAccessPassword:null}
		set prefs to prefs & defaultPrefs
		
		
		if fullAccessAccountName of prefs is null or fullAccessPassword of prefs is null then error "missing full-access credentials" number 1024
		
		fmGUI_AppFrontMost()
		if fmGUI_NameOfFrontmostWindow() does not contain "Manage Security for" then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					
					-- open Manage security
					click (first menu item of menu 1 of menu item "Manage" of menu 1 of menu bar item "File" of menu bar 1 whose name starts with "Security")
					
					
					-- enter credentials
					if name of window 1 starts with "Enter credentials for" then
						set value of text field "User name:" of window 1 to fullAccessAccountName of prefs
						set value of text field "Password:" of window 1 to fullAccessPassword of prefs
						click button "OK" of window 1
					end if
				end tell
			end tell
		end if
		return true
		
	on error errMsg number errNum
		error "Couldn't open Manage Security - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_Open

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_NameOfFrontmostWindow()
	tell application "htcLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow