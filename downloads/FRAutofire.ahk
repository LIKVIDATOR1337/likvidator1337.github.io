#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

DESC = Creator: likvidator1337.github.io`n`nAuto-Fire for Warzone`n`nF7 - to terminate script

; ==================
;   FR 5.56 Loadout
; ==================
; 
; Muzzle:Compensator
; Barrel: FR 24.4
; Underbarrel: Ranger
; Rear Grip: Rubberized

; ==================
;   Game Settings
; ==================
; Resolution: 1920x1080
; Sensitivity: 12.00



; =========
;  HOTKEYS
; =========

Hotkey, F12, help

CoordMode, ToolTip, Screen
ToolTip, %DESC%, 1774, 199
SetTimer, RemoveToolTip, 7000
 
	$XButton2::
		While GetKeyState("XButton2", "P")
		{
     		Send {LButton}
     		MouseMove, -1, 4, 2, R
     		Sleep 50
		}
Return

RemoveToolTip:
ToolTip
return

help:
CoordMode, ToolTip, Screen
ToolTip, %DESC%, 1774, 199
SetTimer, RemoveToolTip, 7000
return


F7::ExitApp