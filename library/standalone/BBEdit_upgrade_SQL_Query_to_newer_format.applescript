-- BBEdit_upgrade_SQL_Query_to_newer_format({})
-- Dan Shockley, NYHTC
-- BBEdit - upgrade SQL Query to newer format

(*
HISTORY:
	1.0 - 2017-09-15 ( dshockley ): first created. 
*)


on run
	BBEdit_upgrade_SQL_Query_to_newer_format({})
end run

--------------------
-- START OF CODE
--------------------

on BBEdit_upgrade_SQL_Query_to_newer_format({})
	
	set regexSearch_SQL_Table to "Quote *\\( *TableNameOfField *\\( *([^\\)]+) \\) *\\)"
	set regexReplace_SQL_Table to "SQL_Table ( \\1 )"
	
	set regexSearch_SQL_Field to "Quote *\\( ?FieldNameShort *\\( *([^\\)]+) \\) *\\)"
	set regexReplace_SQL_Field to "SQL_Field ( \\1 )"
	
	
	
	set regexSearch_WhereEqualsClause to "^([\\t ]*)& *SQL_Field *\\( *([^\\)]+)\\) 
[\\t ]*& \" = \" 
[\\t ]*& ([^\\r]+)\\r"
	
	set regexReplace_WhereEqualsClause to "\\1\\& SQL_Where ( \\2 ; \"=\" ; \\3 )\\r"
	
	
	tell application "BBEdit"
		activate
		
		tell window 1
			
			replace regexSearch_SQL_Table using regexReplace_SQL_Table options {search mode:grep, starting at top:true}
			
			replace regexSearch_SQL_Field using regexReplace_SQL_Field options {search mode:grep, starting at top:true}
			
			replace regexSearch_WhereEqualsClause using regexReplace_WhereEqualsClause options {search mode:grep, starting at top:true}
			
		end tell
		
		
	end tell
end BBEdit_upgrade_SQL_Query_to_newer_format

--------------------
-- END OF CODE
--------------------
