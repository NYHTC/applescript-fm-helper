-- getTextAfter(sourceText, afterThis)
-- Daniel A. Shockley, http://www.danshockley.com
-- gets ALL text from source after marker, not just through next occurrence


(*
HISTORY:
	-- - 2019-02-06 ( eshagdar ): updated sample run. no version bump.
	1.2 - changed to get ALL, not thru next occurrence, which changes behavior to match handler NAME
	1.1 - up to the next occurrence
	1.0 - created
*)


on run
	getTextAfter("one-two&three", "&")
end run

--------------------
-- START OF CODE
--------------------

on getTextAfter(sourceText, afterThis)
	-- version 1.2
	
	try
		set {oldDelims, AppleScript's text item delimiters} to {AppleScript's text item delimiters, {afterThis}}
		
		if (count of text items of sourceText) is 1 then
			-- the split-string didn't appear at all
			set AppleScript's text item delimiters to oldDelims
			return ""
		else
			set the resultAsList to text items 2 thru -1 of sourceText
		end if
		set AppleScript's text item delimiters to {afterThis}
		set finalResult to resultAsList as string
		set AppleScript's text item delimiters to oldDelims
		return finalResult
	on error errMsg number errNum
		set AppleScript's text item delimiters to oldDelims
		return "" -- return nothing if the stop text is not found
	end try
end getTextAfter

--------------------
-- END OF CODE
--------------------
