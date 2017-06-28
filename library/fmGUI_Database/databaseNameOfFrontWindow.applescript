-- databaseNameOfFrontWindow({fmAppType:""})
-- Dan Shockley, NYHTC
-- Return the database name of window 1.


(*
HISTORY:
	1.3 - 
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	dbNameOfWindowName
*)


on run
	databaseNameOfFrontWindow({fmAppType:"Adv"})
end run


--------------------
-- START OF CODE
--------------------

on databaseNameOfFrontWindow(prefs)
	-- version 1.3
	
	set defaultPrefs to {fmAppType:"Pro"}
	set prefs to prefs & defaultPrefs
	
	
	if fmAppType of prefs is "Adv" then
		set fmAppBundleID to "com.filemaker.client.advanced12"
	else
		set fmAppBundleID to "com.filemaker.client.pro12"
	end if
	
	using terms from application "FileMaker Pro Advanced"
		tell application ID fmAppBundleID
			set frontWindowName to name of window 1
		end tell
	end using terms from
	
	dbNameOfWindowName(frontWindowName)
	
end databaseNameOfFrontWindow

--------------------
-- END OF CODE
--------------------

on dbNameOfWindowName(frontWindowName)
	tell application "htcLib" to dbNameOfWindowName(frontWindowName)
end dbNameOfWindowName
