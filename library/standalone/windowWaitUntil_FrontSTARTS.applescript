-- windowWaitUntil_FrontSTARTS({windowName:"", windowNameTest:"", whichWindow:"", waitCycleDelaySeconds:"", waitCycleMax:""})
-- Daniel A. Shockley, NYHTC
-- keep checking until the frontmost window matches specified criteria.


(*
HISTORY:
	1.0 - created


REQUIRES:
	windowWaitUntil
*)


on run
	windowWaitUntil_FrontSTARTS({windowName:"Times Square"})
end run

--------------------
-- START OF CODE
--------------------

on windowWaitUntil_FrontSTARTS(prefs)
	-- version 1.0
	
	set defaultPrefs to {windowName:null, windowNameTest:"starts with", whichWindow:"front", waitCycleDelaySeconds:0.1, waitCycleMax:100}
	set prefs to prefs & defaultPrefs
	
	return windowWaitUntil(prefs)
	
	
end windowWaitUntil_FrontSTARTS

--------------------
-- END OF CODE
--------------------

on windowWaitUntil(prefs)
	tell application "htcLib" to windowWaitUntil(prefs)
end windowWaitUntil