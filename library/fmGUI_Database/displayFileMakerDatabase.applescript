-- displayFileMakerDatabase({dbName:"", fmAppType:"", waitCycleDelaySeconds:"", waitSaveTotalSeconds:""})
-- Dan Shockley, NYHTC
-- If open, then display first window this finds and return true, else return false.


(*
HISTORY:
	1.5.3 - 2018-01-18 ( eshagdar ): capture privSet violation error
	1.5.2 - 2017-11-20 ( eshagdar ): disable logging
	1.5.1 - 2017-10-25 ( eshagdar ): updated defaultPrefs. updated helper handlers. added delay, more debugging messages. get list of document names instead of documents - we don't need to get the name later.
	1.5 - added a time-out loop for dealing with delay in being able to get list of databases. 
	1.4 - added error-handling
	1.3 - 
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	coerceToString
	logConsole
*)


property debugMode : true
property ScriptName : "displayFileMakerDatabase_TEST"

on run
	displayFileMakerDatabase({dbName:"b02_BridgeyMcBridgeFace", fmAppType:"Adv"})
end run

--------------------
-- START OF CODE
--------------------

on displayFileMakerDatabase(prefs)
	-- version 1.5.3
	
	try
		set defaultPrefs to {dbName:null, fmAppType:"Pro", waitCycleDelaySeconds:5, waitSaveTotalSeconds:2 * minutes}
		set prefs to prefs & defaultPrefs
		
		--if debugMode then logConsole(ScriptName, "displayFileMakerDatabase prefs: " & coerceToString(prefs))
		
		set dbName to dbName of prefs
		
		set waitSaveTotalSeconds to waitSaveTotalSeconds of prefs
		set waitCycleDelaySeconds to waitCycleDelaySeconds of prefs
		set waitCycleMax to round (waitSaveTotalSeconds / waitCycleDelaySeconds) rounding down
		
		
		-- determine bundle name		
		if fmAppType of prefs is "Adv" then
			set fmAppBundleID to "com.filemaker.client.advanced12"
		else
			set fmAppBundleID to "com.filemaker.client.pro12"
		end if
		
		
		-- get name of all documents
		delay 0.25
		repeat waitCycleMax times
			set docNameList to null
			try
				using terms from application "FileMaker Pro Advanced"
					tell application ID fmAppBundleID
						set docNameList to name of every document
					end tell
				end using terms from
				
				if docNameList is not null then exit repeat
			on error errMsg number errNum
				if errNum is -10011 then
					-- just keep trying - this error can be caused when a database is opening and the open script takes a bit too long to finish, or something in the FM interface is slow to respond. 
				else if errNum is -10004 then
					error "privSet violation in some FM file..." & errNum number errNum
				else
					error "Error getting list of databases already open - " & errMsg number errNum
				end if
			end try
			
			delay waitCycleDelaySeconds
		end repeat
		--if debugMode then my logConsole(ScriptName, "displayFileMakerDatabase docNameList: " & my coerceToString(docNameList))
		
		
		--loop through available document and bring the specified to the front
		repeat with oneDocName in docNameList
			set oneDocName to contents of oneDocName
			
			-- get the name WITHOUT the file extension: 
			(reverse of characters of oneDocName) as string
			text ((offset of "." in result) + 1) thru -1 of result
			set oneDocName to (reverse of characters of result) as string
			
			-- apparently these two TEXT variables have some difference (formatting?) even when they are identical STRINGS:
			ignoring case
				if oneDocName is equal to (dbName as string) then
					--if debugMode then log "SAME"
					using terms from application "FileMaker Pro Advanced"
						tell application ID fmAppBundleID
							--if debugMode then my logConsole(ScriptName, "displayFileMakerDatabase about to show oneDocName: " & oneDocName)
							show document oneDocName
							if debugMode then my logConsole(ScriptName, "displayFileMakerDatabase: " & oneDocName)
						end tell
					end using terms from
					return true
				else
					--if debugMode then logConsole(ScriptName, "displayFileMakerDatabase DIFF: " & oneDocName)
				end if
			end ignoring
		end repeat
		
		
		return false
	on error errMsg number errNum
		error "unable to displayFileMakerDatabase - " & errMsg number errNum
	end try
end displayFileMakerDatabase

--------------------
-- END OF CODE
--------------------

on logConsole(processName, consoleMsg)
	tell application "htcLib" to logConsole(processName, consoleMsg)
end logConsole



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "htcLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString

