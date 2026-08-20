BEGIN JOcharP


IF ~Global("sharteelJoinedParty","LOCALS",1) Global("sharteelKickedOut","LOCALS",0)~ THEN BEGIN Raus0
	SAY @600 /* Was ist, <CHARNAME>? */ 
	IF ~~ THEN REPLY @601 /* Es ist nichts, bleibt in der Gruppe. */ DO ~JoinParty()~ EXIT
	IF ~~ THEN REPLY @602 /* Wird Zeit, dass wir getrennte Wege gehen. */ GOTO Raus1
END


IF ~Global("sharteelJoinedParty","LOCALS",0) Global("sharteelKickedOut","LOCALS",1)~ THEN BEGIN Auf0
	SAY @603 /* Ich hätte nicht gedacht, dass ich Euch noch einmal so schnell wiedersehen würde, <CHARNAME>. Kann ich Euch irgendwie helfen? */
	IF ~~ THEN REPLY @604 /* Wenn Ihr Interesse habt, dann schließt Euch mir wieder an, Shar-Teel. */ GOTO Auf1
	IF ~~ THEN REPLY @605 /* Im Augenblick habe ich keine Verwendung für Euch. */ GOTO Raus2
END


IF ~~ THEN BEGIN Auf1
	SAY @606 /* So ist es. Ziehen wir wieder gemeinsam in die Schlacht! Hinein in unendliches Blutvergießen - möge das Schreien unserer Feinde das Lied unsereres Triumphes sein! */
	IF ~~ THEN DO ~SetGlobal("sharteelJoinedParty","LOCALS",1) SetGlobal("sharteelKickedOut","LOCALS",0) JoinParty()~ EXIT
END


IF ~~ THEN BEGIN Raus1
	SAY @607 /* Wenn Ihr das wollt, <CHARNAME>... es war irgendwie eine angenehme Zeit mit Euch...zumindest gab es immer genug Blutvergießen in Eurer Nähe. Wie dem auch sei - lebt wohl. Vielleicht sehen wir uns ja sogar eines Tages wieder. */
	IF ~~ THEN DO ~SetGlobal("sharteelJoinedParty","LOCALS",0) SetGlobal("sharteelKickedOut","LOCALS",1) EscapeAreaMove("AR0406",681,1094,0)~ EXIT
END


IF ~~ THEN BEGIN Raus2
	SAY @608 /* Ich werde noch eine Weile hier in der Kupferkrone bleiben. Ist gar nicht so schlecht hier. Wenn man Streit sucht, wird man hier jedenfalls fündig und es gibt hier genug dämlicher Kerle, denen ich die Zähne einschlagen kann, wenn sie sich auf einen Arena-Kampf einlassen... */
	IF ~~ THEN EXIT
END
