-- fmGUI_ManageSecurity_GoToTab_PrivSets({})
-- Dan Shockley, NYHTC
-- Go to the "Privilege Sets" tab of manage security


(*
HISTORY:
	1.1 - 2017-06-28 ( eshagdar ): pass in prefs
	1.0 - created


REQUIRES:
	fmGUI_ManageSecurity_GotoTab
*)


on run
	fmGUI_ManageSecurity_GoToTab_PrivSets({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_GoToTab_PrivSets(prefs)
	-- version 1.1
	
	try
		fmGUI_ManageSecurity_GotoTab({tabName:"Privilege Sets"} & prefs)
	on error errMsg number errNum
		error "Couldn't go to Accounts tab - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_GoToTab_PrivSets

--------------------
-- END OF CODE
--------------------

on fmGUI_ManageSecurity_GotoTab(prefs)
	tell application "htcLib" to fmGUI_ManageSecurity_GotoTab(prefs)
end fmGUI_ManageSecurity_GotoTab
