-- listAbsentFromOtherList({firstList, secondList})
-- Daniel A. Shockley 
-- return list of items from the first list that are NOT in the second list


(*
HISTORY:
	1.2 - 2017-06-23 ( eshagdar ): turned the test into a one liner
	1.1 - 
	1.0 - created
*)


on run
	listAbsentFromOtherList({{"bob", "sue", "sue", "fred", "mary", "bob"}, {"sue", "fred"}})
end run

--------------------
-- START OF CODE
--------------------

on listAbsentFromOtherList(prefs)
	-- version 1.2
	
	set {firstList, secondList} to prefs
	
	set absentList to {}
	repeat with oneItem in firstList
		set oneItem to contents of oneItem
		if secondList does not contain oneItem then copy oneItem to end of absentList
	end repeat
	
	return absentList
	
	
end listAbsentFromOtherList

--------------------
-- END OF CODE
--------------------
