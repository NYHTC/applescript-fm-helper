-- displayFileMakerDatabase({dbName:"", fmAppType:"", waitCycleDelaySeconds:"", waitSaveTotalSeconds:""})
-- Dan Shockley, NYHTC
-- If open, then display first window this finds and return true, else return false.


(*
HISTORY:
	1.5 - added a time-out loop for dealing with delay in being able to get list of databases. 
	1.4 - added error-handling
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
*)


property debugMode : true

on run
	displayFileMakerDatabase({dbName:"a00_TIMESSQUARE", fmAppType:"Adv"})
end run


--------------------
-- START OF CODE
--------------------

on displayFileMakerDatabase(prefs)
	-- version 1.5, Daniel A. Shockley
	
	try
		set defaultPrefs to {fmAppType:"Pro", waitCycleDelaySeconds:5, waitSaveTotalSeconds:2 * minutes}
		set prefs to prefs & defaultPrefs
		
		set dbName to dbName of prefs
		
		set waitSaveTotalSeconds to waitSaveTotalSeconds of prefs
		set waitCycleDelaySeconds to waitCycleDelaySeconds of prefs
		
		set waitCycleMax to round (waitSaveTotalSeconds / waitCycleDelaySeconds) rounding down
		
		if fmAppType of prefs is "Adv" then
			set fmAppBundleID to "com.filemaker.client.advanced12"
		else
			set fmAppBundleID to "com.filemaker.client.pro12"
		end if
		
		
		repeat waitCycleMax times
			
			set docList to null
			try
				using terms from application "FileMaker Pro Advanced"
					tell application ID fmAppBundleID
						set docList to every document
					end tell
				end using terms from
				
				if docList is not null then exit repeat
				
			on error errMsg number errNum
				if errNum is -10011 then
					-- just keep trying - this error can be caused when a database is opening and the open script takes a bit too long to finish, or something in the FM interface is slow to respond. 
				else
					error "Error getting list of databases already open: " & errMsg number errNum
				end if
			end try
			
			delay waitCycleDelaySeconds
		end repeat
		
		repeat with oneDoc in docList
			set docName to name of oneDoc
			-- get the name WITHOUT the file extension: 
			(reverse of characters of docName) as string
			text ((offset of "." in result) + 1) thru -1 of result
			set docName to (reverse of characters of result) as string
			if debugMode then log dbName
			if debugMode then log docName
			ignoring case
				--			if debugMode then log class of docName
				--			if debugMode then log class of dbName
				
				-- apparently these two TEXT variables have some difference (formatting?) even when they are identical STRINGS:
				if (docName as string) is equal to (dbName as string) then
					--				if debugMode then log "SAME"
					using terms from application "FileMaker Pro Advanced"
						tell application ID fmAppBundleID
							show oneDoc
							--						if debugMode then log (path to it)
						end tell
					end using terms from
					return true
				else
					--				if debugMode then log "DIFF"
				end if
			end ignoring
		end repeat
		return false
		
	on error errMsg number errNum
		error "displayFileMakerDatabase error: " & errMsg & " - error number: " & errNum number errNum
	end try
	
end displayFileMakerDatabase

--------------------
-- END OF CODE
--------------------
