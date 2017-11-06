-- fmGUI_ManageLayouts_Select({layoutName:null})
-- Daniel A. Shockley, NYHTC
-- select a layout from Manage Layouts window


(*
HISTORY:
	1.3 - 2017-11-06 ( eshagdar ): select layout by filtering for  it instead of having to expand every folder and search in scroll area.
	1.2 - 2017-04-04 ( eshagdar ): convert to dictionary
	1.1 - 
	1.0 - 201x-xx-xx ( dshockley ): created


REQUIRES:
	fmGUI_Menu_OpenLayouts
*)


on run
	fmGUI_ManageLayouts_Select({layoutName:"Selector"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageLayouts_Select(prefs)
	-- version 1.0
	
	try
		set defaultPrefs to {layoutName:null}
		set prefs to prefs & defaultPrefs
		set layoutName to layoutName of prefs
		if layoutName is null then error "must specify layout name" number -1024
		
		
		fmGUI_ManageLayouts_Open({})
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set searchTextField to text field 1 of window 1
				set searchButton to button 1 of text field 1 of window 1
			end tell
		end tell
		fmGUI_TextFieldSet({objRef:searchTextField, objValue:layoutName})
		delay 0.1
		fmGUI_ObjectClick_Button({buttonRef:searchButton})
		
		
		-- after filter, search across all matches and select the first row that matches		
		try
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set clearButton to button 2 of text field 1 of window 1
					select (first row of outline 1 of scroll area 1 of window 1 whose value of text field 1 is layoutName)
				end tell
			end tell
			fmGUI_ObjectClick_Button({buttonRef:clearButton})
			fmGUI_ManageLayouts_LayoutListFocus({})
			return true
		on error
			fmGUI_ObjectClick_Button({buttonRef:clearButton})
			return false
		end try
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageLayouts_Select - " & errMsg number errNum
	end try
end fmGUI_ManageLayouts_Select

--------------------
-- END OF CODE
--------------------

on fmGUI_ManageLayouts_Open(prefs)
	tell application "htcLib" to fmGUI_ManageLayouts_Open(prefs)
end fmGUI_ManageLayouts_Open

on fmGUI_ManageLayouts_LayoutListFocus(prefs)
	tell application "htcLib" to fmGUI_ManageLayouts_LayoutListFocus(prefs)
end fmGUI_ManageLayouts_LayoutListFocus

on fmGUI_ObjectClick_Button(prefs)
	set buttonRef to my coerceToString(buttonRef of prefs)
	tell application "htcLib" to fmGUI_ObjectClick_Button({buttonRef:buttonRef} & prefs)
end fmGUI_ObjectClick_Button

on fmGUI_TextFieldSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "htcLib" to fmGUI_TextFieldSet({objRef:objRefStr} & prefs)
end fmGUI_TextFieldSet



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "htcLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
