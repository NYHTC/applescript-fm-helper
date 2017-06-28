-- writeToFile(prefs)
-- Erik Shagdar, NYHTC
-- Write some text to a file


(*
HISTORY:
	1.0 - 2016-06-29 ( eshagdar ): first created
*)


on run
	writeToFile({outputText:"bob"})
	--writeToFile({fileName:"test.txt", fileDirectory:(path to documents folder) as string, outputText:"bob"})
	--writeToFile({fullFilePath:((path to documents folder) as string) & "test.txt", outputText:"bob"})
end run

--------------------
-- START OF CODE
--------------------

on writeToFile(prefs)
	-- version 1.0
	
	set defaultPrefs to {fullFilePath:null, fileName:null, fileDirectory:(path to desktop) as string, outputText:null}
	set prefs to prefs & defaultPrefs
	
	-- determine file path
	if fullFilePath of prefs is not null then
		set outputFile to fullFilePath of prefs
	else if fileName of prefs is not null then
		set outputFile to fileDirectory of prefs & fileName of prefs
	else
		set outputFile to ((path to desktop) as string) & "ASFileWrittenBy_fmGUI.txt"
	end if
	
	
	-- now write output text to file
	try
		set fileReference to open for access file outputFile with write permission
		write outputText of prefs to fileReference
		close access fileReference
	on error
		try
			close access file outputFile
		end try
	end try
end writeToFile

--------------------
-- END OF CODE
--------------------
