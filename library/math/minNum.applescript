-- minNum(someList)
-- Erik Shagdar, NYHTC
-- find the smallest number in a list

(*
HISTORY:
	1.0 - 2016-xx-xx ( eshagdar ): created
*)


on run
	minNum({1, 6, 2, 6, -1, 0.1, -5.9})
end run

--------------------
-- START OF CODE
--------------------

on minNum(someList)
	try
		if class of someList is not list then error "not a list." number -1703
		set smallestFound to item 1 of someList as number
		
		repeat with i in someList
			set oneValue to i's contents as number
			if oneValue < smallestFound then set smallestFound to oneValue
		end repeat
		
		return smallestFound
	on error errMsg number errNum
		error "unable to minNum - " & errMsg number errNum
	end try
end minNum

--------------------
-- END OF CODE
--------------------
