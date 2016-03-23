-- listUniqueValues({inputList:{}})
-- Daniel A. Shockley 
-- Return list of unique values from the specified list


(*
HISTORY:
	1.0 - created
*)


on run
	listUniqueValues({inputList:{"bob", "sue", "sue", "fred", "bob"}})
end run


--------------------
-- START OF CODE
--------------------

on listUniqueValues(prefs)
	-- version 1.0
	
	set inputList to inputList of prefs
	
	set uniqueList to {}
	
	
	repeat with oneItem in inputList
		set oneItem to contents of oneItem
		if uniqueList does not contain oneItem then
			copy oneItem to end of uniqueList
		end if
	end repeat
	
	return uniqueList
	
end listUniqueValues

--------------------
-- END OF CODE
--------------------
