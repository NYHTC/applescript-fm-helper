-- fmGUI_ManageSecurity_ListOfAccountsAndPrivileges({})
-- Erik Shagdar, NYHTC
-- Return the list of all accountName-PrivSet lists


(*
HISTORY:
	1.0 - 2016-07-20 ( eshagdar ): first created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageSecurity_GoToTab_Accounts
*)


on run
	fmGUI_ManageSecurity_ListOfAccountsAndPrivileges({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_ListOfAccountsAndPrivileges(prefs)
	-- version 1.0
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageSecurity_GoToTab_Accounts({})
		
		tell application "System Events"
			tell process "FileMaker Pro"
				set accountsTable to table 1 of scroll area 1 of tab group 1 of window 1
				
				set accountNamesList to value of static text 1 of every row of accountsTable
				set privNamesList to value of static text 3 of every row of accountsTable
				
				set accountsList to {}
				repeat with i from 1 to count of accountNamesList
					set oneAccountRow to {item i of accountNamesList, item i of privNamesList}
					set end of accountsList to oneAccountRow
				end repeat
				
				return accountsList
				
			end tell
		end tell
	on error errMsg number errNum
		error "Couldn't get list of account Name Privilege Set lists - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_ListOfAccountsAndPrivileges

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageSecurity_GoToTab_Accounts(prefs)
	tell application "htcLib" to fmGUI_ManageSecurity_GoToTab_Accounts(prefs)
end fmGUI_ManageSecurity_GoToTab_Accounts