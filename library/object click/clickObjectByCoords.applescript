-- clickObjectByCoords(someObject)
-- Daniel A. Shockley, NYHTC
-- Click on some object by coordinates

(*
HISTORY:
	1.0 - created
*)


on run
	tell application "System Events"
		tell process "FileMaker Pro"
			set frontmost to true
			set RefreshButtonObjectOfDataViewer to button "Refresh Values" of tab group 1 of window 1
		end tell
	end tell
	
	clickObjectByCoords(RefreshButtonObjectOfDataViewer)
end run



--------------------
-- START OF CODE
--------------------

on clickObjectByCoords(someObject)
	-- version 1.0
	
	using terms from application "System Events"
		set {xCoord, yCoord} to position of someObject
		set {xSize, ySize} to size of someObject
	end using terms from
	
	set xClick to round (xCoord + xSize / 2) rounding down -- middle
	set yClick to round (yCoord + ySize / 2) rounding down -- middle
	
	return clickAtCoords(xClick, yClick)
	
end clickObjectByCoords

--------------------
-- END OF CODE
--------------------

on clickAtCoords(xClick, yClick)
	tell application "htcLib" to clickAtCoords(xClick, yClick)
end clickAtCoords
