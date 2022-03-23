-- FM Object Deployer
-- v 2021-12-21, Daniel A. Shockley

(* 
DESCRIPTION: 
	Deploys one (or more?) objects into OPEN FileMaker Pro databases (or return-delimited list). 
	Workflow:
	 - user picks an XML file containing the object(s).
	 - user enters a return-delimited list
	 - for each object, the script:
	   - finds existing object, replacing its content, or creates it


HISTORY: 

	2021-12-21 ( dshockley ): created. NOT YET DEVELOPED!!! 
	
*)


property ScriptName : "fmObjectDeployer"

----------------------------------------------------------------------
-- DEBUG STATES:
----------------------------------------------------------------------
property debugMode : true


