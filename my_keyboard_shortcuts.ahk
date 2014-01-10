;Replaces the default Win+E shortcut with XYplorer
#e::
run C:\Program Files (x86)\XYplorer\XYplorer.exe
return

;Script for quick text saving
;#c::
;Send, {CTRLDOWN}c{CTRLUP}{ALTDOWN}{TAB}{ALTUP}
;sleep, 300
;Send, {CTRLDOWN}v{CTRLUP}{ENTER}{ALTDOWN}{TAB}{ALTUP}
;return

;Ctrl + Alt + R -- save and reloads current script
^!r::Reload

;Ctrl + Win + N -- open file "notes -- %date%.txt"
^#n::
EnvGet, DROPBOX, DB_HOME
FormatTime, Time, ,yyyy-MM-dd
run "C:\Program Files (x86)\Vim\vim74\gvim.exe" "%DROPBOX%\DailyNotes\Notes--"%Time%".txt"
Return

;Alt + Win + N -- open file "%user input%.txt"
!#n::
run class_notes.ahk
Return

;Alt + Win + E -- Opens this file
!#e::
EnvGet, DROPBOX, DB_HOME
run "C:\Program Files (x86)\Vim\vim74\gvim.exe" "%DROPBOX%\Tweaks\General\Scripts--AutoHotKey\My_Keyboard_Shortcuts.ahk"
Return

;Alt + Win + A -- Hide YouTube Ads
!#a::
Send, {Ctrl down}{Shift down}K{Ctrl up}{Shift up}
SendInput, document.cookie="VISITOR_INFO1_LIVE=oKckVSqvaGw; path=/; domain=.youtube.com";window.location.reload();
Return

;shortcuts for Vim

Capslock::Ctrl

OpenWithVim() ;opens current file in vim if using XYPlorer, else opens vim
{
	EnvGet, DROPBOX, DB_HOME
	oldClipboard = %clipboard%
	IfWinActive, ahk_class ThunderRT6FormDC
	{
		SendInput ^p
		Sleep, 100
		Run, "C:\Program Files (x86)\Vim\vim74\gvim.exe" "%clipboard%"
		clipboard = %oldClipboard%
	}
	Else
	{
		Run, "C:\Program Files (x86)\Vim\vim74\gvim.exe" +star, C:\users\nate
	}
}

Pause::
OpenWithVim()
Return

Insert::
OpenWithVim()
Return

;Ctrl + s "saves" the current vim buffer by writing to clipboard and prompting user to close
#IfWinActive, ahk_class Vim
	^s::SendRaw gg"+yG:q!
#IfWinActive
