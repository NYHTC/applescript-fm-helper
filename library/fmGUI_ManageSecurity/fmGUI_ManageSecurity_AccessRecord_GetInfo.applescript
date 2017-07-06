-- fmGUI_ManageSecurity_AccessRecord_GetInfo({})
-- Erik Shagdar, NYHTC
-- gather all the info about the currently opened privSet


(*
HISTORY:
	1.0 - 2017-06-29 ( eshagdar ):created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageSecurity_AccessRecord_GetCalc
	windowWaitUntil_FrontIS
*)


on run
	fmGUI_ManageSecurity_AccessRecord_GetInfo({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_AccessRecord_GetInfo(prefs)
	-- version 1.0
	
	set defaultPrefs to {}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		windowWaitUntil_FrontIS({windowName:"Custom Record Privileges"})
		
		
		-- get number of number of tables to loop over
		tell application "System Events"
			tell process "FileMaker Pro"
				set totalRows to count of every row of table 1 of scroll area 1 of window 1
			end tell
		end tell
		
		
		-- loop over tables
		set recordAccessList to {}
		repeat with rowNum from 1 to totalRows
			tell application "System Events"
				tell process "FileMaker Pro"
					select row rowNum of table 1 of scroll area 1 of window 1
					set oneTableList to value of every static text of row rowNum of table 1 of scroll area 1 of window 1
				end tell
			end tell
			set oneTableRec to {baseTable:item 1 of oneTableList, viewAccess:item 2 of oneTableList, editAccess:item 3 of oneTableList, createAccess:item 4 of oneTableList, deleteAccess:item 5 of oneTableList, fieldAccess:item 6 of oneTableList}
			
			
			-- get the details of limited calcs
			if viewAccess of oneTableRec contains "limited" then set oneTableRec to oneTableRec & {viewCalc:fmGUI_ManageSecurity_AccessRecord_GetCalc({calcFor:"view"})}
			if editAccess of oneTableRec contains "limited" then set oneTableRec to oneTableRec & {editCalc:fmGUI_ManageSecurity_AccessRecord_GetCalc({calcFor:"edit"})}
			if createAccess of oneTableRec contains "limited" then set oneTableRec to oneTableRec & {createCalc:fmGUI_ManageSecurity_AccessRecord_GetCalc({calcFor:"create"})}
			if deleteAccess of oneTableRec contains "limited" then set oneTableRec to oneTableRec & {deleteCalc:fmGUI_ManageSecurity_AccessRecord_GetCalc({calcFor:"delete"})}
			if fieldAccess of oneTableRec contains "limited" then set oneTableRec to oneTableRec & {fieldCalc:fmGUI_ManageSecurity_AccessRecord_GetCalc({calcFor:"field"})}
			
			copy oneTableRec to end of recordAccessList
		end repeat
		
		
		return recordAccessList
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_RecordAccess_getInfo - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccessRecord_GetInfo

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageSecurity_AccessRecord_GetCalc(prefs)
	tell application "htcLib" to fmGUI_ManageSecurity_AccessRecord_GetCalc(prefs)
end fmGUI_ManageSecurity_AccessRecord_GetCalc

on windowWaitUntil_FrontIS(prefs)
	tell application "htcLib" to windowWaitUntil_FrontIS(prefs)
end windowWaitUntil_FrontIS
