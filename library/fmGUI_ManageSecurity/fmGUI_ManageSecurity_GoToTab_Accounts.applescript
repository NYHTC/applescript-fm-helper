-- fmGUI_ManageSecurity_GoToTab_Accounts({})
-- Dan Shockley, NYHTC
-- Go to the "Accounts" tab of manage security


(*
HISTORY:
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_ManageSecurity_GotoTab
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	fmGUI_ManageSecurity_GoToTab_Accounts({})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_GoToTab_Accounts(prefs)
	-- version 1.1
	
	try
		fmGUI_ManageSecurity_GotoTab({tabName:"Accounts"})
	on error errMsg number errNum
		error "Couldn't go to Accounts tab - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_GoToTab_Accounts

--------------------
-- END OF CODE
--------------------

on fmGUI_ManageSecurity_GotoTab(prefs)
	tell helper to fmGUI_ManageSecurity_GotoTab(prefs)
end fmGUI_ManageSecurity_GotoTab
