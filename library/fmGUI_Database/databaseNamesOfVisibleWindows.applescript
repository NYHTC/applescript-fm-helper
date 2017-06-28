-- databaseNamesOfVisibleWindows({fmAppType:"Pro"})
-- Dan Shockley, NYHTC
-- return a list of db names for the specified window names


(*
HISTORY:
	1.5 - added a time-out loop for dealing with delay in being able to get list of databases. 
	1.4 - added error-handling
	1.3 - 
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	dbNameOfWindowName
*)


on run
	databaseNamesOfVisibleWindows({fmAppType:"Adv"})
end run

--------------------
-- START OF CODE
--------------------

on databaseNamesOfVisibleWindows(prefs)
	-- version 1.3, Daniel A. Shockley
	
	-- If open, then display first window this finds and return true, else return false.
	
	set defaultPrefs to {fmAppType:"Pro"}
	set prefs to prefs & defaultPrefs
	
	
	if fmAppType of prefs is "Adv" then
		set fmAppBundleID to "com.filemaker.client.advanced12"
	else
		set fmAppBundleID to "com.filemaker.client.pro12"
	end if
	
	using terms from application "FileMaker Pro Advanced"
		tell application ID fmAppBundleID
			set visibleWindowNames to name of every window whose visible is true
		end tell
		
		set visibleDatabases to {}
		repeat with oneWindowName in visibleWindowNames
			set oneDBName to dbNameOfWindowName(oneWindowName)
			if visibleDatabases does not contain oneDBName then
				copy oneDBName to end of visibleDatabases
			end if
		end repeat
		return visibleDatabases
	end using terms from
end databaseNamesOfVisibleWindows

--------------------
-- END OF CODE
--------------------

on dbNameOfWindowName(someWindowName)
	tell application "htcLib" to dbNameOfWindowName(someWindowName)
end dbNameOfWindowName
