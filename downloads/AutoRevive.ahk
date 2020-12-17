#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; ============================
;  		   Keybinds
; (leave the quotes (") there)
; ============================

1st := "F4"
2nd := "F5"
3th := "F6"
HelpKey := "F12"
Delay = 300 ; Delay in ms (300 - recommend)

global Delay
DESC = Creator: likvidator1337.github.io`n1st - %1st%`n2nd - %2nd%`n3th - %3th%`n`nHelp - %HelpKey%`nF7 - Exit


CoordMode, ToolTip, Screen
ToolTip, %DESC%, 1774, 199
SetTimer, RemoveToolTip, 7000


CoordMode, Mouse, Screen


; =======================
; 		  Hotkeys
; =======================

HotKey, *%1st%, 1st
HotKey, *%2nd%, 2nd
HotKey, *%3th%, 3th
Hotkey, *%HelpKey%, help
return

Class Teammates {
	OneT() {
		MouseMove, 654, 250, 3
		sleep, %Delay%
		Send {Enter}
		sleep, %Delay%
		MouseMove, 967, 531, 3
		sleep, %Delay%
		Send {Enter}		
	}
	TwoT() {
		MouseMove, 497, 298, 3
		sleep, %Delay%
		Send {Enter}
		sleep, %Delay%
		MouseMove, 967, 531, 3
		sleep, %Delay%
		Send {Enter}
	}
	ThreeT() {
		MouseMove, 535, 324 , 3
		sleep, %Delay%
		Send {Enter}
		sleep, %Delay%
		MouseMove, 967, 531, 3
		sleep, %Delay%
		Send {Enter}		
	}
	Notification() {
		ToolTip, Reviving...
		SetTimer, RemoveToolTip, 100
		return
	}
}

1st:
Teammates.Notification()
Teammates.OneT()
return

2nd:
Teammates.Notification()
Teammates.TwoT()
return

3th:
Teammates.Notification()
Teammates.ThreeT()
return

help:
CoordMode, ToolTip, Screen
ToolTip, %DESC%, 1774, 199
SetTimer, RemoveToolTip, 7000
return


RemoveToolTip:
ToolTip
return

F7::ExitApp