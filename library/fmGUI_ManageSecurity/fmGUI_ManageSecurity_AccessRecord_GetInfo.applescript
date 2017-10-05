-- fmGUI_ManageSecurity_AccessRecord_GetInfo({})
-- Erik Shagdar, NYHTC
-- gather all the info about the currently opened privSet


(*
HISTORY:
	1.1 - 2017-09-06 ( eshagdar ): return a null value for calc if there isn't one. get access values from button value, not row ( rows render ellipsis, whereas the buttons use 3 dots ).
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
	-- version 1.1
	
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
					set oneTableRec to {baseTable:value of static text 1 of row rowNum of table 1 of scroll area 1 of window 1 Â
						, viewAccess:value of pop up button "View" of window 1 Â
						, editAccess:value of pop up button "Edit" of window 1 Â
						, createAccess:value of pop up button "Create" of window 1 Â
						, deleteAccess:value of pop up button "Delete" of window 1 Â
						, fieldAccess:value of pop up button "Field Access" of window 1}
				end tell
			end tell
			
			
			
			-- get the details of limited calcs
			if viewAccess of oneTableRec contains "limited" then set oneTableRec to oneTableRec & {viewCalc:fmGUI_ManageSecurity_AccessRecord_GetCalc({calcFor:"view"})}
			if editAccess of oneTableRec contains "limited" then set oneTableRec to oneTableRec & {editCalc:fmGUI_ManageSecurity_AccessRecord_GetCalc({calcFor:"edit"})}
			if createAccess of oneTableRec contains "limited" then set oneTableRec to oneTableRec & {createCalc:fmGUI_ManageSecurity_AccessRecord_GetCalc({calcFor:"create"})}
			if deleteAccess of oneTableRec contains "limited" then set oneTableRec to oneTableRec & {deleteCalc:fmGUI_ManageSecurity_AccessRecord_GetCalc({calcFor:"delete"})}
			if fieldAccess of oneTableRec contains "limited" then set oneTableRec to oneTableRec & {fieldCalc:fmGUI_ManageSecurity_AccessRecord_GetCalc({calcFor:"field"})}
			
			
			-- ensure the key exists ( even if it's null )
			set oneTableRec to oneTableRec & {viewCalc:null, editCalc:null, createCalc:null, deleteCalc:null, fieldCalc:null}
			
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
