-- clickObjectByCoords(someObject)
-- Daniel A. Shockley, NYHTC
-- Click on some object by coordinates

(*
REQUIRES:
	clickAtCoords
	ensureObjectRef
	
HISTORY:
	1.1 - 2017-06-29 ( eshagdar ): incoming param may be a string, so ensure it becomes an object reference
	1.0 - created
*)


on run
	tell application "System Events"
		tell process "FileMaker Pro"
			set frontmost to true
			delay 0.25
			set cancelButton to get first button of window 1 whose name is "Cancel"
		end tell
	end tell
	
	--clickObjectByCoords(cancelButton)
	clickObjectByCoords("button \"Cancel\" of window \"Edit Privilege Set\" of application process \"FileMaker Pro\" of application \"System Events\"")
end run



--------------------
-- START OF CODE
--------------------

on clickObjectByCoords(someObject)
	-- version 1.1
	
	set someObject to ensureObjectRef(someObject)
	
	
	tell application "System Events"
		set {xCoord, yCoord} to position of someObject
		set {xSize, ySize} to size of someObject
	end tell
	
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

on ensureObjectRef(someObject)
	if class of someObject is equal to class of "fakestring" then
		using terms from application "System Events"
			tell application "htcLib" to set someObject to ensureObjectRef(someObject)
		end using terms from
	end if
	return someObject
end ensureObjectRef

