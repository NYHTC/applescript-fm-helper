-- fmGUI_SelectAllAndCopy()
-- Erik Shagdar, NYHTC
-- select all and copy in whatever the context is

(*
HISTORY:
	1.2 - 2016-10-14 ( eshagdar ): use clipboardClear handler
	1.1 - 2016-10-13 ( eshagdar ): replaced select all and copy with handlers
	1.0 - 2016-06-28 ( eshagdar ): first created


REQUIRES:
	fmGUI_AppFrontMost
	clipboardClear
	fmGUI_CopySelected
	fmGUI_SelectAll
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
	-- version 1.2, Erik Shagdar
	
	clipboardClear()
	set clipboardChanged to false
	
	
	fmGUI_AppFrontMost()
	fmGUI_SelectAll()
	tell application "System Events" to delay 0.5
	fmGUI_CopySelected({})
	
	
	tell application "System Events"
		repeat 50 times
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
			delay 0.5
		end repeat
	end tell
	
	return clipboardChanged
	
end fmGUI_SelectAllAndCopy

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell helper to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on clipboardClear()
	tell helper to clipboardClear()
end clipboardClear

on fmGUI_CopySelected()
	tell helper to fmGUI_CopySelected()
end fmGUI_CopySelected

on fmGUI_SelectAll()
	tell helper to fmGUI_SelectAll()
end fmGUI_SelectAll
