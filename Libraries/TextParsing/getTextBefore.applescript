-- getTextBetween(sourceTEXT, stopHere)
-- Daniel A. Shockley, http://www.danshockley.com
-- returns text before some delimiter

--------------------
-- START OF CODE
--------------------

on getTextBefore(sourceTEXT, stopHere)
	-- version 1.1, Daniel A. Shockley, http://www.danshockley.com
	-- gets the text before the first occurrence stopHere
	try
		set {oldDelims, AppleScript's text item delimiters} to {AppleScript's text item delimiters, stopHere}
		if (count of text items of sourceTEXT) is 1 then
			set AppleScript's text item delimiters to oldDelims
			return ""
		else
			set the finalResult to text item 1 of sourceTEXT
		end if
		set AppleScript's text item delimiters to oldDelims
		return finalResult
	on error errMsg number errNum
		set AppleScript's text item delimiters to oldDelims
		return "" -- return nothing if the stop text is not found
	end try
end getTextBefore


--------------------
-- END OF CODE
--------------------
on run
	getTextBefore("one-two&three", "&")
end run
