-- fileNameWithoutExtension({fileName:null})
-- Daniel A. Shockley
-- Gets the file name without the extension.


(*
HISTORY:
	1.1 - 2018-12-17 ( dshockley ): Fix to work with a file that begins with the only dot (e.g. ".DS_Store"). 
	1.0.1 - 2016-xx-xx ( eshagdar ): converted params to an applescript record.
	1.0 - 2010-xx-xx ( dshockley ): First created. Date unknown.
*)


on run
	fileNameWithoutExtension({fileName:"someFile.txt"})
end run

--------------------
-- START OF CODE
--------------------

on fileNameWithoutExtension(prefs)
	-- version 1.1, Daniel A. Shockley
	
	set fileName to fileName of prefs
	
	set reverseString to (reverse of characters of fileName) as string
	
	set offsetInReverse to (offset of "." in reverseString)
	
	if offsetInReverse is equal to length of fileName then
		-- original started with the only dot in the name, so we want the whole thing, including leading dot:
		return someFileName
	else
		text (offsetInReverse + 1) thru -1 of reverseString
	end if
	
	
	return (reverse of characters of result) as string
end fileNameWithoutExtension

--------------------
-- END OF CODE
--------------------
