-- listContains(someList, someComplexItem)
-- Daniel A. Shockley 
-- Allows checking a list for sub-lists contained within, which the simple 'contains' and 'is in' fail to do.


(*
HISTORY:
	1.0 - created
*)


on run
	listContains({"foo", "bob", "bar"}, "bob")
end run


--------------------
-- START OF CODE
--------------------

on listContains(someList, someComplexItem)
	-- version 1.0
	
	repeat with oneItem in someList
		set oneItem to contents of oneItem
		if oneItem is equal to someComplexItem then
			
			return true
			
		end if
		
		
	end repeat
	
	return false
	
end listContains

--------------------
-- END OF CODE
--------------------
