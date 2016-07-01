-- SFR_Unescape(someString)
-- Daniel A. Shockley, NYHTC
-- Unescapes strings from a SixFriedRice.com-style dictionary string for use in FileMaker.


(*
HISTORY:
	1.0 - created


REQUIRES:
	replaceSimple
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	SFR_Unescape("/</:foo/:/=bar/:/>")
end run


--------------------
-- START OF CODE
--------------------

on SFR_Unescape(someString)
	-- version 1.0
	
	set escapeCharList to {"=", ":", "<", ">"}
	
	repeat with oneChar in escapeCharList
		set someString to replaceSimple({someString, "/" & oneChar, oneChar})
		
	end repeat
	
	return someString
	
end SFR_Unescape


--------------------
-- END OF CODE
--------------------

on replaceSimple(prefs)
	tell helper to replaceSimple(prefs)
end encodeCharForURL
