-- fmGUI_ManageLayouts_OpenEditForSelected({})
-- Erik Shagdar, NYHTC
-- for the selected layout, open the edit window


(*
HISTORY:
	1.0 - 2017-11-06 ( eshagdar ): created


REQUIRES:
	fmGUI_Menu_OpenLayouts
*)


on run
	fmGUI_ManageLayouts_OpenEditForSelected({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageLayouts_OpenEditForSelected(prefs)
	-- version 1.0
	
	try
		set defaultPrefs to {}
		set prefs to prefs & defaultPrefs
		
		return fmGUI_ObjectClick_Button({buttonName:"Edit", windowNameThatOpens:"Layout Setup"})
	on error errMsg number errNum
		error "unable to fmGUI_ManageLayouts_OpenEditForSelected - " & errMsg number errNum
	end try
end fmGUI_ManageLayouts_OpenEditForSelected

--------------------
-- END OF CODE
--------------------

on fmGUI_ObjectClick_Button(prefs)
	tell application "htcLib" to fmGUI_ObjectClick_Button(prefs)
end fmGUI_ObjectClick_Button
