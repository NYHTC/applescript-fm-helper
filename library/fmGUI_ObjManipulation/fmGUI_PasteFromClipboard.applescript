-- fmGUI_PasteFromClipboard()
-- Erik Shagdar, NYHTC
-- Paste FileMaker object into the current context. Assumes the focus is already set and there is an object in the clipboard

(*
HISTORY:
	1.1 - 2016-09-29 ( eshagdar ): HTC is converting 'Paste' menu item to 'Paste Styled Text'. The default 'Paste' shortcut is pasting plain text. This tries the default 'Paste' command, and then uses 'Paste Styled Text' if needed.
	1.0 - 2016-06-28 ( eshagdar ): first created
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
	-- version 1.1, Erik Shagdar
	
	set paseMenuItemExists to false
	
	tell application "System Events"
		tell application process "FileMaker Pro Advanced"
			
			my fmGUI_AppFrontMost()
			
			try
				set pasteMenuItem to first menu item of menu 1 of menu bar item "Edit" of menu bar 1 whose name is "Paste"
			on error
				set pasteMenuItem to first menu item of menu 1 of menu bar item "Edit" of menu bar 1 whose name is "Paste Styled Text"
			end try
			
			return pasteMenuItem
			try
				click pasteMenuItem
			on error errMsg number errNum
				error "Unable to click 'Select All' menu item - " & errMsg number errNum
			end try
			
			
			-- waiting until the paste item exists suggests the paste completed
			repeat 20 times
				try
					if exists pasteMenuItem then
						set paseMenuItemExists to true
						exit repeat
					end if
				end try
				delay 0.5
			end repeat
		end tell
	end tell
	
	return paseMenuItemExists
	
end fmGUI_PasteFromClipboard

--------------------
-- END OF CODE
--------------------
on fmGUI_AppFrontMost()
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost
