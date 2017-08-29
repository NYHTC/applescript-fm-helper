-- clickAtCoords(xClick, yClick)
-- Daniel A. Shockley, NYHTC
-- Click at the specifeid coordinates

(*
HISTORY:
	1.3 - 2017-08-23 ( eshagdar ): first move to a position, then click at that position. restore afterwards.
	1.2 - 2017-06-16 ( eshagdar ): cliclick v. 3.3 ( probably changed earlier ), the commands have been updated - need to specify the type of command ( i.e 'c:100,100' instead of '100 100' )
	1.1 - 2016-04-21 ( eshagdar ): updated how coords are passed in to be compatible with cliClick version 3.2, 02/17/2016
	1.0 - created
*)


on run
	clickAtCoords(50, 50)
end run

--------------------
-- START OF CODE
--------------------

on clickAtCoords(xClick, yClick)
	-- version 1.3
	
	set xClick to round xClick rounding down
	set yClick to round yClick rounding down
	if xClick is less than 0 then set xClick to "=" & xClick
	if yClick is less than 0 then set yClick to "=" & yClick
	do shell script quoted form of clickCommandPosix & " -r m:" & xClick & "," & yClick & " c:" & xClick & "," & yClick
	return ((xClick as string) & "," & yClick)
end clickAtCoords

--------------------
-- END OF CODE
--------------------
