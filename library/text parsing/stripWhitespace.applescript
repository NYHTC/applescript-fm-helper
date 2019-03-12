-- textLower({str:""})
-- Daniel A. Shockley http://www.danshockley.com
-- strips out whitespace


(*
HISTORY:
	1.0 - 20xx-xx-xx ( dshockley ): created
*)


on run
	stripWhitespace(" a b c d	e	f" & return & "g   ")
end run


--------------------
-- START OF CODE
--------------------

on stripWhitespace(sourceTEXT)
	-- version 1.0
	
	set oldDelims to AppleScript's text item delimiters
	set AppleScript's text item delimiters to {space, tab, return, ASCII character 10}
	set the parsedList to every text item of sourceTEXT
	set AppleScript's text item delimiters to the {""}
	set the newText to the parsedList as string
	set AppleScript's text item delimiters to oldDelims
	return newText
	
end stripWhitespace

--------------------
-- END OF CODE
--------------------
