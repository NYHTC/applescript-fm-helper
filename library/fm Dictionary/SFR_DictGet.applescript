-- SFR_DictGet(someDict, itemName)
-- Daniel A. Shockley, NYHTC
-- Reads a named hash item from a SixFriedRice.com-style dictionary string - for use in FileMaker.


(*
HISTORY:
	1.0 - created


REQUIRES:
	SFR_Escape
	SFR_Unescape
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	SFR_DictGet("<:foo:=bar:><:fizz:=buzz:>", "foo")
end run



--------------------
-- START OF CODE
--------------------

on SFR_DictGet(someDict, itemName)
	-- version 1.0
	
	set keyString to "<:" & SFR_Escape(itemName) & ":="
	set endString to ":>"
	
	if someDict does not contain keyString then
		return ""
	else
		set oldDelims to AppleScript's text item delimiters
		set AppleScript's text item delimiters to the keyString
		set the keyRemoved to text item 2 of someDict
		if keyRemoved does not contain endString then
			return ""
		else
			set AppleScript's text item delimiters to endString
			set the itemValue to text item 1 of keyRemoved
			set AppleScript's text item delimiters to oldDelims
		end if
	end if
	
	return SFR_Unescape(itemValue)
	
	
end SFR_DictGet


--------------------
-- END OF CODE
--------------------

on SFR_Escape(someString)
	tell helper to SFR_Escape(someString)
end SFR_Escape

on SFR_Unescape(someString)
	tell helper to SFR_Unescape(someString)
end SFR_Unescape
