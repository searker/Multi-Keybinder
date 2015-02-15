; #################################### Debug #####################################
	gui, debug:add, button, x50 w80 h30 gdr, Reload
	gui, debug:add, button, x50 w80 h30 gdq, Quit
	gui, debug:show, x1700 y900 w180, Debug
; #################################### Debug #####################################

; ##################################### Main #####################################
g_main:
	gui, main:font, , Courier New
	gui, main:add, GroupBox, x10 y10 w280 h122 Section Center, Befehle ; w370

	gui, main:font, ,
	gui, main:add, Button, xs+10 ys+20 w80 h40 gg_allgemein, Allgemein
	gui, main:add, Button, xp+90 yp wp hp, Berufe
	gui, main:add, Button, xp+90 yp wp hp, Belegbare Hotkeys
	;~ gui, main:add, Button, xp+90 yp wp hp, 

	gui, main:add, Button, xs+10 ys+70 wp hp, Automatische Systeme
	gui, main:add, Button, xp+90 yp wp hp, MDC
	gui, main:add, Button, xp+90 yp wp hp, Freunde / Feinde
	;~ gui, main:add, Button, xp+90 yp wp hp, 


	gui, main:font, , Courier New
	gui, main:add, GroupBox, xs ys+132 w280 h72 Section Center, Overlay

	gui, main:font, ,
	gui, main:add, Button, xs+10 ys+20 w80 h40, Allgemein
	gui, main:add, Button, xp+90 yp wp hp, Berufe
	gui, main:add, Button, xp+90 yp wp hp, Fahrzeug
	;~ gui, main:add, Button, xp+90 yp wp hp, 


	gui, main:font, , Courier New
	gui, main:add, GroupBox, xs ys+82 w280 h72 Section Center, Sonstiges

	gui, main:font, ,
	gui, main:add, Button, xs+10 ys+20 w80 h40, Einstellungen
	gui, main:add, Button, xp+90 yp wp hp, Update
	gui, main:add, Button, xp+90 yp wp hp gg_beenden, Beenden
	;~ gui, main:add, Button, xp+90 yp wp hp, 


	gui, main:font, , Courier New
	gui, main:add, text, x150 y296, © Logan.Miller, 2015

	gui, main:show, w300 h310, Multi-Keybinder ;w390
return
; ##################################### Main #####################################

; ################################## Allgemein ###################################
g_allgemein:
	gui, main:destroy
	
	; ##### Hotstrings #####
	gui, allgemein:font, , Courier New
	gui, allgemein:add, GroupBox, x10 y10 w610 h200 section, Hotstrings
	gui, allgemein:add, Text, xs+25 ys+15, Befehl
	gui, allgemein:add, Text, xs+100 yp, Wirkung
	gui, allgemein:add, Text, xs+250 yp, Anmerkung
	
	gui, allgemein:font, ,
	gui, allgemein:add, Text, xs+35 ys+35, /op
	gui, allgemein:add, Text, xs+110 yp, /oparking
	gui, allgemein:add, Text, xs+260 yp, Öffnet Parkplatz am Zivi-LS
	
	gui, allgemein:add, Text, xs+35 yp+18, /bd
	gui, allgemein:add, Text, xs+110 yp, /buydonut
	gui, allgemein:add, Text, xs+260 yp, Öffnet den Dialog und kauft 10 Donuts
	
	gui, allgemein:add, Text, xs+35 yp+18, /ed
	gui, allgemein:add, Text, xs+110 yp, /eatdonut
	gui, allgemein:add, Text, xs+260 yp, 
	
	gui, allgemein:add, Text, xs+35 yp+18, /ud
	gui, allgemein:add, Text, xs+110 yp, /usedrugs 2
	gui, allgemein:add, Text, xs+260 yp, 
	; ##### Hotstrings #####
	
	; ###### Hotkeys #######
	gui, allgemein:font, , Courier New
	gui, allgemein:add, GroupBox, xs ys+210 w610 h250 section, Hotkeys
	gui, allgemein:add, Text, xs+25 ys+15, Taste
	gui, allgemein:add, Text, xs+100 yp, Wirkung
	gui, allgemein:add, Text, xs+250 yp, Anmerkung
	
	gui, allgemein:font, ,
	gui, allgemein:add, Text, xs+35 ys+35, X
	gui, allgemein:add, Text, xs+110 yp, Fahrzeug-System
	gui, allgemein:add, Text, xs+260 yp, Motor aus:`nMotor an:
	gui, allgemein:add, Text, xs+315 yp, /lock (wenn offen) -> /engine -> /lights (wenn aus und nötig)`n/lock (wenn offen) -> /engine -> /lights (wenn an)
	
	gui, allgemein:add, Text, xs+35 yp+30, Y
	gui, allgemein:add, Text, xs+110 yp, /lock`n/carlock
	gui, allgemein:add, Text, xs+260 yp, wenn Fahrer`nwenn nicht in Auto
	
	gui, allgemein:add, Text, xs+35 yp+30, J
	gui, allgemein:add, Text, xs+110 yp, /enter`n/exit
	gui, allgemein:add, Text, xs+260 yp, wenn auf Straße`nwenn in Haus
	
	gui, allgemein:add, Text, xs+35 yp+30, R
	gui, allgemein:add, Text, xs+110 yp, Wiederholung
	gui, allgemein:add, Text, xs+260 yp, Wiederholt letzte manuelle Chat-Eingabe
		
	gui, allgemein:add, Text, xs+35 yp+18, Num 4
	gui, allgemein:add, Text, xs+110 yp, Begrüßung
	gui, allgemein:add, Text, xs+260 yp, Abhängig von Tageszeit
	
	gui, allgemein:add, Text, xs+35 yp+18, Strg + Num 4
	gui, allgemein:add, Text, xs+110 yp, Verabschiedung
	gui, allgemein:add, Text, xs+260 yp, Abhängig von Tageszeit
	
	gui, allgemein:add, Text, xs+35 yp+18, N
	gui, allgemein:add, Text, xs+110 yp, /notafk
	gui, allgemein:add, Text, xs+260 yp, Rechnung muss manuell gelöst werden
	
	gui, allgemein:add, Text, xs+35 yp+18, O
	gui, allgemein:add, Text, xs+110 yp, /opencargo
	gui, allgemein:add, Text, xs+260 yp, 
	
	gui, allgemein:add, Text, xs+35 yp+18, Strg + O
	gui, allgemein:add, Text, xs+110 yp, /cargo
	gui, allgemein:add, Text, xs+260 yp, 
	; ###### Hotkeys #######

	gui, allgemein:-SysMenu
	gui, allgemein:show, w630 h485, Allgemeine Befehle
return
; ################################## Allgemein ###################################



return

g_beenden:
	ExitApp

mainGuiClose:
	ExitApp
	return

debugGuiClose:
	return
	
allgemeinGuiEscape:
	Gui, allgemein:destroy
	goto, g_main
return