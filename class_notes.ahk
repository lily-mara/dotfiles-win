#SingleInstance,force
Gui,Add,Button,x17 y201 w43 h23 gSubmit, Submit
Gui,Add,Button,x78 y200 w43 h23 gCancel,Cancel
Gui,Add,Groupbox,x17 y14 w136 h165 vclass,Class
Gui,Add,Radio,x29 y037 w100 h13 vClassGroup1, Calculus
Gui,Add,Radio,x29 y104 w100 h13 vClassGroup2, Rock Climbing
Gui,Add,Radio,x29 y149 w100 h13 vClassGroup3, Programming
Gui,Add,Radio,x29 y126 w100 h13 vClassGroup4, EAS 101
Gui,Add,Radio,x29 y081 w100 h13 vClassGroup5, English
Gui,Add,Radio,x29 y059 w100 h13 vClassGroup6, Spanish
Gui,Add,Groupbox,x161 y14 w136 h121 vprog,Editor
Gui,Add,Radio,x173 y73 w100 h13 vEditGroup2,WriteMonkey
Gui,Add,Radio,x173 y44 w100 h13 vEditGroup1,Sublime Text 2
Gui,Add,Radio,x173 y103 w100 h13 vEditGroup3,MarkDownPad
Gui,Show,x673 y269 w324 h247 AutoSize, Start Taking Notes

Return

;----------------------------------

Submit:
    Gui, Submit, NoHide
    Loop, 6 ; <---- !!
        If ( ClassGroup%A_Index% ) {
            ClassGroup := A_Index
            Break
        }
    Loop, 3 ; <---- !!
        If ( EditGroup%A_Index% ) {
            EditGroup := A_Index
            Break
        }
    FormatTime, Time, ,yyyy-MM-dd
    run class_notes.py %ClassGroup% %EditGroup% %Time%
    ExitApp
Return

Cancel:
    ExitApp
Return

ExitApp
