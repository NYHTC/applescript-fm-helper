-- fmGUI_CopySelected({})
-- Erik Shagdar, NYHTC
-- Copy the selected objects in the current window in FileMaker


(*
HISTORY:
	1.3 - 2016-10-18 ( eshagdar ): use fmGUI_clickMenuItem handler
	1.2 - 2016-10-18 ( eshagdar ): make sure the menu item is available again
	1.1 - 2016-10-14 ( eshagdar ): 1.0 was looking only for script steps. now looks at non-zero length


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_menuItemAvailable
*)


on run
	fmGUI_CopySelected()
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_CopySelected(prefs)
	-- version 1.3, Erik Shagdar
	
	set defaultPrefs to {}
	set prefs to prefs & defaultPrefs
	
	try
		clipboardClear() -- want clipboard to be EMPTY before we copy, so we can check for copied scripts.
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set copyMenuItem to menu item "Copy" of menu 1 of menu bar item "Edit" of menu bar 1
			end tell
		end tell
		
		return fmGUI_clickMenuItem({menuItemRef:copyMenuItem})
		
	on error errMsg number errNum
		error "Couldn't fmGUI_CopySelected - " & errMsg number errNum
	end try
	
end fmGUI_CopySelected

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_menuItemAvailable(prefs)
	tell application "htcLib" to fmGUI_menuItemAvailable(prefs)
end fmGUI_menuItemAvailable
