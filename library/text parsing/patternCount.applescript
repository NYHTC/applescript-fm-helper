-- patternCount({sourceTEXT:"", searchString:"", considerCase:""})
-- Daniel A. Shockley, http://www.danshockley.com
-- Returns a count of the number of times searchString appears in sourceTEXT (can choose to not consider case).


(*
HISTORY:
	1.2 - default is to consider case.
	1.1 - changed result variable name. 
	1.0 - first created.
*)


on run
	patternCount({sourceTEXT:"fizz,buzz", searchString:"z"})
end run

--------------------
-- START OF CODE
--------------------

on patternCount(prefs)
	-- version 1.2
	
	set defaultPrefs to {considerCase:true}
	
	if class of prefs is list then
		if (count of prefs) is greater than 2 then
			-- get any parameters after the initial 3
			set prefs to {sourceTEXT:item 1 of prefs, searchString:item 2 of prefs, considerCase:item 3 of prefs}
		else
			set prefs to {sourceTEXT:item 1 of prefs, searchString:item 2 of prefs}
		end if
		
	else if class of prefs is not equal to (class of {someKey:3}) then
		-- Test by matching class to something that IS a record to avoid FileMaker namespace conflict with the term "record"
		
		error "The parameter for 'patternCount()' should be a record or at least a list. Wrap the parameter(s) in curly brackets for easy upgrade to 'patternCount() version 1.2. " number 1024
		
	end if
	
	
	set prefs to prefs & defaultPrefs
	
	set searchString to searchString of prefs
	set sourceTEXT to sourceTEXT of prefs
	set considerCase to considerCase of prefs
	
	set {oldDelims, AppleScript's text item delimiters} to {AppleScript's text item delimiters, searchString as string}
	try
		if considerCase then
			considering case
				set patternCountResult to (count of (text items of sourceTEXT)) - 1
			end considering
		else
			ignoring case
				set patternCountResult to (count of (text items of sourceTEXT)) - 1
			end ignoring
		end if
		
		set AppleScript's text item delimiters to oldDelims
		
		return patternCountResult
	on error errMsg number errNum
		try
			set AppleScript's text item delimiters to oldDelims
		end try
		error "ERROR: patternCount() handler: " & errMsg number errNum
	end try
end patternCount

--------------------
-- END OF CODE
--------------------
