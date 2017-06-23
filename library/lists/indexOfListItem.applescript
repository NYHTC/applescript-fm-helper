-- indexOfListItem(prefs)
-- Daniel A. Shockley http://www.danshockley.com
-- Returns the index of the first intance of an item in the list


(*
HISTORY:
	1.1 - 2017-06-21 ( eshagdar ): convert params to record
	1.0 - created
*)


on run
	indexOfListItem({someList:{"a", "c", "d", "c", "b"}, someListItem:"c"})
end run


--------------------
-- START OF CODE
--------------------

on indexOfListItem(prefs)
	-- version 1.1
	
	set defaultPrefs to {someList:null, someListItem:null}
	set prefs to prefs & defaultPrefs
	
	if someList of prefs does not contain someListItem of prefs then return -1
	
	repeat with i from 1 to count of someList of prefs
		set oneListItem to item i of someList of prefs
		
		if oneListItem is someListItem of prefs then return i
		
	end repeat
	
end indexOfListItem
--------------------
-- END OF CODE
--------------------
