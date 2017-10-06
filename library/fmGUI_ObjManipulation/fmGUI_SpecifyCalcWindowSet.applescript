-- fmGUI_SpecifyCalcWindowSet({calcValue:null})
-- Erik Shagdar, NYHTC
-- Set the contents of a 'Specify Calculation' window.


(*
HISTORY:
	1.0 - 2017-09-22 ( eshagdar ):created


REQUIRES:
	fmGUI_AppFrontMost
	windowWaitUntil
	windowWaitUntil_FrontIS
	fmGUI_ObjectClick_CancelButton
	fmGUI_ObjectClick_OkButton
*)


on run
	fmGUI_SpecifyCalcWindowSet({calcValue:"\"bob\""})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_SpecifyCalcWindowSet(prefs)
	-- version 1.0
	
	set defaultPrefs to {calc:null}
	set prefs to prefs & defaultPrefs
	
	set needsSave to false
	set calcBoxWindowName to "Specify Calculation"
	
	
	try
		-- ensure context
		fmGUI_AppFrontMost()
		if not windowWaitUntil_FrontIS({windowName:calcBoxWindowName}) then error "Timed out waiting for '" & calcBoxWindowName & "' window" number -1024
		
		tell application "System Events"
			tell process "FileMaker Pro"
				set calcBox to text area 1 of scroll area 1 of splitter group 1 of window 1
				if value of calcBox is not equal to calcValue of prefs then
					set the value of calcBox to calcValue of prefs
					set needsSave to true
				end if
			end tell
		end tell
		
		if needsSave then
			fmGUI_ObjectClick_OkButton({})
		else
			fmGUI_ObjectClick_CancelButton({})
		end if
		windowWaitUntil_FrontNotIS({windowName:calcBoxWindowName})
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_SpecifyCalcWindowSet - " & errMsg number errNum
	end try
end fmGUI_SpecifyCalcWindowSet

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on windowWaitUntil_FrontIS(prefs)
	tell application "htcLib" to windowWaitUntil_FrontIS(prefs)
end windowWaitUntil_FrontIS

on windowWaitUntil_FrontNotIS(prefs)
	tell application "htcLib" to windowWaitUntil_FrontNotIS(prefs)
end windowWaitUntil_FrontNotIS

on fmGUI_ObjectClick_CancelButton(prefs)
	tell application "htcLib" to fmGUI_ObjectClick_CancelButton(prefs)
end fmGUI_ObjectClick_CancelButton

on fmGUI_ObjectClick_OkButton(prefs)
	tell application "htcLib" to fmGUI_ObjectClick_OkButton(prefs)
end fmGUI_ObjectClick_OkButton
