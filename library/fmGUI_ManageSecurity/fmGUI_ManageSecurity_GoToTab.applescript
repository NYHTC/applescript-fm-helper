-- fmGUI_ManageSecurity_GoToTab({tabName:null})
-- Erik Shagdar, NYHTC
-- Go to specified tab of manage scripts


(*
HISTORY:
	1.2 - 2016-07-20 ( eshagdar ): changed params from a string to a  record
	1.1 - 
	1.0 - first created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageSecurity_Open
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	fmGUI_ManageSecurity_GoToTab({tabName:"Accounts"})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_GoToTab(prefs)
	-- version 1.2
	
	set defaultPrefs to {tabName:"Accounts"}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageSecurity_Open({})
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				
				click (first radio button of tab group 1 of window 1 whose name is tabName of prefs)
				return true
				
			end tell
		end tell
	on error errMsg number errNum
		error "Couldn't go to tab in Manage Security - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_GoToTab

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageSecurity_Open(prefs)
	tell helper to fmGUI_ManageSecurity_Open(prefs)
end fmGUI_ManageSecurity_Open
