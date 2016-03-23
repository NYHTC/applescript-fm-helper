-- unParseChars(thisList, newDelim)
-- Daniel A. Shockley, http://www.danshockley.com
-- takes a list and a delimiter and returns a string.


(*
HISTORY:
	1.2 - 
	1.0 - created
*)


on run
	unParseChars({"one", "two", "three"}, "-")
end run


--------------------
-- START OF CODE
--------------------

on unParseChars(thisList, newDelim)
	-- version 1.2
	
	set oldDelims to AppleScript's text item delimiters
	try
		set AppleScript's text item delimiters to the {newDelim as string}
		set the unparsedText to thisList as string
		set AppleScript's text item delimiters to oldDelims
		return unparsedText
	on error errMsg number errNum
		try
			set AppleScript's text item delimiters to oldDelims
		end try
		error "ERROR: unParseChars() handler: " & errMsg number errNum
	end try
end unParseChars


--------------------
-- END OF CODE
--------------------
