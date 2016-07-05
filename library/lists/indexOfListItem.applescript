-- indexOfListItem(someList, someListItem)
-- Daniel A. Shockley http://www.danshockley.com
-- Sorts a list in ascending order


(*
HISTORY:
	1.0 - created


TODO:
	- 2016-07-05 ( eshagdar ): convert params to record
*)


on run
	indexOfListItem({"a", "d", "c", "b"}, "c")
end run


--------------------
-- START OF CODE
--------------------

on indexOfListItem(someList, someListItem)
	-- version 1.0
	
	if someList does not contain someListItem then return -1
	
	repeat with i from 1 to count of someList
		set oneListItem to item i of someList
		
		if oneListItem is someListItem then return i
		
	end repeat
	
end indexOfListItem
--------------------
-- END OF CODE
--------------------
