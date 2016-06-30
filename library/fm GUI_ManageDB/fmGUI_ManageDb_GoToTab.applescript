-- fmGUI_ManageDb_GoToTab({tabName:null})
-- Erik Shagdar, NYHTC
-- Go to the "Fields" tab of manage database


(*
HISTORY:
	1.0 - 2016-06-30 ( eshagdar ): first created. Modeled from fmGUI_ManageDb_GoToTab_Fields version 1.3
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	fmGUI_ManageDb_GoToTab({tabName:"Tables"})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_GoToTab(prefs)
	-- version 1.0
	
	set defaultPrefs to {tabName:"Tables"}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageDb_Open({})
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set tabObject to a reference to (first radio button of tab group 1 of window 1 whose title contains tabName of prefs)
				if value of tabObject is not 1 then
					click tabObject
				end if
				return true
			end tell
		end tell
	on error errMsg number errNum
		error "Couldn't go to the '" & tabName of prefs & "' tab - " & errMsg number errNum
	end try
	
end fmGUI_ManageDb_GoToTab

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageDb_Open(prefs)
	tell helper to fmGUI_ManageDb_Open(prefs)
end fmGUI_ManageDb_Open
