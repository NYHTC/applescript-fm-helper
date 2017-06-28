-- openFileMakerDatabase({serverIP:"", dbName:"", mainDbName:"", customLinkReceiverScriptName:""})
-- Daniel A. Shockley, NYHTC
-- FIRST make sure it is open, then make sure it is showing a WINDOW.


(*
HISTORY:
	1.4 - narrowed scope
	1.3 - now takes record param: {serverIP:, mainDbName:, customLinkReceiverScriptName:, dbName: }
	1.2 - be sure to send the ShowWindow param.
	1.1 - 
	1.0 - created


REQUIRES:
	encodeTextForURL
	logConsole
	replaceSimple
*)


property debugMode : true
property ScriptName : "openFileMakerDatabase_TEST"


on run
	openFileMakerDatabase({mainDbName:"a00_TIMESSQUARE", dbName:"WUSHOP", serverIP:"192.168.254.6", customLinkReceiverScriptName:"ReceiveSomeLink_DO_NOT_RENAME"})
end run



--------------------
-- START OF CODE
--------------------

on openFileMakerDatabase(prefs)
	-- version 1.4
	
	try
		set customURL to "htclink://AccessFile?FileName=" & dbName of prefs & "&Command=Open&SilentOpen=1&ShowWindow=1"
		set fmpURL to "FMP://" & serverIP of prefs & "/" & mainDbName of prefs & "?script=" & customLinkReceiverScriptName of prefs & "&param=" & encodeTextForURL(customURL, true, false)
		
		-- we must double-encode equals (%3D) and ampersand (%26) to work-around FileMaker bug:
		set fmpURL to replaceSimple({fmpURL, "%3D", "%253D"})
		set fmpURL to replaceSimple({fmpURL, "%26", "%2526"})
		
		if debugMode then logConsole(ScriptName, "openFileMakerDatabase fmpURL: " & fmpURL)
		
		tell application "System Events" to open location fmpURL
		
		
		return true
		
	on error errMsg number errNum
		-- ANY error should return FALSE, as in "could not be opened"
		
		return errMsg --false
		
	end try
	
	
end openFileMakerDatabase

--------------------
-- END OF CODE
--------------------

on encodeTextForURL(this_text, encode_URL_A, encode_URL_B)
	tell application "htcLib" to encodeTextForURL(this_text, encode_URL_A, encode_URL_B)
end encodeTextForURL

on logConsole(processName, consoleMsg)
	tell application "htcLib" to logConsole(processName, consoleMsg)
end logConsole

on replaceSimple(prefs)
	tell application "htcLib" to replaceSimple(prefs)
end replaceSimple
