#NoEnv
SendMode Input
SetTitleMatchMode, 2 ; Match partial titles
#SingleInstance Force

; Track if Chrome was already focused
ChromeWasFocused := false

Loop {
    ; Check if Chrome's New Tab page is active
    if (WinActive("New Tab - Google Chrome ahk_exe chrome.exe")) {
        ; Only trigger if the window JUST regained focus
        if (!ChromeWasFocused) {
            Send, ^l ; Focus omnibox
            ChromeWasFocused := true
        }
    } else {
        ; Reset the tracker when Chrome loses focus
        ChromeWasFocused := false
    }
    Sleep, 50 ; Faster checks, minimal CPU impact
}
Return

; Toggle on/off with Win+Z | Exit with Win+X
#z::Suspend
#x::ExitApp
