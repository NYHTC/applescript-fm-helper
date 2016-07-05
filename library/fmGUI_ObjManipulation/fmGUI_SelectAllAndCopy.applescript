-- fmGUI_SelectAllAndCopy()
-- Erik Shagdar, NYHTC
-- select all and copy in whatever the context is

(*
HISTORY:
	1.0 - 2016-06-28 ( eshagdar ): first created
*)

property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	fmGUI_SelectAllAndCopy()
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_SelectAllAndCopy()
	-- version 1.0
	
	set the clipboard to ""
	set clipboardChanged to false
	
	tell application "System Events"
		tell application process "FileMaker Pro Advanced"
			my fmGUI_AppFrontMost()
			
			try
				click (first menu item of menu 1 of menu bar item "Edit" of menu bar 1 whose name is "Select All")
			on error errMsg number errNum
				error "Unable to click 'Select All' menu item - " & errMsg number errNum
			end try
			
			try
				click (menu item "Copy" of menu 1 of menu bar item "Edit" of menu bar 1)
			on error errMsg number errNum
				error "Unable to click 'Copy' menu item - " & errMsg number errNum
			end try
			
			
			repeat 10 times
				try
					-- We set the clipboard to an empty string. Once utf8 is no longer in it (or isn't empty), we must have picked up the objects copied above.
					get the clipboard as Çclass utf8È
					if length of result is greater than 0 then
						set clipboardChanged to true
						exit repeat
					end if
				on error
					set clipboardChanged to true
					exit repeat
				end try
				delay 1
			end repeat
			
		end tell
	end tell
	
	return clipboardChanged
	
end fmGUI_SelectAllAndCopy

--------------------
-- END OF CODE
--------------------
on fmGUI_AppFrontMost()
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost
