-- Script Step Specify Calc
-- Daniel A. Shockley, NYHTC

(*
	If the current script step is Set Variable or Set Field, brings up the calculation window to specify the value. 
	
	NOTE: Named "Script Step Specify Calc" because this might gradually be expanded to most-useful (or annoying to get to because of multiple steps required) "specify calc" windows for OTHER script steps. 

HISTORY: 
	2021-05-21 ( dshockley ): created.
	
REQUIRES:
	htcLib.app
	
*)

on run
	
	tell application "System Events"
		tell application process "FileMaker Pro Advanced"
			set frontmost to true
			
			set scriptWindow to first window whose (name begins with "Script Workspace" or name begins with "Edit Script")
			if name of scriptWindow begins with "Edit Script" then
				set isEditWindow to true
			else
				set isEditWindow to false
			end if
			
			if isEditWindow then
				set rowSelected to first row of table 1 of scroll area 1 of splitter group 1 of scriptWindow whose selected is true
			else
				set rowSelected to first row of table 1 of scroll area 1 of tab group 1 of scriptWindow whose selected is true
			end if
			
			-- SCRIPT STEP NAME: 
			set stepName to value of static text 1 of UI element 1 of rowSelected
			
			set plusButton to button "+" of UI element 1 of rowSelected
			my clickByPositionSize(position of plusButton, size of plusButton)
			
			if stepName is "Set Variable" then
				set specifyButton to button "Specify…" of window 1
				my clickByPositionSize(position of specifyButton, size of specifyButton)
			else
				set specifyButton to button 1 of pop over 1 of plusButton
				(* it turns out that, because FM named BOTH Specify buttons the same and with no accessibility description,
				   something isn't working right. In fact, "button 1" and "button 2" both return the same size and position. 
				   So, just get button 1, then add pixels to its position to get the coordinates below. 
				  And, cannot directly read out the numbers when using reference to position, so pull out position 
				  into a simple variable first. 
				*)
				set button1_pos to position of specifyButton
				set button1_x to item 1 of button1_pos
				set button1_y to item 2 of button1_pos
				set posOfValueSpecify to {button1_x, 24 + button1_y}
				my clickByPositionSize(posOfValueSpecify, size of specifyButton)
			end if
			
		end tell
	end tell
	
end run


on clickByPositionSize(objectPosition, objectSize)
	
	set {xCoord, yCoord} to objectPosition
	set {xSize, ySize} to objectSize
	set objOffset to round (minNum({xSize, ySize}) / 2) rounding down
	set xClick to xCoord + objOffset
	set yClick to yCoord + objOffset
	
	tell application "htcLib" to clickAtCoords(xClick, yClick)
	return result
end clickByPositionSize

on minNum(someList)
	-- version 2020-03-04-1535
	
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