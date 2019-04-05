-- BBEdit_upgrade_SQL_Query_to_newer_format({})
-- Dan Shockley, NYHTC
-- BBEdit - upgrade SQL Query to newer format

(*
HISTORY:
	1.5 - 2019-04-05 ( dshockley ): Added literalSearch_SpacesToTabs. Fixed "using List for query". Other minor changes. Disabled RemoveExtraSpacesBeforeSemicolon. Added RemoveSpacesBetweenLeadingTabsAndSemicolon. 
	1.4 - 2019-01-02 ( dshockley ): Added ExecuteOLD, QuotedPilcrow, IfSqlResultOLD, queryDebugOLD. 
	1.3 - 2018-09-04 ( dshockley ): Added regex to remove extra spaces before semicolons. Fix for optional space at end of SQL_Field line in whereEqualsClause regex search. 
	1.2 - 2018-05-22 ( dshockley ): modified to also convert the query to use List to separate the components of the query. 
	1.1 - 2017-12-11 ( dshockley ): disable the usually no-longer-needed SQL_EscapeString, but WARN and comment, since it might sitll be needed when using with something OTHER THAN SQL_Where criteria. 
	1.0 - 2017-09-15 ( dshockley ): first created. 
*)


on run
	BBEdit_upgrade_SQL_Query_to_newer_format({})
end run

--------------------
-- START OF CODE
--------------------

on BBEdit_upgrade_SQL_Query_to_newer_format({})
	
	set regexSearch_SQL_Table to "Quote *\\( *TableNameOfField *\\( *([^\\)]+) *\\) *\\)"
	set regexReplace_SQL_Table to "SQL_Table ( \\1 )"
	
	set regexSearch_SQL_Field to "Quote *\\( ?FieldNameShort *\\( *([^\\)]+) *\\) *\\)"
	set regexReplace_SQL_Field to "SQL_Field ( \\1 )"
	
	
	set regexSearch_WhereEqualsClause to "^([\\t ]*)& *SQL_Field *\\( *([^\\)]+) *\\) *\\r[\\t ]*& \" *([=<>²³­]+) *\" ?\\r[\\t ]*& ([^\\r\\n]+)\\r"
	
	set regexReplace_WhereEqualsClause to "\\1\\& SQL_Where ( \\2 ; \"\\3\" ; \\4 )\\r"
	
	
	set regexSearch_EscapeStringWARN to "SQL_EscapeString *\\( *([^\\)]+) *\\)"
	
	set regexReplace_EscapeStringWARN to "\\1 /* WARNING!! Had SQL_EscapeString probably NO LONGER NEEDED, so DISABLED! */"
	
	-- NOT SURE THIS IS NEEDED (or a good idea, since there might be matching DESIRED patterns inside quotes):				
	--	set regexSearch_RemoveExtraSpacesBeforeSemicolon to "([^;])  +;"
	--	set regexReplace_RemoveExtraSpacesBeforeSemicolon to "\\1 ;"
	
	set regexSearch_RemoveSpacesBetweenLeadingTabsAndSemicolon to "^([	]+)[ ]+;"
	set regexReplace_RemoveSpacesBetweenLeadingTabsAndSemicolon to "\\1;"
	
	set literalSearch_SpacesToTabs to "       "
	set literalReplace_SpacesToTabs to ASCII character 9
	
	set literalSearch_ExecuteOLD to "sqlResult = HTC_ExecuteFileSQL ( sqlQuery; \"\"; \";\"; \"¦\" )"
	set literalReplace_ExecuteOLD to "sqlResult = HTC_ExecuteFileSQL ( sqlQuery ; \"\" ; \";\" ; Char ( 13 ) )"
	
	set literalSearch_IfSqlResultOLD to "If ( sqlResult = \"?\"; \"\"; sqlResult )"
	set literalReplace_IfSqlResultOLD to "If ( sqlResult = \"?\" ; \"\" ; sqlResult )"
	
	set literalSearch_queryDebugOLD1 to "sqlQuery & \"¦==========¦¦\" &"
	set literalSearch_queryDebugOLD2 to "sqlQuery & \"¦==========¦\" &"
	set literalReplace_queryDebugOLD to "sqlQuery & Char ( 13 ) &  \"==========\" & Char ( 13 ) &" & return
	
	set literalSearch_QuotedPilcrow to "\"¦\""
	set literalReplace_QuotedPilcrow to "Char ( 13 )"
	
	
	tell application "BBEdit"
		activate
		
		tell window 1
			
			replace literalSearch_SpacesToTabs using literalReplace_SpacesToTabs options {search mode:literal, starting at top:true}
			
			replace regexSearch_SQL_Table using regexReplace_SQL_Table options {search mode:grep, starting at top:true}
			
			replace regexSearch_SQL_Field using regexReplace_SQL_Field options {search mode:grep, starting at top:true}
			
			replace regexSearch_WhereEqualsClause using regexReplace_WhereEqualsClause options {search mode:grep, starting at top:true}
			
			replace regexSearch_EscapeStringWARN using regexReplace_EscapeStringWARN options {search mode:grep, starting at top:true}
			
			replace regexSearch_RemoveSpacesBetweenLeadingTabsAndSemicolon using regexReplace_RemoveSpacesBetweenLeadingTabsAndSemicolon options {search mode:grep, starting at top:true}
			
			
			
			-- NOT SURE THIS IS NEEDED (or a good idea, since there might be matching DESIRED patterns inside quotes):			
			--			replace regexSearch_RemoveExtraSpacesBeforeSemicolon using regexReplace_RemoveExtraSpacesBeforeSemicolon options {search mode:grep, starting at top:true}
			
			replace literalSearch_ExecuteOLD using literalReplace_ExecuteOLD options {search mode:literal, starting at top:true}
			replace literalSearch_IfSqlResultOLD using literalReplace_IfSqlResultOLD options {search mode:literal, starting at top:true}
			replace literalSearch_queryDebugOLD1 using literalReplace_queryDebugOLD options {search mode:literal, starting at top:true}
			replace literalSearch_queryDebugOLD2 using literalReplace_queryDebugOLD options {search mode:literal, starting at top:true}
			replace literalSearch_QuotedPilcrow using literalReplace_QuotedPilcrow options {search mode:literal, starting at top:true}
			
			try
				(* convert to using List for query whitespace formatting: *)
				set stringStartQuery to ";? ?sqlQuery = "
				set stringEndQuery to "^([\\t ]+); sqlResult = "
				set posQueryStart to characterOffset of found object of (find stringStartQuery options {search mode:grep, starting at top:true})
				set posQueryEnd to (characterOffset of found object of (find stringEndQuery options {search mode:grep, starting at top:true})) - 1
				select (characters posQueryStart through posQueryEnd)
				
				replace "\"SELECT" using "List ( \\r\\t\\t\\t  \"SELECT" searching in selection options {search mode:grep}
				replace "^([\\t ]+)& " using "\\t\\t\\t; " searching in selection options {search mode:grep}
				
				-- because changing the contents of the selection changes the position of the end, get the new end:
				set posQueryEnd_NEW to (characterOffset of selection) + (length of selection) - 1
				
				set character posQueryEnd_NEW to return & tab & tab & tab & ")" & (contents of character posQueryEnd_NEW) & return
				
			end try
			
		end tell
		
	end tell
	
	
end BBEdit_upgrade_SQL_Query_to_newer_format

--------------------
-- END OF CODE
--------------------
