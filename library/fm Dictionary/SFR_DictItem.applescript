-- SFR_DictItem(itemName, itemValue)
-- Daniel A. Shockley, NYHTC
-- Creates a SixFriedRice.com-style dictionary string for use in FileMaker.


(*
HISTORY:
	1.0 - created


REQUIRES:
	SFR_Escape
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	SFR_DictItem("foo", "bar")
end run




--------------------
-- START OF CODE
--------------------

on SFR_DictItem(itemName, itemValue)
	-- version 1.0
	
	return "<:" & SFR_Escape(itemName) & ":=" & SFR_Escape(itemValue) & ":>"
end SFR_DictItem


--------------------
-- END OF CODE
--------------------

on SFR_Escape(someString)
	tell helper to SFR_Escape(someString)
end SFR_Escape
