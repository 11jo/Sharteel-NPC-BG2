// FATE SPIRIT

EXTEND_TOP FATESP %fatesp_state% #%fatesp_transition%
+ ~!Dead("Sharteel") !InMyArea("Sharteel") Global("SharteelSummoned","GLOBAL",0)~ + @3 // ~Bring me Shar-Teel, the fighter.~
 	DO ~CreateVisualEffect("SPPORTAL",[1891.1287])
	Wait(2)
	CreateCreature("JOsharte",[1891.1287],1)
	SetGlobal("SharteelSummoned","GLOBAL",1)~ GOTO 8
END
