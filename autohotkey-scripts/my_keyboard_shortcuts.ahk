;Replaces the default Win+E shortcut with XYplorer
#e::
run C:\Program Files (x86)\XYplorer\XYplorer.exe
return

;Ctrl + Alt + R -- reloads current script
^!r::Reload

;Alt + Win + E -- Opens this file
!#e::
EnvGet, HOME, HOMEPATH
run "gvim" "%HOME%\.dotfiles\autohotkey-scripts\my_keyboard_shortcuts.ahk"
Return

;shortcuts for Vim

OpenWithVim() ;opens current file in vim if using XYPlorer, else opens vim
{
	EnvGet, DROPBOX, DB_HOME
	oldClipboard = %clipboard%
	IfWinActive, ahk_class ThunderRT6FormDC
	{
		SendInput ^p
		Sleep, 100
		Run, "gvim" "%clipboard%"
		clipboard = %oldClipboard%
	}
	Else
	{
		Run, "gvim" +star, C:\users\nate
	}
}

Pause::
OpenWithVim()
Return

Insert::
OpenWithVim()
Return

Capslock::send {lctrl down}
Capslock up::send % (a_priorkey = "Capslock") ? "{lctrl up}{esc}" : "{lctrl up}"
