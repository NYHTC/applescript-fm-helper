-- fileNameFromPath({filePath:null, pathDelim:null})
-- Daniel A. Shockley
-- Gets the file name from the path.


(*
HISTORY:
	1.0 -  first created.
*)


on run
	
	fileNameFromPath({filePath:"/my/fake/path/someFile.txt", pathDelim:"/"})
end run

--------------------
-- START OF CODE
--------------------

on fileNameFromPath(prefs)
	-- version 1.0, Daniel A. Shockley
	
	set filePath to filePath of prefs
	set pathDelim to pathDelim of prefs
	
	(reverse of characters of filePath) as string
	
	text 1 thru ((offset of pathDelim in result) - 1) of result
	
	return (reverse of characters of result) as string
	
end fileNameFromPath


--------------------
-- END OF CODE
--------------------
