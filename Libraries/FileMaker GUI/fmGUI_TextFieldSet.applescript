-- fmGUI_TextFieldSet(textfieldObject, textfieldValue)
-- Dan Shockley, NYHTC
-- Works on text fields and/or text areas, as referenced by the parameter.


(*
HISTORY:
	1.0 - created
*)


on run
	tell application "System Events"
		tell application process "FileMaker Pro Advanced"
			set frontmost to true
			set FieldCommentInManageDatabase to text field "Comment:" of tab group 1 of window 1
		end tell
	end tell
	fmGUI_TextFieldSet(FieldCommentInManageDatabase, "some comment")
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_TextFieldSet(textfieldObject, textfieldValue)
	-- version 1.0, Daniel A. Shockley
	
	using terms from application "System Events"
		try
			if textfieldValue is not null then
				if value of textfieldObject is not equal to (textfieldValue) then
					set focused of textfieldObject to true
					set value of textfieldObject to textfieldValue
				else
					return false -- did not need to change.
				end if
			end if
			return true
			
		on error errMsg number errNum
			error "Couldn't select '" & textfieldValue & "' for text field - " & errMsg number errNum
		end try
	end using terms from
end fmGUI_TextFieldSet

--------------------
-- END OF CODE
--------------------
