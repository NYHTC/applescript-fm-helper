-- fmGUI_PasteFromClipboard()
-- Erik Shagdar, NYHTC
-- Paste FileMaker object into the current context. Assumes the focus is already set and there is an object in the clipboard

(*
HISTORY:
	1.3 - 2016-10-27 ( eshagdar ): added try block.
	1.2 - 2016-10-18 ( eshagdar ): call fmGUI_clickMenuItem handler
	1.1 - 2016-09-29 ( eshagdar ): HTC is converting 'Paste' menu item to 'Paste Styled Text'. The default 'Paste' shortcut is pasting plain text. This tries the default 'Paste' command, and then uses 'Paste Styled Text' if needed.
	1.0 - 2016-06-28 ( eshagdar ): first created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_clickMenuItem
*)

property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	fmGUI_PasteFromClipboard()
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_PasteFromClipboard()
	-- version 1.3, Erik Shagdar
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				-- get the menu item
				try
					set pasteMenuItem to first menu item of menu 1 of menu bar item "Edit" of menu bar 1 whose name is "Paste"
				on error
					set pasteMenuItem to first menu item of menu 1 of menu bar item "Edit" of menu bar 1 whose name is "Paste Styled Text"
				end try
				
			end tell
		end tell
		
		return fmGUI_ClickMenuItem({menuItemRef:pasteMenuItem})
		
	on error errMsg number errNum
		error "Couldn't fmGUI_CopySelected - " & errMsg number errNum
	end try
	
end fmGUI_PasteFromClipboard

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_clickMenuItem(prefs)
	tell helper to fmGUI_clickMenuItem(prefs)
end fmGUI_clickMenuItem