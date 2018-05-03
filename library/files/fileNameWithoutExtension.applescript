-- fileNameWithoutExtension({fileName:null})
-- Daniel A. Shockley
-- Gets the file name without the extension.


(*
HISTORY:
	1.0 -  first created.
*)


on run
	
	fileNameWithoutExtension({fileName:"someFile.txt"})
end run

--------------------
-- START OF CODE
--------------------

on fileNameWithoutExtension(prefs)
	-- version 1.0, Daniel A. Shockley
	set fileName to fileName of prefs
	
	(reverse of characters of fileName) as string
	
	text ((offset of "." in result) + 1) thru -1 of result
	
	return (reverse of characters of result) as string
	
end fileNameWithoutExtension


--------------------
-- END OF CODE
--------------------
