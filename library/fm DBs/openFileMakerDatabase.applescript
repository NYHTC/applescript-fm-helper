-- openFileMakerDatabase({serverIP:"", dbName:"", mainDbName:"", customLinkReceiverScriptName:""})
-- Daniel A. Shockley, NYHTC
-- FIRST make sure it is open, then make sure it is showing a WINDOW.


(*
HISTORY:
	1.3 - now takes record param: {serverIP:, mainDbName:, customLinkReceiverScriptName:, dbName: }
	1.2 - be sure to send the ShowWindow param.
	1.1 - 
	1.0 - created
*)


property helper : ""
property debugMode : true
property ScriptName : "openFileMakerDatabase_TEST"


on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	openFileMakerDatabase({mainDbName:"a00_TIMESSQUARE", dbName:"WUSHOP", serverIP:"192.168.254.6", customLinkReceiverScriptName:"ReceiveSomeLink_DO_NOT_RENAME"})
end run



--------------------
-- START OF CODE
--------------------

on openFileMakerDatabase(prefs)
	-- version 1.3
	
	try
		set customURL to "htclink://AccessFile?FileName=" & dbName of prefs & "&Command=Open&SilentOpen=1&ShowWindow=1"
		
		tell application "System Events"
			
			set fmpURL to "FMP://" & serverIP of prefs & "/" & mainDbName of prefs & "?script=" & customLinkReceiverScriptName of prefs & "&param=" & my encodeTextForURL(customURL, true, false)
			
			-- we must double-encode equals (%3D) and ampersand (%26) to work-around FileMaker bug:
			set fmpURL to my replaceSimple({fmpURL, "%3D", "%253D"})
			set fmpURL to my replaceSimple({fmpURL, "%26", "%2526"})
			
			if debugMode then my logConsole(ScriptName, "openFileMakerDatabase fmpURL: " & fmpURL)
			
			open location fmpURL
			
		end tell
		
		return true
		
	on error errMsg number errNum
		-- ANY error should return FALSE, as in "could not be opened"
		
		return errMsg --false
		
	end try
	
	
end openFileMakerDatabase

--------------------
-- END OF CODE
--------------------

on replaceSimple(prefs)
	tell helper to replaceSimple(prefs)
end replaceSimple

on logConsole(processName, consoleMsg)
	tell helper to logConsole(processName, consoleMsg)
end logConsole
