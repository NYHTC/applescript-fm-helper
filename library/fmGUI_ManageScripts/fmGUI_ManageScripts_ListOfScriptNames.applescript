-- fmGUI_ManageScripts_ListOfScriptNames(someDbName)
-- Daniel A. Shockley, NYHTC
-- Return the list of all script names


(*
HISTORY:
	1.2 - 2016-07-08 ( eshagdar ): Renamed from 'namesOfScriptsOfDatabase' to 'fmGUI_ManageScripts_ListOfScriptNames'
	1.1 - handles when there are NO script, even though db exists. 
	1.0 - 201x-xx-xx ( dshcokley ): first created


REQUIRES:
	«list of handlers required»
	«list of handlers required»
*)


property helper : ""

on run
	fmGUI_ManageScripts_ListOfScriptNames("WUSHOP")
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_ManageScripts_ListOfScriptNames(someDbName)
	-- version 1.2
	
	tell application id "com.filemaker.client.advanced12"
		
		if (count of every FileMaker script of database someDbName) is equal to 0 then
			return {}
		else
			return name of every FileMaker script of database someDbName
		end if
		
		error "Could not get ManageScripts_ListOfScriptNames of database specified: " & someDbName & "." number 1024
		
	end tell
	
end ManageScripts_ListOfScriptNames

--------------------
-- END OF CODE
--------------------
