-- «handler name with ALL params»
-- «Creator», «Organization/company/creation location»
-- «Description of the function»


(*
HISTORY:
	1.0 - created
*)


on run
	someHandler(someSampleParam)
end run


--------------------
-- START OF CODE
--------------------

on someHandler(someParam)
	-- version «current version»
	
	return true
end someHandler
--------------------
-- END OF CODE
--------------------

on someHelperFunction(prefs)
return "helper code goes here. Generally this is just a slug that calls the same function in main.scpt"
end