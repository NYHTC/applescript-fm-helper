-- ensureObjectRef(someObjectRef)
-- Dan Shockley, Erik Shagdar, NYHTC
-- Ensure the passed in object ( or string ) is actually an object reference

(*
HISTORY:
	1.0 - 2017-06-29 ( dshockley/eshagdar ): created
*)


on run
	ensureObjectRef("button \"Cancel\" of window \"Edit Privilege Set\" of application process \"FileMaker Pro\" of application \"System Events\"")
end run

--------------------
-- START OF CODE
--------------------

on ensureObjectRef(someObjectRef)
	
	tell application "System Events"
		
		if class of someObjectRef is equal to class of "fakestring" then
			set objCode to "script someObject" & return & Â
				"tell app \"System Events\" to " & someObjectRef & return & Â
				"end script" & return & Â
				"run someObject"
			
			set someObjectRef to run script objCode
			
		end if
		
		return someObjectRef
		
	end tell
	
end ensureObjectRef

--------------------
-- END OF CODE
--------------------
