#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Start/stop the script on tilde (~) key
`::
    Toggle := !Toggle
    if (Toggle)
    {
        SetTimer, ClickAddToCart, 2000 ; Set a 2-second delay between clicks
        Tooltip, Script is running! Press tilde (~) to stop.
    }
    else
    {
        SetTimer, ClickAddToCart, Off ; Stop the clicking action
        Tooltip
    }
    return

ClickAddToCart:
    ; Find the window with the specified title
    WinGet, hWnd, ID, American Express - Dashboard — Mozilla Firefox
    ; Activate the window
    WinActivate, ahk_id %hWnd%

    ; Wait for the window to become active
    WinWaitActive, ahk_id %hWnd%

    ; Click on the "Add to Cart" text
    ControlClick, Add to Card, American Express - Dashboard — Mozilla Firefox

    return