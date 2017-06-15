-- sort(oldList)
-- Daniel A. Shockley http://www.danshockley.com
-- Sorts a list in ascending order


(*
HISTORY:
	1.0 - created
*)


on run
	sort({"a", "d", "c", "b"})
end run


--------------------
-- START OF CODE
--------------------

on sort(oldList)
	-- version 1.0
	
	set {od, AppleScript's text item delimiters} to {AppleScript's text item delimiters, ASCII character 10}
	set textBlock to oldList as string
	set sortedBlock to do shell script "echo " & quoted form of textBlock & " | sort"
	set AppleScript's text item delimiters to return
	set sortedList to every text item of sortedBlock
	set AppleScript's text item delimiters to od
	
	return sortedList
end sort
--------------------
-- END OF CODE
--------------------
