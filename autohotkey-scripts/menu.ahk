;SuperMenu
;Nate Mara

#Persistent
#SingleInstance


Menu, MyMenu, Add, Save
Menu, MyMenu, Add, Close
return

Close:
MsgBox, Close
return

Save:
Send ^s
return

Mbutton::
MouseGetPos, MouseX, MouseY
MouseX -= 75
MouseY -= 25
Menu, MyMenu, Show, %MouseX%, %MouseY%
Return

F6::Reload
