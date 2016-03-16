-- logLEVEL(level, someMsg)
-- Daniel A. Shockley http://www.danshockley.com
-- Wrapper for logConsole. Takes a ScriptName property and appends a 'X's to it. Very useful to filtering for messages at various debug levels.

property ScriptName : "logLevelScript_Test"


--------------------
-- START OF CODE
--------------------

on logLEVEL(level, someMsg)
	
	-- Lower number level means more important (scale 1 to 5, for now).
	-- Appends X's to ScriptName - more X's is more important (lower 'level' number).
	-- Reason: can search Console Log for ScriptName_XXXXX to get only most important. 
	
	set maxXcount to 5
	
	set logName to ScriptName & "_"
	
	set xCount to maxXcount - level + 1
	
	repeat with i from 1 to xCount
		set logName to logName & "X"
	end repeat
	
	logConsole(logName, someMsg)
	
end logLEVEL

--------------------
-- END OF CODE
--------------------

on run
	logLEVEL(5, "SomeMessage")
end run


on logConsole(processName, consoleMsg)
	-- version 2.0 - Daniel A. Shockley, http://www.danshockley.com
	
	-- 2.0 - strip out any NULL characters, since that breaks the shell command.
	-- 1.9 - REQUIRES coerceToString to enable logging of objects not directly coercible to string.
	-- 1.8 - coerces to string first (since numbers would not directly convert for 'quoted form'
	-- 1.7 - now works with Leopard by using the "logger" command instead of just appending to log file
	-- 1.6 - the 'space' constant instead of literal spaces for readability, removed trailing space from the hostname command
	-- 1.5 - uses standard date-stamp format	
	
	set consoleMsg to coerceToString(consoleMsg)
	set consoleMsg to replaceSimple({consoleMsg, ASCII character 0, ""}) -- ASCII 0 breaks shell scripting
	if length of consoleMsg is 0 then
		-- we still want this function to log that an empty string was sent:
		set consoleMsg to "[EMPTY STRING]"
	end if
	set shellCommand to "logger" & space & "-t" & space & quoted form of processName & space & quoted form of consoleMsg
	
	do shell script shellCommand
	return shellCommand
	
end logConsole

on coerceToString(incomingObject)
	-- version 2.2, Daniel A. Shockley, Erik Shagdar
	
	-- 2.2 - handle other object references?
	-- 2.1 - Special handling of XML element references - probably need to handle other object references
	-- 2.0 - Fixed a horrifying bug that could modify incoming data by reference; re-worked to use getting a definitely non-existent key instead of trying 'as number' since the old method would fail on lists of numbers (or lists of items that could be coerced to number). Sometimes returns an ellipses, but the error occurs randomly ( returns a 'stack overflow' for references, etc. if that we hit the error ).
	-- 1.9 - needs special handling for single item lists where that item could be gotten 'as number'
	-- 1.8 - instead of trying to store the error message use, generate it
	-- 1.7 -  added "Can't make " with a curly single-quote. 
	-- 1.6 -  can add additional errMsg parts (just add to lists to handle other languages. 
	--             Currently handles English in both 10.3 and 10.4 (10.3 uses " into a number." 
	--             while 10.4 uses " into type number.")
	-- 1.5 -  added Unicode Text
	
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
end coerceToString

on replaceSimple(prefs)
	-- version 1.4, Daniel A. Shockley http://www.danshockley.com
	
	-- 1.4 - Convert sourceText to string, since the previous version failed on numbers. 
	-- 1.3 - The class record is specified into a variable to avoid a namespace conflict when run within FileMaker. 
	-- 1.2 - changes parameters to a record to add option to CONSIDER CASE, since the default changed to ignoring case with Snow Leopard. This handler defaults to CONSIDER CASE = true, since that was what older code expected. 
	-- 1.1 - coerces the newChars to a STRING, since other data types do not always coerce
	--     (example, replacing "nine" with 9 as number replaces with "")
	
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
	
end replaceSimple