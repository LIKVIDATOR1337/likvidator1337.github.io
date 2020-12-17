#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ============================
;  		   Keybinds
; (leave the quotes (") there)
; ============================

PrisonKey := "Insert"
FarmlandKey := "Home"
SJunkyardKey := "PgUp"
NJunkyardKey := "PgDn"
ParkKey := "End"
TVShackKey := "Delete"
HelpKey := "F12"

Delay = 200 ;Delay in ms


global Delay
CoordMode, ToolTip, Screen
ToolTip, Creator: likvidator1337.github.io`nF7 - Exit`n`nPrison - %PrisonKey%`nFarmland - %FarmlandKey%`nSouth Junkyard - %SJunkyardKey%`nNorth Junkyard - %NJunkyardKey%`nPark - %ParkKey%`nTV Shack - %TVShackKey%`n`n Help - %HelpKey%, 1774, 199
SetTimer, RemoveToolTip, 7000

CoordMode, Mouse, Screen


; =======================
; 		  Hotkeys
; =======================

HotKey, *%PrisonKey%, prisoncode
HotKey, *%FarmlandKey%, fmkey
HotKey, *%SJunkyardKey%, sjkey
HotKey, *%NJunkyardKey%, njkey
HotKey, *%ParkKey%, parkcode
HotKey, *%TVShackKey%, tvcode
Hotkey, *%HelpKey%, help
return

Class Numbers {
	One() {
		MouseMove, 864,350, 8
		Send {Space}
	}
	Two() {
		MouseMove, 963,350, 8
		Send {Space}
	}
	Three() {
		MouseMove, 1060, 350 , 8
		Send {Space}		
	}
	Four() {
		MouseMove, 868, 449 , 8
		Send {Space}		
	}
	Five() {
		MouseMove, 957, 439 , 8
		Send {Space}		
	}
	Six() {
		MouseMove, 1058, 449 , 8
		Send {Space}		
	}
	Seven() {
		MouseMove, 861, 545 , 8
		Send {Space}		
	}
	Eight() {
		MouseMove, 960, 544 , 8
		Send {Space}		
	}
	Nine() {
		MouseMove, 1062, 548 , 8
		Send {Space}		
	}
	Zero() {
		MouseMove, 959, 643 , 8
		Send {Space}		
	}
}

Class Code {
	Prison() {
		;72948531

		Numbers.Seven()
		sleep, %Delay%
		Numbers.Two()
		sleep, %Delay%
		Numbers.Nine()
		sleep, %Delay%
		Numbers.Four()
		sleep, %Delay%
		Numbers.Eight()
		sleep, %Delay%
		Numbers.Five()
		sleep, %Delay%
		Numbers.Three()
		sleep, %Delay%
		Numbers.One()
		sleep, %Delay%
	}
	Farmland() {
		Numbers.Four()
		sleep, %Delay%
		Numbers.Nine()
		sleep, %Delay%
		Numbers.Two()
		sleep, %Delay%
		Numbers.Eight()
		sleep, %Delay%
		Numbers.Five()
		sleep, %Delay%
		Numbers.One()
		sleep, %Delay%
		Numbers.Six()
		sleep, %Delay%
		Numbers.Three()
		sleep, %Delay%
	}
	SJunkyard() {
		Numbers.Nine()
		sleep, %Delay%
		Numbers.Seven()
		sleep, %Delay%
		Numbers.Two()
		sleep, %Delay%
		Numbers.Six()
		sleep, %Delay%
		Numbers.Four()
		sleep, %Delay%
		Numbers.One()
		sleep, %Delay%
		Numbers.Three()
		sleep, %Delay%
		Numbers.Eight()
		sleep, %Delay%
	}
	NJunkyard() {
		Numbers.Eight()
		sleep, %Delay%
		Numbers.Seven()
		sleep, %Delay%
		Numbers.Six()
		sleep, %Delay%
		Numbers.Two()
		sleep, %Delay%
		Numbers.Four()
		sleep, %Delay%
		Numbers.Eight()
		sleep, %Delay%
		Numbers.Five()
		sleep, %Delay%
		Numbers.One()
		sleep, %Delay%
	}
	Park() {
		Numbers.Six()
		sleep, %Delay%
		Numbers.Zero()
		sleep, %Delay%
		Numbers.Two()
		sleep, %Delay%
		Numbers.Seven()
		sleep, %Delay%
		Numbers.Four()
		sleep, %Delay%
		Numbers.Five()
		sleep, %Delay%
		Numbers.One()
		sleep, %Delay%
		Numbers.Three()
		sleep, %Delay%
	}
	TVShack() {
		Numbers.Two()
		sleep, %Delay%
		Numbers.Seven()
		sleep, %Delay%
		Numbers.Four()
		sleep, %Delay%
		Numbers.Nine()
		sleep, %Delay%
		Numbers.Five()
		sleep, %Delay%
		Numbers.Eight()
		sleep, %Delay%
		Numbers.One()
		sleep, %Delay%
		Numbers.Zero()
		sleep, %Delay%
	}
}


prisoncode:
ToolTip, Code: Prison Shack
Code.Prison()
SetTimer, RemoveToolTip, 100
return

fmkey:
ToolTip, Code: Farmland
Code.Farmland()
SetTimer, RemoveToolTip, 100
return

sjkey:
ToolTip, Code: South Junkyard
Code.SJunkyard()
SetTimer, RemoveToolTip, 100
return

njkey:
ToolTip, Code: North Junkyard
Code.NJunkyard()
SetTimer, RemoveToolTip, 100
return

parkcode:
ToolTip, Code: Park
Code.Park()
SetTimer, RemoveToolTip, 100
return

tvcode:
ToolTip, Code: TV Shack
Code.TVShack()
SetTimer, RemoveToolTip, 100
return

help:
CoordMode, ToolTip, Screen
ToolTip, Creator: likvidator1337.github.io`nF7 - Exit`n`nPrison - %PrisonKey%`nFarmland - %FarmlandKey%`nSouth Junkyard - %SJunkyardKey%`nNorth Junkyard - %NJunkyardKey%`nPark - %ParkKey%`nTV Shack - %TVShackKey%`n`n Help - %HelpKey%, 1774, 199
SetTimer, RemoveToolTip, 7000
return


RemoveToolTip:
ToolTip
return

F7::ExitApp