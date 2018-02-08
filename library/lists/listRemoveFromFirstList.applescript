-- listRemoveFromFirstList({mainList, listOfItemsToRemove})
-- Daniel A. Shockley 
-- return list of items from the first list that are NOT in the second list


(*
HISTORY:
	1.2.1 - 2018-02-07 ( eshagdar ): renamed listAbsentFromOtherList({firstList, secondList}) to listRemoveFromFirstList({mainList, listOfItemsToRemove})
	1.2 - 2017-06-23 ( eshagdar ): turned the test into a one liner
	1.1 - 
	1.0 - created
*)


on run
	listRemoveFromFirstList({{"bob", "sue", "sue", "fred", "mary", "bob"}, {"sue", "fred"}})
end run

--------------------
-- START OF CODE
--------------------

on listRemoveFromFirstList(prefs)
	-- version 1.2.1
	
	set {mainList, listOfItemsToRemove} to prefs
	
	set absentList to {}
	repeat with oneItem in mainList
		set oneItem to contents of oneItem
		if listOfItemsToRemove does not contain oneItem then copy oneItem to end of absentList
	end repeat
	
	return absentList
end listRemoveFromFirstList

--------------------
-- END OF CODE
--------------------
