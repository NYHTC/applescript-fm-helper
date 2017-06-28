-- getFromFMP({fmType:""})
-- Daniel A. Shockley, NYHTC
-- picks up the contents of a field in FileMaker 12 ( should also work on 13 and 14, but is currently untested ) whose layout is called "AppleScript_Transfer-DO_NOT_RENAME"


(*
HISTORY:
	1.8 - removed references to 'someData' 
	1.7 - fixed the bug where 'prefs' is passed as a paramater, but the fmType and someData was picking up values of 'someData' 
	1.6 - switch to 'path to me' since Mavericks BROKE 'name of me' completely 
	1.5 - allow specification of which FileMaker: Pro/Adv/Unk 
	1.4 - 
	1.3 - 
	1.2 - 
	1.1 -
	1.0 - first created
*)


on run
	getFromFMP({fmType:Pro})
end run

--------------------
-- START OF CODE
--------------------

on getFromFMP(prefs)
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
end getFromFMP

--------------------
-- END OF CODE
--------------------
