-- readXMLFile({posixPath:null})
-- Erik Shagdar
-- Get XML contents ( starting at the root ) at the specified POSIX path


(*
HISTORY:
	1.0 - 2018-04-16 ( eshagdar ): created
*)


on run
	
	readXMLFile({posixPath:"/my/fake/path/someFile.xml"})
end run

--------------------
-- START OF CODE
--------------------

on readXMLFile(prefs)
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
end readXMLFile

--------------------
-- END OF CODE
--------------------
