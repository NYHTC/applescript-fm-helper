-- xor(firstBoolean, secondBoolean)
-- Erik Shagdar, NYHTC
-- perform an xor operation on 2 booleans

(*
HISTORY:
	1.0 - 2017-10-17 ( eshagdar ): created
*)


on run
	xor(true, true)    -- returns false
	xor(true, false)    -- returns true
	xor(false, true)    -- returns true
	xor(false, false)    -- returns false
end run

--------------------
-- START OF CODE
--------------------

on xor(firstBoolean, secondBoolean)
	try
		return (firstBoolean or secondBoolean) and (firstBoolean ­ secondBoolean)
	on error errMsg number errNum
		error "unable to xor - " & errMsg number errNum
	end try
end xor

--------------------
-- END OF CODE
--------------------
