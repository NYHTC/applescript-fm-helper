-- clickAtCoords(xClick, yClick)
-- Daniel A. Shockley, NYHTC
-- Click at the specifeid coordinates

(*
HISTORY:
	1.1 - 2016-04-21 ( eshagdar ): updated how coords are passed in to be compatible with cliClick version 3.2, 02/17/2016
	1.0 - created
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	clickAtCoords(50, 50)
end run


--------------------
-- START OF CODE
--------------------

on clickAtCoords(xClick, yClick)
	-- version 1.0
	
	set xClick to round xClick rounding down
	set yClick to round yClick rounding down
	do shell script quoted form of clickCommandPosix & " -r c:" & xClick & "," & yClick
	return ((xClick as string) & "," & yClick)
end clickAtCoords

--------------------
-- END OF CODE
--------------------
