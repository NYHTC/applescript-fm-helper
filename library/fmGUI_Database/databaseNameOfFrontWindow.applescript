-- databaseNameOfFrontWindow({fmAppType:""})
-- Dan Shockley, NYHTC
-- Return the database name of window 1.


(*
HISTORY:
	1.4 - 2018-10-16 ( eshagdar ): FM17 has only FMP ( no more FMA)
	1.3 - 
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	dbNameOfWindowName
*)


on run
	databaseNameOfFrontWindow({})
end run


--------------------
-- START OF CODE
--------------------

on databaseNameOfFrontWindow(prefs)
	-- version 1.4
	
	set defaultPrefs to {}
	set prefs to prefs & defaultPrefs
	
	
	using terms from application "FileMaker Pro Advanced"
		tell application ID "com.filemaker.client.pro12"
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
