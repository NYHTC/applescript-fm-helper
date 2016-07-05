-- fmGUI_ObjectClick_AffectsWindow(buttonRef)
-- Dan Shockley, NYHTC
-- Click on an object that will open a window


(*
HISTORY:
	1.0 - created
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	tell application "System Events"
		tell process "FileMaker Pro"
			set frontmost to true
			set AddExpressionObjectOfDataViewer to first button of tab group 1 of window 1 whose accessibility description is "Add Expression"
		end tell
	end tell
	
	fmGUI_ObjectClick_AffectsWindow(AddExpressionObjectOfDataViewer)
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ObjectClick_AffectsWindow(buttonRef)
	-- version 1.0
	
	using terms from application "System Events"
		my clickObjectByCoords(buttonRef)
	end using terms from
	
end fmGUI_ObjectClick_AffectsWindow

--------------------
-- END OF CODE
--------------------

on clickObjectByCoords(someObject)
	tell helper to clickObjectByCoords(someObject)
end clickObjectByCoords
