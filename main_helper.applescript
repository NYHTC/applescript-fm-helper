-- main_helper
-- Erik Shagdar, NYHTC
-- Helper script that compiles all .applescript files into a main.scpt.


(* HISTORY:
	2017-10-20 ( eshagdar ): allow running with params. If ran with 'False', dialogs ( and re-enabling assistve devices ) is suppressed. 
	2017-10-18 ( eshagdar ): debugMode is a property. htcLib scriptName is 'htcLib', not 'main.scpt'.
	2017-10-06 ( eshagdar ): added library folder to skip when generating htcLib. renamed variables for clarity.
	2017-09-12 ( eshagdar ): attempt to de-select and re-select teh htcLib checkbox.
	2017-06-29 ( eshagdar ): check to see if htcLib exists.
	2017-06-26 ( eshagdar ): quit the app before deleting it.
	2017-06-14 ( eshagdar ): also make an app.
	2016-04-21 ( eshagdar ): Updated clickCommandPosix path.
	2016-03-17 ( eshagdar ): Added DebugMode and clickCommandPosix properties.
	2016-03-15 ( eshagdar ): added documentation to main script. Separated individual functions into library directories and updated run code to loop over files in sub-directories.
	2016-03-14 ( eshagdar ): first created.
*)



property debugMode : true


property LF : ASCII character 10
property tempFileName : "temp.applescript"
property mainFileName : "main.scpt"
property appName : "htcLib"
property appExtension : ".app"



on run prefs
	set defaultPrefs to {true}
	if class of prefs is script or prefs is equal to {} then set prefs to defaultPrefs
	set showDialogs to ((item 1 of prefs) as boolean)
	
	
	set folderName_library to "library:"
	set folderName_toSkip to "standalone"
	
	set tempCode to ""
	set commentBreaker to "--------------------"
	set codeStart to commentBreaker & LF & "-- START OF CODE" & LF & commentBreaker
	set codeEnd to commentBreaker & LF & "-- END OF CODE" & LF & commentBreaker
	
	
	tell application "Finder"
		set pathRoot to (folder of (path to me)) as string
		set thisFileName to name of (path to me)
	end tell
	
	set pathTempCode to pathRoot & tempFileName
	set pathMain to pathRoot & mainFileName
	set pathApp to pathRoot & appName & appExtension
	set pathLibrary to pathRoot & folderName_library
	set libraryNames to list folder (pathLibrary) without invisibles
	
	
	-- loop over each sub-directory, appending code from each file
	repeat with dirCount from 1 to count of libraryNames
		set oneLibraryName to item dirCount of libraryNames
		set pathOneLibrary to pathLibrary & oneLibraryName
		if oneLibraryName is equal to folderName_toSkip then
			-- skip this folder because it contains standalone handlers
		else
			-- get all files in the the folder
			set fileNamesInOneLibrary to list folder (pathOneLibrary) without invisibles
			
			-- append all libraries into a single file
			repeat with fileCount from 1 to count of fileNamesInOneLibrary
				-- read one file and get everything above the helper methods
				set pathOneFileinOneLibrary to pathOneLibrary & ":" & (item fileCount of fileNamesInOneLibrary)
				set oneFileRawCode to read file pathOneFileinOneLibrary
				if oneFileRawCode contains codeStart and oneFileRawCode contains codeEnd then
					set oneFileCodeToAd to getTextBetween({oneFileRawCode, codeStart, codeEnd})
				else
					set oneFileCodeToAd to oneFileRawCode
				end if
				set oneFileCodeToAd to removeLF(oneFileCodeToAd)
				
				-- now append
				if (length of tempCode) is greater than 0 then set tempCode to tempCode & return & return & return
				set tempCode to tempCode & oneFileCodeToAd
			end repeat
		end if
	end repeat
	
	-- prepend code with documentation
	set docCode to "-- main script"
	set docCode to docCode & LF & "-- Erik Shagdar, NYHTC"
	set docCode to docCode & LF
	set docCode to docCode & LF & "-- Generated: " & (do shell script "date '+%Y-%m-%d %T'")
	set docCode to docCode & LF & "-- Run " & quoted form of thisFileName & " to after making changes in any .applescript file and after each git pull."
	set docCode to docCode & LF & "-- Assumes file is located at '~/Code/applescript-fm-helper/'. If it is not, make sure to update clickCommandPosix property and 'vendor.sh' script."
	set docCode to docCode & LF
	set docCode to docCode & LF & "property DebugMode : " & debugMode
	set docCode to docCode & LF & "property ScriptName : \"" & appName & "\""
	set docCode to docCode & LF & "property clickCommandPosix : POSIX path of (((path to home folder) as string)) & \"Code/applescript-fm-helper/vendor/cliclick/cliclick\""
	
	set tempCode to docCode & LF & LF & LF & tempCode
	
	
	-- create a temp file of all libaries, then create a compiled version of it.
	do shell script "echo " & quoted form of tempCode & " > " & quoted form of POSIX path of pathTempCode
	do shell script "osacompile -o " & quoted form of POSIX path of pathMain & " " & quoted form of POSIX path of pathTempCode
	do shell script "pwd"
	do shell script "sh " & quoted form of (POSIX path of (pathRoot & "vendor.sh"))
	if result does not contain "SUCCESS" then return "Error: unable to run vendor.sh"
	
	
	set appExists to false
	tell application "Finder"
		if exists pathApp then set appExists to true
	end tell
	
	
	--quit the pre-existing app
	if appExists then
		tell application appName to quit
	end if
	
	-- remove pre-existing app file
	tell application "Finder"
		if appExists then delete file pathApp
	end tell
	
	-- now make it into an app
	do shell script "osacompile -s -o " & quoted form of POSIX path of pathApp & " " & quoted form of POSIX path of pathTempCode
	
	
	-- remove the temp file
	tell application "Finder"
		if exists pathTempCode then delete file pathTempCode
	end tell
	
	if showDialogs then
		tell it to activate
		set AsstAccessDlg to display dialog "You must enable assistive access for " & appName & "." with title appName buttons {"Open", "OK"} default button "OK"
		
		
		-- navigate to security preference pane
		if button returned of AsstAccessDlg is equal to "Open" then
			tell application "System Preferences"
				activate
				set the current pane to pane id "com.apple.preference.security" of application "System Preferences"
				delay 0.5
			end tell
			
			tell application "System Events"
				tell process "System Preferences"
					click radio button "Privacy" of tab group 1 of window 1
					
					-- get htcLib checkbox
					set htcLibRow to (first row of table 1 of scroll area 1 of group 1 of tab group 1 of window 1 whose value of static text 1 of UI element 1 contains "htcLib")
					set htcLibCheckbox to checkbox 1 of UI element 1 of htcLibRow
					select htcLibRow
					
					-- unlock if needed
					set canMakeChanges to enabled of htcLibCheckbox
					if canMakeChanges is false then
						click button 1 of window 1
						display dialog "You must deselect, then reselect the HtcLib checkbox" buttons "OK" default button "OK"
						return true
					end if
					
					
					-- uncheck, then recheck to re-allow control of htcLib
					click htcLibCheckbox
					delay 0.5
					click htcLibCheckbox
					delay 0.5
					set visible to false
				end tell
			end tell
			
			tell me to activate
			display dialog "HtcLib is ready" buttons "OK" default button "OK"
		end if
		return true
	else
		return "you must re-allow assistive devices to '" & appName & "'."
	end if
	
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

