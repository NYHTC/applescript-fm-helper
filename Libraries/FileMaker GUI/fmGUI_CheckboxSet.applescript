-- fmGUI_CheckboxSet(checkboxObject, checkboxValue)
-- Dan Shockley, NYHTC
-- (de)select checkbox object


(*
HISTORY:
	1.0 - created

*)


on run
	tell application "System Events"
		tell process "FileMaker Pro"
			set frontmost to true
			set CreationFieldOptionCheckbox to checkbox "Creation" of tab group 1 of window 1
		end tell
	end tell
	
	fmGUI_CheckboxSet(CreationFieldOptionCheckbox, 1)
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_CheckboxSet(checkboxObject, checkboxValue)
	-- version 1.0, Dan Shockley
	
	using terms from application "System Events"
		try
			if checkboxValue is not null then
				if value of checkboxObject is not checkboxValue then
					click checkboxObject
				end if
			end if
			return true
			
		on error errMsg number errNum
			error "Couldn't select '" & checkboxValue & "' for checkbox - " & errMsg number errNum
		end try
	end using terms from
end fmGUI_CheckboxSet

--------------------
-- END OF CODE
--------------------
