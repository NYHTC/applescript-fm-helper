-- ensureFileMakerDatabase({serverIP:"", dbName:"", mainDbName:"", customLinkReceiverScriptName:"", fmAppType:""})
-- Dan Shockley, NYHTC
-- Make sure that a database is open and (one of) its window(s) is in front.


(*
HISTORY:
	1.3 - record param: {serverIP:, mainDbName:, customLinkReceiverScriptName:, dbName: }
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	displayFileMakerDatabase
	logConsole
	openFileMakerDatabase
*)


property helper : ""
property ScriptName : "ensureFileMakerDatabase_Test"
property DebugMode : true

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	ensureFileMakerDatabase({mainDbName:"a00_TIMESSQUARE", dbName:"WUSHOP", fmAppType:"Adv", serverIP:"192.168.254.6", customLinkReceiverScriptName:"ReceiveSomeLink_DO_NOT_RENAME"})
end run


--------------------
-- START OF CODE
--------------------

on ensureFileMakerDatabase(prefs)
	-- version 1.3
	
	set dbName to dbName of prefs
	
	set isDisplayed to displayFileMakerDatabase({dbName:dbName, fmAppType:"Adv"}) -- first, just see if one is available.
	if DebugMode then logConsole(ScriptName, "Tried to display: " & dbName)
	if isDisplayed then
		return true
	else
		if DebugMode then logConsole(ScriptName, "About to try to open: " & dbName)
		
		if openFileMakerDatabase(prefs) then
			-- was able to open it, so NOW display window.
			delay 0.5
			if DebugMode then logConsole(ScriptName, "Tried to open, now try again to display: " & dbName)
			set isDisplayed to displayFileMakerDatabase({dbName:dbName, fmAppType:"Adv"})
			return isDisplayed
		else
			-- Was NOT able to open it, so return false.
			return false
		end if
	end if
end ensureFileMakerDatabase



--------------------
-- END OF CODE
--------------------

on displayFileMakerDatabase(prefs)
	tell helper to displayFileMakerDatabase(prefs)
end displayFileMakerDatabase

on openFileMakerDatabase(prefs)
	tell helper to openFileMakerDatabase(prefs)
end openFileMakerDatabase

on logConsole(processName, consoleMsg)
	tell helper to logConsole(processName, consoleMsg)
end logConsole
