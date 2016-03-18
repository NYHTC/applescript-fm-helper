-- windowWaitUntil_FrontIS(windowName:"", windowNameTest:"", whichWindow:"", waitCycleDelaySeconds:"", waitCycleMax:"")
-- Daniel A. Shockely, NYHTC
-- keep checking until the frontmost window matches specified criteria.


(*
HISTORY:
	1.0 - created


REQUIRES:
	windowWaitUntil
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	windowWaitUntil({windowName:"Times Square"})
end run
	


--------------------
-- START OF CODE
--------------------

on windowWaitUntil_FrontIS(prefs)
	-- version 1.0
	
	set defaultPrefs to {windowName:null, windowNameTest:"is", whichWindow:"front", waitCycleDelaySeconds:0.1, waitCycleMax:100}
	set prefs to prefs & defaultPrefs
		
	return windowWaitUntil(prefs)
	
	
end windowWaitUntil_FrontIS

--------------------
-- END OF CODE
--------------------

on windowWaitUntil(prefs)
	tell helper to windowWaitUntil(prefs)
end encodeCharForURL