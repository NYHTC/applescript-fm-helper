-- fmGUI_DataViewer_Open({fullAccessAccountName:"", fullAccessPassword:""})
-- Erik Shagdar, NYHTC
-- Open FileMaker's Inspector window


(*
HISTORY:
	1.0 - 2017-10-18 ( eshagdar ): first created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ClickMenuItem
*)


on run
	fmGUI_DataViewer_Open({fullAccessAccountName:"", fullAccessPassword:""})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_DataViewer_Open(prefs)
	-- version 1.0
	try
		set defaultPrefs to {fullAccessAccountName:null, fullAccessPassword:null}
		set prefs to prefs & defaultPrefs
		set dvName to "Data Viewer"
		
		fmGUI_AppFrontMost()
		
		-- select data viewer window
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				try
					set dvWindow to first window whose name is equal to dvName
					set dataViewerMenuItem to null
				on error
					set dataViewerMenuItem to menu item dvName of menu "Tools" of menu bar item "Tools" of menu bar 1
				end try
			end tell
		end tell
		
		
		-- window does not exist, so open it
		if dataViewerMenuItem is not null then
			fmGUI_ClickMenuItem({menuItemRef:dataViewerMenuItem})
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set dvWindow to first window whose name is equal to dvName
				end tell
			end tell
		end if
		
		
		-- authenticate viewer if needed
		try
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					get scroll area 1 of tab group 1 of window 1
					if value of radio button "Current" of tab group 1 of dvWindow is 1 then
						set authButton to button 2 of tab group 1 of dvWindow
					else if value of radio button "Watch" of tab group 1 of dvWindow is 1 then
						set authButton to button 1 of tab group 1 of dvWindow
					end if
				end tell
			end tell
			clickObjectByCoords(authButton)
			fmGUI_AuthenticateDialog({accountName:fullAccessAccountName of prefs, pwd:fullAccessPassword of prefs, windowname:"Authenticate Script Debugging"})
		end try
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_DataViewer_Open - " & errMsg number errNum
	end try
end fmGUI_DataViewer_Open

--------------------
-- END OF CODE
--------------------

on clickObjectByCoords(prefs)
	tell application "htcLib" to clickObjectByCoords(my coerceToString(prefs))
end clickObjectByCoords

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_AuthenticateDialog(prefs)
	tell application "htcLib" to fmGUI_AuthenticateDialog(prefs)
end fmGUI_AuthenticateDialog

on fmGUI_ClickMenuItem(prefs)
	set prefs to {menuItemRef:my coerceToString(menuItemRef of prefs)} & prefs
	tell application "htcLib" to fmGUI_ClickMenuItem(prefs)
end fmGUI_ClickMenuItem



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "htcLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
