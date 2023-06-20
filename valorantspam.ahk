#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting director

;`::
;Send, qe
;sleep 38
;return

`::
RepeatKey := !RepeatKey
If RepeatKey
	SetTimer, SendTheKey, 50
Else
	SetTimer, SendTheKey, Off
Return

SendTheKey:
SendInput qx
Return

;Esc::ExitApp