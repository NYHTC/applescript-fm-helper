-- upperFirstLetter({str:""})
-- Erik Shagdar, NYHTC
-- takes some string and returns the string with the first letter capitalized


(*
HISTORY:
	1.0 - 2017-08-22 ( eshagdar ): created
*)


on run
	upperFirstLetter({str:"hello"})
end run


--------------------
-- START OF CODE
--------------------

on upperFirstLetter(prefs)
	-- version 1.0
	
	set defaultPrefs to {str:""}
	set prefs to prefs & defaultPrefs
	
	set firstLetter to text 1 of str of prefs
	set remainingString to text 2 thru -1 of str of prefs
	return (do shell script ("echo " & firstLetter & " | tr a-z A-Z;")) & remainingString
end upperFirstLetter

--------------------
-- END OF CODE
--------------------
