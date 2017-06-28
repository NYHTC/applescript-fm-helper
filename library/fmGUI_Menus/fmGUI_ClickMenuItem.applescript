-- fmGUI_ClickMenuItem({menuItemRef:null})
-- Erik Shagdar, NYHTC
-- click on a menu item in FileMaker


(*
HISTORY:
	1.0 - 2016-10-18 ( eshagdar ): first created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_menuItemAvailable
*)


on run
	tell application "System Events"
		tell application process "FileMaker Pro Advanced"
			set copyMenuItem to menu item "Copy" of menu 1 of menu bar item "Edit" of menu bar 1
		end tell
	end tell
	fmGUI_ClickMenuItem({menuItemRef:copyMenuItem})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ClickMenuItem(prefs)
	-- version 1.0, Erik Shagdar
	
	set defaultPrefs to {menuItemRef:null}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				click (menuItemRef of prefs)
			end tell
		end tell
		return fmGUI_menuItemAvailable(prefs)
		
	on error errMsg number errNum
		error "Unable to fmGUI_ClickMenuItem - " & errMsg number errNum
	end try
end fmGUI_ClickMenuItem

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_menuItemAvailable(prefs)
	tell application "htcLib" to fmGUI_menuItemAvailable(prefs)
end fmGUI_menuItemAvailable
