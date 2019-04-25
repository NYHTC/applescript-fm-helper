-- CopyValuesFromViewIndexWindow({})
-- Dan Shockley, NYHTC
-- Copy Values from View Index Window

(*
HISTORY:
	1.1 - 2019-04-25 ( dshockley ): Provide visual feedback that the rows were copied by moving to the end of scroll area.
	1.0 - 2017-xx-xx ( dshockley ): First created. 
*)


on run
	CopyValuesFromViewIndexWindow({})
end run

--------------------
-- START OF CODE
--------------------

on CopyValuesFromViewIndexWindow({})
	-- version 1.1
	
	tell application "System Events"
		tell application process "FileMaker Pro Advanced"
			--set frontmost to true
			if name of window 1 is not "View Index" then
				display dialog "Please choose View Index on the field you'd like the list of index values for." buttons {"OK"} default button "OK"
				return false
			end if
			tell table 1 of scroll area 1 of window 1
				set indexList to get value of text field 1 of rows of it
				select last row of it
				delay 0.3
				-- need to scroll window down to selected row: this will do that, plus show activity:
				keystroke (ASCII character 30) -- up arrow
				keystroke (ASCII character 31) -- down arrow
			end tell
		end tell
	end tell
	
	tell application "htcLib" to set indexTextBlock to unParseChars(indexList, return)
	
	set the clipboard to indexTextBlock
	
	return indexTextBlock
	
end CopyValuesFromViewIndexWindow

--------------------
-- END OF CODE
--------------------

