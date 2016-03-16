-- main_helper
-- Erik Shagdar, NYHTC
-- Helper script that compiles all .applescript files into a main.scpt.


(* HISTORY:
	2016-03-15 ( eshagdar ): added documentation to main script. Separated individual functions into library directories and updated run code to loop over files in sub-directories.
	2016-03-14 ( eshagdar ): first created
*)



property LF : ASCII character 10
property tempFileName : "temp.applescript"
property mainFileName : "main.scpt"



on run
	set tempCode to ""
	set folderName_library to "Libraries:"
	set commentBreaker to "--------------------"
	
	set codeStart to commentBreaker & LF & "-- START OF CODE" & LF & commentBreaker
	set codeEnd to commentBreaker & LF & "-- END OF CODE" & LF & commentBreaker
	
	tell application "Finder"
		set pathDirRoot to (folder of (path to me)) as string
		set thisFileName to name of (path to me)
	end tell
	set pathTempCode to pathDirRoot & tempFileName
	set pathMain to pathDirRoot & mainFileName
	set pathDirLibraries to pathDirRoot & folderName_library
	set librariesSubDir to list folder (pathDirLibraries) without invisibles
	
	
	
	-- loop over each sub-directory, appending code from each file
	repeat with dirCount from 1 to count of librariesSubDir
		set pathOneDir to pathDirLibraries & (item dirCount of librariesSubDir)
		set filesInOneDir to list folder (pathOneDir) without invisibles
		
		-- append all libraries into a single file
		repeat with fileCount from 1 to count of filesInOneDir
			-- read one file and get everything above the helper methods
			set pathOneFile to pathOneDir & ":" & (item fileCount of filesInOneDir)
			set oneCodeRaw to read file pathOneFile
			if oneCodeRaw contains codeStart and oneCodeRaw contains codeEnd then
				set oneCodeToAdd to getTextBetween({oneCodeRaw, codeStart, codeEnd})
			else
				set oneCodeToAdd to oneCodeRaw
			end if
			set oneCodeToAdd to removeLF(oneCodeToAdd)
			
			-- now append
			if (length of tempCode) is greater than 0 then set tempCode to tempCode & return & return
			set tempCode to tempCode & oneCodeToAdd
		end repeat
	end repeat
	
	-- prepend code with documentation
	set docCode to "-- main script"
	set docCode to docCode & LF & "-- Erik Shagdar, NYHTC"
	set docCode to docCode & LF
	set docCode to docCode & LF & "-- Generated: " & (do shell script "date '+%Y-%m-%d %T'")
	set docCode to docCode & LF & "-- Run " & quoted form of thisFileName & " to after making changes in any .applescript file and after each git pull."
	set docCode to docCode & LF
	set docCode to docCode & LF & "property ScriptName : \"" & mainFileName & "\""
	
	set tempCode to docCode & LF & LF & LF & tempCode
	
	
	-- create a temp file of all libaries, then create a compiled version of it.
	do shell script "echo " & quoted form of tempCode & " > " & quoted form of POSIX path of pathTempCode
	do shell script "osacompile " & " -o " & quoted form of POSIX path of pathMain & " " & quoted form of POSIX path of pathTempCode
	
	-- remove the temp file
	tell application "Finder"
		if exists pathTempCode then
			delete file pathTempCode
		end if
	end tell
	
	return true
end run



--------------------
-- HELPER FUNCTIONS
--------------------

on parentFolderOfPath(incomingPath)
	--version 1.1, Daniel A. Shockley
	
	set incomingPath to incomingPath as string
	if incomingPath is "" then
		error "Cannot find a parent folder for a path that is blank." number -1027
	end if
	
	if last character of incomingPath is ":" then
		-- if it ends with ":" (a folder), leave that off for the code below
		set incomingPath to (text 1 through -2 of incomingPath) as string
	end if
	
	set {od, AppleScript's text item delimiters} to {AppleScript's text item delimiters, ":"}
	if (count of text items of incomingPath) is 1 then
		-- the item in question is a disk, so CANNOT return a parent folder
		set AppleScript's text item delimiters to od
		error "Cannot find a parent folder of a DISK: " & incomingPath & "." number -1027
	else
		set enclosingFolder to (text items 1 through -2 of incomingPath as string)
	end if
	
	set AppleScript's text item delimiters to od
	return enclosingFolder & ":"
	
end parentFolderOfPath


on getTextBetween(prefs)
	-- version 1.6, Daniel A. Shockley <http://www.danshockley.com>
	
	set defaultPrefs to {textItemNum:2, includeMarkers:false}
	
	if (class of prefs is not list) and ((class of prefs) as string is not "record") then
		error "getTextBetween FAILED: parameter should be a record or list. If it is multiple items, just make it into a list to upgrade to this handler." number 1024
	end if
	if class of prefs is list then
		if (count of prefs) is 4 then
			set textItemNum of defaultPrefs to item 4 of prefs
		end if
		set prefs to {sourceTEXT:item 1 of prefs, beforeText:item 2 of prefs, afterText:item 3 of prefs}
	end if
	set prefs to prefs & defaultPrefs -- add on default preferences, if needed
	set sourceTEXT to sourceTEXT of prefs
	set beforeText to beforeText of prefs
	set afterText to afterText of prefs
	set textItemNum to textItemNum of prefs
	set includeMarkers to includeMarkers of prefs
	
	try
		set {oldDelims, AppleScript's text item delimiters} to {AppleScript's text item delimiters, beforeText}
		set the prefixRemoved to text item textItemNum of sourceTEXT
		set AppleScript's text item delimiters to afterText
		set the finalResult to text item 1 of prefixRemoved
		set AppleScript's text item delimiters to oldDelims
		
		if includeMarkers then set finalResult to beforeText & finalResult & afterText
		
	on error errMsg number errNum
		set AppleScript's text item delimiters to oldDelims
		-- 	tell me to log "Error in getTextBetween() : " & errMsg
		set the finalResult to "" -- return nothing if the surrounding text is not found
	end try
	
	
	return finalResult
	
end getTextBetween


on removeLF(someText)
	-- Erik Shagdar, 1.0
	repeat until someText does not start with LF
		set someText to text 2 thru -1 of someText
	end repeat
	
	repeat until someText does not end with LF
		set someText to text 1 thru -2 of someText
	end repeat
	
	return someText
end removeLF

