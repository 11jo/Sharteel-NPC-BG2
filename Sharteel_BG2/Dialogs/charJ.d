BEGIN JOchar

IF ~NumTimesTalkedTo(0) Gender(Player1,FEMALE) Global("shartFirstTalk","GLOBAL",0) AreaCheck("AR0602")~ THEN BEGIN Frau0
	SAY @500 /* Es tut gut zu sehen <CHARNAME>, dass auch Ihr Euch befreien konntet. Ich bin erst seit einer Weile wach und mein Kopf schmerzt höllisch. Ich war gerade dabei mich ein wenig umzusehen...und Euch zu suchen. */
 	IF ~~ THEN REPLY @501 /* Wie habt Ihr es geschafft Euch zu befreien? */ DO ~SetGlobal("shartFirstTalk","GLOBAL",1)~ GOTO Frau1
	IF ~~ THEN REPLY @502 /* Habt Ihr eine Ahnung, wer unser Entführer sein könnte? */ DO ~SetGlobal("shartFirstTalk","GLOBAL",1)~ GOTO Frau2
	IF ~~ THEN REPLY @503 /* Schließt Euch mir an und gemeinsam werden wir unseren Kerkermeister aufspüren und ihn unseren Zorn schmecken lassen. */ DO ~SetGlobal("shartFirstTalk","GLOBAL",1)~ GOTO Frau3
	IF ~~ THEN REPLY @504 /* Ich muss zusehen, dass ich weiterkomme. Dies ist kein guter Ort, um zu verweilen. */ DO ~SetGlobal("shartFirstTalk","GLOBAL",1)~ GOTO Frau4
END


IF ~~ THEN BEGIN Frau1
	SAY @505 /* Das war nicht sonderlich schwer. Ich weiß nicht, ob Ihr es mitbekommen habt, aber unser 'Kerkermeister' hat hier unten einigen Ärger bekommen. Ich traf auf dem Weg hierher auf eine ganze Reihe an kapuzierten Leichen. Sie sahen mir nach Attentätern aus, ich vermute sie sind hier, um den Besitzer dieser Anlage zu töten. Ich hab mich noch nicht sonderlich viel umsehen können, dieser Ort bleibt ein gefährliches Pflaster und ich bin froh, dass ich hier überhaupt eine Rüstung und Waffen gefunden habe. Ich hatte vor Euch und die anderen zu suchen, damit wir gemeinsam hier ausbrechen können. Wie ich sehe bin ich Euch jedoch da keinen Schritt voraus. */
	IF ~~ THEN REPLY @502 /* Habt Ihr eine Ahnung, wer unser Entführer sein könnte? */ DO ~SetGlobal("shartAttentat","LOCALS",1)~ GOTO Frau2
	IF ~~ THEN REPLY @506 /* Gut das wir jetzt wieder zusammen sind. Brechen wir auf... ich habe noch ein Wörtchen mit unserem 'Kerkermeister' zu sprechen und dabei sollten mir diese Attentäter besser nicht in die Quere kommen. */ DO ~SetGlobal("shartAttentat","LOCALS",1)~ GOTO Frau3
	IF ~~ THEN REPLY @507 /* Ich habe nicht vor, mit Euch einen gemeinsamen Pfad einzuschlagen. Ihr seid hier unten auf Euch selbst gestellt. */ DO ~SetGlobal("shartAttentat","LOCALS",1)~ GOTO Frau4
END


IF ~~ THEN BEGIN Frau2
	SAY @508 /* Nein. Ich habe nur noch blasse Erinnerungen an das, was uns hierher geschleift hat. Ich erinnere mich noch gut daran, wie wir die Unterstadt von Baldurs Tor nach Eurem Bruder Sarevok durchsucht haben - und ich kann mich auch noch gut daran erinnern, wie Ihr ihn schließlich mit der Klinge zu Boden geschickt habt. Das alles scheint mir nur wenige Tage her zu sein... Herzog Eltan hat uns eine Weile im Palast der Großherzöge ruhen lassen... und Ihr hattet es plötzlich recht eilig aufzubrechen. Warum überhaupt? */
	IF ~~ THEN REPLY @509 /* Dafür haben wir jetzt keine Zeit, wir sollten zusehen, dass wir hier wegkommen. Kann ich mich auf Eure Hilfe dabei verlassen? */ GOTO Frau3
	IF ~~ THEN REPLY @510 /* Das spielt jetzt alles keine Rolle mehr Shar-Teel. Ich bin frei und werde diesen Kerker verlassen. */ GOTO Frau4
	IF ~~ THEN REPLY @511 /* Ich bin ein Nachkomme Bhaals, dem Gott des Mordes, was glaubt Ihr hätten die Großherzöge unternommen, wenn sie es herausgefunden hätten? */ GOTO Frau5
END


IF ~~ THEN BEGIN Frau3
	SAY @512 /* Wir haben bereits vielen Gefahren gegenüber gestanden und wir haben jede einzelne gemeistert, jeden Feind bezwungen und viel Blut vergossen. Ihr seid eine Inkarnation des Mordes, wie Sarevok. Mein Schwert steht Euch zu Diensten, <CHARNAME>. So unterschiedlich auch meine Gründe waren, mich Euch damals anzuschließen, so haben sich die Dinge geändert. Ich schwöre Euch meine Treue. Lasst uns gemeinsam in die Zukunft gehen und sehen, was das Schicksal für Euch und Euer Blut bereit hält. */
	IF ~~ THEN REPLY @513 /* Zunächst werden wir unserem 'Gastgeber' einen Besuch abstatten und ihm für die herzliche Einladung danken. */ GOTO Frau6
	IF ~~ THEN REPLY @514 /* Nehmt Euren Platz in der Gruppe ein und seid still. */ GOTO Frau7
	IF ~~ THEN REPLY @515 /* Ich habe beschlossen, Euch doch nicht mitzunehmen. */ GOTO Frau4
END


IF ~~ THEN BEGIN Frau4
	SAY @516 /* <CHARNAME>, ich denke, ich habe meine Fähigkeiten in der Vergangenheit mehr als einmal bewiesen. Wir könnten uns hier unten gegenseitig wirklich sehr von Nutzen sein, aber ich werde mich niemanden Aufzwingen, der meine Anwesenheit nicht wünscht. */
	IF ~~ THEN REPLY @517 /* Eure Anwesenheit ist in der Tat unerwünscht, trollt Euch. */ GOTO Frau8
	IF ~~ THEN REPLY @518 /* Ich kann ein weiteres Schwert gut gebrauchen und Eure kämpferischen Fertigkeiten sind mir noch durchaus vertraut. */ GOTO Frau3
	IF ~~ THEN REPLY @519 /* Es tut mir leid, Shar-Teel, aber ich kann Euch im Augenblick nicht begleiten. Ich hoffe Ihr findet Euren Weg an die Oberfläche, auch ohne meine Hilfe. */ GOTO Frau8
END


IF ~~ THEN BEGIN Frau5
	SAY @520 /* Ihr habt wohl recht, <CHARNAME>. Sie hätten Euch aufgespürt und versucht zu töten. Aber unser Hiersein in diesem Kerker scheint mir nicht die Handschrift der Großherzöge zu tragen. Aber wer ist dann dafür verantwortlich? */
	IF ~~ THEN REPLY @521 /* Das ist eine Frage, über die wir im Augenblick nur spekulieren können. Gesellt Euch zu mir und wir werden gemeinsam versuchen, es herauszufinden. */ GOTO Frau3
	IF ~~ THEN REPLY @522 /* Ich weiß es nicht, aber ich habe vor, es herauszufinden. Ohne Euch - bedaure. */ GOTO Frau4
END


IF ~~ THEN BEGIN Frau6
	SAY @523 /* So habe ich Euch in Erinnerung, <CHARNAME>. Selbst wenn die Dinge richtig schlecht stehen, seid Ihr dennoch ruhig und gelassen und könnt immer noch scherzen. Wir sollten zunächst versuchen, unsere Ausrüstung zu suchen, denn es scheint so, als hätte man uns alles weggenommen. Das armselige Pack soll bloß warten, bis ich es in die Finger kriege...wehe, wenn auch nur ein Gegenstand fehlt! */
	IF ~~ THEN DO ~SetGlobal("sharteelJoinedParty","LOCALS",1) JoinParty()~ EXIT
END


IF ~~ THEN BEGIN Frau7
	SAY @524 /* Ihr habt Euch anscheinend nur wenig verändert, <CHARNAME>, Ihr wart schon immer recht temperamentvoll. Ich habe einst das Versprechen gegeben, dass ich mich in Eure Dienste stellen würde, wenn Ihr mich im Kampf besiegt. Ihr habt gesiegt - und so stelle ich keine Ansprüche. */
	IF ~~ THEN DO ~SetGlobal("sharteelJoinedParty","LOCALS",1) JoinParty()~ EXIT
END


IF ~~ THEN BEGIN Frau8
	SAY @525 /* Vielleicht sehen wir uns eines Tages wieder, falls Ihr überleben solltet. Bis dahin, lebt wohl. */
	IF ~~ THEN DO ~SetGlobal("sharteelVerlassen","LOCALS",1) EscapeAreaMove("AR0406",681,1094,0)~ EXIT
END

IF ~NumTimesTalkedTo(0) Gender(Player1,MALE) Global("shartFirstTalk","GLOBAL",0) AreaCheck("AR0602")~ THEN BEGIN Mann0
	SAY @526 /* <CHARNAME>! Ihr habt geschafft Euch zu befreien? Für einen Mann scheint Ihr doch gar nicht so kläglich zu sein, wie ich dachte. */
	IF ~~ THEN REPLY @501 /* Wie habt Ihr es geschafft Euch zu befreien? */ DO ~SetGlobal("shartFirstTalk","GLOBAL",1)~ GOTO Mann8
	IF ~~ THEN REPLY @527 /* Danke für das 'Kompliment'. Ich bin frei und kann meinen eigenen Weg gehen. Die Frage ist nur, was habt Ihr vor? */ DO ~SetGlobal("shartFirstTalk","GLOBAL",1)~ GOTO Mann1
	IF ~~ THEN REPLY @528 /* Ihr habt Euch nicht im geringsten verändert, Shar-Teel und ehrlich gesagt bin ich allmählich Euer ständiges beleidigendes Geschwafel satt. */ DO ~SetGlobal("shartFirstTalk","GLOBAL",1)~ GOTO Mann2
	IF ~~ THEN REPLY @529 /* Habt Ihr eine Ahnung, wer für unser Hiersein hier verantwortlich sein könnte? */ DO ~SetGlobal("shartFirstTalk","GLOBAL",1)~ GOTO Mann3
END

IF ~~ THEN BEGIN Mann1
	SAY @530 /* Im Augenblick sieht es nicht sehr danach aus, als hätte ich wirklich eine Wahl. Ich habe keine Ahnung, wie weit sich dieses Gangsystem erstreckt und mein Status als 'Gefangene' wird mir bei einem Ausbruch nicht gerade entgegenkommen. Vielleicht sollten wir uns zusammentun, <CHARNAME>, zumindest solange, bis wir hier entkommen sind. Was sagt Ihr? */	
	IF ~~ THEN REPLY @531 /* Es hört sich nicht danach an, als würdet Ihr diese Möglichkeit sonderlich gutheißen. Hängt Euch meine Gesellschaft inzwischen so zum Halse heraus? */ GOTO Mann4
	IF ~~ THEN REPLY @532 /* Dann schließt Euch mir an. Wir werden allerdings in erster Linie nach unserem 'Gastgeber' Ausschau halten, um ihn für seine freundliche 'Einladung' zu danken. */ GOTO Mann5
	IF ~~ THEN REPLY @533 /* Gehen wir, mir ist alles recht, solange wir hier verschwinden. */ GOTO Mann6
END


IF ~~ THEN BEGIN Mann2
	SAY @534 /* Ihr seid genauso wie alle anderen Männer! Ich dachte Ihr wäret anders, <CHARNAME>, aber Euer Verhalten zeigt mir, dass dem nicht so ist. Geht mir bloß aus den Augen! */
	IF ~~ THEN DO ~SetGlobal("sharteelVerlassen","LOCALS",1) EscapeAreaMove("AR0406",681,1094,0)~ EXIT
END


IF ~~ THEN BEGIN Mann3
	SAY @508 /* Nein. Ich habe nur noch blasse Erinnerungen an das, was uns hierher geschleift hat. Ich erinnere mich noch gut daran, wie wir die Unterstadt von Baldurs Tor nach Eurem Bruder Sarevok durchsucht haben - und ich kann mich auch noch gut daran erinnern, wie Ihr ihn schließlich mit der Klinge zu Boden geschickt habt. Das alles scheint mir nur wenige Tage her zu sein... Herzog Eltan hat uns eine Weile im Palast der Großherzöge ruhen lassen... und Ihr hattet es plötzlich recht eilig aufzubrechen. Warum überhaupt? */
	IF ~~ THEN REPLY @509 /* Dafür haben wir jetzt keine Zeit, wir sollten zusehen, dass wir hier wegkommen. Kann ich mich auf Eure Hilfe dabei verlassen? */ GOTO Mann1
	IF ~~ THEN REPLY @510 /* Das spielt jetzt alles keine Rolle mehr Shar-Teel. Ich bin frei und werde diesen Kerker verlassen. */ GOTO Mann7
	IF ~~ THEN REPLY @511 /* Ich bin ein Nachkomme Bhaals, dem Gott des Mordes, was glaubt Ihr hätten die Großherzöge unternommen, wenn sie es herausgefunden hätten? */ GOTO Frau5
END


IF ~~ THEN BEGIN Mann4
	SAY @535 /* Das...habe ich nicht gesagt. Ich treffe nur ungern voreilige Entscheidungen. Wir sollten nun aufbrechen, alles andere können wir immer noch später besprechen. */
	IF ~~ THEN REPLY @536 /* Gut, brechen wir auf. */ DO ~SetGlobal("sharteelJoinedParty","LOCALS",1) JoinParty()~ EXIT
	IF ~~ THEN REPLY @537 /* Ich habe mich anders entschieden...ich werde Euch nicht mitnehmen. */ GOTO Mann2
END


IF ~~ THEN BEGIN Mann5
	SAY @538 /* Auch dagegen habe ich nichts einzuwenden, <CHARNAME>. Ich habe ebenso wie Ihr ein Verlangen danach, mich für die Portion Schmerz zu revanchieren, die ich erleiden durfte. Gehen wir. */
	IF ~~ THEN DO ~SetGlobal("sharteelJoinedParty","LOCALS",1) JoinParty()~ EXIT
END


IF ~~ THEN BEGIN Mann6
	SAY @539 /* Brechen wir also auf, alles weitere können wir immer noch später besprechen. */
	IF ~~ THEN DO ~SetGlobal("sharteelJoinedParty","LOCALS",1) JoinParty()~ EXIT
END


IF ~~ THEN BEGIN Mann7
	SAY @540 /* Befreit mich aus dieser Zelle und lasst mich Euch begleiten <CHARNAME>! Ich denke, ich habe meine Fähigkeiten in der Vergangenheit mehr als einmal bewiesen. Nein, ich sehe schon. Ich kann es in Euren Augen sehen. Euer Blick ist kalt...wie auch Euer Herz. Ihr lasst mich hier zurück, auf dass ich hier - verrotte? So ein Ende habe ich nicht verdient, <CHARNAME>! */
	IF ~~ THEN REPLY @541 /* Ihr habt eine gute Beobachtungsgabe, dass schätzte ich einst an Euch. Lebt wohl, wir werden uns nicht wiedersehen... */ GOTO Frau8
	IF ~~ THEN REPLY @542 /* Im Gegenteil, ich will, dass Ihr Euch mir anschließt. */ GOTO Frau3
END

IF ~~ THEN BEGIN Mann8
	SAY @543 /* Das war nicht sonderlich schwer. Ich weiß nicht, ob Ihr es mitbekommen habt, aber unser 'Kerkermeister' hat hier unten einigen Ärger bekommen. Ich traf auf dem Weg hierher auf eine ganze Reihe an kapuzierten Leichen. Sie sahen mir nach Attentätern aus, ich vermute sie sind hier, um den Besitzer dieser Anlage zu töten. Ich hab mich noch nicht sonderlich viel umsehen können, dieser Ort bleibt ein gefährliches Pflaster und ich bin froh, dass ich hier überhaupt eine Rüstung und Waffen gefunden habe. Meine eigene Rüstung wurde mir wohl abgenommen, als ich noch bewusstlos war. Wie ich sehe bin ich Euch keinen Schritt voraus, Ihr seid so frei wie ich und dazu sogar noch am Leben. */
	IF ~~ THEN REPLY @502 /* Habt Ihr eine Ahnung, wer unser Entführer sein könnte? */ DO ~SetGlobal("shartAttentat","LOCALS",1)~ GOTO Mann3
	IF ~~ THEN REPLY @506 /* Gut das wir jetzt wieder zusammen sind. Brechen wir auf... ich habe noch ein Wörtchen mit unserem 'Kerkermeister' zu sprechen und dabei sollten mir diese Attentäter besser nicht in die Quere kommen. */ DO ~SetGlobal("shartAttentat","LOCALS",1)~ GOTO Mann6
	IF ~~ THEN REPLY @507 /* Ich habe nicht vor, mit Euch einen gemeinsamen Pfad einzuschlagen. Ihr seid hier unten auf Euch selbst gestellt. */ DO ~SetGlobal("shartAttentat","LOCALS",1)~ GOTO Mann2
END

IF ~Global("shartFluchtGelungen","LOCALS",1)~ THEN BEGIN Flucht0
	SAY @544 /* Sieht so aus, als hätten wir es geschafft, <CHARNAME>. Der Magier ist uns durch die Lappen gegangen - aber ich wette, dort wo er jetzt ist, wird es ihm nicht sehr viel besser gehen, als es uns unter seiner Obhut ging. Was habt Ihr also vor? Wollt Ihr die Sache auf sich beruhen lassen? */
	IF ~~ THEN REPLY @545 /* Auf sich beruhen lassen? Diese verdammten Magier haben Imoen entführt! */ DO ~SetGlobal("shartFluchtGelungen","LOCALS",2)~ GOTO Flucht1
	IF ~~ THEN REPLY @546 /* Ich weiß nicht, vielleicht ist es am besten so. */ DO ~SetGlobal("shartFluchtGelungen","LOCALS",2)~ GOTO Flucht2
	IF ~~ THEN REPLY @547 /* Nein. Ich werde nicht ruhen, ehe ich den Kopf des Magiers in meinen Händen halte und seine Eingeweide auf dem Boden verteilt habe! */ DO ~SetGlobal("shartFluchtGelungen","LOCALS",2)~ GOTO Flucht3
END


IF ~~ THEN BEGIN Flucht1
	SAY @548 /* Bedeutet Euch dieses Mädchen viel? */
	IF ~~ THEN REPLY @549 /* Sie ist wie eine Schwester für mich, ich kann sie nicht einfach im Stich lassen. Sie würde das selbe für mich tun. */ GOTO Flucht4
	IF ~~ THEN REPLY @550 /* Mehr als Euer Leben, Shar-Teel und mehr braucht Ihr nicht zu wissen. */ GOTO Flucht4
	IF ~~ THEN REPLY @551 /* Es ist einfach eine Sache des Prinzips. Sie war in meiner Gruppe und steht damit unter meinem persönlichen Schutz. Wer sich mit einem meiner Gefährten anlegt, legt sich auch mit mir an. */ GOTO Flucht5
END


IF ~~ THEN BEGIN Flucht2
	SAY @552 /* Wir sollten vielleicht noch auf ein anderes Thema zu sprechen kommen. Ihr wisst, dass ich mich Euch verpflichtet habe, als wir uns damals in der Nähe von Beregost begegnet sind. Ich denke, meine Schuld sollte inzwischen beglichen sein... */
	IF ~~ THEN REPLY @553 /* Ihr wollt also die Gruppe verlassen? */ GOTO Flucht5
	IF ~~ THEN REPLY @554 /* Worauf wollt Ihr hinaus? */ GOTO Flucht5
END


IF ~~ THEN BEGIN Flucht3
	SAY @555 /* Ja! Spürt den Mann auf und richtet ihn nach Euren eigenen Maßstäben! Die Jagd nach dem Magier ist etwas, was ich mir nur äußerst ungern entgehen lassen würde. Aber... */
	IF ~~ THEN GOTO Flucht2
END


IF ~~ THEN BEGIN Flucht4
	SAY @556 /* Verstehe. In meinem Leben gibt es niemanden, der so etwas für mich tun würde... */
	IF ~~ THEN GOTO Flucht2
END


IF ~~ THEN BEGIN Flucht5
	SAY @557 /* Ich will zunächst einmal klarstellen, dass alles, was ich von nun an tue, nichts mit meinem Versprechen einhergeht, für Eure Sache zu kämpfen. */
	IF ~~ THEN REPLY @558 /* In Ordnung, sehen wir die Sache als erledigt an. Was habt Ihr nun mit Eurer neu gewonnenen 'Freiheit' vor? */ GOTO Flucht6
	IF ~~ THEN REPLY @559 /* Das sehe ich anders. Ihr bleibt solange in meinen Diensten, bis ich Euch gestatte zu gehen, verstanden? */ GOTO Flucht6
END


IF ~~ THEN BEGIN Flucht6
	SAY @560 /* Ich habe nicht vor die Gruppe zu verlassen, wenn es das ist, was Euch beschäftigt. Obwohl Ihr ein Mann seid, spüre ich, dass Euer Schicksal von großer Bedeutung sein wird. Ihr seid ein Nachkomme Bhaals und Ihr seid nicht der Einzige gewesen, der in Kerzenburg Alaundos Prophezeiungen studiert hat, als wir die Anführer des Eisenthrons suchten. Es wird einen blutigen Krieg an der Schwertküste geben und einer der Nachkommen Bhaals ist dazu bestimmt, das Schicksal der gesamten Schwertküste über Jahrhunderte hinweg zu bestimmen. Ich bin gespannt, wie sich die Dinge entwickeln werden, <CHARNAME>. */
	IF ~~ THEN REPLY @561 /* Ich bin mir nicht sicher, ob mir Euer Interesse gefällt, aber seis drum. */ GOTO Flucht7
	IF ~~ THEN REPLY @562 /* Niemand kann mir mein Geburtsrecht streitig machen, ich bin das mächtigste aller Bhaal-Kinder! */ GOTO Flucht7
END


IF ~~ THEN BEGIN Flucht7
	SAY @563 /* So sei es! Kommt, es wird Zeit uns unserer bevorstehenden Aufgabe anzunehmen, <CHARNAME>. */
	IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0) Global("shartFirstTalk","GLOBAL",0) AreaCheck("AR0406")~ THEN BEGIN Fraub0
	SAY @564 /* Ihr seid nicht tot? Ich hätte nicht gedacht, dass ein Mann wie Ihr es schafft, über einen solch langen Zeitraum hinweg nicht getötet zu werden. */
	IF ~~ THEN REPLY @565 /* Wer seid Ihr überhaupt? Müsste ich Euch kennen? */ DO ~SetGlobal("shartFluchtGelungen","LOCALS",2)~ GOTO fraub1
	IF ~~ THEN REPLY @566 /* Ich bin froh, dass es Euch gut geht, Shar-Teel! Ich dachte schon, dieser verfluchte Magier hätte Euch etwas angetan. */ DO ~SetGlobal("shartFluchtGelungen","LOCALS",2)~ GOTO fraub2
	IF ~~ THEN REPLY @567 /* Das ist eine lange Geschichte...was treibt Euch her? */ DO ~SetGlobal("shartFluchtGelungen","LOCALS",2)~ GOTO fraub3
END


IF ~~ THEN BEGIN fraub1
	SAY @568 /* Kann sein, dass Ihr Euch nicht mehr daran erinnern könnt, wir sind uns in der Nähe von Beregost begegnet. Wenn ich mich recht erinnere, war ich Euch im Kampf unterlegen und habe mich daher bereit erklärt, für Eure Sache zu kämpfen. Wir haben die Eisenkrise an der Schwerküste aufgeklärt und die wahren Hintermänner des ganzen entlarvt. */ = @569 /* Ihr müsstet Euch eigentlich erinnern, <CHARNAME>. Wir wurden doch erst vor wenigen Tagen in der Nacht überfallen worden und waren in Gefangenschaft geratem. */ = @570 /* Und Ihr habt es ebenso wie ich geschafft, zu fliehen. */
	IF ~~ THEN REPLY @571 /* Ich erinnere mich, jedoch habe ich Euch im Kerker nicht gesehen. Was treibt Euch nach Amn? */ GOTO fraub3
END


IF ~~ THEN BEGIN fraub2
	SAY @572 /* Er hat es versucht, aber ich bin ihm entwischt. Es gab eine ganze Menge Unruhe in diesem unterirdischen Komplex, als eine nicht gerade kleine Gruppe maskierter Meuchler durch die Kanalisation eindrang. Es gab etliche Gefechte und viel Verwirrung. Diesen Zustand konnte ich mir zunutze machen und entkommen. Ich floh durch die Kanalisation und kam in der Nähe eines Palastbaus heraus. Ich hatte zwar vor, irgendwann einmal in den Süden zu reisen, aber nicht zu diesem Zeitpunkt und schon gar nicht unter diesen Umständen... was habt Ihr nun vor, <CHARNAME>, jetzt wo Ihr frei seid? */
	IF ~~ THEN REPLY @573 /* Ich werde mir Irenicus vorknöpfen und seinem undurchschaubaren Treiben ein Ende machen. */ GOTO fraub4
	IF ~~ THEN REPLY @574 /* Die Verhüllten Magier haben Imoen entführt. Ich bin bereits auf der Suche nach ihr, muss mich aber erst einmal an diese neue ungewohnte Umgebung gewöhnen. */ GOTO fraub5
	IF ~~ THEN REPLY @575 /* Ich habe noch keine endgültige Entscheidung getroffen, aber ich werde diese Sache sicherlich nicht auf sich beruhen lassen. */ GOTO fraub6
END


IF ~~ THEN BEGIN fraub3
	SAY @576 /* Nach der Aufklärung des Eisenmangels an der Schwertküste scheint mir ein Krieg trotz der Spannungen zwischen der freien Stadt und Amn wenig wahrscheinlich. Die Eisenkrise hat im Norden deutlich seine Spuren hinterlassen, aber niemand scheint gewillt zu sein, die Gelegenheit zu ergreifen, ein Blutbad herbeizuführen, dass das Schicksal der Schwertküste erschüttert! */ = @577 /* Es hätte für mich nur noch wenig Gründe gegeben, im Norden zu bleiben - trotzdem kann ich nicht gerade sagen, dass ich vorhatte, hierher zu kommen. */ = @578 /* Es wird Zeit, sich neu zu orientieren und die Feinde aufzuspüren, die uns zugesetzt haben... */
	IF ~~ THEN REPLY @579 /* Eure Einstellung ist wirklich verachtenswert, Shar-Teel! Ein Krieg hat noch nie etwas Gutes gebracht! */ GOTO fraub8
	IF ~~ THEN REPLY @580 /* Ich könnte eine weitere geschickte Kämpferin gut gebrauchen, was ist mit Euch? */ GOTO fraub7
	IF ~~ THEN REPLY @581 /* Die Dinge sind gekommen, wie sie gekommen sind - und so ist es wohl auch besser. */ GOTO fraub6
END


IF ~~ THEN BEGIN fraub4
	SAY @582 /* Irenicus? Das ist also der Name desjenigen, der uns gefangen nahm? Nun gut. Ich habe selbst noch meine Rechnung mit ihm offen. Da wir ohnehin das gleiche Ziel verfolgen, sollten wir die Gelegenheit dieses Treffens nutzen und ein Bündnis schließen. */
	IF ~~ THEN REPLY @583 /* Gut! Ich kann eine Kämpferin mit Euren Fähigkeiten gebrauchen. Es wird jedoch nicht leicht werden, den Magier zu erreichen, er wurde mitsamt Imoen von der Verhüllten Magiern 'entführt'. */ GOTO fraub7
	IF ~~ THEN REPLY @584 /* Wir mögen vielleicht das selbe Ziel haben, aber unsere Wege sind verschiedene. */ GOTO fraub9
	IF ~~ THEN REPLY @585 /* Im Augenblick ist leider kein Platz in der Gruppe, vielleicht kann ich aber später auf Euer Angebot zurückkommen? */ GOTO fraub9
END


IF ~~ THEN BEGIN fraub5
	SAY @586 /* Das kann ich nur zu gut verstehen, auch ich bin das erste Mal hier in Atkatla. Vielleicht können wir uns ja gemeinsam orientieren - und ich helfe Euch dabei, genügend Gründe zu finden, diesen Magier zu jagen. */
	IF ~~ THEN REPLY @583 /* Gut! Ich kann eine Kämpferin mit Euren Fähigkeiten gebrauchen. Es wird jedoch nicht leicht werden, den Magier zu erreichen, er wurde mitsamt Imoen von der Verhüllten Magiern 'entführt'. */ GOTO fraub7
	IF ~~ THEN REPLY @584 /* Wir mögen vielleicht das selbe Ziel haben, aber unsere Wege sind verschiedene. */ GOTO fraub9
	IF ~~ THEN REPLY @585 /* Im Augenblick ist leider kein Platz in der Gruppe, vielleicht kann ich aber später auf Euer Angebot zurückkommen? */ GOTO fraub9
END


IF ~~ THEN BEGIN fraub6
	SAY @587 /* Nun, wenn Ihr Probleme habt Euch zu entscheiden, dann sollte ich Euch vielleicht ein wenig damit behilflich sein. Sucht...findet...und tötet den Mann, der Euch all die Schmerzen und die Erniedrigung gebracht hat! Folgt diesem Ziel und Ihr habt eine zuverlässige Klinge an Eurer Seite. Ich biete Euch mein Schwert, um Rache zu nehmen. Ich selbst habe noch eine Rechnung mit dem Magier offen, schließlich hat er mich genauso eingepfercht, wie Euch. */
	IF ~~ THEN REPLY @583 /* Gut! Ich kann eine Kämpferin mit Euren Fähigkeiten gebrauchen. Es wird jedoch nicht leicht werden, den Magier zu erreichen, er wurde mitsamt Imoen von der Verhüllten Magiern 'entführt'. */ GOTO fraub7
	IF ~~ THEN REPLY @584 /* Wir mögen vielleicht das selbe Ziel haben, aber unsere Wege sind verschiedene. */ GOTO fraub9
	IF ~~ THEN REPLY @585 /* Im Augenblick ist leider kein Platz in der Gruppe, vielleicht kann ich aber später auf Euer Angebot zurückkommen? */ GOTO fraub9
END


IF ~~ THEN BEGIN fraub7
	SAY @588 /* Ich ordne mich nur ungern einem Mann unter...aber bei Euch werde ich eine Ausnahme machen. Ich will mich nicht beschweren, solange wir unsere Klingen mit Blut benetzen... */
	IF ~~ THEN DO ~SetGlobal("sharteelJoinedParty","LOCALS",1) JoinParty()~ EXIT
END


IF ~~ THEN BEGIN fraub8
	SAY @589 /* Was ist das? Habe ich es etwa hier mit einem Weltverbesserer zu tun? Wie rührend, wirklich! Geht mir besser aus den Augen, denn sowas wie Euch kann ich ganz und gar nicht ab! */
	IF ~~ THEN REPLY @590 /* Nein, ich glaube, Ihr braucht eine Lektion. */ GOTO fraub10
	IF ~~ THEN REPLY @591 /* Ich hoffe für Euch, dass wir uns nicht wiederbegegnen werden, denn das nächste mal werde ich nicht so großherzig mit Euren Beleidigungen umgehen! */ GOTO fraub11
END


IF ~~ THEN BEGIN fraub9
	SAY @592 /* Es ist Eure Entscheidung, nicht meine. Ich bin jedenfalls noch eine Weile hier in der Kupferkrone, falls Ihr es Euch anders überlegen solltet. */
	IF ~~ THEN DO ~SetGlobal("ShartDochAufnahme","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN fraub10
	SAY @593 /* Dann kommt und nehmt Eure Lektion entgegen...erwartet jedoch keine Gnade von mir, Idiot! */
	IF ~~ THEN DO ~ChangeAIScript("WTASIGHT",DEFAULT) Enemy()~ EXIT
END


IF ~~ THEN BEGIN fraub11
	SAY @594 /* Ich zittere vor Angst, Schwächling! Jetzt trollt Euch... */
	IF ~~ THEN EXIT
END

IF ~Global("ShartDochAufnahme","LOCALS",1)~ THEN BEGIN aufnahm0
	SAY @595 /* Habt Ihr es Euch überlegt, <CHARNAME>? Wollt Ihr meine Dienste in Anspruch nehmen? */
	IF ~~ THEN REPLY @583 /* Gut! Ich kann eine Kämpferin mit Euren Fähigkeiten gebrauchen. Es wird jedoch nicht leicht werden, den Magier zu erreichen, er wurde mitsamt Imoen von der Verhüllten Magiern 'entführt'. */ DO ~SetGlobal("ShartDochAufnahme","LOCALS",2)~ GOTO fraub7
	IF ~~ THEN REPLY @584 /* Wir mögen vielleicht das selbe Ziel haben, aber unsere Wege sind verschiedene. */ GOTO fraub9
	IF ~~ THEN REPLY @585 /* Im Augenblick ist leider kein Platz in der Gruppe, vielleicht kann ich aber später auf Euer Angebot zurückkommen? */ GOTO fraub9
END


BEGIN JOcharJ

IF ~~ THEN BEGIN shsalv0
	SAY @596 /* Verschwindet aus der Reichweite meiner Klinge, Ihr jämmerliche Gestalt von einem Mann, wenn Ihr weiterleben wollt! */
	IF ~~ THEN EXTERN ~Salvanas~ salv1
END


IF ~~ THEN BEGIN shsalv1
	SAY @597 /* Es reicht jetzt endgültig, widerlicher Elf! Ihr widert mich an! Sucht Euch eine andere naive Schlampe für Eure Spiele! */
	IF ~~ THEN EXTERN ~Salvanas~ salv2
END


INTERJECT_COPY_TRANS SHAPE 6 einmi0 // Doppelgänger Frennedan, in Irenicus Kerker
== JOcharJ IF ~IsValidForPartyDialogue("sharteel")~ THEN
  @598 /* <CHARNAME>, da stimmt doch etwas nicht! Ihr werdet das Ding da drin doch wohl nicht etwa freilassen oder? */
== SHAPE IF ~IsValidForPartyDialogue("sharteel")~ THEN
  @599 /* 'Ding'? Ich...bin kein 'Ding'! Oh, bitte helft mir doch... */
END


INTERJECT_COPY_TRANS ILYICH 0 einmi1 // Illyich, in Irenicus Kerker
== JOcharJ IF ~IsValidForPartyDialog("sharteel")~ THEN
  @600 /* Sieht so aus, als wollten uns diese Winzlinge hier Ärger machen. Hört mal genau zu, Kleiner, wenn Ihr uns nicht sofort aus dem Weg geht, dann befördere ich Euch dorthin, wo auch bald Euer Meister sein wird - in die Hölle! */
== ILYICH IF ~IsValidForPartyDialog("sharteel")~ THEN
  @601 /* Winzlinge? Ihr werdet diesen Ort niemals wieder verlassen! */
END


INTERJECT_COPY_TRANS YOSHIMO 0 einmi2 // Yoshimo, in Irenicus Kerker
== JOcharJ IF ~IsValidForPartyDialog("sharteel")~ THEN
  @602 /* Der Typ macht nicht gerade einen sehr vertrauenswürdigen Eindruck. Seid vorsichtig, wenn Ihr mit ihm sprecht, <CHARNAME>... und trefft besser keine voreiligen Entscheidungen. */
END


INTERJECT_COPY_TRANS YOSHIMO 12 einmi3 // Yoshimo, in Irenicus Kerker
== JOcharJ IF ~IsValidForPartyDialog("sharteel")~ THEN
  @603 /* Ihr wollt den Kerl tatsächlich mitnehmen? Aber sagt später bloß nicht, ich hätte Euch nicht gewarnt... */
END


INTERJECT_COPY_TRANS ISHADMT1 0 einmi4 // Meuchelmörder, in Irenicus Kerker
== JOcharJ IF ~IsValidForPartyDialog("sharteel") Global("shartAttentat","LOCALS",1)~ THEN
  @604 /* Das muss einer von den Attentätern sein, von denen ich Euch erzählt habe. Vielleicht können wir diese Sache friedlich besprechen, schließlich scheinen sie genauso wenig auf der Seite unserers Kerkermeisters zu sein, wie wir selbst. */
END


APPEND ~Salvanas~
	IF ~!InPartySlot(LastTalkedToBy,0) Name("sharteel",LastTalkedToBy)~ THEN BEGIN salv0
	SAY @605 /* Welch liebliches Wesen mir da sein Antlitz entgegenstreckt! Ich bin geblendet von Eurer Schönheit, meine Liebe. */
	IF ~~ THEN EXTERN ~JOcharJ~ shsalv0
	END

	IF ~~ THEN BEGIN salv1
	SAY @606 /* Aber ich lebe nur für Euch meine süße Frühlingsrose! Ein Schwert vermag es nicht den Schmerz auszulösen, den Ihr in mir mit Eurem bloßen Angesicht auslöst. Ich verzehre mich nach Euch, Angebetete! */
	IF ~~ THEN EXTERN ~JOcharJ~ shsalv1
	END

	IF ~~ THEN BEGIN salv2
	SAY @607 /* Es schmerzt mich sehr, dass Ihr meine Liebe nicht erwidert. Ihr brecht mir das Herz...aber so dann, muss ich Euch wohl ziehen lassen. */
	IF ~~ THEN EXIT
	END
END
