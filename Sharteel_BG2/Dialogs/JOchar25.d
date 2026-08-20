BEGIN JOchar25

IF ~Global("SharteelSummoned","GLOBAL",1) Gender(Player1,FEMALE)~ THEN BEGIN 0f
  SAY @700 /* <CHARNAME> ? Qu'est ce que... Quel est cet endroit ? */
  IF ~~ THEN REPLY @701 /* C'est une longue histoire... Rejoins-moi et nous le découvrirons.~ DO ~SetGlobal("SharteelSummoned","GLOBAL",2) */ GOTO 1f
  IF ~~ THEN REPLY @702 /* C'est une longue histoire... Nous le découvrirons bien assez tôt. */ DO ~SetGlobal("SharteelSummoned","GLOBAL",2)~ GOTO 2f
END

IF ~~ THEN BEGIN 1f
  SAY @703  /* Alors en avant, mon amie. */
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 2f
  SAY @704 /* Quel sont les ordres ? */
  IF ~~ THEN REPLY @705 /* Attends-moi ici, j'aurais besoin de tes services dans le futur.*/ DO ~MoveToPointNoInterrupt([2280.1780])
Face(9)~ EXIT
END

IF ~Global("SharteelSummoned","GLOBAL",1) Gender(Player1,MALE)~ THEN BEGIN 0m
  SAY ~<CHARNAME> ? Qu'est ce que... Dans quel guêpier as-tu encore mis les pieds ?~
  IF ~~ THEN REPLY @701 /* C'est une longue histoire... Rejoins-moi et nous le découvrirons.~ DO ~SetGlobal("SharteelSummoned","GLOBAL",2) */ GOTO 1m
  IF ~~ THEN REPLY @702 /* C'est une longue histoire... Nous le découvrirons bien assez tôt.~ DO ~SetGlobal("SharteelSummoned","GLOBAL",2) */ GOTO 2m
END

IF ~~ THEN BEGIN 1m
  SAY @706 /* Un nouveau carnage à l'horizon !*/ 
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 2m
  SAY @704 /* Quel sont les ordres ? */
  IF ~~ THEN REPLY @705 /* Attends-moi ici, j'aurais besoin de tes services dans le futur.*/ GOTO 3m
END

IF ~~ THEN BEGIN 3m
  SAY @707 /* Encore un homme qui croit que les femmes sont à sa disposition. */
  IF ~~ THEN GOTO 4m
END

IF ~~ THEN BEGIN 4m
  SAY @708 /* Et bien sûr aucun moyen de partir sans ta permission. */
  IF ~~ THEN GOTO 5m
END

IF ~~ THEN BEGIN 5m
  SAY @709 /* Encore heureux que ce décors cauchemardesque me plaise ! */
  IF ~~ THEN DO ~MoveToPointNoInterrupt([2280.1780])
Face(9)~ EXIT
END
