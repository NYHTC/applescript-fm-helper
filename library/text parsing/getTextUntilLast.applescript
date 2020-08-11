-- getTextUntilLast(sourceTEXT, stopHere)
-- Daniel A. Shockley, http://www.danshockley.com
-- gets the text before the LAST occurrence of stopHere. Similar


(*
HISTORY:
	1.0 - 2020-08-11 ( dshockley ): created. Based off getTextBefore, but does LAST occurrence instead of first.
*)


on run
	getTextUntilLast("one-two&three&four", "&")
end run

--------------------
-- START OF CODE
--------------------

on getTextUntilLast(sourceTEXT, stopHere)
	-- version 1.0
	
	try
		set {oldDelims, AppleScript's text item delimiters} to {AppleScript's text item delimiters, stopHere}
		if (count of text items of sourceTEXT) is 1 then
			set AppleScript's text item delimiters to oldDelims
			-- not found, so return nothing:
			return ""
		else
			set the itemsBeforeLast to text items 1 thru -2 of sourceTEXT
		end if
		set finalResult to itemsBeforeLast as string
		set AppleScript's text item delimiters to oldDelims
		return finalResult
	on error errMsg number errNum
		set AppleScript's text item delimiters to oldDelims
		return "" -- return nothing if the stop text is not found
	end try
end getTextUntilLast


--------------------
-- END OF CODE
--------------------
