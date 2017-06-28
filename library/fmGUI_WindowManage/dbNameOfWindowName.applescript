-- dbNameOfWindowName(someWindowName)
-- Dan Shockley, NYHTC
-- return the database name of the specified window


(*
HISTORY:
	1.4 - 2017-01-13 ( eshagdar ): updated for FM15 - handle script workspace
	1.3 - handle specially-named windows ("Manage xxx for…" and so on)
	1.2 - fix to work when the Edit Script script name has parentheses ITSELF.
	1.1 - works when Manage Scripts or Manage Layouts is open and in front.
	

REQUIRES:
	getTextBetween
	parseChars
*)


on run
	tell application "FileMaker Pro Advanced" to set frontmostWindowName to name of window 1
	dbNameOfWindowName(frontmostWindowName)
end run

--------------------
-- START OF CODE
--------------------

on dbNameOfWindowName(someWindowName)
	-- version 1.4
	
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
	
	set {beforeDB, afterDB} to {"Script Workspace (", ")"} -- parentheses
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
	
end dbNameOfWindowName

--------------------
-- END OF CODE
--------------------

on getTextBetween({sourceTEXT, beforeText, afterText})
	tell application "htcLib" to getTextBetween({sourceTEXT, beforeText, afterText})
end getTextBetween

on parseChars(prefs)
	tell application "htcLib" to parseChars(prefs)
end parseChars