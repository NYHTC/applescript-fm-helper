-- fmGUI_ManageLayouts_LayoutOpen(prefs)
-- Daniel A. Shockley, NYHTC
-- open Manage Layouts


(*
HISTORY:
	1.0 - 2017-11-06 ( eshagdar ): created


REQUIRES:
	fmGUI_DataViewer_Close
	fmGUI_Inspector_Close
	fmGUI_ManageLayouts_Open
	fmGUI_ManageLayouts_Select
	fmGUI_NameOfFrontmostWindow
*)


on run
	fmGUI_ManageLayouts_Open({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageLayouts_LayoutOpen(prefs)
	-- version 1.4
	
	-- 1.4 - 2018-09-06 ( eshagdar ): params is a dictionary
	-- 1.3 - 2017-06-14 ( eshagdar ): narrowed scope
	-- 1.2 - 2017-04-03 ( eshagdar ): use handlers to test/wait for new window to appear.
	
	set defaultPrefs to {someLayoutName:null}
	set prefs to prefs & defaultPrefs
	
	set someLayoutName to someLayoutName of prefs
	
	
	try
		fmGUI_ManageLayouts_Open({})
		set layoutSelected to fmGUI_ManageLayouts_Select({layoutName:someLayoutName})
		
		
		if not layoutSelected then
			-- could NOT select the specified layout - ERROR
			error "Could not select the layout named '" & someLayoutName & "' - so cannot open it."
		else
			fmGUI_DataViewer_Close()
			fmGUI_Inspector_Close()
			set startingWindowName to fmGUI_NameOfFrontmostWindow()
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set openButton to first button of window 1 whose title is "Open"
				end tell
			end tell
			clickObjFromHtcLib(openButton)
			windowWaitUntil_FrontIsNOT({windowName:startingWindowName})
		end if
	on error errMsg number errNum
		error "Couldn't open window to modify Layout - " & errMsg number errNum
	end try
	
end fmGUI_ManageLayouts_LayoutOpen

--------------------
-- END OF CODE
--------------------

on fmGUI_DataViewer_Close()
	tell application "htcLib" to fmGUI_DataViewer_Close()
end fmGUI_DataViewer_Close

on fmGUI_Inspector_Close()
	tell application "htcLib" to fmGUI_Inspector_Close()
end fmGUI_Inspector_Close

on fmGUI_ManageLayouts_Open(prefs)
	tell application "htcLib" to fmGUI_ManageLayouts_Open(prefs)
end fmGUI_ManageLayouts_Open

on fmGUI_ManageLayouts_Select(prefs)
	tell application "htcLib" to fmGUI_ManageLayouts_Select(prefs)
end fmGUI_ManageLayouts_Select

on fmGUI_NameOfFrontmostWindow()
	tell application "htcLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_Inspector_Close

