-- someAwesomeHandlerName({«full_list_of_params_for_handler_with_default_values»})
-- «Original Author», «Organization/Company/creation location»
-- «description»


(*
HISTORY:
	1.1 - «ISO8601 date» ( «author» ) - «version changes»
	1.0 - «ISO8601 date» ( «author» ) - first created


TODO:
	- «improvements or things to fix»
	- «another improvements or things to fix»


REQUIRES:
	«list of handlers required»
	«list of handlers required»
*)


property helper : ""

on run
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of ((path to me) as string)
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to do shell script "dirname " & quoted form of POSIX path of pathHelper
	set pathHelper to POSIX file (pathHelper & "/main.scpt") as string
	set helper to load script file pathHelper
	
	someAwesomeHandlerName({someAmazingParamName:"sample value", anotherDescriptiveParamName:"value"})
end run


--------------------
-- START OF CODE
--------------------

on someAwesomeHandlerName(prefs)
	-- version «current_version»
	
	set defaultPrefs to {someAmazingParamName:null, anotherDescriptiveParamName:null}
	set prefs to prefs & defaultPrefs
	
	(* «handler logic goes here» *)
	
	return true
	
end someAwesomeHandlerName

--------------------
-- END OF CODE
--------------------

on someRequiredHandler(prefs)
	return "helper code goes here. Generally this is just a slug that calls the same function in main.scpt"
end someRequiredHandler
