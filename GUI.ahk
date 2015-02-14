gui, main:font, , Courier New
gui, main:add, GroupBox, x10 y10 w280 h122 Section Center, Befehle ; w370

gui, main:font, ,
gui, main:add, Button, xs+10 ys+20 w80 h40, Allgemein
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
gui, main:add, Button, xp+90 yp wp hp, Beenden
;~ gui, main:add, Button, xp+90 yp wp hp, 


gui, main:font, , Courier New
gui, main:add, text, x150 y296, © Logan.Miller, 2015

gui, main:show, w300 h310, Multi-Keybinder ;w390



gui, debug:add, button, x50 w80 h30 gdr, Reload
gui, debug:add, button, x50 w80 h30 gdq, Quit
gui, debug:show, x1700 y900 w180, Debug

return

mainGuiClose:
	ExitApp
	return

debugGuiClose:
	return