-- parseChars({sourceTEXT:"", parseString:"", considerCase:""})
-- Daniel A. Shockley, http://www.danshockley.com
-- makes a list from a sourceTEXT based on some paseString delimiter


(*
HISTORY:
	1.3 - default is to consider case; single-param instead of two 
	1.0 - created
*)


on run
	parseChars({sourceTEXT:"bob is here. He is ready.", parseString:"is"})
end run


--------------------
-- START OF CODE
--------------------

on parseChars(prefs)
	-- version 1.3, Daniel A. Shockley, http://www.danshockley.com
	
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
end parseChars


--------------------
-- END OF CODE
--------------------
