gui, main:font, , Courier New
gui, main:add, GroupBox, x10 y10 w370 h122 Section Center, Befehle

gui, main:font, ,
gui, main:add, Button, xs+10 ys+20 w80 h40, 
gui, main:add, Button, xp+90 yp wp hp, 
gui, main:add, Button, xp+90 yp wp hp, 
gui, main:add, Button, xp+90 yp wp hp, 

gui, main:add, Button, xs+10 ys+70 wp hp, 
gui, main:add, Button, xp+90 yp wp hp, 
gui, main:add, Button, xp+90 yp wp hp, 
gui, main:add, Button, xp+90 yp wp hp, 


gui, main:font, , Courier New
gui, main:add, GroupBox, xs ys+132 w370 h72 Section Center, Overlay

gui, main:font, ,
gui, main:add, Button, xs+10 ys+20 w80 h40, 
gui, main:add, Button, xp+90 yp wp hp, 
gui, main:add, Button, xp+90 yp wp hp, 
gui, main:add, Button, xp+90 yp wp hp, 


gui, main:font, , Courier New
gui, main:add, GroupBox, xs ys+82 w370 h72 Section Center, Einstellungen

gui, main:font, ,
gui, main:add, Button, xs+10 ys+20 w80 h40, 
gui, main:add, Button, xp+90 yp wp hp, 
gui, main:add, Button, xp+90 yp wp hp, 
gui, main:add, Button, xp+90 yp wp hp, 


gui, main:show, w390 h310, Multi-Keybinder



gui, debug:add, button, x50 w80 h30 gdr, Reload
gui, debug:add, button, x50 w80 h30 gdq, Quit
gui, debug:show, x1700 y900 w180, Debug

return



debugGuiClose:
	return