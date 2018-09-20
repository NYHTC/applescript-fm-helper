-- main script
-- Erik Shagdar, NYHTC

-- Generated: 2018-09-20 16:15:50
-- Run 'main_helper.applescript' to after making changes in any .applescript file and after each git pull.
-- Assumes file is located at '~/Code/applescript-fm-helper/'. If it is not, make sure to update clickCommandPosix property and 'vendor.sh' script.

property DebugMode : true
property ScriptName : "htcLib"
property clickCommandPosix : POSIX path of (((path to home folder) as string)) & "Code/applescript-fm-helper/vendor/cliclick/cliclick"


on dateToFileMakerTimestamp(incomingDate)
	-- version 1.0
	
	if class of incomingDate is not date then
		try
			set incomingDate to date incomingDate
		on error
			set incomingDate to (current date)
		end try
	end if
	
	set numHours to (time of incomingDate) div hours
	set textHours to text -2 through -1 of ("0" & (numHours as string))
	
	set numMinutes to (time of incomingDate) mod hours div minutes
	set textMinutes to text -2 through -1 of ("0" & (numMinutes as string))
	
	set numSeconds to (time of incomingDate) mod minutes
	set textSeconds to text -2 through -1 of ("0" & (numSeconds as string))
	
	set numDay to day of incomingDate as number
	set textDay to text -2 through -1 of ("0" & (numDay as string))
	
	set numYear to year of incomingDate as number
	set textYear to text -4 through -1 of (numYear as string)
	
	set numMonth to (month of (incomingDate)) as number
	set textMonth to text -2 through -1 of ("0" & (numMonth as string))
	
	set customDateString to textMonth & "/" & textDay & "/" & textYear & " " & textHours & ":" & textMinutes & ":" & textSeconds
	
	return customDateString	
end dateToFileMakerTimestampon encodeCharForURL(this_char)
	-- version 1.0
	
	set the ASCII_num to (the ASCII number this_char)
	set the hex_list to {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"}
	set x to item ((ASCII_num div 16) + 1) of the hex_list
	set y to item ((ASCII_num mod 16) + 1) of the hex_list
	return ("%" & x & y) as string
end encodeCharForURLon encodeTextForURL(this_text, encode_URL_A, encode_URL_B)
	-- version 1.0
	
	-- this sub-routine is used to encode text 
	set the standard_characters to "abcdefghijklmnopqrstuvwxyz0123456789"
	set the URL_A_chars to "$+!'/?;&@=#%><{}[]\"~`^\\|*" -- double excape this since the code gets compiled
	set the URL_B_chars to ".-_:"
	set the acceptable_characters to the standard_characters
	if encode_URL_A is false then set the acceptable_characters to the acceptable_characters & the URL_A_chars
	if encode_URL_B is false then set the acceptable_characters to the acceptable_characters & the URL_B_chars
	set the encoded_text to ""
	repeat with this_char in this_text
		if this_char is in the acceptable_characters then
			set the encoded_text to (the encoded_text & this_char)
		else
			set the encoded_text to (the encoded_text & encodeCharForURL(this_char)) as string
		end if
	end repeat
	return the encoded_text
end encodeTextForURLon getFromFMP(prefs)
	-- version 1.8
	
	try
		-- prefs MIGHT be a record that looks like this: {fmType:"Adv"} 
		set fmType to fmType of prefs
	on error
		set fmType to "Unk"
	end try
	
	set asTransfer to "AppleScript_Transfer-DO_NOT_RENAME"
	set fmpName to "FileMaker Pro"
	
	if (path to me) does not contain fmpName then
		tell application "System Events"
			set fmpActiveName to displayed name of (first application process whose displayed name begins with fmpName)
		end tell
		if fmType is "Unk" then
			set beginTellFM to "tell app \"" & fmpActiveName & "\"" & return
		else if fmType is "Adv" then
			set beginTellFM to "tell app id \"com.filemaker.client.advanced12\"" & return
		else if fmType is "Pro" then
			set beginTellFM to "tell app id \"com.filemaker.client.pro12\"" & return
		end if
		set endTellFM to return & "end tell"
	else
		set beginTellFM to ""
		set endTellFM to ""
	end if
	
	set codeToGet to "cell 1 of layout \"" & asTransfer & "\" of window 1"
	set sendSource to beginTellFM & codeToGet & endTellFM
	set inputData to run script sendSource
	
	return inputData
end getFromFMPon sendToFMP(someData)
	-- version 1.6
	
	try
		-- someData MIGHT be a record that looks like this: {fmType:"Adv", someData:"BLAH BLAH BLAH"} 
		set fmType to fmType of someData
		set someData to someData of someData
	on error
		set fmType to "Unk"
	end try
	
	set asTransfer to "AppleScript_Transfer-DO_NOT_RENAME"
	set fmpName to "FileMaker Pro"
	if (path to me) does not contain fmpName then
		tell application "System Events"
			set fmpActiveName to displayed name of (first application process whose displayed name begins with fmpName)
		end tell
		if fmType is "Unk" then
			set beginTellFM to "tell app \"" & fmpActiveName & "\"" & return
		else if fmType is "Adv" then
			set beginTellFM to "tell app id \"com.filemaker.client.advanced12\"" & return
		else if fmType is "Pro" then
			set beginTellFM to "tell app id \"com.filemaker.client.pro12\"" & return
		end if
		
		set endTellFM to return & "end tell"
	else
		set beginTellFM to ""
		set endTellFM to ""
	end if
	
	set someDataCleaned to someData as string
	set oldDelims to AppleScript's text item delimiters
	-- escape backslashes 
	set backslash to ASCII character 92
	set AppleScript's text item delimiters to backslash
	set the someDataCleaned to every text item of someDataCleaned
	set AppleScript's text item delimiters to backslash & backslash
	set the someDataCleaned to the someDataCleaned as string
	-- escape double-quotes 
	set AppleScript's text item delimiters to the "\""
	set the someDataCleaned to every text item of someDataCleaned
	set AppleScript's text item delimiters to the (backslash & "\"")
	set the someDataCleaned to the someDataCleaned as string
	-- reset the AppleScript delimiters	 
	set AppleScript's text item delimiters to oldDelims
	
	set codeToSet to "set cell 1 of layout \"" & asTransfer & "\" of window 1 to (\"" & someDataCleaned & "\" as string)"
	set sendSource to beginTellFM & codeToSet & endTellFM
	
	run script sendSource
	
end sendToFMPon fileNameFromPath(prefs)
	-- version 1.0, Daniel A. Shockley
	
	set filePath to filePath of prefs
	set pathDelim to pathDelim of prefs
	
	(reverse of characters of filePath) as string
	
	text 1 thru ((offset of pathDelim in result) - 1) of result
	
	return (reverse of characters of result) as string
	
end fileNameFromPathon fileNameWithoutExtension(prefs)
	-- version 1.0, Daniel A. Shockley
	set fileName to fileName of prefs
	
	(reverse of characters of fileName) as string
	
	text ((offset of "." in result) + 1) thru -1 of result
	
	return (reverse of characters of result) as string
	
end fileNameWithoutExtensionon fileParentFromPath(prefs)
	-- version 1.2, Daniel A. Shockley
	
	try
		set filePath to filePath of prefs
		set pathDelim to pathDelim of prefs
		
		set filePath to filePath as string
		if filePath is "" then
			error "Cannot find a parent folder for a path that is blank." number -1027
		end if
		
		if last character of filePath is pathDelim then
			-- if it ends with pathDelim (a folder), leave that off for the code below
			set filePath to (text 1 through -2 of filePath) as string
		end if
		
		set {od, AppleScript's text item delimiters} to {AppleScript's text item delimiters, pathDelim}
		if (count of text items of filePath) is 1 then
			-- the item in question is a disk, so CANNOT return a parent folder
			set AppleScript's text item delimiters to od
			error "Cannot find a parent folder of a DISK: " & filePath & "." number -1027
		else
			set enclosingFolder to (text items 1 through -2 of filePath as string)
		end if
		
		set AppleScript's text item delimiters to od
		return enclosingFolder & pathDelim
		
	on error errMsg number errNum
		error "fileParentFromPath FAILED: " & errMsg number errNum
		
	end try
	
	
end fileParentFromPathon readXMLFile(prefs)
	-- version 1.0, Erik Shagdar
	
	try
		set defaultPrefs to {posixPath:null}
		set prefs to prefs & defaultPrefs
		set posixPath to posixPath of prefs
		
		if posixPath is null then error "path not specified" number -1024
		
		tell application "System Events"
			set xmlContents to contents of XML file posixPath
			set xmlRoot to a reference to XML element 1 of xmlContents
		end tell
		
		return xmlRoot
	on error errMsg number errNum
		error "unable to readXMLFile - " & errMsg number errNum
	end try
end readXMLFileon SFR_DictGet(someDict, itemName)
	-- version 1.0
	
	set keyString to "<:" & SFR_Escape(itemName) & ":="
	set endString to ":>"
	
	if someDict does not contain keyString then
		return ""
	else
		set oldDelims to AppleScript's text item delimiters
		set AppleScript's text item delimiters to the keyString
		set the keyRemoved to text item 2 of someDict
		if keyRemoved does not contain endString then
			return ""
		else
			set AppleScript's text item delimiters to endString
			set the itemValue to text item 1 of keyRemoved
			set AppleScript's text item delimiters to oldDelims
		end if
	end if
	
	return SFR_Unescape(itemValue)
end SFR_DictGeton SFR_DictItem(itemName, itemValue)
	-- version 1.0
	
	return "<:" & SFR_Escape(itemName) & ":=" & SFR_Escape(itemValue) & ":>"
end SFR_DictItemon SFR_Escape(someString)
	-- version 1.0
	
	set escapeCharList to {"=", ":", "<", ">"}
	
	repeat with oneChar in escapeCharList
		set someString to replaceSimple({someString, oneChar, "/" & oneChar})
		
	end repeat
	
	return someString
	
end SFR_Escapeon SFR_Unescape(someString)
	-- version 1.0
	
	set escapeCharList to {"=", ":", "<", ">"}
	
	repeat with oneChar in escapeCharList
		set someString to replaceSimple({someString, "/" & oneChar, oneChar})
		
	end repeat
	
	return someString
	
end SFR_Unescapeon closeDatabase(prefs)
	-- version 1.5
	
	set defaultPrefs to {fmAppType:"Pro", waitCycleDelaySeconds:10, waitSaveTotalSeconds:10 * minutes, dbName:null, closeScriptName:"CLOSE_SCRIPT"}
	set prefs to prefs & defaultPrefs
	
	set waitSaveTotalSeconds to waitSaveTotalSeconds of prefs
	set waitCycleDelaySeconds to waitCycleDelaySeconds of prefs
	set dbName to dbName of prefs
	
	set waitCycleMax to round (waitSaveTotalSeconds / waitCycleDelaySeconds) rounding down
	
	
	try
		-- try closing the database by telling FileMaker to do it
		if dbName of prefs is not null then
			try
				tell application "FileMaker Pro Advanced" to close database dbName
				if debugMode then my logConsole(ScriptName, "DATABASE '" & dbName & "' closed directly.")
				return true
			on error errMsg number errNum
				if debugMode then my logLEVEL(5, "DATABASE '" & dbName & "'  unable to close directly, trying by close script." & errMsg)
			end try
		end if
		
		
		-- unable to close directly, try to call the close script
		fmGUI_AppFrontMost()
		
		if fmAppType of prefs is "Adv" then
			set fmProcessName to "FileMaker Pro Advanced"
		else
			set fmProcessName to "FileMaker Pro"
		end if
		
		
		tell application "System Events"
			tell application process fmProcessName
				set closeMenuItem to menu item "Close" of menu 1 of menu bar item "File" of menu bar 1
			end tell
		end tell
		
		
		-- wait until Close Window is available ( menu item is available ):
		set closeWindowAvailable to fmGUI_Wait_MenuItemAvailable({menuObj:closeMenuItem})
		
		
		-- try to close by running the close script
		try
			if closeWindowAvailable then
				fmGUI_ManageScripts_Open({})
				fmGUI_ManageScripts_FmScript_Select({fmScriptName:(closeScriptName of prefs)})
				tell application "System Events"
					tell application process fmProcessName
						set runScriptButton to first button of window 1 whose description is "Perform"
						click runScriptButton
					end tell
				end tell
			else
				set frontWindowName to name of window 1
				error "Close Window menu item was not enabled - front window name is " & frontWindowName number 1024
			end if
		on error
			if debugMode then logConsole(ScriptName, "No '" & (closeScriptName of prefs) & "' for " & dbName & ", attempting to close window instead")
			fmGUI_ManageScripts_Close({})
			tell application "System Events"
				tell application process fmProcessName
					click button 1 of window 1
				end tell
			end tell
		end try
		
	on error errMsg number errNum
		error "Unable to run close script: " & errMsg number errNum
	end try
end closeDatabaseon databaseNameOfFrontWindow(prefs)
	-- version 1.3
	
	set defaultPrefs to {fmAppType:"Pro"}
	set prefs to prefs & defaultPrefs
	
	
	if fmAppType of prefs is "Adv" then
		set fmAppBundleID to "com.filemaker.client.advanced12"
	else
		set fmAppBundleID to "com.filemaker.client.pro12"
	end if
	
	using terms from application "FileMaker Pro Advanced"
		tell application ID fmAppBundleID
			set frontWindowName to name of window 1
		end tell
	end using terms from
	
	dbNameOfWindowName(frontWindowName)
	
end databaseNameOfFrontWindowon databaseNamesOfVisibleWindows(prefs)
	-- version 1.3, Daniel A. Shockley
	
	-- If open, then display first window this finds and return true, else return false.
	
	set defaultPrefs to {fmAppType:"Pro"}
	set prefs to prefs & defaultPrefs
	
	
	if fmAppType of prefs is "Adv" then
		set fmAppBundleID to "com.filemaker.client.advanced12"
	else
		set fmAppBundleID to "com.filemaker.client.pro12"
	end if
	
	using terms from application "FileMaker Pro Advanced"
		tell application ID fmAppBundleID
			set visibleWindowNames to name of every window whose visible is true
		end tell
		
		set visibleDatabases to {}
		repeat with oneWindowName in visibleWindowNames
			set oneDBName to dbNameOfWindowName(oneWindowName)
			if visibleDatabases does not contain oneDBName then
				copy oneDBName to end of visibleDatabases
			end if
		end repeat
		return visibleDatabases
	end using terms from
end databaseNamesOfVisibleWindowson displayFileMakerDatabase(prefs)
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
end displayFileMakerDatabaseon displayFileMakerWindow(prefs)
	-- version 1.6
	
	try
		set defaultPrefs to {windowName:null, fmAppType:"Adv", waitCycleDelaySeconds:5, waitSaveTotalSeconds:2 * minutes}
		set prefs to prefs & defaultPrefs
		
		--if debugMode then logConsole(ScriptName, "displayFileMakerDatabase prefs: " & coerceToString(prefs))
		
		set windowName to windowName of prefs
		
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
		tell application "System Events"
			tell (first process whose bundle identifier is fmAppBundleID)
				set windowMenu to menu 1 of menu bar item "Window" of menu bar 1
				set hiddenWindowMenu to menu 1 of menu item "Show Window" of windowMenu
				set windowMenuItems to name of menu items of windowMenu
				set windowToShow to name of menu items of hiddenWindowMenu
			end tell
		end tell
		
		
		set windowList to {}
		set docNameList to items 11 thru -1 of (windowMenuItems & windowToShow)
		repeat with oneDocName in docNameList
			set oneDocName to contents of oneDocName
			
			
			-- get JUST the name of the file
			if oneDocName begins with "(" then
				set windowName to getTextBetween({sourceTEXT:oneDocName, beforeText:"(", afterText:")"})
			else if oneDocName ends with ")" then
				set windowName to getTextBefore(oneDocName, " (")
			else
				set windowName to oneDocName
			end if
			--log oneDocName
			
			
			--loop through available document and bring the specified to the front
			ignoring case
				if windowName is equal to (windowName as string) then
					if oneDocName is in windowMenuItems then
						-- window exists
						tell application "System Events"
							tell (first process whose bundle identifier is fmAppBundleID)
								set menuItemRef to menu item oneDocName of windowMenu
							end tell
						end tell
					else
						-- hidden file
						tell application "System Events"
							tell (first process whose bundle identifier is fmAppBundleID)
								set menuItemRef to menu item oneDocName of hiddenWindowMenu
							end tell
						end tell
						
					end if
					fmGUI_ClickMenuItem({menuItemRef:menuItemRef})
					return true
				end if
			end ignoring
		end repeat
		
		
		return false
	on error errMsg number errNum
		error "unable to displayFileMakerWindow - " & errMsg number errNum
	end try
end displayFileMakerWindowon ensureFileMakerDatabase(prefs)
	-- version 1.4
	
	set defaultPrefs to {serverIP:"", dbName:"", mainDbName:"", customLinkReceiverScriptName:"", fmAppType:""}
	set prefs to prefs & defaultPrefs
	set dbName to dbName of prefs
	
	try
		set isDisplayed to displayFileMakerDatabase({dbName:dbName, fmAppType:"Adv"}) -- first, just see if one is available.
		if debugMode then logConsole(ScriptName, "Tried to display: " & dbName)
		
		if not isDisplayed then
			if debugMode then logConsole(ScriptName, "About to try to open: " & dbName)
			
			if openFileMakerDatabase(prefs) then
				-- was able to open it, so NOW display window.
				delay 0.5
				if debugMode then logConsole(ScriptName, "Tried to open, now try again to display: " & dbName)
				set isDisplayed to displayFileMakerDatabase({dbName:dbName, fmAppType:"Adv"})
				return isDisplayed
			else
				-- Was NOT able to open it, so return false.
				return false
			end if
		end if
		
		-- was already displayed
		return true
	on error errMsg number errNum
		error "Unable to ensureFileMakerDatabase - " & errMsg number errNum
	end try
end ensureFileMakerDatabaseon fmGUI_AuthenticateDialog(prefs)
	-- version 1.2.1
	
	set defaultPrefs to {accountName:"admin", pwd:"test", windowName:"Open"}
	set prefs to prefs & defaultPrefs
	
	set pwdFieldDesc to "secure text field"
	
	
	try
		fmGUI_AppFrontMost()
		
		
		-- wait for window to render
		windowWaitUntil({windowName:windowName of prefs, windowNameTest:"starts with", whichWindow:"front"})
		
		
		-- enter credentials
		tell application "System Events"
			tell process "FileMaker Pro"
				set objAccount to first text field of window 1 whose description is not pwdFieldDesc
				set objPassword to first text field of window 1 whose description is pwdFieldDesc
			end tell
		end tell
		fmGUI_TextFieldSet({objRef:objAccount, objValue:accountName of prefs})
		fmGUI_TextFieldSet({objRef:objPassword, objValue:pwd of prefs})
		
		
		-- delay a bit, then click to confirm
		delay 0.1
		try
			fmGUI_ObjectClick_OkButton({})
		on error
			fmGUI_ObjectClick_SignInButton({})
		end try
		
		
		-- wait for window to close
		if fmGUI_NameOfFrontmostWindow() is equal to "FileMaker Pro" then error "incorrect credentials" number -1024
		
		return windowWaitUntil({windowName:windowName of prefs, windowNameTest:"does not start with", whichWindow:"front"})
	on error errMsg number errNum
		error "Unable to fmGUI_AuthenticateDialog - " & errMsg number errNum
	end try
end fmGUI_AuthenticateDialogon fmGUI_Database_DbNameOfFrontWindow(prefs)
	-- version 1.1
	try
		fmGUI_DataViewer_Close()
		fmGUI_Inspector_Close()
		
		return dbNameOfWindowName(fmGUI_NameOfFrontmostWindow())
		
	on error errMsg number errNum
		error "Couldn't get fmGUI_Database_DbNameOfFrontWindow - " & errMsg number errNum
	end try
	
end fmGUI_Database_DbNameOfFrontWindowon fmGUI_Database_TOsOfFrontWindow(prefs)
	-- version 1.1
	
	try
		return namesOfTOsOfWindowName(fmGUI_NameOfFrontmostWindow())
	on error errMsg number errNum
		error "Couldn't get fmGUI_Database_TOsOfFrontWindow - " & errMsg number errNum
	end try
	
end fmGUI_Database_TOsOfFrontWindowon fmGUI_fullAccessToggle(prefs)
	-- version 1.2.1
	
	try
		set defaultPrefs to {ensureMode:null, script_enterFullAccess:"Full Access Switch ON", script_leaveFullAccess:"Full Access Switch OFF", scriptFolderName:"Shortcuts", fullAccessAccountName:null, fullAccessPassword:null, userAccountName:null, userPassword:null}
		set prefs to prefs & defaultPrefs
		
		set alreadyInUserMode to not fmGUI_isInFullAccessMode({})
		
		if ensureMode of prefs is equal to "user" then
			set ensureUserMode to true
		else if ensureMode of prefs is equal to "full" then
			set ensureUserMode to false
		else
			set ensureUserMode to not alreadyInUserMode
		end if
		if debugMode then logConsole(scriptName, "fmGUI_fullAccessToggle ensureUserMode: " & ensureUserMode)
		
		
		if ensureUserMode and not alreadyInUserMode then
			-- LEAVE full access
			
			try
				tell application "FileMaker Pro Advanced"
					do script (first FileMaker script whose name contains (script_leaveFullAccess of prefs))
					if debugMode then logConsole(scriptName, "fmGUI_fullAccessToggle ran script: " & script_leaveFullAccess)
				end tell
			on error
				-- privSet doesn't allow applescript events, so try to run via menu
				if debugMode then logConsole(scriptName, "fmGUI_fullAccessToggle failed to run script via app, trying via menu")
				fmGUI_Menu_RunScript({scriptName:script_leaveFullAccess of prefs, scriptFolderList:{scriptFolderName of prefs}, partialMatch:true})
			end try
			if fmGUI_NameOfFrontmostWindow() does not start with "Open" then error "re-login script error" number -1024
			fmGUI_Relogin({accountName:userAccountName of prefs, pwd:userPassword of prefs})
			
		else if not ensureUserMode and alreadyInUserMode then
			-- ENTER full access			
			
			try
				tell application "FileMaker Pro Advanced"
					do script (first FileMaker script whose name contains (script_enterFullAccess of prefs))
					if debugMode then logConsole(scriptName, "fmGUI_fullAccessToggle ran script: " & script_enterFullAccess)
				end tell
			on error
				-- privSet doesn't allow applescript events, so try to run via menu
				if debugMode then logConsole(scriptName, "fmGUI_fullAccessToggle failed to run script via app, trying via menu")
				fmGUI_Menu_RunScript({scriptName:script_enterFullAccess of prefs, scriptFolderList:{scriptFolderName of prefs}, partialMatch:true})
			end try
			if fmGUI_NameOfFrontmostWindow() does not start with "Open" then error "re-login script error" number -1024
			fmGUI_Relogin({accountName:fullAccessAccountName of prefs, pwd:fullAccessPassword of prefs})
			
		end if
		
		set didEndInUserMode to not fmGUI_isInFullAccessMode({})
		set modeSwitch to xor(alreadyInUserMode, didEndInUserMode)
		if didEndInUserMode then
			set exitMode to "user"
		else
			set exitMode to "full"
		end if
		
		return {modeSwitch:modeSwitch, exitMode:exitMode}
	on error errMsg number errNum
		error "unable to fullAccessToggle - " & errMsg number errNum
	end try
end fmGUI_fullAccessToggleon fmGUI_isInFullAccessMode(prefs)
	--version 1.0.1, Erik Shagdar
	
	fmGUI_AppFrontMost()
	--fmGUI_ManageLayouts_Close({})
	
	try
		set listOfFullAccessWindowNames to {}
		if fmGUI_NameOfFrontmostWindow() contains listOfFullAccessWindowNames then return true
		
		tell application "System Events"
			tell process "FileMaker Pro"
				set canAccessManageDB to enabled of first menu item of menu 1 of menu item "Manage" of menu "File" of menu bar item "File" of menu bar 1 whose name begins with "Database"
			end tell
		end tell
		
		return canAccessManageDB
	on error errMsg number errNum
		error "Unable to fmGUI_isInFullAccessMode - " & errMsg number errNum
	end try
	
end fmGUI_isInFullAccessModeon fmGUI_relogin(prefs)
	-- version 1.1
	
	set defaultPrefs to {accountName:null, pwd:null}
	set prefs to prefs & defaultPrefs
	
	try
		return fmGUI_AuthenticateDialog(prefs & {windowname:"Open"})
	on error errMsg number errNum
		error "Unable to fmGUI_relogin - " & errMsg number errNum
	end try
end fmGUI_reloginon openFileMakerDatabase(prefs)
	-- version 1.4.1
	
	try
		set customURL to "htclink://AccessFile?FileName=" & dbName of prefs & "&Command=Open&SilentOpen=1&ShowWindow=1"
		set fmpURL to "FMP://" & serverIP of prefs & "/" & mainDbName of prefs & "?script=" & customLinkReceiverScriptName of prefs & "&param=" & encodeTextForURL(customURL, true, false)
		
		-- we must double-encode equals (%3D) and ampersand (%26) to work-around FileMaker bug:
		set fmpURL to replaceSimple({fmpURL, "%3D", "%253D"})
		set fmpURL to replaceSimple({fmpURL, "%26", "%2526"})
		
		--if debugMode then logConsole(ScriptName, "openFileMakerDatabase fmpURL: " & fmpURL)
		
		tell application "System Events" to open location fmpURL
		
		
		return true
		
	on error errMsg number errNum
		-- ANY error should return FALSE, as in "could not be opened"
		
		return errMsg --false
		
	end try
	
	
end openFileMakerDatabaseon fmGUI_DataViewer_Close()
	-- version 1.1
	
	fmGUI_AppFrontMost()
	tell application "System Events"
		tell application process "FileMaker Pro Advanced"
			try
				click button 1 of (first window whose name is "Data Viewer")
			end try
			return true
		end tell
	end tell
end fmGUI_DataViewer_Closeon fmGUI_DataViewer_Open(prefs)
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
				end tell
			end tell
		on error
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set authButton to first button of tab group 1 of dvWindow whose description contains "Auth"
				end tell
			end tell
			clickObjectByCoords(authButton)
			fmGUI_AuthenticateDialog({accountName:fullAccessAccountName of prefs, pwd:fullAccessPassword of prefs, windowname:"Authenticate"})
		end try
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_DataViewer_Open - " & errMsg number errNum
	end try
end fmGUI_DataViewer_Openon fmGUI_DDR_Save(prefs)
	-- version 1.4, Erik Shagar, NYHTC
	
	
	try
		set defaultPrefs to {ddrPath:null, dbNameList:{}}
		set prefs to prefs & defaultPrefs
		set ddrPath to ddrPath of prefs
		set dbNameList to dbNameList of prefs
		
		
		if ddrPath is null then error "ddr directory not specified" number -1024
		
		
		-- open DDR dialog and select options
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell process "FileMaker Pro"
				set ddrMenuItem to menu item "Database Design Report..." of menu "Tools" of menu bar item "Tools" of menu bar 1
			end tell
		end tell
		fmGUI_ClickMenuItem({menuItemRef:ddrMenuItem, waitForMenuAvailable:true})
		
		
		windowWaitUntil({windowName:"Database Design Report", windowNameTest:"is", whichWindow:"front"})
		fmGUI_DDR_SelectFiles({dbNameList:dbNameList})
		fmGUI_DDR_SelectParts({})
		
		
		tell application "System Events"
			tell process "FileMaker Pro"
				-- generate XML ( not HTML )
				click radio button 2 of window 1
				
				-- do not open automatically
				set openCheckbox to checkbox 1 of window 1
				if value of openCheckbox is 1 then click openCheckbox
			end tell
		end tell
		fmGUI_ObjectClick_Button({buttonName:"Create"})
		windowWaitUntil({windowName:"Save Report", windowNameTest:"is", whichWindow:"front"})
		
		
		tell application "System Events"
			tell process "FileMaker Pro"
				-- view as columns
				click radio button 3 of radio group 1 of group 1 of window 1
				delay 0.5
				
				-- change source - first go to Desktop, then specified path to ensure we're on it.
				keystroke "D" using {command down, shift down} -- desktop
				delay 0.5
				
				-- go to DDR folder
				keystroke "G" using {command down, shift down} -- go to
				delay 0.5
				set gotoWindow to sheet 1 of window 1
				try
					set value of combo box 1 of sheet 1 of window 1 to ddrPath
				on error
					set value of text field 1 of sheet 1 of window 1 to ddrPath
				end try
				click button "Go" of gotoWindow
				delay 0.5
			end tell
		end tell
		
		-- save DDR
		fmGUI_ObjectClick_Button({buttonName:"Save"})
		
		
		-- now wait until saving window is dismissed
		repeat 1200 times -- 1 hour ( 1200 cycles with 3 second pause = 1 hour )
			delay 3
			
			
			-- exit if the menu is accessible again
			try
				if fmGUI_isInFullAccessMode({}) then exit repeat
			end try
			
			
			-- dimiss dialogs
			try
				set frontWindowName to fmGUI_NameOfFrontmostWindow()
				if frontWindowName is "FileMaker Pro" then
					fmGUI_ObjectClick_OkButton({})
					delay 1
					fmGUI_ObjectClick_CancelButton({})
				else if frontWindowName contains "Open" then
					fmGUI_ObjectClick_CancelButton({})
				else if frontWindowName is not "Saving Report" then
					--some other error?
				end if
			end try
		end repeat
		
		return true
	on error errMsg number errNum
		error "failed to fmGUI_DDR_Save - " & errMsg number errNum
	end try
end fmGUI_DDR_Saveon fmGUI_DDR_SelectFiles(prefs)
	-- version 1.1, Erik Shagar, NYHTC
	
	try
		set defaultPrefs to {dbNameList:{}}
		set prefs to prefs & defaultPrefs
		set dbNameList to dbNameList of prefs
		set fileExt to ".fmp12"
		
		
		-- ensure file extension is in the list of dbNames
		set dbNameListWithExtensions to {}
		repeat with oneDbName in dbNameList
			set oneDbName to contents of oneDbName
			if oneDbName does not end with fileExt then set oneDbName to oneDbName & fileExt
			copy oneDbName to end of dbNameListWithExtensions
		end repeat
		set dbNameList to dbNameListWithExtensions
		
		
		-- get list of available files
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell process "FileMaker Pro"
				set filesTable to table "Available files:" of scroll area 1 of window 1
				set listAvailableFiles to value of static text 1 of every row of filesTable
			end tell
		end tell
		
		
		-- ensure only the specified ( or all if none specified ) databases are selected
		if (count of dbNameList) is 0 then set dbNameList to listAvailableFiles
		
		repeat with iter from 1 to count of listAvailableFiles
			tell application "System Events"
				tell process "FileMaker Pro"
					set oneFileIncludeCheckboxRef to checkbox 1 of row iter of filesTable
					set oneFileIncludeCheckboxValue to value of oneFileIncludeCheckboxRef
				end tell
			end tell
			set oneFileName to item iter of listAvailableFiles
			if (oneFileName is in dbNameList and oneFileIncludeCheckboxValue is 0) or ¬
				(oneFileName is not in dbNameList and oneFileIncludeCheckboxValue is 1) then
				-- need to UI script since the table may need to be scrolled
				tell application "System Events"
					tell process "FileMaker Pro"
						click oneFileIncludeCheckboxRef
					end tell
				end tell
			end if
		end repeat
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_DDR_SelectFiles - " & errMsg number errNum
	end try
end fmGUI_DDR_SelectFileson fmGUI_DDR_SelectParts(prefs)
	-- version 1.1, Erik Shagar, NYHTC
	
	try
		set defaultPrefs to {partsList:{}}
		set prefs to prefs & defaultPrefs
		set partsList to partsList of prefs
		
		
		-- get list of available parts
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell process "FileMaker Pro"
				set partsTable to table "Include in report:" of scroll area 3 of window 1
				set listAvailableParts to name of checkbox 1 of rows of partsTable
			end tell
		end tell
		
		
		-- ensure only the specified ( or all if none specified ) databases are selected
		if (count of partsList) is 0 then set partsList to listAvailableParts
		
		repeat with iter from 1 to count of listAvailableParts
			tell application "System Events"
				tell process "FileMaker Pro"
					set onePartIncludeCheckboxRef to checkbox 1 of row iter of partsTable
					set onePartIncludeCheckboxValue to value of onePartIncludeCheckboxRef
				end tell
			end tell
			set onePartName to item iter of listAvailableParts
			if (onePartName is in partsList and onePartIncludeCheckboxValue is 0) or ¬
				(onePartName is not in partsList and onePartIncludeCheckboxValue is 1) then
				-- need to UI script since the table may need to be scrolled
				tell application "System Events"
					tell process "FileMaker Pro"
						click onePartIncludeCheckboxRef
					end tell
				end tell
			end if
		end repeat
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_DDR_SelectParts - " & errMsg number errNum
	end try
end fmGUI_DDR_SelectPartson fmGUI_DDR_SelectTables(prefs)
	-- version 1.1, Erik Shagar, NYHTC
	
	try
		set defaultPrefs to {TableList:{}}
		set prefs to prefs & defaultPrefs
		set TableList to TableList & defaultPrefs
		
		
		-- get list of available tables
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell process "FileMaker Pro"
				set tablesTable to table "Include fields from tables in selected file:" of scroll area 2 of window 1
				set listOfTableNamesToSelect to value of static text 1 of (every row of tablesTable whose value of checkbox 1 is not equal to 1)
			end tell
		end tell
		
		
		-- ensure only the specified ( or all if none specified ) databases are selected
		if (count of TableList) is 0 then set TableList to listOfTableNamesToSelect
		
		repeat with iter from 1 to count of listAvailableFiles
			tell application "System Events"
				tell process "FileMaker Pro"
					set oneTableIncludeCheckboxRef to checkbox 1 of row iter of filesTable
					set oneTableIncludeCheckboxValue to value of oneTableIncludeCheckboxRef
				end tell
			end tell
			set oneTableName to item iter of listOfTableNamesToSelect
			if (oneTableName is in TableList and oneTableIncludeCheckboxValue is 0) or ¬
				(oneTableName is not in TableList and oneTableIncludeCheckboxValue is 1) then
				-- need to UI script since the table may need to be scrolled
				tell application "System Events"
					tell process "FileMaker Pro"
						click oneTableIncludeCheckboxRef
					end tell
				end tell
			end if
		end repeat
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_DDR_SelectTables - " & errMsg number errNum
	end try
end fmGUI_DDR_SelectTableson fmGUI_Inspector_Close()
	-- version 1.4
	
	fmGUI_AppFrontMost()
	tell application "System Events"
		tell application process "FileMaker Pro Advanced"
			--wait until the window no longer exists ( or we time out )
			repeat 20 times
				try
					-- close window
					set inspectorWindowObj to first window whose name is "Inspector"
					try
						click button 1 of inspectorWindowObj
					on error errMsg number errNum
						-- window exists, but failed to close it.
						if debugMode then my logLevel(5, "fmGUI_Inspector_Close - " & errMsg)
						return false
					end try
				on error
					-- window does not exist
					return true
				end try
				delay 0.5
			end repeat
			
			-- timed out
			return false
		end tell
	end tell
end fmGUI_Inspector_Closeon fmGUI_Inspector_Ensure()
	-- version 1.1
	
	try
		fmGUI_ModeEnsure_Layout()
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				if not (exists (first window whose name contains "Inspector")) then
					click (first menu item of menu 1 of menu bar item "View" of menu bar 1 whose name is "Inspector")
				end if
				return true
			end tell
		end tell
	on error errMsg number errNum
		error "Couldn't open Inspector - " & errMsg number errNum
	end try
	
end fmGUI_Inspector_Ensureon fmGUI_ManageDb_DismissXDBCDialog(prefs)
	-- version 1.0
	
	try
		fmGUI_AppFrontMost()
		
		-- get obj references
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set windowName to name of window 1
				try
					set cancelButton to button "Cancel" of window 1
				on error
					return true
				end try
			end tell
		end tell
		
		
		-- loop until we don't have any more xDBC windows
		repeat 100 times
			if windowName begins with "Connect to " then
				clickObjectByCoords(cancelButton)
				delay 1 -- seconds
			else
				return true
			end if
		end repeat
		
		
		-- we should never hit this ( unless there were more than 100 dialogs )
		return false
	on error errMsg number errNum
		error "Unable to fmGUI_ManageDb_DismissXDBCDialog - " & errMsg number errNum
	end try
	
end fmGUI_ManageDb_DismissXDBCDialogon fmGUI_ManageDb_Field_Select(prefs)
	-- version 1.2
	
	set defaultPrefs to {fieldName:null, tableName:null, altPatterns:null}
	set prefs to prefs & defaultPrefs
	
	-- CONSTANTS: 
	set testCodeHeader to "tell application \"System Events\"" & return & ¬
		"tell application process \"FileMaker Pro Advanced\"" & return
	set selectCode to "select ("
	set rowRefCode to "first row of (table 1 of scroll area 1 of tab group 1 of window 1)"
	set whoseCode to " whose "
	set fieldNameObjectCode to "value of static text 1"
	-- (then some test will be inserted)
	set betweenTestsCode to " and "
	-- (then possibly some other test will be inserted)
	set afterAllTestsCode to ")"
	set testCodeFooter to return & "end tell" & return & "end tell"
	
	try
		
		fmGUI_ManageDb_FieldListFocus({})
		
		if tableName of prefs is not null then fmGUI_ManageDb_FieldsPickTable(tableName of prefs)
		
		fmGUI_AppFrontMost()
		
		try
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					
					select (first row of (table 1 of scroll area 1 of tab group 1 of window 1) whose value of static text 1 is fieldName of prefs)
				end tell
			end tell
			return true
		on error errMsg number errNum
			if errNum is not -1719 then
				-- some error OTHER than not found in list:
				error errMsg number errNum
			else
				-- NOT FOUND, so try each altPattern: 
				set fieldNowSelected to false
				repeat with oneAltPattern in altPatterns of prefs
					set testList to contents of pattern of oneAltPattern
					
					try
						-- BEGIN: try oneAltPattern: 
						
						set testCode to {}
						repeat with oneTestRec in testList
							copy ("" & testType of oneTestRec & " " & my quoteString(testMatch of oneTestRec)) to end of testCode
						end repeat
						
						set testCode to my unParseChars(testCode, betweenTestsCode & fieldNameObjectCode & " ")
						
						
						set testCode to selectCode & rowRefCode & whoseCode & fieldNameObjectCode & " " & testCode & afterAllTestsCode
						
						set testCode to testCodeHeader & testCode & testCodeFooter
						
						
						tell me to run script testCode
						
						set fieldNowSelected to true -- no error, so we selected it.
						exit repeat -- no need to keep checking altPatterns
						
						-- ERROR: try oneAltPattern. 
					on error errMsg number errNum
						if errNum is not -1719 then
							-- some error OTHER than not found in list:
							error errMsg number errNum
						else
							-- just try the next altPattern, so continue repeat loop.
						end if
						
						-- END OF: try oneAltPattern. 
					end try
					
				end repeat
				
				return fieldNowSelected
				
			end if
		end try
		
	on error errMsg number errNum
		error "Couldn't select a Field - " & coerceToString(prefs) & " - " & errMsg number errNum
	end try
	
end fmGUI_ManageDb_Field_Selecton fmGUI_ManageDb_FieldListFocus(prefs)
	-- version 1.1
	
	try
		fmGUI_ManageDb_GoToTab_Fields({})
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set focused of (table 1 of scroll area 1 of tab group 1 of window 1) to true
				return true
			end tell
		end tell
		
	on error errMsg number errNum
		error "Couldn't focus on Field list - " & errMsg number errNum
	end try
end fmGUI_ManageDb_FieldListFocuson fmGUI_ManageDb_FieldsPickTable(baseTableName)
	-- version 1.4.1
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageDb_GoToTab_Fields({})
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set tablePopUpButton to pop up button "Table:" of tab group 1 of window 1
			end tell
		end tell
		fmGUI_PopupSet({objRef:tablePopUpButton, objValue:baseTableName})
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageDb_FieldsPickTable ( couldn't select table '" & baseTableName & "' ) - " & errMsg number errNum
	end try
	
end fmGUI_ManageDb_FieldsPickTableon fmGUI_ManageDb_GoToTab(prefs)
	-- version 1.1
	
	set defaultPrefs to {tabName:"Tables"}
	set prefs to prefs & defaultPrefs
	set tabName to tabName of prefs
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageDb_Open({})
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set tabObject to a reference to (first radio button of tab group 1 of window 1 whose title contains tabName)
				repeat 100 times
					click tabObject
					if value of tabObject is 1 then exit repeat
					delay 0.1
				end repeat
				
				if value of tabObject is 0 then error "time out trying to change tab" number -1024
			end tell
		end tell
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageDb_GoToTab ( couldn't go to the '" & tabName of prefs & "' tab ) - " & errMsg number errNum
	end try
end fmGUI_ManageDb_GoToTabon fmGUI_ManageDb_GoToTab_Fields(prefs)
	-- version 1.4
	
	fmGUI_ManageDb_GoToTab({tabName:"Fields"})
	
end fmGUI_ManageDb_GoToTab_Fieldson fmGUI_ManageDb_GoToTab_Relationships(prefs)
	-- version 1.4
	
	fmGUI_ManageDb_GoToTab({tabName:"Relationships"})
	
end fmGUI_ManageDb_GoToTab_Relationshipson fmGUI_ManageDb_GoToTab_Tables(prefs)
	-- version 1.4
	
	fmGUI_ManageDb_GoToTab({tabName:"Tables"})
	
end fmGUI_ManageDb_GoToTab_Tableson fmGUI_ManageDb_ListOfTableNames(prefs)
	-- version 1.2.1
	
	try
		set defaultPrefs to {stayOpen:false}
		set prefs to prefs & defaultPrefs
		
		fmGUI_ManageDb_GoToTab_Tables({})
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set fmTableNames to value of static text 1 of (every row of (table 1 of scroll area 1 of tab group 1 of window 1) whose value of static text 2 is "FileMaker")
			end tell
		end tell
		if not stayOpen of prefs then fmGUI_ManageDB_Save({})
		
		return fmTableNames
	on error errMsg number errNum
		error "unable to fmGUI_ManageDb_ListOfTableNames - " & errMsg number errNum
	end try
end fmGUI_ManageDb_ListOfTableNameson fmGUI_ManageDb_ListOfXDBCTableNames(prefs)
	-- version 1.2
	
	try
		fmGUI_ManageDb_GoToTab_Tables({})
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set xDBCTableNames to value of static text 1 of (every row of (table 1 of scroll area 1 of tab group 1 of window 1) whose value of static text 2 is not "FileMaker")
				my fmGUI_ManageDB_Save({})
				return xDBCTableNames
			end tell
		end tell
	on error errMsg number errNum
		error "unable to fmGUI_ManageDb_ListOfXDBCTableNames - " & errMsg number errNum
	end try
end fmGUI_ManageDb_ListOfXDBCTableNameson fmGUI_ManageDb_Open(prefs)
	-- version 1.3
	
	try
		fmGUI_AppFrontMost()
		
		
		-- try to open Manage DB
		set windowName to fmGUI_NameOfFrontmostWindow()
		if windowName starts with "Manage Database for" then
			return true
		else
			fmGUI_Menu_OpenDB({})
			
			
			-- dismiss any initial xDBC connection errors
			fmGUI_ManageDb_DismissXDBCDialog({})
			
			
			-- to to the TOs tab and dismiss any xDBC connections that failed to connect
			fmGUI_ManageDb_GoToTab_Relationships({})
			delay 1
			fmGUI_ManageDb_DismissXDBCDialog({})
			
			
			--zoom out to show all TOs and dismiss any xDBC errors that weren't already dismissed
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					keystroke "i" using command down
				end tell
			end tell
			delay 1
			fmGUI_ManageDb_DismissXDBCDialog({})
			
			
			-- zoom back in
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set zoomField to text field 1 of tab group 1 of window 1
					set focused of zoomField to true
					set value of zoomField to "100"
				end tell
			end tell
			
			return true
		end if
	on error errMsg number errNum
		error "Couldn't open manage DB - " & errMsg number errNum
	end try
	
end fmGUI_ManageDb_Openon fmGUI_ManageDb_Save(prefs)
	-- version 1.5
	
	set defaultPrefs to {notInManageDbIsError:true}
	set prefs to prefs & defaultPrefs
	
	
	set manageDbWindowNamePrefix to "Manage Database for"
	set waitCycleDelaySeconds to 10 -- seconds
	set waitSaveTotalSeconds to 60 * minutes --seconds
	
	set waitCycleMax to round (waitSaveTotalSeconds / waitCycleDelaySeconds) rounding down
	
	try
		fmGUI_AppFrontMost()
		set frontmostWindowName to fmGUI_NameOfFrontmostWindow()
		if frontmostWindowName starts with manageDbWindowNamePrefix then
			try
				fmGUI_ObjectClick_OkButton({})
				delay 1 -- let click register. will continue below to wait for window to close
			on error errMsg number errNum
				error "Couldn't save Manage Database - " & errMsg number errNum
			end try
		else
			if notInManageDbIsError of prefs then
				error "Manage Database window wasn't open, so nothing to close." number 1024
			else
				-- Not in Manage Database, but that is OK.
				return true
			end if
		end if
		
		
		-- wait until the the changes are commited
		windowWaitUntil({windowName:frontmostWindowName, windowNameTest:"does not contain", whichWindow:"any", waitCycleDelaySeconds:waitCycleDelaySeconds, waitCycleMax:waitCycleMax})
		delay 1 -- let normal window come to front. 
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageDB_Save - " & errMsg number errNum
	end try
end fmGUI_ManageDb_Saveon fmGUI_ManageDb_Table_ListOfFieldNames(baseTableName)
	-- version 1.1
	
	try
		fmGUI_ManageDb_FieldsPickTable(baseTableName)
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				value of static text 1 of every row of table 1 of scroll area 1 of tab group 1 of window 1
				return result
			end tell
		end tell
	on error errMsg number errNum
		error "Couldn't get list of field names for table '" & baseTableName & "' - " & errMsg number errNum
	end try
	
end fmGUI_ManageDb_Table_ListOfFieldNameson fmGUI_ManageDb_TableListFocus(prefs)
	-- version 1.1
	
	try
		fmGUI_ManageDb_GoToTab_Tables({})
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set focused of (table 1 of scroll area 1 of tab group 1 of window 1) to true
				return true
			end tell
		end tell
		
	on error errMsg number errNum
		error "Couldn't focus on Field list - " & errMsg number errNum
	end try
	
end fmGUI_ManageDb_TableListFocuson fmGUI_ManageDb_TO_Add(prefs)
	-- version 1.4.2
	
	set defaultPrefs to {TOName:null, dbName:null, doNotChangeExisting:false, baseTableName:null}
	
	set prefs to prefs & defaultPrefs
	set dbName to dbName of prefs
	set baseTableName to baseTableName of prefs
	set TOName to TOName of prefs
	
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageDb_GoToTab_Relationships(prefs)
		
		
		-- add a new TO
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set addTocButton to first button of tab group 1 of window 1 whose description contains "Add a table"
			end tell
		end tell
		fmGUI_ObjectClick_Button({buttonRef:addTocButton})
		windowWaitUntil_FrontIS({windowName:"Specify Table"})
		
		
		-- specify Db of new TO
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set dataSourcePopUpButton to pop up button "Data Source:" of window 1
			end tell
		end tell
		
		try
			-- try to select existing data source
			fmGUI_PopupSet({objRef:dataSourcePopUpButton, objValue:dbName})
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					select (first row of table 1 of scroll area 1 of window 1 whose value of static text 1 is baseTableName)
				end tell
			end tell
			
		on error
			--Not an existing data source, so create it
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					key code 53 -- Hit 'Esc'
				end tell
			end tell
			fmGUI_PopupSet({objRef:dataSourcePopUpButton, objValue:"Manage Data Sources…"})
			fmGUI_ManageDataSources_EnsureExists({dataSourceName:dbName})
			fmGUI_ManageDataSources_Save({})
			delay 1
			
			-- now that we've added the data source, try again
			fmGUI_PopupSet({objRef:dataSourcePopUpButton, objValue:dbName})
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					select (first row of table 1 of scroll area 1 of window 1 whose value of static text 1 is baseTableName)
				end tell
			end tell
		end try
		
		
		-- specify TO name
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set value of text field "Name" of window 1 to TOName
			end tell
		end tell
		if debugMode then logLEVEL(5, "TO added: '" & TOName & "'")
		fmGUI_ObjectClick_OkButton({})
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageDb_TO_Add - " & errMsg number errNum
	end try
	
end fmGUI_ManageDb_TO_Addon fmGUI_ManageDB_TO_ListAdd(prefs)
	-- version 1.1
	
	set defaultPrefs to {TOList:""}
	set prefs to prefs & defaultPrefs
	
	try
		set TOList to TOList of prefs
		set TOList to replaceSimple({TOList, CR, LF})
		set TOList to parseChars({sourceTEXT:TOList, parseString:LF})
		
		if (count of TOList) is greater than 0 then
			
			-- loop over and get list of DBs that need to exist as data sources.
			repeat with oneTO in TOList
				set TORec to parseChars({sourceTEXT:oneTO, parseString:"||"})
				set oneDBName to item 1 of TORec
				set oneTableName to item 2 of TORec
				set TOParam to {dbName:oneDBName, baseTableName:oneTableName, TOName:oneDBName & "__" & oneTableName}
				
				fmGUI_ManageDb_TO_Add(TOParam)
			end repeat
			
			fmGUI_ManageDB_Save({})
		end if
		return true
	on error errMsg number errNum
		error "Couldn't fmGUI_ManageDB_TO_ListAdd - " & errMsg number errNum
	end try
	
end fmGUI_ManageDB_TO_ListAddon fmGUI_ManageDb_TO_Remove(prefs)
	-- version 1.0, Erik Shagdar, NYHTC
	
	try
		set defaultPrefs to {TOName:null, deleteCurrent:false, exitManageDb:false}
		set prefs to prefs & defaultPrefs
		
		if TOName of prefs is null and not deleteCurrent of prefs then error "no table occurence specified" number -1024
		
		
		if not deleteCurrent of prefs then
			-- ensure we're in the TO graph
			fmGUI_ManageDb_GoToTab_Relationships({})
			tell application "System Events"
				tell process "FileMaker Pro"
					set frontmost to true
					set windowPos to position of window 1
					set windowSize to size of window 1
					set xCoord to (item 1 of windowPos) + (item 1 of windowSize) / 2
					set yCoord to (item 2 of windowPos) + (item 2 of windowSize) / 2
				end tell
			end tell
			clickAtCoords(xCoord, yCoord)
			
			
			-- attempt to select the TO to remove
			tell application "System Events"
				tell process "FileMaker Pro"
					keystroke TOName of prefs
					keystroke "o" using {command down}
				end tell
			end tell
			
			
			-- confirm selected TO is the correct one
			windowWaitUntil_FrontIS({windowName:"Specify Table"})
			tell application "System Events"
				tell process "FileMaker Pro"
					set selectedTOName to value of text field "name" of window 1
				end tell
			end tell
			fmGUI_ObjectClick_CancelButton({})
			if TOName of prefs is not equal to selectedTOName then error "unable to select specified table occurence" number -1024
		end if
		
		
		-- delete TO
		tell application "System Events"
			tell process "FileMaker Pro"
				set deleteButton to first button of tab group 1 of window 1 whose description is "Delete"
			end tell
		end tell
		fmGUI_ObjectClick_Button({buttonRef:deleteButton})
		windowWaitUntil_FrontIS({windowName:"FileMaker Pro"})
		tell application "System Events"
			tell process "FileMaker Pro"
				set removeButton to button "Remove" of window 1
			end tell
		end tell
		fmGUI_ObjectClick_Button({buttonRef:removeButton})
		
		
		-- should we save changes and exit manageDB
		if exitManageDb of prefs then fmGUI_ManageDb_Save({})
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageDb_TO_Remove - " & errMsg number errNum
	end try
end fmGUI_ManageDb_TO_Removeon namesOfTOsOfWindowName(someWindowName)
	-- version 1.1
	
	tell application id "com.filemaker.client.advanced12"
		set dbCount to count of every database
		repeat with dbNum from 1 to dbCount
			-- might not HAVE any windows:
			try
				set dbWindows to name of every window of database dbNum
				if dbWindows contains someWindowName then return name of every table of database dbNum
			end try
		end repeat
	end tell
	
	error "Could not get namesOfTOsOfWindowName of window name specified: '" & someWindowName & "'"
end namesOfTOsOfWindowNameon fmGUI_ManageDataSources_Delete(prefs)
	-- version 1.0
	
	try
		set defaultPrefs to {dataSourceName:null}
		set prefs to prefs & defaultPrefs
		
		set dataSourceName to dataSourceName of prefs
		
		fmGUI_AppFrontMost()
		fmGUI_ManageDataSources_Open({})
		
		try -- it DOES exist, so delete it: 
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					select (first row of (table 1 of scroll area 1 of window 1) whose name of static text 1 is dataSourceName)
					set deleteButton to first button of window 1 whose name starts with "Delete"
				end tell
			end tell
			clickObjectByCoords(deleteButton)
			
			return "Deleted: " & dataSourceName
		on error -- DOES NOT  exist:
			return "Do NOT Exist: " & dataSourceName
		end try
		
	on error errMsg number errNum
		error "Couldn't ensure existence of data source '" & dataSourceName & "' - " & errMsg number errNum
	end try
end fmGUI_ManageDataSources_Deleteon fmGUI_ManageDataSources_EnsureExists(prefs)
	-- version 1.3
	
	set defaultPrefs to {dataSourceName:null, dataSourcePath:null}
	set prefs to prefs & defaultPrefs
	
	set dataSourceName to dataSourceName of prefs
	set dataSourcePath to dataSourcePath of prefs
	
	-- default is just a relative path to data source name in same location as database being edited:
	if dataSourcePath is null then set dataSourcePath to "file:" & dataSourceName
	
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageDataSources_Open({})
		
		
		-- Make sure a specified Data Source exists.
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set dataSourceExists to exists (first row of (table 1 of scroll area 1 of window 1) whose name of static text 1 is dataSourceName)
			end tell
		end tell
		if not dataSourceExists then
			-- need to create it: 
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set newButton to first button of window 1 whose name starts with "New"
				end tell
			end tell
			clickObjectByCoords(newButton)
			windowWaitUntil_FrontIS({windowName:"Edit Data Source"})
			
			
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set value of text field 1 of window 1 to dataSourceName
					set value of text area 1 of scroll area 1 of group 1 of window 1 to dataSourcePath
					set okButton to first button of window 1 whose name starts with "OK"
				end tell
			end tell
			clickObjectByCoords(okButton)
			windowWaitUntil_FrontIS({windowName:"Manage External Data Sources"})
			
			return "Added: " & dataSourceName
		else -- already existed:
			return "Existed: " & dataSourceName
		end if
		
	on error errMsg number errNum
		error "Couldn't fmGUI_ManageDataSources_EnsureExists for '" & dataSourceName & "' - " & errMsg number errNum
	end try
end fmGUI_ManageDataSources_EnsureExistson fmGUI_ManageDataSources_Modify(prefs)
	-- version 1.3.2
	
	set defaultPrefs to {dataSourceName:null, dataSourcePath:null}
	set prefs to prefs & defaultPrefs
	
	set dataSourceName to dataSourceName of prefs
	set dataSourcePath to dataSourcePath of prefs
	
	-- default is just a relative path to data source name in same location as database being edited:	
	if dataSourcePath is null then set dataSourcePath to "file:" & dataSourceName
	
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageDataSources_Open({})
		
		try -- it DOES exist, so modify it: 
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					select (first row of (table 1 of scroll area 1 of window 1) whose name of static text 1 is dataSourceName)
					set editButton to first button of window 1 whose name starts with "Edit"
				end tell
			end tell
			clickObjectByCoords(editButton)
			windowWaitUntil_FrontIS({windowName:"Edit Data Source"})
			
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set value of text field 1 of window 1 to dataSourceName
					set value of text area 1 of scroll area 1 of group 1 of window 1 to dataSourcePath
					set okButton to first button of window 1 whose name starts with "OK"
				end tell
			end tell
			clickObjectByCoords(okButton)
			windowWaitUntil_FrontIS({windowName:"Manage External Data Sources"})
			
			return "Existed: " & dataSourceName
		on error -- DOES NOT  exist:
			return "Do NOT Exist: " & dataSourceName
		end try
		
	on error errMsg number errNum
		error "Couldn't ensure existence of data source '" & dataSourceName & "' - " & errMsg number errNum
	end try
end fmGUI_ManageDataSources_Modifyon fmGUI_ManageDataSources_Open(prefs)
	-- version 1.2
	
	try
		fmGUI_AppFrontMost()
		if fmGUI_NameOfFrontmostWindow() does not start with "Manage External Data Sources" then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					click (first menu item of menu 1 of menu item "Manage" of menu 1 of menu bar item "File" of menu bar 1 whose name starts with "External Data Source")
				end tell
			end tell
		end if
		
		return true
	on error errMsg number errNum
		error "Couldn't open Manage Data Sources - " & errMsg number errNum
	end try
end fmGUI_ManageDataSources_Openon fmGUI_ManageDataSources_Save(prefs)
	-- version 1.4.1
	
	set defaultPrefs to {notInManageWindowIsError:true}
	set prefs to prefs & defaultPrefs
	
	set manageWindowNamePrefix to "Manage External Data Sources"
	set waitCycleDelaySeconds to 5 -- seconds
	set waitSaveTotalSeconds to 5 * minutes --seconds
	
	set waitCycleMax to round (waitSaveTotalSeconds / waitCycleDelaySeconds) rounding down
	
	try
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				if name of window 1 starts with manageWindowNamePrefix then
					try
						set manageWindowName to name of window 1
						click (button "OK" of window 1)
						delay 1 -- let click register.
						-- will continue below to wait for window to close
						
					on error errMsg number errNum
						error "Couldn't save Manage Data Sources - " & errMsg number errNum
					end try
				else
					if notInManageWindowIsError of prefs then
						error "Manage Data Source window wasn't open, so nothing to close." number 1024
					else
						-- Not in Manage Data Source, but that is OK.
						return true
					end if
				end if
			end tell
		end tell
			
		windowWaitUntil({windowName:manageWindowName, windowNameTest:"does not contain", whichWindow:"any", waitCycleDelaySeconds:waitCycleDelaySeconds, waitCycleMax:waitCycleMax})
		delay 1 -- let normal window come to front. 
			
		return true
	on error errMsg number errNum
		error "Couldn't save Manage Data Sources - " & errMsg number errNum
	end try
	
end fmGUI_ManageDataSources_Saveon fmGUI_CustomFunctions_EditFunction(prefs)
	-- version 1.6
	
	set defaultPrefs to {functionName:null, functionOldName:null, doNotChangeExisting:false, availability:"ALL", parameterList:{}, calcCode:null, doNotUpdateIfVersion:null}
	set prefs to prefs & defaultPrefs
	
	try
		-- init vars		
		set foundFunction to false
		set renameFunction to false
		set editWindowName to "Edit Custom Function"
		set functionName to functionName of prefs
		
		
		-- deprecated param - why even bother calling this handler?
		if doNotChangeExisting of prefs then error "found function '" & functionName & "', but not allowed to change, so handler should not be called" number -1024
		
		
		-- open list of functions and get objects
		fmGUI_CustomFunctions_Open({})
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set editButton to first button of window 1 whose name begins with "Edit"
				set newButton to first button of window 1 whose name begins with "New"
			end tell
		end tell
		
		
		
		-- try editing by selecting standard name
		if fmGUI_CustomFunctions_SelectFunction({functionName:functionName}) then
			set foundFunction to true
			set clickCondition to "found by standard name"
			fmGUI_ObjectClick_Button({buttonRef:editButton})
		end if
		
		
		-- try editing by selecting old name
		if not foundFunction and functionOldName of prefs is not null then
			if fmGUI_CustomFunctions_SelectFunction({functionName:functionOldName of prefs}) then
				set foundFunction to true
				set renameFunction to true
				set clickCondition to "found by OLD name"
				fmGUI_ObjectClick_Button({buttonRef:editButton})
			end if
		end if
		
		
		-- Did not exist with "new" AND "old" name so we need to create NEW:		
		if not foundFunction then
			set renameFunction to true
			set clickCondition to "new function"
			fmGUI_ObjectClick_Button({buttonRef:newButton})
		end if
		
		
		-- ensure the edit window opened
		if not windowWaitUntil_FrontIS({windowName:editWindowName}) then error "window wait timed out from condition: " & clickCondition number -1024
		
		
		-- TEST for acceptable version to NOT edit: 
		if doNotUpdateIfVersion of prefs is not null then
			
			-- get version of function in the file
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set existingCalc to value of text area 1 of scroll area 4 of window 1
				end tell
			end tell
			set cfExistingVersion to getTextBetween({sourceTEXT:existingCalc, beforeText:"// version ", afterText:return})
			if (offset of "," in cfExistingVersion) is greater than 0 then set cfExistingVersion to item 1 of parseChars({cfExistingVersion, ","})
			
			
			-- Can SKIP making edits, so cancel: 
			if cfExistingVersion is equal to doNotUpdateIfVersion of prefs then
				fmGUI_ObjectClick_CancelButton({})
				delay 0.05
				return false -- did NOT need to update.
			end if
		end if
		
		
		-- ensure standard name
		if functionName is not null then
			if renameFunction then
				tell application "System Events"
					tell application process "FileMaker Pro Advanced"
						set value of text field 1 of window 1 to functionName
					end tell
				end tell
			end if
		end if
		
		
		-- ensure standard calc
		if calcCode of prefs is not null then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set value of text area 1 of scroll area 4 of window 1 to calcCode of prefs
				end tell
			end tell
			delay 0.2
		end if
		
		
		-- RESET parameter names: 
		set parameterList to parameterList of prefs
		if (count of parameterList) is not 0 then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					repeat with paramNum from 1 to count of parameterList
						set paramName to contents of item paramNum of parameterList
						select row paramNum of table 1 of scroll area 3 of window 1
						set paramNameTextField to text field 2 of window 1
						if value of paramNameTextField is not equal to paramName then
							set (value of paramNameTextField) to item paramNum of parameterList
							click (first button of window 1 whose description is "Edit parameter")
							delay 0.2
						end if
					end repeat
				end tell
			end tell
		end if
		
		
		-- SAVE edits: click OK
		fmGUI_ObjectClick_OkButton({})
		windowWaitUntil({windowName:"Manage Custom Functions for", windowNameTest:"contains", whichWindow:"front"})
		delay 0.2
		
		return true
	on error errMsg number errNum
		error "unable to  fmGUI_CustomFunctions_EditFunction '" & functionName & "' - " & errMsg number errNum
	end try
	
end fmGUI_CustomFunctions_EditFunctionon fmGUI_CustomFunctions_FunctionNames(prefs)
	-- version 1.1
	
	try
		fmGUI_CustomFunctions_Open({})
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				value of static text 1 of every row of table 1 of scroll area 1 of window 1
			end tell
		end tell
		return result
	on error errMsg number errNum
		error "Couldn't get names of custom functions - " & errMsg number errNum
	end try
end fmGUI_CustomFunctions_FunctionNameson fmGUI_CustomFunctions_Open(prefs)
	-- version 1.3
	
	
	try
		fmGUI_AppFrontMost()
		if fmGUI_NameOfFrontmostWindow() starts with "Manage Custom Functions for" then
			return true
		else
			-- open manage custom functions
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set manageFunctionsMenuItem to first menu item of menu 1 of menu item "Manage" of menu 1 of menu bar item "File" of menu bar 1 whose name starts with "Custom Functions"
				end tell
			end tell
			fmGUI_ClickMenuItem({menuItemRef:manageFunctionsMenuItem})
			windowWaitUntil({windowName:"Manage Custom Functions for", windowNameTest:"contains", whichWindow:"front"})
			
			
			-- sort by function name
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set sortPopup to pop up button "View by" of window 1
				end tell
			end tell
			fmGUI_PopupSet({objRef:sortPopup, objValue:"function name"})
			
			
			return true
		end if
	on error errMsg number errNum
		error "unable to fmGUI_CustomFunctions_Open - " & errMsg number errNum
	end try
	
end fmGUI_CustomFunctions_Openon fmGUI_CustomFunctions_ParamsForFunction(prefs)
	-- version 1.2
	
	set defaultPrefs to {functionName:null}
	set prefs to prefs & defaultPrefs
	try
		fmGUI_CustomFunctions_Open({})
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set rawParams to value of static text 2 of (first row of table 1 of scroll area 1 of window 1 whose (value of static text 1) is functionName of prefs)
			end tell
		end tell
		set parsedParams to parseChars({rawParams, " ; "})
		return parsedParams
		
	on error errMsg number errNum
		error "Couldn't get custom function parameters - " & errMsg number errNum
	end try
	
end fmGUI_CustomFunctions_ParamsForFunctionon fmGUI_CustomFunctions_Save(prefs)
	-- version 1.2
	
	try
		set frontmostWindowName to fmGUI_NameOfFrontmostWindow()
		if frontmostWindowName starts with "Manage Custom Functions for" then
			try
				tell application "System Events"
					tell application process "FileMaker Pro Advanced"
						click (button "OK" of window 1)
					end tell
				end tell
				windowWaitUntil({windowName:"Manage Custom Functions for", windowNameTest:"does not contain", whichWindow:"front"})
				return true
			on error errMsg number errNum
				error "Couldn't save Custom Functions - " & errMsg number errNum
			end try
		else
			error "Custom Functions wasn't open - " & errMsg
		end if
	on error errMsg number errNum
		error "Couldn't save Custom Functions - " & errMsg number errNum
	end try
end fmGUI_CustomFunctions_Saveon fmGUI_CustomFunctions_SelectFunction(prefs)
	-- version 1.1.1
	
	set defaultPrefs to {functionName:null}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_CustomFunctions_Open({})
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				try
					select (first row of (table 1 of scroll area 1 of window 1) whose name of static text 1 is functionName of prefs)
					delay 0.05
					set selectedFunctionName to value of static text 1 of (first row of table 1 of scroll area 1 of window 1 whose selected is true)
					if functionName of prefs is equal to selectedFunctionName then
						return true
					else
						error "failed to select function even though function exists" number -1024
					end if
				on error
					return false
				end try
			end tell
		end tell
	on error errMsg number errNum
		error "unable to  fmGUI_CustomFunctions_SelectFunction - " & errMsg number errNum
	end try
end fmGUI_CustomFunctions_SelectFunctionon fmGUI_ManageLayouts_Close(prefs)
	-- version 1.3.1
	
	try
		set windowNamePart to "Manage Layouts"
		fmGUI_AppFrontMost()
		fmGUI_DataViewer_Close()
		
		if fmGUI_NameOfFrontmostWindow() starts with windowNamePart then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set contextWindow to first window whose name begins with windowNamePart
					set closeButton to first button of contextWindow whose description is "close button"
				end tell
			end tell
			fmGUI_ObjectClick_Button({buttonRef:closeButton})
			return windowWaitUntil({windowName:windowNamePart, windowNameTest:"does not contain"})
		end if
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageLayouts_Close - " & errMsg number errNum
	end try
end fmGUI_ManageLayouts_Closeon fmGUI_ManageLayouts_Edit(prefs)
	-- version 1.0
	
	try
		set defaultPrefs to {layoutName:null, layoutOldName:null, editExistingSetupWindow:false, doNotChangeExisting:false, baseTableName:null, includeInLayoutMenus:0, menuSet:"[File Default]", formViewEnabled:1, listViewEnabled:1, tableViewEnabled:1, defaultView:"Form View", scriptTriggers:{}}
		set prefs to prefs & defaultPrefs
		set layoutName to layoutName of prefs
		set editWindowName to "Layout Setup"
		
		if layoutName is null then error "must specify layout name" number -1024
		
		
		-- already have edit window open, so need to check if we should be using this window or re-selecting another window
		-- todo: check for first STANDARD window
		if fmGUI_NameOfFrontmostWindow() is equal to editWindowName then
			tell application "System Events"
				tell process "FileMaker Pro"
					set currentLayoutName to value of text field "Layout Name" of tab group 1 of window 1
				end tell
			end tell
			if editExistingSetupWindow of prefs then
				--continue
			else if currentLayoutName is equal to layoutName or currentLayoutName is equal to layoutOldName of prefs then
				-- continue
			else
				--need to close this window and find the layout to edit
				fmGUI_ObjectClick_CancelButton({})
			end if
		end if
		
		
		-- find layout to edit
		if fmGUI_NameOfFrontmostWindow() is not equal to editWindowName then
			fmGUI_ManageLayouts_Open({})
			set foundThisLayout to fmGUI_ManageLayouts_Select({layoutName:layoutName})
			if layoutOldName of prefs is not null then
				set foundOldLayout to fmGUI_ManageLayouts_Select({layoutName:layoutOldName of prefs})
				if foundThisLayout and foundOldLayout then
					error "Both the old '" & layoutOldName of prefs & "' and the current layout name '" & layoutName & "' already exist - PROBLEM!"
				else if not foundThisLayout and not foundOldLayout then
					error "Neither the old '" & layoutOldName of prefs & "' nor the current layout name '" & layoutName & "' already exist - PROBLEM!"
				end if
				if foundThisLayout and not foundOldLayout then fmGUI_ManageLayouts_Select({layoutName:layoutName})
			end if
			fmGUI_ManageLayouts_OpenEditForSelected({})
		end if
		
		
		-- edit layout settings - GENERAL
		tell application "System Events"
			tell process "FileMaker Pro"
				set tabButton to radio button "General" of tab group 1 of window 1
			end tell
		end tell
		fmGUI_ObjectClick_Button({buttonRef:tabButton})
		
		-- ensure layout name is updated
		tell application "System Events"
			tell process "FileMaker Pro"
				set layoutNameObj to text field "Layout Name" of tab group 1 of window 1
			end tell
		end tell
		fmGUI_TextFieldSet({objRef:layoutNameObj, objValue:layoutName})
		
		
		if not doNotChangeExisting of prefs then
			tell application "System Events"
				tell process "FileMaker Pro"
					set includeInMenuCheck to checkbox "Include in layout menus" of tab group 1 of window 1
					set sourceTO to pop up button 1 of tab group 1 of window 1
					--set saveAutomaticallyCheck to checkbox "Save record changes automatically" of tab group 1 of window 1
					--set showFramesCheck to checkbox "Show field frames when record is active" of tab group 1 of window 1
					--set listRecordIndicatorCheck to checkbox "Show current record indicator in List View" of tab group 1 of window 1
					--set delineateCurrentRecordCheck to checkbox "Delineate fields on current record only" of tab group 1 of window 1
					set menuSet to pop up button 2 of tab group 1 of window 1
					--set quickFindCheck to checkbox "Enable Quick Find" of tab group 1 of window 1
				end tell
			end tell
			
			fmGUI_CheckboxSet({objRef:includeInMenuCheck, objValue:includeInLayoutMenus of prefs})
			if baseTableName of prefs is not null then fmGUI_PopupSet({objRef:sourceTO, objValue:baseTableName of prefs})
			fmGUI_PopupSet({objRef:menuSet, objValue:menuSet of prefs})
		end if
		
		
		-- edit layout settings - VIEWS
		if not doNotChangeExisting of prefs then
			
			tell application "System Events"
				tell process "FileMaker Pro"
					set tabButton to radio button "Views" of tab group 1 of window 1
				end tell
			end tell
			fmGUI_ObjectClick_Button({buttonRef:tabButton})
			
			tell application "System Events"
				tell process "FileMaker Pro"
					set formViewCheck to checkbox "Table View" of tab group 1 of window 1
					set listViewCheck to checkbox "List View" of tab group 1 of window 1
					set tableViewCheck to checkbox "Form View" of tab group 1 of window 1
					set defaultViewObj to pop up button 1 of tab group 1 of window 1
				end tell
			end tell
			
			fmGUI_CheckboxSet({objRef:formViewCheck, objValue:formViewEnabled of prefs})
			fmGUI_CheckboxSet({objRef:listViewCheck, objValue:listViewEnabled of prefs})
			fmGUI_CheckboxSet({objRef:tableViewCheck, objValue:tableViewEnabled of prefs})
			fmGUI_PopupSet({objRef:defaultViewObj, objValue:defaultView of prefs})
		end if
		
		
		-- edit layout settings - PRINTING
		
		
		
		-- edit layout settings - TRIGGERS
		
		
		
		-- save changes
		fmGUI_ObjectClick_OkButton({})
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageLayouts_Edit - " & errMsg number errNum
	end try
end fmGUI_ManageLayouts_Editon fmGUI_ManageLayouts_LayoutListFocus(prefs)
	-- version 1.2
	
	try
		set defaultPrefs to {}
		set prefs to prefs & defaultPrefs
		set layoutWindowName to "Manage Layouts"
		
		fmGUI_ManageLayouts_Open({})
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set contextWindow to first window whose name begins with layoutWindowName
				set focused of (outline 1 of scroll area 1 of contextWindow) to true
			end tell
		end tell
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageLayouts_LayoutListFocus - " & errMsg number errNum
	end try
end fmGUI_ManageLayouts_LayoutListFocuson fmGUI_ManageLayouts_LayoutOpen(prefs)
	-- version 1.4
	
	-- 1.4 - 2018-09-06 ( eshagdar ): params is a dictionary
	-- 1.3 - 2017-06-14 ( eshagdar ): narrowed scope
	-- 1.2 - 2017-04-03 ( eshagdar ): use handlers to test/wait for new window to appear.
	
	set defaultPrefs to {someLayoutName:null}
	set prefs to prefs & defaultPrefs
	
	set someLayoutName to someLayoutName of prefs
	
	
	try
		fmGUI_ManageLayouts_Open({})
		set layoutSelected to fmGUI_ManageLayouts_Select({layoutName:someLayoutName})
		
		
		if not layoutSelected then
			-- could NOT select the specified layout - ERROR
			error "Could not select the layout named '" & someLayoutName & "' - so cannot open it."
		else
			fmGUI_DataViewer_Close()
			fmGUI_Inspector_Close()
			set startingWindowName to fmGUI_NameOfFrontmostWindow()
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set openButton to first button of window 1 whose title is "Open"
				end tell
			end tell
			clickObjFromHtcLib(openButton)
			windowWaitUntil_FrontIsNOT({windowName:startingWindowName})
		end if
	on error errMsg number errNum
		error "Couldn't open window to modify Layout - " & errMsg number errNum
	end try
	
end fmGUI_ManageLayouts_LayoutOpenon fmGUI_ManageLayouts_Open(prefs)
	-- version 1.0
	
	try
		return fmGUI_Menu_OpenLayouts({})
	on error errMsg number errNum
		error "unable to fmGUI_ManageLayouts_Open - " & errMsg number errNum
	end try
end fmGUI_ManageLayouts_Openon fmGUI_ManageLayouts_OpenEditForSelected(prefs)
	-- version 1.1
	
	try
		set defaultPrefs to {}
		set prefs to prefs & defaultPrefs
		
		tell application "System Events"
			tell process "FileMaker Pro"
				set windowContextRef to first window whose name begins with "Manage Layouts"
			end tell
		end tell
		
		return fmGUI_ObjectClick_Button({buttonName:"Edit", windowContextRef:windowContextRef, windowNameThatOpens:"Layout Setup"})
	on error errMsg number errNum
		error "unable to fmGUI_ManageLayouts_OpenEditForSelected - " & errMsg number errNum
	end try
end fmGUI_ManageLayouts_OpenEditForSelectedon fmGUI_ManageLayouts_Select(prefs)
	-- version 1.4
	
	try
		set defaultPrefs to {layoutName:null}
		set prefs to prefs & defaultPrefs
		set layoutName to layoutName of prefs
		if layoutName is null then error "must specify layout name" number -1024
		set layoutWindowName to "Manage Layouts"
		
		
		fmGUI_ManageLayouts_Open({})
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set contextWindow to first window whose name begins with layoutWindowName
				set searchTextField to text field 1 of contextWindow
				set searchButton to button 1 of text field 1 of contextWindow
			end tell
		end tell
		fmGUI_TextFieldSet({objRef:searchTextField, objValue:layoutName})
		delay 0.1
		fmGUI_ObjectClick_Button({buttonRef:searchButton})
		
		
		-- after filter, search across all matches and select the first row that matches		
		try
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set clearButton to button 2 of text field 1 of contextWindow
					select (first row of outline 1 of scroll area 1 of contextWindow whose value of text field 1 is layoutName)
				end tell
			end tell
			fmGUI_ObjectClick_Button({buttonRef:clearButton})
			fmGUI_ManageLayouts_LayoutListFocus({})
			return true
		end try
		
		-- failed to select layout by name
		fmGUI_ObjectClick_Button({buttonRef:clearButton})
		return false
	on error errMsg number errNum
		error "unable to fmGUI_ManageLayouts_Select - " & errMsg number errNum
	end try
end fmGUI_ManageLayouts_Selecton fmGUI_CustomMenus_GotoTab(prefs)
	-- version 1.1.1
	
	try
		set defaultPrefs to {tabName:"Custom Menu Sets"}
		set prefs to prefs & defaultPrefs
		
		
		fmGUI_AppFrontMost()
		fmGUI_CustomMenus_Open({})
		
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				click (first radio button of tab group 1 of window 1 whose name is tabName of prefs)
			end tell
		end tell
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_CustomMenus_GotoTab - " & errMsg number errNum
	end try
	
end fmGUI_CustomMenus_GotoTabon fmGUI_CustomMenus_GotoTab_Menus(prefs)
	-- version 1.0
	
	try
		return fmGUI_CustomMenus_GotoTab({tabName:"Custom Menus"})
	on error errMsg number errNum
		error "unable to fmGUI_CustomMenus_GotoTab_Menus - " & errMsg number errNum
	end try
	
end fmGUI_CustomMenus_GotoTab_Menuson fmGUI_CustomMenus_GotoTab_MenuSets(prefs)
	-- version 1.0
	
	try
		return fmGUI_CustomMenus_GotoTab({tabName:"Custom Menu Sets"})
	on error errMsg number errNum
		error "unable to fmGUI_CustomMenus_GotoTab_MenuSets - " & errMsg number errNum
	end try
	
end fmGUI_CustomMenus_GotoTab_MenuSetson fmGUI_CustomMenus_Menu_Create(prefs)
	-- version 1.1
	
	try
		set defaultPrefs to {menuBasedOn:null}
		set prefs to prefs & defaultPrefs
		set menuBasedOn to menuBasedOn of prefs
		
		set windowSelectMenu to "Select Menu"
		set windowCreateMenu to "Create Custom Menu"
		
		
		-- ensure context
		fmGUI_AppFrontMost()
		set frontWindowName to fmGUI_NameOfFrontmostWindow()
		if frontWindowName is not equal to windowSelectMenu and frontWindowName is not equal to windowCreateMenu then error "wrong window context" number -1024
		
		
		-- click new menu button if not on the create menu window
		if frontWindowName is equal to windowSelectMenu then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set newMenuButton to first button of window 1 whose description starts with "New Menu"
				end tell
			end tell
			fmGUI_ObjectClick_Button({buttonRef:newMenuButton})
		end if
		
		
		-- create menu
		windowWaitUntil_FrontIS({windowName:"Create Custom Menu"})
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				if menuBasedOn is null or ¬
					menuBasedOn is equal to "" or ¬
					menuBasedOn is equal to "none" then
					click (first radio button of window 1 whose name contains "empty")
				else
					-- CHOICE: Start with a standard FileMaker menu:
					click (first radio button of window 1 whose name contains "standard")
					select (first row of table 1 of scroll area 1 of window 1 whose value of static text 1 is menuBasedOn)
				end if
			end tell
		end tell
		fmGUI_ObjectClick_OkButton({})
		
		
		windowWaitUntil_FrontIS({windowName:"Edit Custom Menu"})
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_CustomMenus_Menu_Create - " & errMsg number errNum
	end try
end fmGUI_CustomMenus_Menu_Createon fmGUI_CustomMenus_MenuSet_Select(prefs)
	-- version 1.1
	
	try
		set defaultPrefs to {menuSetName:null}
		set prefs to prefs & defaultPrefs
		
		
		fmGUI_AppFrontMost()
		fmGUI_CustomMenus_GotoTab_MenuSets({})
		
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				try
					select (first row of table 1 of scroll area 1 of tab group 1 of window 1 whose value of static text 1 is menuSetName of prefs)
				on error
					-- we should de-select row if something else is selected
					return false
				end try
			end tell
		end tell
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_CustomMenus_MenuSet_Select '" & customMenuSetName & "' - " & errMsg number errNum
	end try
end fmGUI_CustomMenus_MenuSet_Selecton fmGUI_CustomMenus_Open(prefs)
	-- version 1.2
	
	
	try
		fmGUI_AppFrontMost()
		if fmGUI_NameOfFrontmostWindow() starts with "Manage Custom Menus" then
			return true
		else
			-- open manage custom menus
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set manageMenusMenuItem to first menu item of menu 1 of menu item "Manage" of menu 1 of menu bar item "File" of menu bar 1 whose name starts with "Custom Menus"
				end tell
			end tell
			fmGUI_ClickMenuItem({menuItemRef:manageMenusMenuItem})
			windowWaitUntil_FrontIS({windowName:"Manage Custom Menus"})
			
			
			return true
		end if
	on error errMsg number errNum
		error "unable to fmGUI_CustomMenus_Open - " & errMsg number errNum
	end try
	
end fmGUI_CustomMenus_Openon fmGUI_CustomMenus_Save(prefs)
	-- version 1.2
	
	
	try
		set windowName to "Manage Custom Menus"
		fmGUI_AppFrontMost()
		if fmGUI_NameOfFrontmostWindow() does not start with windowName then error windowName & " was not frontmost window, so cannot save it." number 1024
		
		fmGUI_ObjectClick_OkButton({})
		windowWaitUntil_FrontNotIS({windowName:windowName})
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_CustomMenus_Save - " & errMsg number errNum
	end try
	
end fmGUI_CustomMenus_Saveon fmGUI_CustomMenus_Update(prefs)
	-- version 1.2
	
	try
		fmGUI_CustomMenus_Open({})
		fmGUI_AppFrontMost()
		
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set updateButton to first button of window 1 whose name is "Update"
				set isButtonEnabled to enabled of updateButton
			end tell
		end tell
		
		
		-- click update button. There may be a window that comes up, and we may need to click an ok/confirm button
		if isButtonEnabled then fmGUI_ObjectClick_Button(updateButton)
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_CustomMenus_Update - " & errMsg number errNum
	end try
	
end fmGUI_CustomMenus_Updateon fmGUI_ManageScripts_Close(prefs)
	-- version 1.2
	
	try
		fmGUI_AppFrontMost()
		
		set windowNamePrefix to "Script Workspace"
		if fmGUI_NameOfFrontmostWindow() contains windowNamePrefix then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					click menu item "Close Workspace" of menu "View" of menu bar 1
				end tell
			end tell
			
			if fmGUI_NameOfFrontmostWindow() is equal to "FileMaker Pro" then error "There is at least one unsaved script." number -1024
			return windowWaitUntil({windowName:windowNamePrefix, windowNameTest:"does not start with", whichWindow:"front"})
		end if
		
		return true
	on error errMsg number errNum
		error "Couldn't open Manage Scripts - " & errMsg
	end try
	
end fmGUI_ManageScripts_Closeon fmGUI_ManageScripts_FmScript_SaveAndExit(prefs)
	-- version 1.2
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set saveScriptMenuItem to menu item "Save Script" of menu "Scripts" of menu bar 1
				set needsSave to enabled of saveScriptMenuItem
				set closeScriptMenuItem to menu item "Close Tab" of menu "View" of menu bar 1
			end tell
		end tell
		
		if needsSave then fmGUI_ClickMenuItem({menuItemRef:saveScriptMenuItem})
		return fmGUI_ClickMenuItem({menuItemRef:closeScriptMenuItem})
		
	on error errMsg number errNum
		error "Couldn't fmGUI_ManageScripts_FmScript_SaveAndExit - " & errMsg number errNum
	end try
end fmGUI_ManageScripts_FmScript_SaveAndExiton fmGUI_ManageScripts_ListOfScriptNames(someDbName)
	-- version 1.2
	
	tell application id "com.filemaker.client.advanced12"
		if (count of every FileMaker script of database someDbName) is equal to 0 then
			return {}
		else
			return name of every FileMaker script of database someDbName
		end if
		
		error "Could not get ManageScripts_ListOfScriptNames of database specified: " & someDbName & "." number 1024
	end tell
	
end fmGUI_ManageScripts_ListOfScriptNameson fmGUI_ManageScripts_Open(prefs)
	-- version 1.2
	
	try
		fmGUI_AppFrontMost()
		
		set windowNamePrefix to "Script Workspace"
		if fmGUI_NameOfFrontmostWindow() contains windowNamePrefix then
			return true
		else
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					click (first menu item of menu 1 of menu item "Manage" of menu 1 of menu bar item "File" of menu bar 1 whose name starts with "Scripts")
				end tell
			end tell
			return windowWaitUntil({windowName:windowNamePrefix, windowNameTest:"starts with", whichWindow:"front"})
		end if
		
	on error errMsg number errNum
		error "Couldn't open Manage Scripts - " & errMsg
	end try
	
end fmGUI_ManageScripts_Openon fmGUI_ManageScripts_Select_SpecifyScriptWindow(prefs)
	-- version 1.0.1
	
	try
		set defaultPrefs to {dbName:null, scriptName:null, scriptParams:null}
		set prefs to prefs & defaultPrefs
		set dbName to dbName of prefs
		set scriptName to scriptName of prefs
		set scriptParams to scriptParams of prefs
		
		
		fmGUI_AppFrontMost()
		if fmGUI_NameOfFrontmostWindow() is not "Specify Script" then error "wrong context" number -1024
		
		
		-- get currently selected db
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set selectedDbObj to pop up button 2 of window "Specify Script"
				set scriptTable to outline 1 of scroll area 1 of window "Specify Script"
				set selectedDbName to value of selectedDbObj
			end tell
		end tell
		
		
		-- get selected db name if current file is selected
		if selectedDbName starts with "Current File (" then
			-- check whether the selected db name specified a possibly-external database, but we are now IN that database, so it displays as 'Current File ("ThisDatabase.fmp12")					
			set beforeFileName to "“" -- curly-double-quote
			set afterFileName to ".fmp12"
			set selectedDbNameClean to getTextBetween({sourceTEXT:selectedDbName, beforeText:beforeFileName, afterText:afterFileName})
		end if
		
		
		-- ensure correct db is selected
		if dbName is "<CurrentFile>" and selectedDbName starts with "Current File (" then
			-- correct database is chosen. Do nothing.
		else if dbName is equal to selectedDbNameClean then
			-- correct database is chosen. Do nothing.	
		else
			-- need to change db. assume scripts are loaded once the number of scripts changes
			tell application "System Events"
				tell process "FileMaker Pro"
					set scriptNumOld to count of rows of scriptTable
				end tell
			end tell
			
			fmGUI_PopupSet({objRef:selectedDbObj, objValue:dbName})
			
			-- wait for scripts to load
			repeat 100 times
				tell application "System Events"
					tell process "FileMaker Pro"
						set scriptNumNew to count of rows of scriptTable
					end tell
				end tell
				try
					if scriptNumNew is not equal to scriptNumOld and scriptNumNew is greater than 0 then exit repeat
				end try
				delay 0.5
			end repeat
		end if
		
		
		-- filter scripts
		tell application "System Events"
			tell process "FileMaker Pro"
				set scriptNumAll to count of rows of scriptTable
				set filterField to text field 1 of window 1
			end tell
		end tell
		fmGUI_TextFieldSet({objRef:filterField, objValue:scriptName})
		delay 0.2
		
		
		-- if the same number of scripts as before, try filtering again
		tell application "System Events"
			tell process "FileMaker Pro"
				set scriptNumFiltered to count of rows of outline 1 of scroll area 1 of window "Specify Script"
			end tell
		end tell
		if scriptNumFiltered is equal to scriptNumAll then
			fmGUI_TextFieldSet({objRef:filterField, objValue:""})
			delay 0.2
			fmGUI_TextFieldSet({objRef:filterField, objValue:scriptName})
		end if
		delay 0.2
		
		
		-- select script
		try
			tell application "System Events"
				tell process "FileMaker Pro"
					select (first row of outline 1 of scroll area 1 of window "Specify Script" whose value of text field 1 is equal to scriptName)
				end tell
			end tell
		on error errMsg number errNum
			if errNum is -1719 then
				-- if the error is that the requested row doesn't exist, report that more clearly:
				error "Could not find a script named '" & scriptName & "' - " & errMsg number errNum
			else -- any other error - just pass up:
				error errMsg number errNum
			end if
		end try
		
		
		-- specify params
		tell application "System Events"
			tell process "FileMaker Pro"
				set paramsObj to text field "Optional script parameter:" of window "Specify Script"
			end tell
		end tell
		if scriptParams is null then
			fmGUI_TextFieldSet({objRef:paramsObj, objValue:""})
		else
			fmGUI_TextFieldSet({objRef:paramsObj, objValue:scriptParams})
		end if
		
		
		-- save changes
		fmGUI_ObjectClick_OkButton({})
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageScripts_Select_SpecifyScriptWindow - " & errMsg number errNum
	end try
end fmGUI_ManageScripts_Select_SpecifyScriptWindowon fmGUI_ManageSecurity_AccessLayout_GetInfo(prefs)
	-- version 1.0
	
	set defaultPrefs to {}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		windowWaitUntil_FrontIS({windowName:"Custom Layout Privileges"})
		
		
		-- get lists of the name and privilege
		tell application "System Events"
			tell process "FileMaker Pro"
				set allowCreate to value of checkbox 1 of window 1
				set nameList to name of static text 1 of every row of table 1 of scroll area 1 of window 1
				set layoutAccessList to name of static text 3 of every row of table 1 of scroll area 1 of window 1
				set recordAccessList to name of static text 4 of every row of table 1 of scroll area 1 of window 1
			end tell
		end tell
		
		
		-- now make a list layout priv
		set layoutPrivList to {}
		repeat with i from 1 to count of nameList
			copy {layoutName:item i of nameList, layoutAccess:item i of layoutAccessList, dataAccess:item i of recordAccessList} to end of layoutPrivList
		end repeat
		
		set layoutAccess to {allowCreate:allowCreate, layoutPrivList:layoutPrivList}
		
		
		return layoutAccess
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccessLayout_GetInfo - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccessLayout_GetInfoon fmGUI_ManageSecurity_AccessRecord_CopyTable(prefs)
	-- version 1.1
	
	set defaultPrefs to {sourceTable:null, effectTable:null, allowFieldAccessOverride:false}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		set currentAccess to fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable({tableName:sourceTable of prefs})
		fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable({baseTable:effectTable of prefs, allowFieldAccessOverride:allowFieldAccessOverride of prefs} & currentAccess)
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccessRecord_CopyTable - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccessRecord_CopyTableon fmGUI_ManageSecurity_AccessRecord_GetCalc(prefs)
	set defaultPrefs to {calcFor:null}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageSecurity_AccessRecord_OpenCalc(prefs)
		
		tell application "System Events"
			tell process "FileMaker Pro"
				if calcFor of prefs is equal to "field" then
					if name of window 1 is not "Custom Field Privileges" then error "must be on specify calculation window" number -1024
					set calcValue to my fmGUI_ManageSecurity_AccessRecord_GetFieldPriv({})
				else
					if name of window 1 is not "Specify Calculation" then error "must be on specify calculation window" number -1024
					set calcValue to value of text area 1 of scroll area 1 of splitter group 1 of window 1
				end if
				click button "Cancel" of window 1
			end tell
		end tell
		
		return calcValue
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccessRecord_GetCalc - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccessRecord_GetCalcon fmGUI_ManageSecurity_AccessRecord_GetFieldPriv(prefs)
	-- version 1.0
	
	set defaultPrefs to {}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		windowWaitUntil_FrontIS({windowName:"Custom Field Privileges"})
		
		
		-- get lists of the name and privilege
		tell application "System Events"
			tell process "FileMaker Pro"
				set nameList to name of static text 1 of every row of table 1 of scroll area 1 of window 1
				set privList to name of static text 2 of every row of table 1 of scroll area 1 of window 1
			end tell
		end tell
		
		
		-- now make a list of records
		set fieldPrivList to {}
		repeat with i from 1 to count of nameList
			copy {fieldName:item i of nameList, fieldPriv:item i of privList} to end of fieldPrivList
		end repeat
		
		
		return fieldPrivList
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccessRecord_GetFieldPriv - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccessRecord_GetFieldPrivon fmGUI_ManageSecurity_AccessRecord_GetInfo_AllTables(prefs)
	-- version 1.2
	
	set defaultPrefs to {}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		windowWaitUntil_FrontIS({windowName:"Custom Record Privileges"})
		
		
		-- get number of number of tables to loop over
		set tableNames to fmGUI_ManageSecurity_AccessRecord_GetTablesNames({})
		
		
		-- loop over tables
		set recordAccessList to {}
		repeat with oneTableName in tableNames
			set oneTableName to contents of oneTableName
			set oneTableRec to fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable({tableName:oneTableName})
			copy oneTableRec to end of recordAccessList
		end repeat
		
		
		return recordAccessList
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccessRecord_GetInfo_AllTables - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccessRecord_GetInfo_AllTableson fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable(prefs)
	-- version 1.1
	
	set defaultPrefs to {tableName:null}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		windowWaitUntil_FrontIS({windowName:"Custom Record Privileges"})
		
		tell application "System Events"
			tell process "FileMaker Pro"
				select (first row of table 1 of scroll area 1 of window 1 whose value of static text 1 is equal to tableName of prefs)
				set oneTableRec to {baseTable:tableName of prefs ¬
					, viewAccess:value of pop up button "View" of window 1 ¬
					, editAccess:value of pop up button "Edit" of window 1 ¬
					, createAccess:value of pop up button "Create" of window 1 ¬
					, deleteAccess:value of pop up button "Delete" of window 1 ¬
					, fieldAccess:value of pop up button "Field Access" of window 1}
			end tell
		end tell
		
		
		
		-- get the details of limited calcs
		if viewAccess of oneTableRec contains "limited" then set oneTableRec to oneTableRec & {viewCalc:fmGUI_ManageSecurity_AccessRecord_GetCalc({calcFor:"view"})}
		if editAccess of oneTableRec contains "limited" then set oneTableRec to oneTableRec & {editCalc:fmGUI_ManageSecurity_AccessRecord_GetCalc({calcFor:"edit"})}
		if createAccess of oneTableRec contains "limited" then set oneTableRec to oneTableRec & {createCalc:fmGUI_ManageSecurity_AccessRecord_GetCalc({calcFor:"create"})}
		if deleteAccess of oneTableRec contains "limited" then set oneTableRec to oneTableRec & {deleteCalc:fmGUI_ManageSecurity_AccessRecord_GetCalc({calcFor:"delete"})}
		if fieldAccess of oneTableRec contains "limited" then set oneTableRec to oneTableRec & {fieldCalc:fmGUI_ManageSecurity_AccessRecord_GetCalc({calcFor:"field"})}
		
		
		-- ensure the key exists ( even if it's null )
		set oneTableRec to oneTableRec & {viewCalc:null, editCalc:null, createCalc:null, deleteCalc:null, fieldCalc:null}
		
		return oneTableRec
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTableon fmGUI_ManageSecurity_AccessRecord_GetTablesNames(prefs)
	-- version 1.0
	
	set defaultPrefs to {}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		windowWaitUntil_FrontIS({windowName:"Custom Record Privileges"})
		
		
		tell application "System Events"
			tell process "FileMaker Pro"
				return value of static text 1 of rows of table 1 of scroll area 1 of window 1
			end tell
		end tell
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccessRecord_GetTablesNames - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccessRecord_GetTablesNameson fmGUI_ManageSecurity_AccessRecord_OpenCalc(prefs)
	set defaultPrefs to {calcFor:null}
	set prefs to prefs & defaultPrefs
	set calcFor to calcFor of prefs
	
	try
		fmGUI_AppFrontMost()
		
		if class of calcFor is equal to class of 1 then
			-- pop up button number is specified, so just use it
			set buttonNum to calcFor
		else if calcFor is equal to "view" then
			set buttonNum to 4
		else if calcFor is equal to "edit" then
			set buttonNum to 1
		else if calcFor is equal to "create" then
			set buttonNum to 2
		else if calcFor is equal to "delete" then
			set buttonNum to 3
		else if calcFor is equal to "field" then
			set buttonNum to 5
		end if
		
		
		-- now open the specified calc box
		tell application "System Events"
			tell process "FileMaker Pro"
				click pop up button buttonNum of window 1
				click menu item 2 of menu 1 of pop up button buttonNum of window 1
			end tell
		end tell
		
		return windowWaitUntil({windowName:"Custom Record Privileges", windowNameTest:"is not"})
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccessRecord_OpenCalc - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccessRecord_OpenCalcon fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv(prefs)
	-- version 1.1.1
	
	set defaultPrefs to {fieldList:{}, FieldsModifiable:false, FieldsViewOnly:false, FieldsNoAccess:false}
	set prefs to prefs & defaultPrefs
	set fieldList to fieldList of prefs
	
	set windowNameFieldPriv to "Custom Field Privileges"
	
	try
		fmGUI_AppFrontMost()
		if fmGUI_NameOfFrontmostWindow() is not equal to windowNameFieldPriv then error "must have '" & windowNameFieldPriv & "' window open" number -1024
		
		
		-- if true, then force every field in this table to be ViewOnly
		if FieldsViewOnly of prefs or FieldsModifiable of prefs or FieldsNoAccess of prefs then
			tell application "System Events"
				tell process "FileMaker Pro"
					set fieldsInTable to value of static text 1 of rows of table 1 of scroll area 1 of window 1
				end tell
			end tell
			if FieldsViewOnly of prefs then
				set action to "view only"
			else if FieldsModifiable of prefs then
				set action to "modifiable"
			else if FieldsNoAccess of prefs then
				set action to "no access"
			else
				error "unable to set action" number -1024
			end if
			set fieldList to {}
			repeat with field in fieldsInTable
				set field to contents of field
				copy {fieldName:field, fieldPriv:action} to end of fieldList
			end repeat
		end if
		
		
		repeat with oneFieldRec in fieldList
			set oneFieldRec to contents of oneFieldRec
			tell application "System Events"
				tell process "FileMaker Pro"
					select (first row of table 1 of scroll area 1 of window 1 whose value of static text 1 is fieldName of oneFieldRec)
					set fieldPrivObj to (first radio button of window 1 whose name contains fieldPriv of oneFieldRec)
				end tell
			end tell
			clickObjectByCoords(fieldPrivObj)
		end repeat
		
		fmGUI_ObjectClick_OkButton({})
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccessRecord_UpdateFieldPrivon fmGUI_ManageSecurity_AccessScripts_GetInfo(prefs)
	-- version 1.1
	
	set defaultPrefs to {}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		windowWaitUntil_FrontIS({windowName:"Custom Script Privileges"})
		
		
		-- get lists of the name and privilege
		tell application "System Events"
			tell process "FileMaker Pro"
				set allowCreate to value of checkbox 1 of window 1
				set nameList to name of static text 1 of every row of table 1 of scroll area 1 of window 1
				set privList to name of static text 3 of every row of table 1 of scroll area 1 of window 1
			end tell
		end tell
		
		
		-- now make a list of records
		set scriptPrivList to {}
		repeat with i from 1 to count of nameList
			copy {scriptName:item i of nameList, scriptPriv:item i of privList} to end of scriptPrivList
		end repeat
		
		set scriptAccess to {allowCreate:allowCreate, scriptPrivList:scriptPrivList}
		
		
		return scriptAccess
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccessScripts_GetInfo - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccessScripts_GetInfoon fmGUI_ManageSecurity_AccessValueList_GetInfo(prefs)
	-- version 1.0
	
	set defaultPrefs to {}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		windowWaitUntil_FrontIS({windowName:"Custom Value List Privileges"})
		
		
		-- get lists of the name and privilege
		tell application "System Events"
			tell process "FileMaker Pro"
				set allowCreate to value of checkbox 1 of window 1
				set nameList to name of static text 1 of every row of table 1 of scroll area 1 of window 1
				set privList to name of static text 2 of every row of table 1 of scroll area 1 of window 1
			end tell
		end tell
		
		
		-- now make a list of records
		set vlPrivList to {}
		repeat with i from 1 to count of nameList
			copy {vlName:item i of nameList, vlPriv:item i of privList} to end of vlPrivList
		end repeat
		
		set vlAccess to {allowCreate:allowCreate, vlPrivList:vlPrivList}
		
		
		return vlAccess
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccessValueList_GetInfo - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccessValueList_GetInfoon fmGUI_ManageSecurity_AccountCreate(prefs)
	-- version 1.4.1
	
	set defaultPrefs to {accountName:null, accountPassword:null, authenticatedVia:"FileMaker", mustChangeOnNextLogin:0, accountStatus:"Active", privilegeSet:null, accountDescription:"", fullAccessAccountName:null, fullAccessPassword:null}
	set prefs to prefs & defaultPrefs
	set fullAccessCredentials to {fullAccessAccountName:fullAccessAccountName of prefs, fullAccessPassword:fullAccessPassword of prefs}
	
	try
		-- ERROR-TRAPPING for required parameters
		if accountName of prefs is null then error "The accountName must be specified." number 1024
		if accountPassword of prefs is null then error "The accountPassword must be specified." number 1024
		if privilegeSet of prefs is null then error "The privilegeSet must be specified." number 1024
		
		
		-- ensure context:
		fmGUI_ManageSecurity_GoToTab_Accounts(fullAccessCredentials)
		
		
		try
			-- if the account already exists, move it
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set existingAccountName to value of static text 1 of (first row of (table 1 of scroll area 1 of tab group 1 of window 1) whose value of static text 1 is accountName of prefs)
				end tell
			end tell
			fmGUI_ManageSecurity_AccountEdit(prefs)
			
		on error
			-- no such account, so create it
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set newButton to first button of tab group 1 of window 1 whose name contains "New"
				end tell
			end tell
			fmGUI_ObjectClick_Button({buttonRef:newButton})
			
			windowWaitUntil_FrontIS({windowName:"Edit Account"})
			fmGUI_ManageSecurity_AccountEdit(prefs)
		end try
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccountCreate '" & accountName of prefs & "' - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_AccountCreateon fmGUI_ManageSecurity_AccountEdit(prefs)
	-- version 1.2.1
	
	set defaultPrefs to {accountName:null, accountOldName:null, accountRowNumber:null, accountPassword:null, privilegeSet:null, accountDescription:null, authenticatedVia:"FileMaker File", mustChangeOnNextLogin:0, accountStatus:1}
	set prefs to prefs & defaultPrefs
	
	set accountName to accountName of prefs
	set accountRowNumber to accountRowNumber of prefs
	
	set editWindowName to "Edit Account"
	set passwordWindowName to "Set Password"
	
	try
		fmGUI_AppFrontMost()
		
		-- open 'edit account' window if needed
		if fmGUI_NameOfFrontmostWindow() is not "Edit Account" then
			fmGUI_ManageSecurity_GoToTab_Accounts(fullAccessCredentials)
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set accountTable to table 1 of scroll area 1 of tab group 1 of window 1
					
					--select account, first by accountName, then by accountOldName
					if accountRowNumber is not null then
						select row (accountRowNumber) of accountTable
					else
						try
							select (first row of accountTable whose value of static text 1 is accountName)
						on error
							try
								select (first row of accountTable whose value of static text 1 is accountOldName of prefs)
							on error
								error "no account exists with specified name ( nor by old name or row number )" number -1204
							end try
						end try
					end if
					set editButton to first button of tab group 1 of window 1 whose name is "Edit…"
				end tell
			end tell
			fmGUI_ObjectClick_Button({buttonRef:editButton})
			windowWaitUntil_FrontIS({windowName:editWindowName})
		end if
		
		
		-- Now, edit ONLY IF we found or were already opened an account to edit: 
		if fmGUI_NameOfFrontmostWindow() is not "Edit Account" then error "Unable to open Edit Account window" number 1024
		
		
		--handle objects on the window from the top down:
		if authenticatedVia of prefs is not null then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set accountAuthButton to first pop up button of window 1 whose name contains "authenticated via"
				end tell
			end tell
			fmGUI_PopupSet({objRef:accountAuthButton, objValue:authenticatedVia of prefs})
		end if
		
		
		if accountName is not null then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set accountNameRef to text field "Account Name:" of window 1
				end tell
			end tell
			fmGUI_TextFieldSet({objRef:accountNameRef, objValue:accountName of prefs})
		end if
		
		
		if accountPassword of prefs is not null then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set changeButton to first button of window 1 whose name contains "Change"
				end tell
			end tell
			fmGUI_ObjectClick_Button({buttonRef:changeButton})
			
			windowWaitUntil_FrontIS({windowName:passwordWindowName})
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set passRef to text field 1 of window 1
					set confRef to text field 2 of window 1
					set setButton to button "Set Password" of window 1
				end tell
			end tell
			fmGUI_TextFieldSet({objRef:passRef, objValue:accountPassword of prefs})
			fmGUI_TextFieldSet({objRef:confRef, objValue:accountPassword of prefs})
			fmGUI_ObjectClick_Button({buttonRef:setButton})
			windowWaitUntil_FrontNotIS({windowName:passwordWindowName})
		end if
		
		
		if mustChangeOnNextLogin of prefs is not null then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set changePasswordCheckbox to checkbox "Require password change on next sign-in" of window 1
				end tell
			end tell
			fmGUI_CheckboxSet({objRef:changePasswordCheckbox, objValue:mustChangeOnNextLogin of prefs})
		end if
		
		
		if accountStatus of prefs is not null then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					if accountStatus of prefs is 0 then
						set statusCheckbox to first radio button of window 1 whose name begins with "Inactive"
					else
						set statusCheckbox to first radio button of window 1 whose name begins with "Active"
					end if
				end tell
			end tell
			fmGUI_CheckboxSet({objRef:statusCheckbox, objValue:1})
		end if
		
		
		if privilegeSet of prefs is not null then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set privSetButton to pop up button "Privilege Set:" of window 1
				end tell
			end tell
			fmGUI_PopupSet({objRef:privSetButton, objValue:privilegeSet of prefs})
		end if
		
		
		if accountDescription of prefs is not null then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set descObj to text field "Description:" of window 1
				end tell
			end tell
			fmGUI_TextFieldSet({objRef:descObj, objValue:accountDescription of prefs})
		end if
		
		
		-- SAVE edits: click OK
		fmGUI_ObjectClick_OkButton({})
		windowWaitUntil_FrontNotIS({windowName:editWindowName})
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccountEdit '" & accountName & "' - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccountEditon fmGUI_ManageSecurity_AccountNames(prefs)
	-- version 1.1
	
	set defaultPrefs to {fullAccessAccountName:null, fullAccessPassword:null}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageSecurity_GoToTab_Accounts(prefs)
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set accountNames to name of static text 1 of every row of (table 1 of scroll area 1 of tab group 1 of window 1)
			end tell
		end tell
		
		return accountNames
	on error errMsg number errNum
		error "Couldn't fmGUI_ManageSecurity_AccountNames - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_AccountNameson fmGUI_ManageSecurity_Cancel(prefs)
	--version 1.0
	
	set defaulPrefs to {}
	set prefs to prefs & defaulPrefs
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				if name of window 1 does not contain "Manage Security for" then error "Not in main Manage Security window." number 1024
				set cancelButton to first button of window 1 whose name is equal to "Cancel"
			end tell
		end tell
		
		-- save security changes
		clickObjectByCoords(cancelButton)
		delay 0.5
		
		
		-- confirm discard
		try
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set discardButton to button "Discard" of window 1
				end tell
			end tell
			clickObjectByCoords(discardButton)
		end try
		
		
		-- wait until window is gone
		windowWaitUntil({whichWindow:"front", windowNameTest:"is not", windowName:"FileMaker Pro"})
		windowWaitUntil({whichWindow:"front", windowNameTest:"does not start with", windowName:"Manage Security"})
		
		return true
	on error errMsg number errNum
		error "Couldn't fmGUI_ManageSecurity_Cancel - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_Cancelon fmGUI_ManageSecurity_CopyTableForAllPrivSets(prefs)
	-- version 1.0.1
	
	try
		set defaultPrefs to {sourceTable:null, effectTable:null, fullAccessAccountName:null, fullAccessPassword:null}
		set prefs to prefs & defaultPrefs
		set credentials to {fullAccessAccountName:fullAccessAccountName of prefs, fullAccessPassword:fullAccessPassword of prefs}
		set customPrivileges to "Custom privileges"
		
		
		-- iterate through privSets, updating the table in each
		set listPrivSetNames to fmGUI_ManageSecurity_PrivSet_Names(credentials)
		repeat with onePrivSetName in listPrivSetNames
			set onePrivSetName to contents of onePrivSetName
			if onePrivSetName begins with "[" then
				-- this is a stardard privSet, so skip it
			else
				--update 
				fmGUI_ManageSecurity_PrivSet_OpenForEdit({privSetName:onePrivSetName} & credentials)
				if accessRecord of fmGUI_ManageSecurity_PrivSet_GetInfo({getAccessInfo:false}) contains customPrivileges then
					-- update custom privileges
					fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Open({accessRecord:customPrivileges})
					fmGUI_ManageSecurity_AccessRecord_CopyTable({sourceTable:sourceTable of prefs, effectTable:effectTable of prefs, allowFieldAccessOverride:true})
					fmGUI_ObjectClick_OkButton({})
				end if
				fmGUI_ObjectClick_OkButton({})
			end if
		end repeat
		
		
		return fmGUI_ManageSecurity_Save(credentials)
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_CopyTableForAllPrivSets - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_CopyTableForAllPrivSetson fmGUI_ManageSecurity_GoToTab(prefs)
	-- version 1.2.1
	
	set defaultPrefs to {tabName:"Accounts"}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageSecurity_Open(prefs)
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				
				click (first radio button of tab group 1 of window 1 whose name is tabName of prefs)
				return true
				
			end tell
		end tell
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_GoToTab - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_GoToTabon fmGUI_ManageSecurity_GoToTab_Accounts(prefs)
	-- version 1.1
	
	try
		fmGUI_ManageSecurity_GotoTab({tabName:"Accounts"} & prefs)
	on error errMsg number errNum
		error "Couldn't go to Accounts tab - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_GoToTab_Accountson fmGUI_ManageSecurity_GoToTab_ExtendedPrivs(prefs)
	-- version 1.2.1
	
	try
		return fmGUI_ManageSecurity_GotoTab({tabName:"Extended Privileges"} & prefs)
	on error errMsg number errNum
		error "fmGUI_ManageSecurity_GoToTab_PrivSets - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_GoToTab_ExtendedPrivson fmGUI_ManageSecurity_GoToTab_PrivSets(prefs)
	-- version 1.2.1
	
	try
		fmGUI_ManageSecurity_GotoTab({tabName:"Privilege Sets"} & prefs)
		tell application "System Events"
			tell process "FileMaker Pro"
				set viewByPopUpButton to pop up button "View by:" of tab group 1 of window 1
			end tell
		end tell
		fmGUI_PopupSet({objRef:viewByPopUpButton, objValue:"Name"})
	on error errMsg number errNum
		error "fmGUI_ManageSecurity_GoToTab_PrivSets - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_GoToTab_PrivSetson fmGUI_ManageSecurity_ListOfAccountsAndPrivileges(prefs)
	-- version 1.0
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageSecurity_GoToTab_Accounts({prefs})
		
		tell application "System Events"
			tell process "FileMaker Pro"
				set accountsTable to table 1 of scroll area 1 of tab group 1 of window 1
				
				set accountNamesList to value of static text 1 of every row of accountsTable
				set privNamesList to value of static text 3 of every row of accountsTable
				
				set accountsList to {}
				repeat with i from 1 to count of accountNamesList
					set oneAccountRow to {item i of accountNamesList, item i of privNamesList}
					set end of accountsList to oneAccountRow
				end repeat
				
				return accountsList
				
			end tell
		end tell
	on error errMsg number errNum
		error "Couldn't get list of account Name Privilege Set lists - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_ListOfAccountsAndPrivilegeson fmGUI_ManageSecurity_Open(prefs)
	-- version 1.3
	
	set defaultPrefs to {fullAccessAccountName:null, fullAccessPassword:null}
	set prefs to prefs & defaultPrefs
	
	set authWindowName to "Enter credentials for"
	set securityWindowName to "Manage Security for"
	set securityWindowNames to {}
	
	try
		fmGUI_AppFrontMost()
		
		-- test to see if ANY window has 'manage security for' as the name - this may NOT be the frontmost window
		try
			tell application "System Events"
				tell process "FileMaker Pro"
					set alreadyInManageSecurity to exists (get first window whose name contains securityWindowName)
				end tell
			end tell
		on error
			set alreadyInManageSecurity to false
		end try
		
		
		if not alreadyInManageSecurity then
			if not fmGUI_isInFullAccessMode({}) then error "must be logged as full-access" number -1024
			
			
			-- open Manage security
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set manageSecMenuItem to first menu item of menu 1 of menu item "Manage" of menu 1 of menu bar item "File" of menu bar 1 whose name starts with "Security"
				end tell
			end tell
			fmGUI_ClickMenuItem({menuItemRef:manageSecMenuItem})
			
			
			-- enter credentials
			if fmGUI_NameOfFrontmostWindow() starts with authWindowName then fmGUI_AuthenticateDialog({accountName:fullAccessAccountName of prefs, pwd:fullAccessPassword of prefs, windowname:authWindowName})
			
			windowWaitUntil({windowname:securityWindowName, windowNameTest:"contains", whichWindow:"any"})
		end if
		
		return true
	on error errMsg number errNum
		error "Couldn't fmGUI_ManageSecurity_Open - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_Openon fmGUI_ManageSecurity_PrivSet_DeleteEmpty(prefs)
	set defaultPrefs to {skipDeleteList:{}}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageSecurity_GoToTab_PrivSets(prefs)
		
		
		-- get a list of all privSets
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set privSetTable to table 1 of scroll area 1 of tab group 1 of window 1
				set existingPrivSetNames to value of static text 1 of every row of table 1 of scroll area 1 of tab group 1 of window 1
			end tell
		end tell
		
		
		-- iterate through the list, develing the empty ones
		set listDeletedPrivSets to {}
		repeat with onePrivSetName from 1 to count of existingPrivSetNames
			set onePrivSetName to item onePrivSetName of existingPrivSetNames
			if onePrivSetName begins with "[" then
				-- skip this since it's a file deafult privSet
			else if skipDeleteList of prefs contains onePrivSetName then
				-- skip since privSet is specified to be kept
			else
				-- delete if there are no accounts for the privSet
				tell application "System Events"
					tell application process "FileMaker Pro Advanced"
						set onePrivSetRow to (first row of privSetTable whose value of static text 1 is equal to onePrivSetName)
						
						if value of static text 2 of onePrivSetRow is equal to "" then
							select onePrivSetRow
							set nameOfSelectedPrivSet to value of static text 1 of (first row of privSetTable whose selected is true)
							set deleteButton to button "Delete" of tab group 1 of window 1
						else
							set nameOfSelectedPrivSet to null
						end if
					end tell
				end tell
				if onePrivSetName is equal to nameOfSelectedPrivSet then
					clickObjectByCoords(deleteButton)
					copy onePrivSetName to end of listDeletedPrivSets
				end if
			end if
		end repeat
		
		
		-- final checks
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				-- make sure we don't have errors after deleting
				if name of window 1 does not start with "Manage Security" then error "unable to delete privSet '" & value of static text 1 of firstPrivSetNoAccounts & "'" number -1024
				
				-- ensure the remaining privSets all have an account ( or are the default file privSets )
				if (every row of privSetTable whose value of static text 2 is "" and value of static text 1 does not start with "[") is equal to {} then return listDeletedPrivSets
			end tell
		end tell
		
		return false
	on error errMsg number errNum
		error "Couldn't fmGUI_ManageSecurity_PrivSet_DeleteEmpty - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_DeleteEmptyon fmGUI_ManageSecurity_PrivSet_GetInfo(prefs)
	-- version 1.1.3
	
	set defaultPrefs to {getAccessInfo:false}
	set prefs to prefs & defaultPrefs
	
	set customPriv to "Custom privileges..."
	
	try
		fmGUI_AppFrontMost()
		
		-- open edit PrivSet window if needed
		set needToOpenEditWindow to true
		tell application "System Events"
			tell process "FileMaker Pro"
				if name of window 1 is "Edit Privilege Set" then set needToOpenEditWindow to false
			end tell
		end tell
		
		if needToOpenEditWindow then fmGUI_ManageSecurity_PrivSet_OpenSelected({})
		
		
		
		-- now the the info
		tell application "System Events"
			tell process "FileMaker Pro"
				set privSetInfo to {privSetName:value of text field "Privilege Set Name" of window 1, privSetDesc:value of text field "Description" of window 1, accessRecord:value of pop up button "Records:" of window 1, accessLayout:value of pop up button "Layouts:" of window 1, accessVL:value of pop up button "Value Lists:" of window 1, accessScript:value of pop up button "Scripts:" of window 1, extendedPrivList:name of checkbox 1 of (every row of table 1 of scroll area 1 of window 1 whose value of checkbox 1 is 1), allowPrinting:value of checkbox "Allow printing" of window 1, allowExporting:value of checkbox "Allow exporting" of window 1, mangeExtPriv:value of checkbox "Manage extended privileges" of window 1, allowOverride:value of checkbox "Allow user to override data validation warnings" of window 1, disconnectIdle:value of checkbox "Disconnect user from server when idle" of window 1, modifyPwd:value of checkbox "Allow user to modify their own password" of window 1, menuCommands:value of pop up button "Available menu commands:" of window 1}
			end tell
		end tell
		
		
		-- should we get detailed access info:
		if getAccessInfo of prefs then
			set {recordAccess, layoutAccess, vlAccess, scriptsAccess} to {null, null, null, null}
			
			-- record level
			if accessRecord of privSetInfo is equal to customPriv then
				fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Open({accessRecord:customPriv})
				with timeout of (30 * 60) seconds
					-- event times out if this is a big file with many tables or complex security
					set recordAccess to fmGUI_ManageSecurity_AccessRecord_GetInfo_AllTables({})
				end timeout
				fmGUI_ObjectClick_CancelButton({})
			end if
			
			
			-- layout access
			if accessLayout of privSetInfo is equal to customPriv then
				tell application "System Events"
					tell process "FileMaker Pro"
						set popUpButtonRef to pop up button "Layouts:" of window 1
						click popUpButtonRef
						click menu item customPriv of menu 1 of popUpButtonRef
					end tell
				end tell
				set layoutAccess to fmGUI_ManageSecurity_AccessLayout_GetInfo({})
				fmGUI_ObjectClick_CancelButton({})
			end if
			
			-- value list access
			if accessVL of privSetInfo is equal to customPriv then
				tell application "System Events"
					tell process "FileMaker Pro"
						set popUpButtonRef to pop up button "Value Lists:" of window 1
						click popUpButtonRef
						click menu item customPriv of menu 1 of popUpButtonRef
					end tell
				end tell
				set vlAccess to fmGUI_ManageSecurity_AccessValueList_GetInfo({})
				fmGUI_ObjectClick_CancelButton({})
			end if
			
			-- script access
			if accessScript of privSetInfo is equal to customPriv then
				tell application "System Events"
					tell process "FileMaker Pro"
						set popUpButtonRef to pop up button "Scripts:" of window 1
						click popUpButtonRef
						click menu item customPriv of menu 1 of popUpButtonRef
					end tell
				end tell
				set scriptsAccess to fmGUI_ManageSecurity_AccessScripts_GetInfo({})
				fmGUI_ObjectClick_CancelButton({})
			end if
			
			set privSetInfo to privSetInfo & {recordAccess:recordAccess, layoutAccess:layoutAccess, vlAccess:vlAccess, scriptsAccess:scriptsAccess}
			
		end if
		
		
		return privSetInfo
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_GetInfo - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_GetInfoon fmGUI_ManageSecurity_PrivSet_Names(prefs)
	-- version 1.0
	
	set defaultPrefs to {fullAccessAccountName:"admin", fullAccessPassword:""}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageSecurity_GoToTab_PrivSets(prefs)
		
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set privSetNameList to name of static text 1 of every row of (table 1 of scroll area 1 of tab group 1 of window 1)
			end tell
		end tell
		
		return privSetNameList
	on error errMsg number errNum
		error "Couldn't fmGUI_ManageSecurity_PrivSet_Names - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Nameson fmGUI_ManageSecurity_PrivSet_OpenForEdit(prefs)
	-- version 1.0
	
	set defaultPrefs to {privSetName:null, fullAccessAccountName:null, fullAccessPassword:null}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_ManageSecurity_PrivSet_Select(prefs)
		fmGUI_ManageSecurity_PrivSet_OpenSelected({})
		
		return windowWaitUntil({windowName:"Edit Privilege Set"})
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_OpenForEdit - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_OpenForEditon fmGUI_ManageSecurity_PrivSet_OpenSelected(prefs)
	-- version 1.0
	
	set defaultPrefs to {}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell process "FileMaker Pro"
				if name of window 1 does not start with "Manage Security" then error "Manage Security window must be open" number -1024
				set editButton to first button of tab group 1 of window 1 whose name is "Edit…"
				if enabled of editButton is false then error "PrivSet is not selected" number -1024
			end tell
		end tell
		clickObjectByCoords(editButton)
		windowWaitUntil({windowName:"Edit Privilege Set"})
		return true
		
		error "failed opening  edit PrivSetWindow window" number -1024
		
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_OpenSelected - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_OpenSelectedon fmGUI_ManageSecurity_PrivSet_Rename(prefs)
	
	try
		fmGUI_AppFrontMost()
		
		
		-- check to see if the privSet is already selected		
		try
			if fmGUI_ManageSecurity_PrivSet_Select({privSetName:privSet_newName of prefs, fullAccessAccountName:fullAccessAccountName of prefs, fullAccessPassword:fullAccessPassword of prefs}) then return true
			
		end try
		
		
		-- open privSet by old name
		if not fmGUI_ManageSecurity_PrivSet_Select({privSetName:privSet_oldName of prefs, fullAccessAccountName:fullAccessAccountName of prefs, fullAccessPassword:fullAccessPassword of prefs}) then error "unable to select by old name" number -1024
		fmGUI_ManageSecurity_PrivSet_OpenSelected({})
		
		
		-- rename opened privSet
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set value of text field "Privilege Set Name" of window 1 to privSet_newName of prefs
				set okButton to button "OK" of window 1
			end tell
		end tell
		
		
		-- now save the chenages
		clickObjectByCoords(okButton)
		return windowWaitUntil({windowName:"Manage Security", whichWindow:"front", windowNameTest:"starts with"})
		
	on error errMsg number errNum
		error "Couldn't fmGUI_ManageSecurity_PrivSet_Rename - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Renameon fmGUI_ManageSecurity_PrivSet_Select(prefs)
	--version 1.1.1
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageSecurity_GoToTab_PrivSets(prefs)
		
		try
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					select (first row of (table 1 of scroll area 1 of tab group 1 of window 1) whose name of static text 1 is privSetName of prefs)
				end tell
			end tell
			return true
		on error
			return false
		end try
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Select - " & errMsg number errNum
	end try
	
	
end fmGUI_ManageSecurity_PrivSet_Selecton fmGUI_ManageSecurity_PrivSet_Update(prefs)
	-- version 1.0.1
	
	set defaultPrefs to {privSetName:null, privSetDesc:null, accessRecord:null, accessLayouts:null, accessVL:null, accessScripts:null, extendedPrivList:null, allowPrinting:null, allowExporting:null, mangeExtPriv:null, allowOverride:null, disconnectIdle:null, modifyPwd:null, menuCommands:null, recordAccess:null, layoutAccess:null, vlAccess:null, scriptsAccess:null, fullAccessAccountName:null, fullAccessPassword:""}
	set prefs to prefs & defaultPrefs
	set privSetName to privSetName of prefs
	set fullAccessCredentials to {fullAccessAccountName:fullAccessAccountName of prefs, fullAccessPassword:fullAccessPassword of prefs}
	
	set editPrivSetWindowName to "Edit Privilege Set"
	set selectCommand to "contains"
	
	
	try
		fmGUI_AppFrontMost()
		
		
		-- open selected priv ( if needed )
		tell application "System Events"
			tell process "FileMaker Pro"
				set windowName to name of window 1
			end tell
		end tell
		if windowName is not editPrivSetWindowName then
			fmGUI_ManageSecurity_PrivSet_OpenForEdit(fullAccessCredentials & {privSetName:privSetName})
			
			-- now check again since we should have opened the privSet
			tell application "System Events"
				tell process "FileMaker Pro"
					set windowName to name of window 1
				end tell
			end tell
			if windowName is not editPrivSetWindowName then error "unable to open privSet '" & privSetName & "'" number -1024
		end if
		
		
		-- ensure we're dealing with the correct PrivSet
		tell application "System Events"
			tell process "FileMaker Pro"
				set currentlyOpenPrivSet to value of text field 1 of window 1
			end tell
		end tell
		if currentlyOpenPrivSet is not equal to privSetName then error "not editing '" & privSetName & "' privSet" number -1024
		
		
		-- get object references for privSet
		tell application "System Events"
			tell process "FileMaker Pro"
				set descriptionTextField to text field "Description" of window 1
				
				set allowPrintingCheckbox to checkbox "Allow printing" of window 1
				set allowExportingCheckbox to checkbox "Allow exporting" of window 1
				set mangeExtPrivCheckbox to checkbox "Manage extended privileges" of window 1
				set allowOverrideCheckbox to checkbox "Allow user to override data validation warnings" of window 1
				set disconnectIdleCheckbox to checkbox "Disconnect user from server when idle" of window 1
				set modifyPwdCheckbox to checkbox "Allow user to modify their own password" of window 1
				
				set menuPopup to pop up button "Available menu commands:" of window 1
				
			end tell
		end tell
		
		
		-- other privileges
		fmGUI_TextFieldSet({objRef:descriptionTextField, objValue:privSetDesc of prefs})
		
		fmGUI_CheckboxSet({objRef:allowPrintingCheckbox, objValue:allowPrinting of prefs})
		fmGUI_CheckboxSet({objRef:allowExportingCheckbox, objValue:allowExporting of prefs})
		fmGUI_CheckboxSet({objRef:mangeExtPrivCheckbox, objValue:mangeExtPriv of prefs})
		fmGUI_CheckboxSet({objRef:allowOverrideCheckbox, objValue:allowOverride of prefs})
		fmGUI_CheckboxSet({objRef:disconnectIdleCheckbox, objValue:disconnectIdle of prefs})
		fmGUI_CheckboxSet({objRef:modifyPwdCheckbox, objValue:modifyPwd of prefs})
		
		fmGUI_PopupSet({objRef:menuPopup, objValue:menuCommands of prefs})
		
		
		-- extended privs
		fmGUI_ManageSecurity_PrivSet_Update_ExtendedPrivileges({extendedPrivList:extendedPrivList of prefs})
		
		-- data access
		fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_AllTables({accessRecord:accessRecord of prefs, recordAccess:recordAccess of prefs})
		fmGUI_ManageSecurity_PrivSet_Update_AccessLayout({accessLayout:accessLayout of prefs, layoutAccess:layoutAccess of prefs})
		fmGUI_ManageSecurity_PrivSet_Update_AccessValueList({accessVL:accessVL of prefs, vlAccess:vlAccess of prefs})
		fmGUI_ManageSecurity_PrivSet_Update_AccessScript({accessScript:accessScript of prefs, scriptsAccess:scriptsAccess of prefs})
		
		
		-- confirm changes
		fmGUI_ObjectClick_OkButton({})
		
		
		
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Updateon fmGUI_ManageSecurity_PrivSet_Update_AccessLayout(prefs)
	
	set defaultPrefs to {accessLayout:null, layoutAccess:null}
	set prefs to prefs & defaultPrefs
	
	set windowNameEditPrivSet to "Edit Privilege Set"
	set popUpExtras to {selectCommand:"contains", clickIfAlreadySet:true}
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell process "FileMaker Pro"
				set windowName to name of window 1
				set layoutsPopup to pop up button "Layouts:" of window 1
			end tell
		end tell
		
		
		-- ensure we're starting on edit PrivSet window
		if windowName is not windowNameEditPrivSet then error "do not have " & windowNameEditPrivSet & " window open" number -1024
		
		
		-- set access for each specified layout
		fmGUI_Popup_SelectByCommand({objRef:layoutsPopup, objValue:accessLayout of prefs, accessLayout:null, layoutAccess:null})
		if accessLayout of prefs begins with "Custom privileges" then
			windowWaitUntil_FrontIS({windowName:"Custom Layout Privileges"})
			
			-- get button refs to for each radio button
			tell application "System Events"
				tell process "FileMaker Pro"
					set allowCreate to checkbox "Allow creation of new layouts" of window 1
					
					-- need to do it by reference since the 2 sets of radio buttons 'checkboxes' have the same name
					set layoutModify to a reference to checkbox 2 of window 1
					set layoutView to a reference to checkbox 3 of window 1
					set layoutNoAccess to a reference to checkbox 4 of window 1
					set recordModify to a reference to checkbox 5 of window 1
					set recordView to a reference to checkbox 6 of window 1
					set recordNoAccess to a reference to checkbox 7 of window 1
				end tell
			end tell
			
			
			-- update allow create new layouts checkbox
			fmGUI_CheckboxSet({objRef:allowCreate, objValue:allowCreate of layoutAccess of prefs})
			
			
			-- look through each layout, ensuring the proper access is set
			repeat with oneLayoutRec in layoutPrivList of layoutAccess of prefs
				set oneLayoutRec to contents of oneLayoutRec
				tell application "System Events"
					tell process "FileMaker Pro"
						set oneLayoutRow to (first row of table 1 of scroll area 1 of window 1 whose name of static text 1 is layoutName of oneLayoutRec)
						select oneLayoutRow
						set oneLayoutInfo to name of every static text of oneLayoutRow
						
						
						-- now edit access for each row ( but only if the access is wrong )
						-- NOTE: we need to have FM click the radio buttons since they have the same name ( and so get de-referenced when the object is stringified ).
						
						-- first do record access ( since no layout access disables these radio buttons
						if item 4 of oneLayoutInfo is not equal to dataAccess of oneLayoutRec then
							if dataAccess of oneLayoutRec is equal to "modifiable" then
								click recordModify
							else if dataAccess of oneLayoutRec is equal to "view only" then
								click recordView
							else if dataAccess of oneLayoutRec is equal to "no access" then
								click recordNoAccess
							end if
						end if
						
						
						-- now do the layout access
						if item 3 of oneLayoutInfo is not equal to layoutAccess of oneLayoutRec then
							if layoutAccess of oneLayoutRec is equal to "modifiable" then
								click layoutModify
							else if layoutAccess of oneLayoutRec is equal to "view only" then
								click layoutView
							else if layoutAccess of oneLayoutRec is equal to "no access" then
								click layoutNoAccess
							end if
						end if
						
					end tell
				end tell
			end repeat
			fmGUI_ObjectClick_OkButton({})
		end if
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update_AccessLayout - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Update_AccessLayouton fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_AllTables(prefs)
	-- version 1.1.2
	
	set defaultPrefs to {accessRecord:null, recordAccess:null}
	set prefs to prefs & defaultPrefs
	
	set windowNameEditPrivSet to "Edit Privilege Set"
	set popUpExtras to {selectCommand:"contains", clickIfAlreadySet:true}
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Open({accessRecord:accessRecord of prefs})
		
		
		-- update custom privileges
		if accessRecord of prefs begins with "Custom privileges" then
			
			-- get button refs to edit each row
			tell application "System Events"
				tell process "FileMaker Pro"
					set viewButton to pop up button "View" of window 1
					set editButton to pop up button "Edit" of window 1
					set createButton to pop up button "Create" of window 1
					set deleteButton to pop up button "Delete" of window 1
					set fieldAccessButton to pop up button "Field Access" of window 1
				end tell
			end tell
			
			
			-- look through each table, ensuring each type of access is set
			repeat with oneTableRec in recordAccess of prefs
				set oneTableRec to contents of oneTableRec
				fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable(oneTableRec)
			end repeat
			fmGUI_ObjectClick_OkButton({})
		end if
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_AllTables - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_AllTableson fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Mapping(prefs)
	-- version 1.0
	
	set defaultPrefs to {tableList:{}, tableExcludeList:{}, viewMapping:{}, editMapping:{}, createMapping:{}, deleteMapping:{{original:"yes", new:"True"}}}
	set prefs to prefs & defaultPrefs
	set tableList to tableList of prefs
	set tableExcludeList to tableExcludeList of prefs
	
	
	try
		fmGUI_AppFrontMost()
		if fmGUI_NameOfFrontmostWindow() is not "Custom Record Privileges" then error "wrong starting context" number -1024
		
		
		-- get button refs to edit each row
		tell application "System Events"
			tell process "FileMaker Pro"
				set viewButton to pop up button "View" of window 1
				set editButton to pop up button "Edit" of window 1
				set createButton to pop up button "Create" of window 1
				set deleteButton to pop up button "Delete" of window 1
			end tell
		end tell
		
		
		
		-- get list of table names to loop over
		if (count of tableList) is 0 then set tableList to fmGUI_ManageSecurity_AccessRecord_GetTablesNames({})
		if (count of tableExcludeList) is not 0 then set tableList to listRemoveFromFirstList({tableList, tableExcludeList})
		
		
		with timeout of (30 * minutes) seconds
			-- loop over each table, updating the access based on a mapping
			repeat with oneTableName in tableList
				set oneTableName to contents of oneTableName
				set currentAccess to fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable({tableName:oneTableName})
				
				
				-- view access
				set viewRec to {viewAccess:null, viewCalc:null}
				repeat with oneMapping in viewMapping of prefs
					set oneMapping to contents of oneMapping
					try
						set viewRec to fmGUI_ManageSecurity_PrivSet_Update_DictAccessType({currentTableAccess:viewAccess of currentAccess, currentTableCalc:viewCalc of currentAccess, original:original of oneMapping, new:new of oneMapping, accessType:"view"})
						exit repeat
					end try
				end repeat
				
				
				-- edit access
				set editRec to {editAccess:null, editCalc:null}
				repeat with oneMapping in editMapping of prefs
					set oneMapping to contents of oneMapping
					try
						set editRec to fmGUI_ManageSecurity_PrivSet_Update_DictAccessType({currentTableAccess:editAccess of currentAccess, currentTableCalc:editCalc of currentAccess, original:original of oneMapping, new:new of oneMapping, accessType:"edit"})
						exit repeat
					end try
				end repeat
				
				
				-- create access
				set createRec to {createAccess:null, createCalc:null}
				repeat with oneMapping in createMapping of prefs
					set oneMapping to contents of oneMapping
					try
						set createRec to fmGUI_ManageSecurity_PrivSet_Update_DictAccessType({currentTableAccess:createAccess of currentAccess, currentTableCalc:createCalc of currentAccess, original:original of oneMapping, new:new of oneMapping, accessType:"create"})
						exit repeat
					end try
				end repeat
				
				
				-- delete access
				set deleteRec to {deleteAccess:null, deleteCalc:null}
				repeat with oneMapping in deleteMapping of prefs
					set oneMapping to contents of oneMapping
					try
						set deleteRec to fmGUI_ManageSecurity_PrivSet_Update_DictAccessType({currentTableAccess:deleteAccess of currentAccess, currentTableCalc:deleteCalc of currentAccess, original:original of oneMapping, new:new of oneMapping, accessType:"delete"})
						exit repeat
					end try
				end repeat
				
				
				-- update the table
				set oneTableUpdateParams to {baseTable:oneTableName} & viewRec & editRec & createRec & deleteRec
				fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable(oneTableUpdateParams)
			end repeat
		end timeout
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Mapping - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Mappingon fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable(prefs)
	-- version 1.2
	
	set defaultPrefs to {baseTable:null, viewAccess:null, editAccess:null, createAccess:null, deleteAccess:null, fieldAccess:null, viewCalc:null, editCalc:null, createCalc:null, deleteCalc:null, fieldCalc:null, allowFieldAccessOverride:false}
	set prefs to prefs & defaultPrefs
	
	set popUpExtras to {selectCommand:"contains", clickIfAlreadySet:true}
	
	try
		fmGUI_AppFrontMost()
		if fmGUI_NameOfFrontmostWindow() is not equal to "Custom Record Privileges" then error "must have 'Custom Record Privileges' window open" number -1024
		
		
		tell application "System Events"
			tell process "FileMaker Pro"
				-- get button refs to edit each row
				set viewButton to pop up button "View" of window 1
				set editButton to pop up button "Edit" of window 1
				set createButton to pop up button "Create" of window 1
				set deleteButton to pop up button "Delete" of window 1
				set fieldAccessButton to pop up button "Field Access" of window 1
				
				-- look through each table, ensuring each type of access is set
				set oneTableRow to (first row of table 1 of scroll area 1 of window 1 whose name of static text 1 is equal to baseTable of prefs)
				select oneTableRow
			end tell
		end tell
		
		
		-- view
		if viewAccess of prefs is not null then
			if viewCalc of prefs is not null then
				fmGUI_Popup_SelectByCommand({objRef:viewButton, objValue:viewAccess of prefs, calcValue:viewCalc of prefs} & popUpExtras)
			else
				fmGUI_Popup_SelectByCommand({objRef:viewButton, objValue:viewAccess of prefs})
			end if
		end if
		
		
		-- edit
		if editAccess of prefs is not null then
			if viewCalc of prefs is not equal to "no" then
				-- edit is disabled if view is set to 'no'
				if editCalc of prefs is not null then
					fmGUI_Popup_SelectByCommand({objRef:editButton, objValue:editAccess of prefs, calcValue:editCalc of prefs} & popUpExtras)
				else
					fmGUI_Popup_SelectByCommand({objRef:editButton, objValue:editAccess of prefs})
				end if
			end if
		end if
		
		
		-- create
		if createAccess of prefs is not null then
			if createCalc of prefs is not null then
				fmGUI_Popup_SelectByCommand({objRef:createButton, objValue:createAccess of prefs, calcValue:createCalc of prefs} & popUpExtras)
			else
				fmGUI_Popup_SelectByCommand({objRef:createButton, objValue:createAccess of prefs})
			end if
		end if
		
		
		-- delete
		if deleteAccess of prefs is not null then
			if deleteCalc of prefs is not null then
				fmGUI_Popup_SelectByCommand({objRef:deleteButton, objValue:deleteAccess of prefs, calcValue:deleteCalc of prefs} & popUpExtras)
			else
				fmGUI_Popup_SelectByCommand({objRef:deleteButton, objValue:deleteAccess of prefs})
			end if
		end if
		
		
		-- if there is a list of fields with specific privileges, ask user if this table can ignore the fields specified, and force it's own field to be a specific type ( generally this is due to the privSet being copied from one table to another ).
		if fieldAccess of prefs is not null then
			set extraFieldPrivs to {}
			try
				if allowFieldAccessOverride of prefs then
					if fieldAccess of prefs contains "limited" and fieldCalc of prefs is not null then
						set privTypes to {}
						repeat with oneFieldRec in fieldCalc of prefs
							set oneFieldRec to contents of oneFieldRec
							set oneFieldPriv to fieldPriv of oneFieldRec
							if oneFieldPriv is not in privTypes then copy oneFieldPriv to end of privTypes
						end repeat
						
						if (count of privTypes) is equal to 1 then
							set privTypes to item 1 of privTypes
							if privTypes is equal to "modifiable" then
								set extraFieldPrivs to {FieldsModifiable:true}
							else if privTypes is equal to "view only" then
								set extraFieldPrivs to {FieldsViewOnly:true}
							else if privTypes is equal to "no access" then
								set extraFieldPrivs to {FieldsNoAccess:true}
							end if
						end if
					end if
				end if
			end try
			
			
			-- field access
			fmGUI_Popup_SelectByCommand({objRef:fieldAccessButton, objValue:fieldAccess of prefs, clickIfAlreadySet:true})
			if fieldCalc of prefs is not null then fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv({fieldList:fieldCalc of prefs} & extraFieldPrivs)
		end if
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTableon fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Open(prefs)
	-- version 1.0
	
	try
		set defaultPrefs to {accessRecord:"Custom privileges..."}
		set prefs to prefs & defaultPrefs
		
		
		fmGUI_AppFrontMost()
		if fmGUI_NameOfFrontmostWindow() is not "Edit Privilege Set" then error "wrong starting window" number -1024
		
		
		-- set record access pop up, waiting for  custom privileges window if needed
		tell application "System Events"
			tell process "FileMaker Pro"
				set recordsPopup to pop up button "Records:" of window 1
			end tell
		end tell
		fmGUI_Popup_SelectByCommand({objRef:recordsPopup, objValue:accessRecord of prefs, selectCommand:"contains", clickIfAlreadySet:true})
		if accessRecord of prefs begins with "Custom privileges" then windowWaitUntil_FrontIS({windowName:"Custom Record Privileges"})
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Open - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Openon fmGUI_ManageSecurity_PrivSet_Update_AccessScript(prefs)
	
	set defaultPrefs to {accessScript:null, scriptsAccess:null}
	set prefs to prefs & defaultPrefs
	
	set windowNameEditPrivSet to "Edit Privilege Set"
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell process "FileMaker Pro"
				set windowName to name of window 1
				set scriptsPopup to pop up button "Scripts:" of window 1
			end tell
		end tell
		
		
		-- ensure we're starting on edit PrivSet window
		if windowName is not windowNameEditPrivSet then error "do not have " & windowNameEditPrivSet & " window open" number -1024
		
		
		-- set access for each specified value list
		fmGUI_Popup_SelectByCommand({objRef:scriptsPopup, objValue:accessScript of prefs, selectCommand:"contains", clickIfAlreadySet:true})
		if accessScript of prefs begins with "Custom privileges" then
			windowWaitUntil_FrontIS({windowName:"Custom Script Privileges"})
			-- get button refs to for each radio button
			tell application "System Events"
				tell process "FileMaker Pro"
					set allowCreate to checkbox "Allow creation of new scripts" of window 1
					
					set modifyCheckbox to checkbox 2 of window 1
					set executeCheckbox to checkbox 3 of window 1
					set noAccessCheckbox to checkbox 4 of window 1
				end tell
			end tell
			
			-- update allow create new value list checkbox
			fmGUI_CheckboxSet({objRef:allowCreate, objValue:allowCreate of scriptsAccess of prefs})
			
			
			-- look through each value list, ensuring the proper access is set
			repeat with oneScriptRec in scriptPrivList of scriptsAccess of prefs
				set oneScriptRec to contents of oneScriptRec
				tell application "System Events"
					tell process "FileMaker Pro"
						set oneScriptRow to (first row of table 1 of scroll area 1 of window 1 whose name of static text 1 is ScriptName of oneScriptRec)
						select oneScriptRow
						set oneScriptInfo to name of every static text of oneScriptRow
					end tell
				end tell
				
				
				-- now edit access for each row ( but only if the access is wrong )
				if item 3 of oneScriptInfo is not equal to scriptPriv of oneScriptRec then
					if scriptPriv of oneScriptRec is equal to "modifiable" then
						clickObjectByCoords(modifyCheckbox)
					else if scriptPriv of oneScriptRec is equal to "executable only" then
						clickObjectByCoords(executeCheckbox)
					else if scriptPriv of oneScriptRec is equal to "no access" then
						clickObjectByCoords(noAccessCheckbox)
					end if
				end if
			end repeat
			fmGUI_ObjectClick_OkButton({})
		end if
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update_AccessScript - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Update_AccessScripton fmGUI_ManageSecurity_PrivSet_Update_AccessValueList(prefs)
	
	set defaultPrefs to {accessVL:null, vlAccess:null}
	set prefs to prefs & defaultPrefs
	
	set windowNameEditPrivSet to "Edit Privilege Set"
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell process "FileMaker Pro"
				set windowName to name of window 1
				set valueListsPopup to pop up button "Value Lists:" of window 1
			end tell
		end tell
		
		
		-- ensure we're starting on edit PrivSet window
		if windowName is not windowNameEditPrivSet then error "do not have " & windowNameEditPrivSet & " window open" number -1024
		
		
		-- set access for each specified value list
		fmGUI_Popup_SelectByCommand({objRef:valueListsPopup, objValue:accessVL of prefs, selectCommand:"contains", clickIfAlreadySet:true})
		if accessVL of prefs begins with "Custom privileges" then
			windowWaitUntil_FrontIS({windowName:"Custom Value List Privileges"})
			-- get button refs to for each radio button
			tell application "System Events"
				tell process "FileMaker Pro"
					set allowCreate to checkbox "Allow creation of new value lists" of window 1
					
					set modifyCheckbox to checkbox 2 of window 1
					set viewCheckbox to checkbox 3 of window 1
					set noAccessCheckbox to checkbox 4 of window 1
				end tell
			end tell
			
			-- update allow create new value list checkbox
			fmGUI_CheckboxSet({objRef:allowCreate, objValue:allowCreate of vlAccess of prefs})
			
			
			-- look through each value list, ensuring the proper access is set
			repeat with oneVLRec in vlPrivList of vlAccess of prefs
				set oneVLRec to contents of oneVLRec
				tell application "System Events"
					tell process "FileMaker Pro"
						set oneVLRow to (first row of table 1 of scroll area 1 of window 1 whose name of static text 1 is vlName of oneVLRec)
						select oneVLRow
						set oneVLInfo to name of every static text of oneVLRow
					end tell
				end tell
				
				
				-- now edit access for each row ( but only if the access is wrong )
				if item 2 of oneVLInfo is not equal to vlPriv of oneVLRec then
					if vlPriv of oneVLRec is equal to "modifiable" then
						clickObjectByCoords(modifyCheckbox)
					else if vlPriv of oneVLRec is equal to "view only" then
						clickObjectByCoords(viewCheckbox)
					else if vlPriv of oneVLRec is equal to "no access" then
						clickObjectByCoords(noAccessCheckbox)
					end if
				end if
			end repeat
			fmGUI_ObjectClick_OkButton({})
		end if
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update_AccessValueList - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Update_AccessValueListon fmGUI_ManageSecurity_PrivSet_Update_DictAccessType(prefs)
	set defaultPrefs to {currentTableAccess:null, currentTableCalc:null, original:null, new:null, accessType:null}
	set prefs to prefs & defaultPrefs
	set accessType to accessType of prefs
	
	try
		
		-- get stringified text without any whitespace
		set compressed_original to removeAllWhitespace({str:original of prefs})
		set compressed_currentCalc to removeAllWhitespace({str:currentTableCalc of prefs})
		
		
		-- do comparison and create generic record
		if currentTableAccess of prefs is equal to compressed_original ¬
			or compressed_currentCalc is equal to compressed_original then
			if new of prefs is in {"yes", "no"} then
				set updateRec to {access:new of prefs, calc:null}
			else
				set updateRec to {access:"limited...", calc:new of prefs}
			end if
		else
			error "original does not match currentAccess/Calc" number -1024
		end if
		
		
		-- generate record based on access type	
		if accessType is equal to "view" then
			return {viewAccess:access of updateRec, viewCalc:calc of updateRec}
		else if accessType is equal to "edit" then
			return {editAccess:access of updateRec, editCalc:calc of updateRec}
		else if accessType is equal to "create" then
			return {createAccess:access of updateRec, createCalc:calc of updateRec}
		else if accessType is equal to "delete" then
			return {deleteAccess:access of updateRec, deleteCalc:calc of updateRec}
		else
			error "accessType '" & accessType & "' is not a valid" number -1024
		end if
		
		
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update_DictAccessType - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Update_DictAccessTypeon fmGUI_ManageSecurity_PrivSet_Update_ExtendedPrivileges(prefs)
	
	set defaultPrefs to {extendPrivRows:null}
	set prefs to prefs & defaultPrefs
	
	set windowNameEditPrivSet to "Edit Privilege Set"
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell process "FileMaker Pro"
				set windowName to name of window 1
				set extendPrivRows to rows of table 1 of scroll area 1 of window 1
			end tell
		end tell
		
		
		-- ensure we're starting on edit PrivSet window
		if windowName is not windowNameEditPrivSet then error "do not have " & windowNameEditPrivSet & " window open" number -1024
		
		
		repeat with oneExtendedPrivRow in extendPrivRows
			set oneExtendedPrivRow to contents of oneExtendedPrivRow
			tell application "System Events"
				tell process "FileMaker Pro"
					set oneExtendedPrivCheckbox to checkbox 1 of oneExtendedPrivRow
					set oneExtendedPrivName to name of oneExtendedPrivCheckbox
				end tell
			end tell
			if oneExtendedPrivName is in extendedPrivList of prefs then
				fmGUI_CheckboxSet({objRef:oneExtendedPrivCheckbox, objValue:1})
			else
				fmGUI_CheckboxSet({objRef:oneExtendedPrivCheckbox, objValue:0})
			end if
		end repeat
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update_ExtendedPrivileges - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Update_ExtendedPrivilegeson fmGUI_ManageSecurity_Save(prefs)
	--version 1.5.2
	
	set defaulPrefs to {fullAccessAccountName:null, fullAccessPassword:null}
	set prefs to prefs & defaulPrefs
	
	set authWindowName to "Confirm Full access"
	set securityWindowName to "Manage Security for"
	
	try
		fmGUI_AppFrontMost()
		
		-- save security changes
		fmGUI_ObjectClick_OkButton({})
		
		
		-- confirm with full access account
		if fmGUI_NameOfFrontmostWindow() is equal to "FileMaker Pro" then fmGUI_ObjectClick_Button({buttonName:"Allow"})
		if fmGUI_NameOfFrontmostWindow() begins with authWindowName then fmGUI_AuthenticateDialog({accountName:fullAccessAccountName of prefs, pwd:fullAccessPassword of prefs, windowname:authWindowName})
		
		
		-- wait until window is gone
		windowWaitUntil({whichWindow:"front", windowNameTest:"does not start with", windowname:securityWindowName})
		
		return true
	on error errMsg number errNum
		error "Couldn't save Manage Security - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_Saveon dbNameOfWindowName(someWindowName)
	-- version 1.4.1
	
	set tryNameByExtractingPartBeforeHost to false -- only if the window turns out to block normal AppleScript and we are in a sub-window whose ancestor(s) might have the database name.
	
	set {beforeDB, afterDB} to {"Manage Database for " & (ASCII character 210), ASCII character 211} -- 'smart' quotes
	if someWindowName starts with beforeDB then
		return getTextBetween({sourceTEXT:someWindowName, beforeText:beforeDB, afterText:afterDB})
	else if someWindowName starts with "Options for Field" or someWindowName is "Specify Table" or someWindowName is "Edit Relationship" then
		tell application "System Events" to set someWindowName to name of first window of application process "FileMaker Pro Advanced" whose name starts with beforeDB
		return getTextBetween({sourceTEXT:someWindowName, beforeText:beforeDB, afterText:afterDB})
	end if
	
	
	-- Manage Security (or child windows of that)
	set {beforeDB, afterDB} to {"Manage Security for " & (ASCII character 210), ASCII character 211} -- 'smart' quotes
	if someWindowName starts with beforeDB then
		return getTextBetween({sourceTEXT:someWindowName, beforeText:beforeDB, afterText:afterDB})
		
	else if someWindowName is in {"Edit Account", "Edit Privilege Set", "Edit Extended Privilege", "Custom Record Privileges", "Custom Layout Privileges", "Custom Value List Privileges", "Custom Script Privileges", "Custom Record Privileges", "Custom Field Privileges"} then
		tell application "System Events" to set someWindowName to name of first window of application process "FileMaker Pro Advanced" whose name starts with beforeDB
		return getTextBetween({sourceTEXT:someWindowName, beforeText:beforeDB, afterText:afterDB})
	end if
	
	
	set {beforeDB, afterDB} to {"Manage Custom Functions for " & (ASCII character 210), ASCII character 211} -- 'smart' quotes
	if someWindowName starts with beforeDB then
		return getTextBetween({sourceTEXT:someWindowName, beforeText:beforeDB, afterText:afterDB})
	else if someWindowName is in {"Edit Custom Function"} then
		tell application "System Events" to set someWindowName to name of first window of application process "FileMaker Pro Advanced" whose name starts with beforeDB
		return getTextBetween({sourceTEXT:someWindowName, beforeText:beforeDB, afterText:afterDB})
	end if
	
	set {beforeDB, afterDB} to {"Manage Value Lists for " & (ASCII character 210), ASCII character 211} -- 'smart' quotes
	if someWindowName starts with beforeDB then
		return getTextBetween({sourceTEXT:someWindowName, beforeText:beforeDB, afterText:afterDB})
	else if someWindowName is in {"Edit Value List"} then
		tell application "System Events" to set someWindowName to name of first window of application process "FileMaker Pro Advanced" whose name starts with beforeDB
		return getTextBetween({sourceTEXT:someWindowName, beforeText:beforeDB, afterText:afterDB})
	end if
	
	set {beforeDB, afterDB} to {"Script Workspace (", " ("} -- parentheses
	if someWindowName starts with beforeDB then
		return getTextBetween({sourceTEXT:someWindowName, beforeText:beforeDB, afterText:afterDB})
	else if someWindowName is in {"Edit Value List"} then
		tell application "System Events" to set someWindowName to name of first window of application process "FileMaker Pro Advanced" whose name starts with beforeDB
		return getTextBetween({sourceTEXT:someWindowName, beforeText:beforeDB, afterText:afterDB})
	end if
	
	-- SECOND window might have database name:
	if someWindowName is in {"Manage External Data Sources", "Manage Containers", "Manage Custom Menus"} then
		-- just use SECOND window:
		tell application "System Events" to set someWindowName to name of window 2 of application process "FileMaker Pro Advanced"
		set tryNameByExtractingPartBeforeHost to true
		
	else if someWindowName is in {"Edit Data Source", "Edit Custom Menu Set", "Create Custom Menu"} then
		-- THIRD window might have database name:
		tell application "System Events" to set someWindowName to name of window 3 of application process "FileMaker Pro Advanced"
		set tryNameByExtractingPartBeforeHost to true
		
	else if someWindowName is in {"Select Menu"} then
		-- FOURTH window might have database name:
		tell application "System Events" to set someWindowName to name of window 3 of application process "FileMaker Pro Advanced"
		set tryNameByExtractingPartBeforeHost to true
	end if
	
	
	
	if tryNameByExtractingPartBeforeHost then
		if someWindowName contains " (" then
			-- if it has a host part then what comes before really IS the db name (not a renamed window)
			set parsedItem to parseChars({someWindowName, " ("})
			return item 1 of parsedItem
		else
			error "Cannot get database name of window '" & someWindowName & "' because it might be a renamed window that does not match the database name." number 1024
		end if
		
	end if
	
	
	
	
	tell application id "com.filemaker.client.advanced12"
		
		set dbCount to count of every database
		
		repeat with dbNum from 1 to dbCount
			
			try
				-- might not HAVE any windows:
				set dbWindows to name of windows of database dbNum
				
				if dbWindows contains someWindowName then
					set dbName to name of database dbNum
					if dbName ends with ".fmp12" then
						-- strip off that extension
						set dbName to text 1 thru -(1 + (length of ".fmp12")) of dbName
					end if
					return dbName
				else if someWindowName starts with "Script Workspace (" then
					set beforeName to "Script Workspace ("
					set afterName to " ("
					set nameStartPos to (offset of beforeName in someWindowName) + (length of beforeName)
					set nameFinishPos to nameStartPos + (offset of afterName in (text nameStartPos thru -1 of someWindowName)) - 2
					set dbName to text nameStartPos thru nameFinishPos of someWindowName
					return dbName
					
				else if someWindowName starts with "Edit Script \"" then
					set beforeName to "("
					set afterName to ")"
					set AppleScript's text item delimiters to {""}
					set revWindowName to (reverse of characters of someWindowName) as string
					text 1 thru ((offset of beforeName in revWindowName) - 1) of revWindowName
					(reverse of characters of result) as string
					text 1 thru ((offset of afterName in result) - 1) of result
					set dbName to result
					return dbName
					
				else if someWindowName starts with "Manage Layouts (" then
					set beforeName to "Manage Layouts ("
					set afterName to " ("
					set nameStartPos to (offset of beforeName in someWindowName) + (length of beforeName)
					set nameFinishPos to nameStartPos + (offset of afterName in (text nameStartPos thru -1 of someWindowName)) - 2
					set dbName to text nameStartPos thru nameFinishPos of someWindowName
					return dbName
					
				end if
				
				
				
			end try
			
		end repeat
		
		error "Could not find database NAME of window name specified: " & someWindowName number 1024
		
	end tell
	
end dbNameOfWindowNameon dbNumberOfWindowName(someWindowName)
	-- version 1.0
	
	tell application id "com.filemaker.client.advanced12"
		
		set dbCount to count of every database
		repeat with dbNum from 1 to dbCount
			try
				-- might not HAVE any windows:
				set dbWindows to name of windows of database dbNum
				if dbWindows contains someWindowName then return dbNum
			end try
		end repeat
		
		error "Could not find database number of window name specified: " & someWindowName number 1024
		
	end tell
	
end dbNumberOfWindowNameon fmGUI_AppFrontMost()
	-- version 1.1
	
	tell application "System Events"
		tell application process "FileMaker Pro Advanced"
			if frontmost is not true then
				set frontmost to true
				delay 1
				
				--close FMEmpower window if it's open
				if name of window 1 is equal to "2empowerFM Toolbox" then
					click button 1 of window 1
					delay 1
				end if
			end if
		end tell
	end tell
end fmGUI_AppFrontMoston fmGUI_ModeCurrent(prefs)
	-- version 1.0
	
	try
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set currentMode to first word of ((description of first group of window 1) as string)
				return currentMode
			end tell
		end tell
	on error errMsg number errNum
		error "unable to fmGUI_ModeCurrent - " & errMsg number errNum
	end try
	
end fmGUI_ModeCurrenton fmGUI_ModeEnsure_Browse()
	-- version 1.0
	
	try
		fmGUI_ModeSelect("Browse")
		
	on error errMsg number errNum
		error "Couldn't ensure in Browse Mode - " & errMsg number errNum
	end try
	
	
end fmGUI_ModeEnsure_Browseon fmGUI_ModeEnsure_Find()
	-- version 1.0
	
	try
		fmGUI_ModeSelect("Find")
		
	on error errMsg number errNum
		error "Couldn't ensure in Browse Mode - " & errMsg number errNum
	end try
	
	
end fmGUI_ModeEnsure_Findon fmGUI_ModeEnsure_Layout()
	-- version 1.0
	
	try
		fmGUI_ModeSelect("Layout")
		
	on error errMsg number errNum
		error "Couldn't ensure in Browse Mode - " & errMsg number errNum
	end try
	
end fmGUI_ModeEnsure_Layouton fmGUI_ModeSelect(modeToSelect)
	-- version 1.1
	
	try
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				my fmGUI_AppFrontMost()
				my fmGUI_Inspector_Close()
				
				-- Need to click in upper-left corner of area before pasting
				set currentMode to first word of ((description of first group of window 1) as string)
				
				
				if currentMode is not equal to modeToSelect then
					set menuItemName to modeToSelect & " Mode"
					click (menu item menuItemName of menu 1 of menu bar item "View" of menu bar 1)
					
					--wait until the mode is selected ( or we time out )
					repeat 20 times
						set newMode to first word of ((description of first group of window 1) as string)
						if newMode is equal to modeToSelect then exit repeat
						delay 0.5
					end repeat
				end if
				
				return true
				
			end tell
		end tell
	on error errMsg number errNum
		error "Couldn't switch to mode '" & modeToSelect & "' - " & errMsg number errNum
	end try
end fmGUI_ModeSelecton fmGUI_NameOfFrontmostWindow()
	-- version 1.0
	
	fmGUI_AppFrontMost()
	
	tell application "System Events"
		tell application process "FileMaker Pro Advanced"
			return name of window 1
		end tell
	end tell
end fmGUI_NameOfFrontmostWindowon fmGUI_Window_Close(someWindowName)
	-- version 1.1
	
	tell application id "com.filemaker.client.advanced12" to close window someWindowName
	return true
	
end fmGUI_Window_Closeon windowWaitUntil(prefs)
	-- version 1.3, Daniel A. Shockley
	
	set defaultPrefs to {windowName:null, windowNameTest:"contains", whichWindow:"any", waitCycleDelaySeconds:0.5, waitCycleMax:20}
	set prefs to prefs & defaultPrefs
	
	set windowName to windowName of prefs
	set windowNameTest to windowNameTest of prefs
	set whichWindow to whichWindow of prefs
	
	set checkResult to false
	
	try
		repeat waitCycleMax of prefs times
			tell application "System Events"
				if whichWindow is "any" then
					set windowNameList to name of every window of application process "FileMaker Pro Advanced"
				else if whichWindow is "front" then
					set frontWindowName to name of window 1 of application process "FileMaker Pro Advanced"
					set windowNameList to {frontWindowName} -- we are only checking ONE window, but need a list (of one item) for below.
				else -- whichWindow  is window index number:
					set windowIndex to whichWindow as number
					set chosenWindowName to name of window windowIndex of application process "FileMaker Pro Advanced"
					set windowNameList to {chosenWindowName} -- we are only checking ONE window, but need a list (of one item) for below.
				end if
			end tell
			
			
			repeat with oneWindowName in windowNameList
				-- BEGIN: loop over one (or more) windows.	
				set oneWindowName to contents of oneWindowName
				
				if windowNameTest is "contains" then
					set checkResult to (oneWindowName contains windowName)
					
				else if windowNameTest is "does not contain" then
					set checkResult to (oneWindowName does not contain windowName)
					
				else if windowNameTest is "equals" then
					set checkResult to (oneWindowName is equal to windowName)
					
				else if windowNameTest is "is" then
					set checkResult to (oneWindowName is equal to windowName)
					
				else if windowNameTest is "starts with" then
					set checkResult to (oneWindowName starts with windowName)
					
				else if windowNameTest is "does not start with" then
					set checkResult to (oneWindowName does not start with windowName)
					
				else if windowNameTest is "ends with" then
					set checkResult to (oneWindowName ends with windowName)
					
				else if windowNameTest is "does not end with" then
					set checkResult to (oneWindowName does not end with windowName)
					
				else if windowNameTest is "is not" then
					set checkResult to (oneWindowName is not windowName)
					
				end if
				
				if checkResult then exit repeat
				
				-- END OF: loop over one (or more) windows.	
			end repeat
			
			
			if checkResult then exit repeat
			
			delay waitCycleDelaySeconds of prefs
			
			-- END OF: waiting loop.			
		end repeat
		
		return checkResult
	on error errMsg number errNum
		error "unable to windowWaitUntil - " & errMsg number errNum
	end try
end windowWaitUntilon windowWaitUntil_FrontIS(prefs)
	-- version 1.0
	
	set defaultPrefs to {windowName:null, windowNameTest:"is", whichWindow:"front", waitCycleDelaySeconds:0.1, waitCycleMax:100}
	set prefs to prefs & defaultPrefs
	
	return windowWaitUntil(prefs)
	
	
end windowWaitUntil_FrontISon windowWaitUntil_FrontNotIS(prefs)
	-- version 1.0
	
	set defaultPrefs to {windowName:null, windowNameTest:"is not", whichWindow:"front", waitCycleDelaySeconds:0.1, waitCycleMax:100}
	set prefs to prefs & defaultPrefs
	
	return windowWaitUntil(prefs)
	
	
end windowWaitUntil_FrontNotISon fmGUI_ClearContents()
	-- version 1.0.1, Erik Shagdar
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set ClearMenuItem to first menu item of menu 1 of menu bar item "Edit" of menu bar 1 whose name is "Clear"
			end tell
		end tell
		
		return fmGUI_ClickMenuItem({menuItemRef:ClearMenuItem})
	on error errMsg number errNum
		error "Couldn't fmGUI_ClearContents - " & errMsg number errNum
	end try
	
end fmGUI_ClearContentson fmGUI_ClickMenuItem(prefs)
	-- version 1.1, Erik Shagdar
	
	set defaultPrefs to {menuItemRef:null, waitForMenuAvailable:false}
	set prefs to prefs & defaultPrefs
	set menuItemRef to ensureObjectRef(menuItemRef of prefs)
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				click menuItemRef
			end tell
		end tell
		
		
		if waitForMenuAvailable of prefs then return fmGUI_Wait_MenuItemAvailable({menuItemRef:menuItemRef})
		
		
		delay 0.1 -- pause to give a chance for menus to redraw
		return true
	on error errMsg number errNum
		error "Unable to fmGUI_ClickMenuItem - " & errMsg number errNum
	end try
end fmGUI_ClickMenuItemon fmGUI_CopySelected(prefs)
	-- version 1.3.1, Erik Shagdar
	
	try
		set defaultPrefs to {}
		set prefs to prefs & defaultPrefs
		
		
		fmGUI_AppFrontMost()
		clipboardClear() -- want clipboard to be EMPTY before we copy, so we can check for copied scripts.
		
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set copyMenuItem to menu item "Copy" of menu 1 of menu bar item "Edit" of menu bar 1
			end tell
		end tell
		
		
		return fmGUI_clickMenuItem({menuItemRef:copyMenuItem, waitForMenuAvailable:true})
	on error errMsg number errNum
		error "Couldn't fmGUI_CopySelected - " & errMsg number errNum
	end try
end fmGUI_CopySelectedon fmGUI_Cut()
	-- version 1.1, Erik Shagdar
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set cutMenuItem to first menu item of menu 1 of menu bar item "Edit" of menu bar 1 whose name is "Cut"
			end tell
		end tell
		
		return fmGUI_ClickMenuItem({menuItemRef:cutMenuItem})
	on error errMsg number errNum
		error "Couldn't fmGUI_SelectAll - " & errMsg number errNum
	end try
end fmGUI_Cuton fmGUI_Menu_OpenDB(prefs)
	-- version 1.1, Erik Shagdar
	
	try
		fmGUI_AppFrontMost()
		
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set openManageDBMenuItem to first menu item of menu 1 of menu item "Manage" of menu 1 of menu bar item "File" of menu bar 1 whose name starts with "Database"
			end tell
		end tell
		fmGUI_ClickMenuItem({menuItemRef:openManageDBMenuItem})
		
		return windowWaitUntil({windowName:"Manage Database for"})
	on error errMsg number errNum
		error "Couldn't fmGUI_Menu_OpenDB - " & errMsg number errNum
	end try
end fmGUI_Menu_OpenDBon fmGUI_Menu_OpenLayouts(prefs)
	-- version 1.0, Erik Shagdar
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set openManageLayoutsMenuItem to first menu item of menu 1 of menu item "Manage" of menu 1 of menu bar item "File" of menu bar 1 whose name starts with "Layouts"
			end tell
		end tell
		fmGUI_ClickMenuItem({menuItemRef:openManageLayoutsMenuItem})
		delay 0.25
		
		return windowWaitUntil({windowName:"Manage Layouts"})
	on error errMsg number errNum
		error "Couldn't fmGUI_Menu_OpenLayouts - " & errMsg number errNum
	end try
end fmGUI_Menu_OpenLayoutson fmGUI_Menu_RunScript(prefs)
	-- version 1.1
	
	try
		set defaultPrefs to {scriptName:null, scriptFolderList:{}, partialMatch:false}
		set prefs to prefs & defaultPrefs
		
		
		fmGUI_AppFrontMost()
		delay 0.1
		
		tell application "System Events"
			tell process "FileMaker Pro"
				
				-- IF script workspace is the frontmost window, tell the user don't do that: 
				(* for some insane reason, the class of the checkmark character is print settings. 
					Had to use class, since the ascii value and string value both failed. 
					Directly using the character itself for a match caused the source file to be UTF-16, which we want to avoid for now.
					Reason to avoid UTF-16 is that the code files are loaded together and compiled. 
				*)
				set selectedWindowName to title of first menu item of menu "Window" of menu bar item "Window" of menu bar 1 whose (class of value of attribute "AXMenuItemMarkChar" is print settings)
				if selectedWindowName starts with "Script Workspace" then error "Pick a database window other than Script Workspace" number -1024
				
				-- iterate through list of script folders, then get the script
				set scriptsMenu to menu "Scripts" of menu bar item "Scripts" of menu bar 1
				try
					repeat with oneParentFolderName in scriptFolderList of prefs
						set oneParentFolderName to contents of oneParentFolderName
						set scriptsMenu to menu oneParentFolderName of menu item oneParentFolderName of scriptsMenu
					end repeat
				end try
				if partialMatch of prefs then
					set scriptItem to first menu item of scriptsMenu whose name contains (scriptName of prefs)
				else
					set scriptItem to first menu item of scriptsMenu whose name is (scriptName of prefs)
				end if
				
			end tell
		end tell
		
		return fmGUI_ClickMenuItem({menuItemRef:scriptItem})
		
	on error errMsg number errNum
		error "Couldn't fmGUI_Menu_RunScript - " & errMsg number errNum
	end try
end fmGUI_Menu_RunScripton fmGUI_MenuItemAvailable(prefs)
	--version 1.1, Erik Shagdar
	
	try
		set defaultPrefs to {menuItemRef:null, maxTimeoutSec:60, checkFrequencySec:0.5}
		set prefs to prefs & defaultPrefs
		set menuItemRef to ensureObjectRef(menuItemRef of prefs)
		if menuItemRef is null then error "menuItemRef not specified" number -1024
		
		
		fmGUI_AppFrontMost()
		
		
		try
			return exists menuItemRef
		on error
			return false
		end try
		
	on error errMsg number errNum
		error "Couldn't fmGUI_MenuItemAvailable - " & errMsg number errNum
	end try
	
end fmGUI_MenuItemAvailableon fmGUI_PasteFromClipboard()
	-- version 1.3.1, Erik Shagdar
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				-- get the menu item
				try
					set pasteMenuItem to first menu item of menu 1 of menu bar item "Edit" of menu bar 1 whose name is "Paste"
				on error
					set pasteMenuItem to first menu item of menu 1 of menu bar item "Edit" of menu bar 1 whose name is "Paste Styled Text"
				end try
				
			end tell
		end tell
		
		return fmGUI_ClickMenuItem({menuItemRef:pasteMenuItem, waitForMenuAvailable:true})
	on error errMsg number errNum
		error "Couldn't fmGUI_CopySelected - " & errMsg number errNum
	end try
	
end fmGUI_PasteFromClipboardon fmGUI_SelectAll()
	-- version 1.4.1, Erik Shagdar
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set SelectAllMenuItem to menu item "Select All" of menu 1 of menu bar item "Edit" of menu bar 1
			end tell
		end tell
		
		return fmGUI_ClickMenuItem({menuItemRef:SelectAllMenuItem, waitForMenuAvailable:true})
	on error errMsg number errNum
		error "Couldn't fmGUI_SelectAll - " & errMsg number errNum
	end try
end fmGUI_SelectAllon fmGUI_SelectAllAndCopy()
	-- version 1.3, Erik Shagdar
	
	try
		clipboardClear()
		fmGUI_AppFrontMost()
		fmGUI_SelectAll()
		delay 0.5
		fmGUI_CopySelected({})
		
		
		tell application "System Events"
			repeat 50 times
				try
					-- We set the clipboard to an empty string. Once utf8 is no longer in it (or isn't empty), we must have picked up the objects copied above.
					get the clipboard as «class utf8»
					if length of result is greater than 0 then return true
				on error
					return true -- there is data, but it's some other class
				end try
				delay 0.5
			end repeat
		end tell
		
		return false
	on error errMsg number errNum
		error "Couldn't fmGUI_SelectAllAndCopy - " & errMsg number errNum
	end try
end fmGUI_SelectAllAndCopyon fmGUI_Wait_MenuItemAvailable(prefs)
	--version 1.0, Erik Shagdar
	
	try
		set defaultPrefs to {menuItemRef:null, maxTimeoutSec:60, checkFrequencySec:0.5}
		set prefs to prefs & defaultPrefs
		if menuItemRef of prefs is null then error "menuItemRef not specified" number -1024
		
		
		fmGUI_AppFrontMost()
		
		
		repeat ((maxTimeoutSec of prefs) / (checkFrequencySec of prefs) as integer) times
			if fmGUI_MenuItemAvailable({menuItemRef:menuItemRef of prefs}) then return true
		end repeat
		
		return false
	on error errMsg number errNum
		error "Couldn't fmGUI_Wait_MenuItemAvailable - " & errMsg number errNum
	end try
end fmGUI_Wait_MenuItemAvailableon fmGUI_CheckboxSet(prefs)
	-- version 1.2
	
	set defaultPrefs to {objRef:null, objValue:null}
	set prefs to prefs & defaultPrefs
	set objRef to ensureObjectRef(objRef of prefs)
	set objValue to (objValue of prefs) as integer
	
	try
		using terms from application "System Events"
			if objValue is not null then
				if value of objRef is not objValue then
					my clickObjectByCoords(objRef)
				end if
				return true
			end if
		end using terms from
		
		return false
	on error errMsg number errNum
		error "Unable to fmGUI_CheckboxSet ( couldn't select '" & objValue & "' for checkbox ) - " & errMsg number errNum
	end try
end fmGUI_CheckboxSeton fmGUI_Popup_SelectByCommand(prefs)
	-- version 1.4.1
	
	set defaultPrefs to {objRef:null, objValue:null, calcValue:null, selectCommand:"is", clickIfAlreadySet:false}
	set prefs to prefs & defaultPrefs
	
	set objRef to ensureObjectRef(objRef of prefs)
	set selectCommand to selectCommand of prefs
	set objValue to objValue of prefs
	set clickIfAlreadySet to clickIfAlreadySet of prefs -- re-select even if popup is the requested value.
	set calcBoxWindowName to "Specify Calculation"
	
	
	try
		tell application "System Events"
			if not (exists objRef) then error "The specified objRef does not exist." number 1024
			
			
			-- the objRef DOES exist
			set mustPick to false
			if not (exists value of objRef) then
				-- first check if the value of the objRef exists - if it doesn't, then we can't test it directly
				set mustPick to true
				
			else -- we can see the value without 'picking' the menu, so test it:
				-- note that our selection might be one of several 'matching' commands:
				if clickIfAlreadySet then
					-- RE-SELECT even if popup already is the requested value.
					set mustPick to true
					
				else if selectCommand is equal to "is" then
					if value of objRef is not objValue then
						set mustPick to true
					end if
					
				else if selectCommand is equal to "contains" then
					if value of objRef does not contain objValue then
						set mustPick to true
					end if
					
				else if selectCommand is equal to "startsWith" then
					if value of objRef does not start with objValue then
						set mustPick to true
					end if
					
				else if selectCommand is equal to "beginsWith" then
					if value of objRef does not start with objValue then
						set mustPick to true
					end if
					
				else if selectCommand is equal to "endsWith" then
					if value of objRef does not end with objValue then
						set mustPick to true
					end if
					
				end if
			end if
		end tell
		
		
		
		if mustPick then
			if objValue is not null then
				-- click pop up button so the menu becomes available
				clickObjectByCoords(objRef)
				
				
				--wait until menu is available
				repeat 100 times
					try
						tell application "System Events"
							tell application process "FileMaker Pro"
								if exists (menu 1 of objRef) then exit repeat
							end tell
						end tell
					on error
						delay 0.5
					end try
				end repeat
				
				
				-- now pick an item from the pop up
				tell application "System Events"
					objRef
					if selectCommand is equal to "is" then
						set objValue to first menu item of menu 1 of objRef whose name is objValue
					else if selectCommand is equal to "contains" then
						set objValue to first menu item of menu 1 of objRef whose name contains objValue
					else if selectCommand is equal to "beginsWith" then
						set objValue to first menu item of menu 1 of objRef whose name starts with objValue
					else if selectCommand is equal to "endsWith" then
						set objValue to first menu item of menu 1 of objRef whose name ends with objValue
					else
						error "unable to pick objValue because select command is failed" number -1024
					end if
					
					tell process "FileMaker Pro"
						click objValue
					end tell
				end tell
				
				-- must tell FM to click since the value might now be available ( need to scroll )
				--clickObjectByCoords(objValue)
			end if
			
			
			-- set calc if there is one
			if calcValue of prefs is not null then fmGUI_SpecifyCalcWindowSet({calcValue:calcValue of prefs})
		end if
		
		
		return true
	on error errMsg number errNum
		error "Couldn't select menu item whose value _" & selectCommand & "_ '" & objValue & "' in popup - " & errMsg number errNum
	end try
end fmGUI_Popup_SelectByCommandon fmGUI_PopupSet(prefs)
	-- version 1.1
	
	set defaultPrefs to {objRef:null, objValue:null}
	set prefs to prefs & defaultPrefs
	set objRef to ensureObjectRef(objRef of prefs)
	
	try
		return fmGUI_Popup_SelectByCommand(prefs & {selectCommand:"contains"})
	on error errMsg number errNum
		error "Unable to fmGUI_PopupSet ( couldn't select '" & objValue of prefs & "' in popup ) - " & errMsg number errNum
	end try
end fmGUI_PopupSeton fmGUI_SpecifyCalcWindowSet(prefs)
	-- version 1.0
	
	set defaultPrefs to {calc:null}
	set prefs to prefs & defaultPrefs
	
	set needsSave to false
	set calcBoxWindowName to "Specify Calculation"
	
	
	try
		-- ensure context
		fmGUI_AppFrontMost()
		if not windowWaitUntil_FrontIS({windowName:calcBoxWindowName}) then error "Timed out waiting for '" & calcBoxWindowName & "' window" number -1024
		
		tell application "System Events"
			tell process "FileMaker Pro"
				set calcBox to text area 1 of scroll area 1 of splitter group 1 of window 1
				if value of calcBox is not equal to calcValue of prefs then
					set the value of calcBox to calcValue of prefs
					set needsSave to true
				end if
			end tell
		end tell
		
		if needsSave then
			fmGUI_ObjectClick_OkButton({})
		else
			fmGUI_ObjectClick_CancelButton({})
		end if
		windowWaitUntil_FrontNotIS({windowName:calcBoxWindowName})
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_SpecifyCalcWindowSet - " & errMsg number errNum
	end try
end fmGUI_SpecifyCalcWindowSeton fmGUI_TextFieldSet(prefs)
	-- version 1.1
	
	set defaultPrefs to {objRef:null, objValue:null}
	set prefs to prefs & defaultPrefs
	set objRef to ensureObjectRef(objRef of prefs)
	set objValue to objValue of prefs
	
	try
		using terms from application "System Events"
			if objValue is not null then
				if value of objRef is not equal to (objValue) then
					set focused of objRef to true
					set value of objRef to objValue
					return true
				end if
			end if
		end using terms from
		
		return false
	on error errMsg number errNum
		error "Unable to fmGUI_TextFieldSet ( couldn't select '" & objValue & "' for text field ) - " & errMsg number errNum
	end try
end fmGUI_TextFieldSeton fmGUI_getRecCounts()
	-- version 1.0
	
	fmGUI_ModeEnsure_Browse()
	try
		-- get the count string
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set recString to value of static text 3 of group 1 of toolbar 1 of window 1
			end tell
		end tell
		
		
		-- found set
		if recString contains "/" then
			set recsFound to getTextBefore(recString, "/") as integer
		else
			set recsFound to recString as integer
		end if
		
		
		-- total
		if recString contains "/" then
			set recsTotal to getTextAfter(recString, "/") as integer
		else
			set recsTotal to recString as integer
		end if
		
		return {recsFound:recsFound, recsTotal:recsTotal}
		
	on error errMsg number errNum
		error "Couldn't fmGUI_getRecCounts - " & errMsg number errNum
	end try
end fmGUI_getRecCountson fmGUI_showAllRecs()
	-- version 1.1
	
	try
		fmGUI_ModeEnsure_Browse()
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				click menu item "Show All Records" of menu 1 of menu bar item "Records" of menu bar 1
			end tell
		end tell
		
		set numRecs to fmGUI_getRecCounts()
		if recsTotal of numRecs is not equal to recsFound of numRecs then
			error "record counts are not the same after running 'Show All Records' command." number -1024
		end if
		
		if recsTotal of numRecs is equal to 0 then
			return false
		else
			return true
		end if
		
	on error errMsg number errNum
		error "Couldn't fmGUI_showAllRecs - " & errMsg number errNum
	end try
end fmGUI_showAllRecson indexOfListItem(prefs)
	-- version 1.1
	
	set defaultPrefs to {someList:null, someListItem:null}
	set prefs to prefs & defaultPrefs
	
	if someList of prefs does not contain someListItem of prefs then return -1
	
	repeat with i from 1 to count of someList of prefs
		set oneListItem to item i of someList of prefs
		
		if oneListItem is someListItem of prefs then return i
		
	end repeat
	
end indexOfListItemon listContains(someList, someComplexItem)
	-- version 1.0
	
	repeat with oneItem in someList
		set oneItem to contents of oneItem
		if oneItem is equal to someComplexItem then return true
	end repeat
	
	return false
end listContainson listRemoveFromFirstList(prefs)
	-- version 1.2.1
	
	set {mainList, listOfItemsToRemove} to prefs
	
	set absentList to {}
	repeat with oneItem in mainList
		set oneItem to contents of oneItem
		if listOfItemsToRemove does not contain oneItem then copy oneItem to end of absentList
	end repeat
	
	return absentList
end listRemoveFromFirstListon listUniqueValues(prefs)
	-- version 1.0
	
	set inputList to inputList of prefs
	
	set uniqueList to {}
	
	
	repeat with oneItem in inputList
		set oneItem to contents of oneItem
		if uniqueList does not contain oneItem then
			copy oneItem to end of uniqueList
		end if
	end repeat
	
	return uniqueList
	
end listUniqueValueson removeItemFromList(prefs)
	-- version 1.1
	
	set defaultPrefs to {someList:null, removeItem:null}
	set prefs to prefs & defaultPrefs
	
	set newList to {}
	repeat with oneItem in someList of prefs
		set oneItem to contents of oneItem
		if oneItem is not removeItem of prefs then copy oneItem to end of newList
	end repeat
	
	return newList
	
end removeItemFromListon sort(oldList)
	-- version 1.0
	
	set {od, AppleScript's text item delimiters} to {AppleScript's text item delimiters, ASCII character 10}
	set textBlock to oldList as string
	set sortedBlock to do shell script "echo " & quoted form of textBlock & " | sort"
	set AppleScript's text item delimiters to return
	set sortedList to every text item of sortedBlock
	set AppleScript's text item delimiters to od
	
	return sortedList
end sorton logConsole(processName, consoleMsg)
	-- version 2.0
	
	set consoleMsg to coerceToString(consoleMsg)
	set consoleMsg to replaceSimple({consoleMsg, ASCII character 0, ""}) -- ASCII 0 breaks shell scripting
	if length of consoleMsg is 0 then
		-- we still want this function to log that an empty string was sent:
		set consoleMsg to "[EMPTY STRING]"
	end if
	set shellCommand to "logger" & space & "-t" & space & quoted form of processName & space & quoted form of consoleMsg
	
	do shell script shellCommand
	return shellCommand
	
end logConsoleon logLEVEL(level, someMsg)
	-- version 1.0
	
	set maxXcount to 5
	set logName to ScriptName & "_"
	set xCount to maxXcount - level + 1
	
	repeat with i from 1 to xCount
		set logName to logName & "X"
	end repeat
	
	logConsole(logName, someMsg)
	
end logLEVELon logMAIN(someMsg)
	-- version 1.0
	
	logLEVEL(0, someMsg) -- log at highest importance
	
end logMAINon systemNotification(prefs)
	-- version 1.0
	
	set defaultPrefs to {msg:"", msgTitle:"", msgSubtitle:"", msgSound:"default", noSound:null}
	set prefs to prefs & defaultPrefs
	
	if noSound of prefs is not null then
		display notification msg of prefs with title msgTitle of prefs subtitle msgSubtitle of prefs
	else
		display notification msg of prefs with title msgTitle of prefs subtitle msgSubtitle of prefs sound name msgSound of prefs
	end if
	
end systemNotificationon writeToFile(prefs)
	-- version 1.2
	
	set defaultPrefs to {outputText:"", fullFilePath:null, fileName:null, fileDirectory:(path to desktop) as string, appendText:false, appendLine:true}
	set prefs to prefs & defaultPrefs
	set outputText to outputText of prefs
	
	
	-- determine file path
	if fullFilePath of prefs is not null then
		set outputFile to fullFilePath of prefs
	else if fileName of prefs is not null then
		set outputFile to fileDirectory of prefs & fileName of prefs
	else
		set outputFile to ((path to desktop) as string) & "ASFileWrittenBy_htcLib.txt"
	end if
	
	
	
	
	-- now write output text to file
	try
		try
			set fileReference to open for access file outputFile with write permission
		on error
			set fileReference to open for access POSIX file outputFile with write permission
		end try
		if appendText of prefs is false then
			set eof of the fileReference to 0
		else if appendLine of prefs is true then
			set outputText to return & outputText
		end if
		write outputText to fileReference starting at eof
		close access fileReference
		return true
	on error
		try
			close access file outputFile
			return true
		end try
	end try
	return false
end writeToFileon minNum(someList)
	try
		if class of someList is not list then error "not a list." number -1703
		set smallestFound to item 1 of someList as number
		
		repeat with i in someList
			set oneValue to i's contents as number
			if oneValue < smallestFound then set smallestFound to oneValue
		end repeat
		
		return smallestFound
	on error errMsg number errNum
		error "unable to minNum - " & errMsg number errNum
	end try
end minNumon xor(firstBoolean, secondBoolean)
	try
		return (firstBoolean or secondBoolean) and (firstBoolean ≠ secondBoolean)
	on error errMsg number errNum
		error "unable to xor - " & errMsg number errNum
	end try
end xoron clipboardClear()
	-- version 1.0
	
	tell application "System Events" to set the clipboard to null
	
end clipboardClearon getObjectAndSubs(prefs)
	-- version 1.1
	
	set defaultPrefs to {someObjectRef:null, outputType:"TEXT", maxSubLevel:null, subLevel:0}
	(* 
		Other options: 
		  outputType:"TEXT", "Record"
	*)
	
	
	set prefs to prefs & defaultPrefs
	
	set someObjectRef to someObjectRef of prefs
	set outputType to outputType of prefs
	set maxSubLevel to maxSubLevel of prefs
	set subLevel to subLevel of prefs
	
	set someObjectRef to ensureObjectRef(someObjectRef)
	
	set indentString to my repeatString({someString:tab, repeatCount:subLevel})
	set subIndentString to my repeatString({someString:tab, repeatCount:subLevel + 1})
	
	
	tell application "System Events"
		
		set thisObjectInfo to properties of someObjectRef
		
		try
			set thisObjClass to class of someObjectRef
		end try
		try
			set thisObjectName to name of someObjectRef
		end try
		
		if maxSubLevel is null then
			set doSub to true
		else if subLevel is greater than or equal to maxSubLevel then
			set doSub to false
		else
			set doSub to true
		end if
		
		
		
		if not doSub then
			set thisSubObjectList to null
		else
			
			try
				set subObjects to UI elements of someObjectRef
				
				
				
				
				(*
				if subLevel is 1 then
					tell me to activate
					display dialog my coerceToString(someObjectRef)
					display dialog "subObjects : " & my coerceToString(subObjects)
					display dialog (length of indentString) as string
					error -128
				end if
				*)
				
				
				
				
				
				if outputType is "Record" then
					set thisSubObjectList to {}
				else if outputType is "TEXT" then
					if (count of subObjects) is 0 then
						set thisSubObjectList to "{}"
					else
						set subList_START to "{ ¬" & return & subIndentString & "¬"
						set subList_BeforeEach to return & subIndentString
						set subList_BetweenAdjacent to ", ¬" & return & subIndentString & "¬"
						set thisSubObjectList to subList_START
						set subObjectsListHasItems to false
						
					end if
				end if
				
				if (count of subObjects) is greater than 0 then
					
					repeat with oneSubObject in subObjects
						set subObjectInfo to my getObjectAndSubs({someObjectRef:oneSubObject, subLevel:subLevel + 1} & prefs)
						if outputType is "Record" then
							copy subObjectInfo to end of thisSubObjectList
						else if outputType is "TEXT" then
							if subObjectsListHasItems then
								set thisSubObjectList to thisSubObjectList & subList_BetweenAdjacent
							else
								set subObjectsListHasItems to true
							end if
							set thisSubObjectList to thisSubObjectList & subList_BeforeEach & subObjectInfo
						end if
					end repeat
					
					-- had sub-objects, so need to put on ending string:
					if outputType is "TEXT" then
						set thisSubObjectList to thisSubObjectList & "¬" & return & indentString & "}"
					end if
				end if
				
			on error errMsg number errNum
				if errNum is -128 then error -128
				-- had no sub-objects, so list will be/remain empty				
				if outputType is "TEXT" then set thisSubObjectList to "missing value"
			end try
			
			
			
		end if
		
		
		if outputType is "Record" then
			return {objClass:thisObjClass, objName:thisObjectName, objRef:someObjectRef, objInfo:thisObjectInfo, subObjList:thisSubObjectList}
		else if outputType is "TEXT" then
			
			(*  CANNOT make uppercase until we figure out how to preserve classes without chevrons... 2016-10-21 ( dshockley )
			-- make the class uppercase for legibility:
			set thisObjClass to my coerceToString(thisObjClass)
			set thisObjClass to do shell script "echo " & quoted form of thisObjClass & " | tr [:lower:] [:upper:]"
			*)
			
			set resultString to ""
			set resultString to resultString & ¬
				"{objClass: " & my coerceToString(thisObjClass) & ", ¬"
			
			set resultString to resultString & return & ¬
				indentString & "objName: " & my quoteString(thisObjectName) & ", ¬"
			
			set resultString to resultString & return & ¬
				indentString & "objRef: " & my coerceToString(someObjectRef) & ", ¬"
			
			set resultString to resultString & return & ¬
				indentString & "objInfo: " & my coerceToString(thisObjectInfo) & ", ¬"
			
			if thisSubObjectList is null then
				set resultString to resultString & return & ¬
					indentString & "subObjList: " & thisSubObjectList & " ¬"
			else if (count of thisSubObjectList) is 0 then
				set resultString to resultString & return & ¬
					indentString & "subObjList: " & thisSubObjectList & " ¬"
			else
				set resultString to resultString & return & ¬
					indentString & "subObjList: " & thisSubObjectList & " ¬"
				(* 
					set resultString to resultString & return & ¬
					indentString & "subObjList: ¬" & return & thisSubObjectList & " ¬"
				*)
				
			end if
			
			set resultString to resultString & return & indentString & "}"
			
			return resultString
			
		end if
		
	end tell
	
end getObjectAndSubson getResourcePath(prefs)
	-- version 1.2
	
	try
		set defaultPrefs to {resourceName:"", subDirectoryName:"", subDirectoryList:{}}
		
		set prefs to prefs & defaultPrefs
		
		set myPath to (path to me) as string
		
		if myPath ends with ".scpt" then
			-- running the script file within AppleScript Editor while testing, so relative path:
			set {od, AppleScript's text item delimiters} to {AppleScript's text item delimiters, ":"}
			set resourcesFolderPath to ((text items 1 thru -3 of myPath) as string) & ":"
			set AppleScript's text item delimiters to od
			
			if length of subDirectoryName of prefs > 0 then
				-- subDirectoryName specified, so look there
				set resourcePath to (resourcesFolderPath & subDirectoryName of prefs & ":" & resourceName of prefs) as string
				
			else if length of subDirectoryList of prefs > 0 then
				-- list of subDirectory names is specified, look inside that
				set {oldDelims, AppleScript's text item delimiters} to {AppleScript's text item delimiters, {":"}}
				set subDirectoryNestedName to subDirectoryList of prefs as text
				set AppleScript's text item delimiters to oldDelims
				set resourcePath to (resourcesFolderPath & subDirectoryNestedName & ":" & resourceName of prefs) as string
				
			else
				-- no subDirectory specified
				set resourcePath to (resourcesFolderPath & resourceName of prefs) as string
			end if
			
		else
			-- running as APP, so get resource path:
			if length of subDirectoryName of prefs > 0 then
				-- subDirectoryName specified, so look there
				set resourcePath to ((path to resource resourceName of prefs in directory (subDirectoryName of prefs)) as string)
				
			else if length of subDirectoryList of prefs > 0 then
				-- list of subDirectory names is specified, look inside that
				set {oldDelims, AppleScript's text item delimiters} to {AppleScript's text item delimiters, {":"}}
				set subDirectoryNestedName to subDirectoryList of prefs as text
				set AppleScript's text item delimiters to oldDelims
				set resourcePath to ((path to resource resourceName of prefs in directory subDirectoryNestedName) as string)
				
			else
				-- no subDirectory specified
				set resourcePath to ((path to resource resourceName of prefs) as string)
			end if
		end if
		
		return resourcePath
		
	on error errMsg number errNum
		error "Couldn't getResourcePath - " & errMsg number errNum
	end try
	
end getResourcePathon clickAtCoords(xClick, yClick)
	-- version 1.4
	try
		set xClick to round xClick rounding down
		set yClick to round yClick rounding down
		if xClick is less than 0 then set xClick to "=" & xClick
		if yClick is less than 0 then set yClick to "=" & yClick
		set shellCommand to quoted form of clickCommandPosix & " -r m:" & xClick & "," & yClick & " c:" & xClick & "," & yClick
		do shell script shellCommand
		return (xClick & "," & yClick) as string
	on error errMsg number errNum
		error "unable to clickAtCoords - " & errMsg number errNum
	end try
end clickAtCoordson clickObjectByCoords(someObject)
	-- version 1.2
	
	set someObject to ensureObjectRef(someObject)
	
	try
		tell application "System Events"
			set {xCoord, yCoord} to position of someObject
			set {xSize, ySize} to size of someObject
		end tell
		set objOffset to round (minNum({xSize, ySize}) / 2) rounding down
		
		
		set xClick to xCoord + objOffset
		set yClick to yCoord + objOffset
		
		
		return clickAtCoords(xClick, yClick)
	on error errMsg number errNum
		error "unable to clickObjectByCoords - " & errMsg number errNum
	end try
end clickObjectByCoordson fmGUI_ObjectClick_AffectsWindow(buttonRef)
	-- version 1.0
	
	using terms from application "System Events"
		my clickObjectByCoords(buttonRef)
	end using terms from
	
end fmGUI_ObjectClick_AffectsWindowon fmGUI_ObjectClick_Button(prefs)
	-- version 1.3
	
	set defaultPrefs to {buttonName:null, buttonRef:null, windowContextRef:null, windowNameThatCloses:null, windowNameThatOpens:null}
	set prefs to prefs & defaultPrefs
	set buttonRef to ensureObjectRef(buttonRef of prefs)
	set windowNameThatCloses to windowNameThatCloses of prefs
	set windowNameThatOpens to windowNameThatOpens of prefs
	set windowContextRef to ensureObjectRef(windowContextRef of prefs)
	
	try
		fmGUI_AppFrontMost()
		
		
		-- ensure windowContext
		if windowContextRef is null then
			tell application "System Events"
				tell process "FileMaker Pro"
					set windowContextRef to window 1
				end tell
			end tell
		end if
		
		-- use the most commonly found button reference ( unless specified )
		if buttonRef is null then
			tell application "System Events"
				tell process "FileMaker Pro"
					set buttonRef to button (buttonName of prefs) of windowContextRef
				end tell
			end tell
		end if
		
		
		-- click button		
		clickObjectByCoords(buttonRef)
		
		
		-- wait for window
		if windowNameThatCloses is not null then windowWaitUntil_FrontNotIS({windowName:windowNameThatCloses})
		if windowNameThatOpens is not null then windowWaitUntil_FrontIS({windowName:windowNameThatOpens})
		
		return true
	on error errMsg number errNum
		error "Unable to fmGUI_ObjectClick_Button - " & errMsg number errNum
	end try
end fmGUI_ObjectClick_Buttonon fmGUI_ObjectClick_CancelButton(prefs)
	-- version 1.1
	
	try
		return fmGUI_ObjectClick_Button({buttonName:"Cancel"} & prefs)
	on error errMsg number errNum
		error "Unable to fmGUI_ObjectClick_CancelButton - " & errMsg number errNum
	end try
end fmGUI_ObjectClick_CancelButtonon fmGUI_ObjectClick_ClearButton(prefs)
	-- version 1.0
	
	try
		return fmGUI_ObjectClick_Button({buttonName:"Clear"} & prefs)
	on error errMsg number errNum
		error "Unable to fmGUI_ObjectClick_ClearButton - " & errMsg number errNum
	end try
end fmGUI_ObjectClick_ClearButtonon fmGUI_ObjectClick_OkButton(prefs)
	-- version 1.1
	
	try
		return fmGUI_ObjectClick_Button({buttonName:"OK"} & prefs)
	on error errMsg number errNum
		error "Unable to fmGUI_ObjectClick_OkButton - " & errMsg number errNum
	end try
end fmGUI_ObjectClick_OkButtonon fmGUI_ObjectClick_SelectButton(prefs)
	-- version 1.0
	
	try
		return fmGUI_ObjectClick_Button({buttonName:"Select"} & prefs)
	on error errMsg number errNum
		error "Unable to fmGUI_ObjectClick_SelectButton - " & errMsg number errNum
	end try
end fmGUI_ObjectClick_SelectButtonon fmGUI_ObjectClick_SignInButton(prefs)
	-- version 1.0
	
	try
		return fmGUI_ObjectClick_Button({buttonName:"Sign In"} & prefs)
	on error errMsg number errNum
		error "Unable to fmGUI_ObjectClick_SignInButton - " & errMsg number errNum
	end try
end fmGUI_ObjectClick_SignInButtonon coerceToString(incomingObject)
	-- version 2.2
	
	if class of incomingObject is string then
		set {text:incomingObject} to (incomingObject as string)
		return incomingObject
	else if class of incomingObject is integer then
		set {text:incomingObject} to (incomingObject as string)
		return incomingObject as string
	else if class of incomingObject is real then
		set {text:incomingObject} to (incomingObject as string)
		return incomingObject as string
	else if class of incomingObject is Unicode text then
		set {text:incomingObject} to (incomingObject as string)
		return incomingObject as string
	else
		-- LIST, RECORD, styled text, or unknown
		try
			try
				set some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D of "XXXX" to "some_UUID_Value_54F827C7379E4073B5A216BB9CDE575D"
				
				-- GENERATE the error message for a known 'object' (here, a string) so we can get 
				-- the 'lead' and 'trail' part of the error message
			on error errMsg number errNum
				set {oldDelims, AppleScript's text item delimiters} to {AppleScript's text item delimiters, {"\"XXXX\""}}
				set {errMsgLead, errMsgTrail} to text items of errMsg
				set AppleScript's text item delimiters to oldDelims
			end try
			
			-- now, generate error message for the SPECIFIED object: 
			set some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D of incomingObject to "some_UUID_Value_54F827C7379E4073B5A216BB9CDE575D"
			
			
		on error errMsg
			if errMsg starts with "System Events got an error: Can’t make some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D of " and errMsg ends with "into type specifier." then
				set errMsgLead to "System Events got an error: Can’t make some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D of "
				set errMsgTrail to " into type specifier."
				
				set {od, AppleScript's text item delimiters} to {AppleScript's text item delimiters, errMsgLead}
				
				set objectString to text item 2 of errMsg
				set AppleScript's text item delimiters to errMsgTrail
				
				set objectString to text item 1 of objectString
				set AppleScript's text item delimiters to od
				
				
				
			else
				--tell me to log errMsg
				set objectString to errMsg
				
				if objectString contains errMsgLead then
					set {od, AppleScript's text item delimiters} to {AppleScript's text item delimiters, errMsgLead}
					set objectString to text item 2 of objectString
					set AppleScript's text item delimiters to od
				end if
				
				if objectString contains errMsgTrail then
					set {od, AppleScript's text item delimiters} to {AppleScript's text item delimiters, errMsgTrail}
					set AppleScript's text item delimiters to errMsgTrail
					set objectString to text item 1 of objectString
					set AppleScript's text item delimiters to od
				end if
				
				--set {text:objectString} to (objectString as string) -- what does THIS do?
			end if
		end try
		
		return objectString
	end if
end coerceToStringon ensureObjectRef(someObjectRef)
	
	tell application "System Events"
		
		if class of someObjectRef is equal to class of "fakestring" then
			set objCode to "script someObject" & return & ¬
				"tell app \"System Events\" to " & someObjectRef & return & ¬
				"end script" & return & ¬
				"run someObject"
			
			set someObjectRef to run script objCode
			
		end if
		
		return someObjectRef
		
	end tell
	
end ensureObjectRefon getTextAfter(sourceText, afterThis)
	-- version 1.2
	
	try
		set {oldDelims, AppleScript's text item delimiters} to {AppleScript's text item delimiters, {afterThis}}
		
		if (count of text items of sourceText) is 1 then
			-- the split-string didn't appear at all
			set AppleScript's text item delimiters to oldDelims
			return ""
		else
			set the resultAsList to text items 2 thru -1 of sourceText
		end if
		set AppleScript's text item delimiters to {afterThis}
		set finalResult to resultAsList as string
		set AppleScript's text item delimiters to oldDelims
		return finalResult
	on error errMsg number errNum
		set AppleScript's text item delimiters to oldDelims
		return "" -- return nothing if the stop text is not found
	end try
end getTextAfteron getTextBefore(sourceTEXT, stopHere)
	-- version 1.1
	
	try
		set {oldDelims, AppleScript's text item delimiters} to {AppleScript's text item delimiters, stopHere}
		if (count of text items of sourceTEXT) is 1 then
			set AppleScript's text item delimiters to oldDelims
			return ""
		else
			set the finalResult to text item 1 of sourceTEXT
		end if
		set AppleScript's text item delimiters to oldDelims
		return finalResult
	on error errMsg number errNum
		set AppleScript's text item delimiters to oldDelims
		return "" -- return nothing if the stop text is not found
	end try
end getTextBeforeon getTextBetween(prefs)
	-- version 1.7.1
	
	set defaultPrefs to {sourceTEXT:null, beforeText:null, afterText:null, textItemNum:2, includeMarkers:false}
	
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
		
		-- there may be multiple instances of beforeTEXT, so get everything after the first instance
		set prefixRemoved to text items textItemNum thru -1 of sourceTEXT
		set prefixRemoved to prefixRemoved as string
		
		-- get everything up to the afterTEXT
		set AppleScript's text item delimiters to afterText
		set the finalResult to text item 1 of prefixRemoved
		
		-- reset item delim
		set AppleScript's text item delimiters to oldDelims
		
		if includeMarkers then set finalResult to beforeText & finalResult & afterText
	on error errMsg number errNum
		set AppleScript's text item delimiters to oldDelims
		set the finalResult to "" -- return nothing if the surrounding text is not found
	end try
	
	return finalResult
end getTextBetweenon parseChars(prefs)
	-- version 1.3
	
	set defaultPrefs to {considerCase:true}
	
	
	if class of prefs is list then
		if (count of prefs) is greater than 2 then
			-- get any parameters after the initial 3
			set prefs to {sourceTEXT:item 1 of prefs, parseString:item 2 of prefs, considerCase:item 3 of prefs}
		else
			set prefs to {sourceTEXT:item 1 of prefs, parseString:item 2 of prefs}
		end if
		
	else if class of prefs is not equal to (class of {someKey:3}) then
		-- Test by matching class to something that IS a record to avoid FileMaker namespace conflict with the term "record"
		
		error "The parameter for 'parseChars()' should be a record or at least a list. Wrap the parameter(s) in curly brackets for easy upgrade to 'parseChars() version 1.3. " number 1024
		
	end if
	
	
	set prefs to prefs & defaultPrefs
	
	
	set sourceTEXT to sourceTEXT of prefs
	set parseString to parseString of prefs
	set considerCase to considerCase of prefs
	
	
	set oldDelims to AppleScript's text item delimiters
	try
		set AppleScript's text item delimiters to the {parseString as string}
		
		if considerCase then
			considering case
				set the parsedList to every text item of sourceTEXT
			end considering
		else
			ignoring case
				set the parsedList to every text item of sourceTEXT
			end ignoring
		end if
		
		set AppleScript's text item delimiters to oldDelims
		return parsedList
	on error errMsg number errNum
		try
			set AppleScript's text item delimiters to oldDelims
		end try
		error "ERROR: parseChars() handler: " & errMsg number errNum
	end try
end parseCharson quoteString(someString)
	-- version 1.1, Daniel A. Shockley
	
	set charDQ to ASCII character 34 -- double-quote character
	set charBS to ASCII character 92 -- backslash character
	set escapedDQ to charBS & charDQ
	set escapedBS to charBS & charBS
	set someString to replaceSimple({someString, charBS, escapedBS})
	set someString to replaceSimple({someString, charDQ, escapedDQ})
	set someString to charDQ & someString & charDQ
	
	return someString
	
end quoteStringon removeAllWhitespace(prefs)
	-- version 1.0
	
	set defaultPrefs to {str:null}
	set prefs to prefs & defaultPrefs
	set str to str of prefs
	
	try
		if str is null then return str
		
		set whiteSpaceAsciiNumbers to {13, 10, 32, 9} -- characters that count as whitespace.
		
		repeat with oneNum in whiteSpaceAsciiNumbers
			set oneNum to contents of oneNum
			set str to replaceSimple({sourceTEXT:str, oldChars:ASCII character oneNum, newChars:""})
		end repeat
		
		return str
	on error errMsg number errNum
		error "unable to removeAllWhitespace - " & errMsg number errNum
	end try
end removeAllWhitespaceon repeatString(prefs)
	-- version 1.0, Daniel A. Shockley
	
	set defaultPrefs to {someString:null, repeatCount:1, separator:""}
	set prefs to prefs & defaultPrefs
	
	set outputList to {}
	repeat with i from 1 to repeatCount of prefs
		copy someString of prefs to end of outputList
	end repeat
	
	
	return unParseChars(outputList, separator of prefs)
	
end repeatStringon replaceSimple(prefs)
	-- version 1.4
	
	set defaultPrefs to {considerCase:true}
	
	if class of prefs is list then
		if (count of prefs) is greater than 3 then
			-- get any parameters after the initial 3
			set prefs to {sourceTEXT:item 1 of prefs, oldChars:item 2 of prefs, newChars:item 3 of prefs, considerCase:item 4 of prefs}
		else
			set prefs to {sourceTEXT:item 1 of prefs, oldChars:item 2 of prefs, newChars:item 3 of prefs}
		end if
		
	else if class of prefs is not equal to (class of {someKey:3}) then
		-- Test by matching class to something that IS a record to avoid FileMaker namespace conflict with the term "record"
		
		error "The parameter for 'replaceSimple()' should be a record or at least a list. Wrap the parameter(s) in curly brackets for easy upgrade to 'replaceSimple() version 1.3. " number 1024
		
	end if
	
	
	set prefs to prefs & defaultPrefs
	
	
	set considerCase to considerCase of prefs
	set sourceTEXT to sourceTEXT of prefs
	set oldChars to oldChars of prefs
	set newChars to newChars of prefs
	
	set sourceTEXT to sourceTEXT as string
	
	set oldDelims to AppleScript's text item delimiters
	set AppleScript's text item delimiters to the oldChars
	if considerCase then
		considering case
			set the parsedList to every text item of sourceTEXT
			set AppleScript's text item delimiters to the {(newChars as string)}
			set the newText to the parsedList as string
		end considering
	else
		ignoring case
			set the parsedList to every text item of sourceTEXT
			set AppleScript's text item delimiters to the {(newChars as string)}
			set the newText to the parsedList as string
		end ignoring
	end if
	set AppleScript's text item delimiters to oldDelims
	return newText
	
end replaceSimpleon textLower(prefs)
	-- version 1.0
	
	try
		set defaultPrefs to {str:""}
		set prefs to prefs & defaultPrefs
		
		return (do shell script ("echo " & str of prefs & " | tr A-Z a-z;"))
	on error errMsg number errNum
		error "unable to textLower - " & errMsg number errNum
	end try
end textLoweron textUpper(prefs)
	-- version 1.0
	
	try
		set defaultPrefs to {str:""}
		set prefs to prefs & defaultPrefs
			
		return (do shell script ("echo " & str of prefs & " | tr a-z A-Z;"))
	on error errMsg number errNum
		error "unable to textUpper - " & errMsg number errNum
	end try
end textUpperon trimWhitespace(inputString)
	-- version 1.2: 
	
	set whiteSpaceAsciiNumbers to {13, 10, 32, 9}  -- characters that count as whitespace.
	
	set textLength to length of inputString
	if textLength is 0 then return ""
	set endSpot to -textLength -- if only whitespace is found, will chop whole string
	
	-- chop from end
	set i to -1
	repeat while -i is less than or equal to textLength
		set testChar to text i thru i of inputString
		if whiteSpaceAsciiNumbers does not contain (ASCII number testChar) then
			set endSpot to i
			exit repeat
		end if
		set i to i - 1
	end repeat
	
	
	if -endSpot is equal to textLength then
		if whiteSpaceAsciiNumbers contains (ASCII number testChar) then return ""
	end if
	
	set inputString to text 1 thru endSpot of inputString
	set textLength to length of inputString
	set newStart to 1
	
	-- chop from beginning
	set i to 1
	repeat while i is less than or equal to textLength
		set testChar to text i thru i of inputString
		if whiteSpaceAsciiNumbers does not contain (ASCII number testChar) then
			set newStart to i
			exit repeat
		end if
		set i to i + 1
	end repeat
	
	set inputString to text newStart thru textLength of inputString
	
	return inputString
	
end trimWhitespaceon unParseChars(thisList, newDelim)
	-- version 1.2
	
	set oldDelims to AppleScript's text item delimiters
	try
		set AppleScript's text item delimiters to the {newDelim as string}
		set the unparsedText to thisList as string
		set AppleScript's text item delimiters to oldDelims
		return unparsedText
	on error errMsg number errNum
		try
			set AppleScript's text item delimiters to oldDelims
		end try
		error "ERROR: unParseChars() handler: " & errMsg number errNum
	end try
end unParseCharson upperFirstLetter(prefs)
	-- version 1.1
	
	try
		set defaultPrefs to {str:""}
		set prefs to prefs & defaultPrefs
	
			
		set firstLetter to text 1 of str of prefs
		set remainingString to text 2 thru -1 of str of prefs
		
		return textUpper({str:firstLetter}) & remainingString
	on error errMsg number errNum
		error "unable to upperFirstLetter - " & errMsg number errNum
	end try
end upperFirstLetteron versionCompare(prefs)
	
	set defaultPrefs to {v1:null, v2:null, delim:"."}
	set prefs to prefs & defaultPrefs
	
	set {od, AppleScript's text item delimiters} to {AppleScript's text item delimiters, delim of prefs}
	set {v1_list, v2_list} to {every text item of v1 of prefs, every text item of v2 of prefs}
	set AppleScript's text item delimiters to od
	
	set {v1_count, v2_count} to {count of v1_list, count of v2_list}
	if v1_count is greater than v2_count then
		set maxCount to v1_count
	else
		set maxCount to v2_count
	end if
	
	set versionResult to ""
	repeat with i from 1 to maxCount
		if versionResult is not "" then exit repeat
		if i ≤ v1_count then
			set v1_part to item i of v1_list
		else
			set v1_part to 0
		end if
		if i ≤ v2_count then
			set v2_part to item i of v2_list
		else
			set v2_part to 0
		end if
		
		
		try
			--log ("v1_part: " & v1_part & "   | v2_part: " & v2_part)
			if (v1_part as number) is greater than (v2_part as number) then
				set versionResult to 1
			else if (v1_part as number) is less than (v2_part as number) then
				set versionResult to -1
			else
				-- the two versions are the same, so continue
			end if
		on error
			set versionResult to "?"
		end try
		
		
	end repeat
	
	if versionResult is "" then set versionResult to 0
	
	return versionResult
	
end versionCompare
