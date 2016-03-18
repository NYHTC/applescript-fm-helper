-- logMAIN(someMsg)
-- Daniel A. Shockley http://www.danshockley.com
-- Wrapper for level 0 logLEVEL function. Used to log messages of highest importance.


(*
HISTORY:
	1.0 - created
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	logMAIN("SomeMessage")
end run


--------------------
-- START OF CODE
--------------------

on logMAIN(someMsg)
	-- version 1.0
	
	logLEVEL(0, someMsg) -- log at highest importance
end logMAIN

--------------------
-- END OF CODE
--------------------

on logLEVEL(level, someMsg)
	tell helper to logLEVEL(level, someMsg)
end logLEVEL
