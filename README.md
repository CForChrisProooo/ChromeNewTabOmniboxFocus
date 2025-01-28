# Chrome New Tab Omnibox Focus

An AutoHotkey script that automatically focuses Chrome's address bar when you switch back to a new tab. No more typing into the void or wasting time clicking to start typing.

## Why?
Chrome unfocuses the omnibox when you switch windows, tabs, or leave Chrome. This script fixes that annoying behavior specifically for new tabs.

## Install
1. [Install AutoHotkey](https://www.autohotkey.com/) (v1.1+)
2. Download the script:
   - Direct link: [ChromeOmniboxFocus.ahk](https://github.com/CForChrisProooo/ChromeNewTabOmniboxFocus/blob/main/ChromeOmniboxFocus.ahk)
   - (Right-click > "Save link as" works best)
3. Double-click the .ahk file to run

## How to Use
- Runs in your system tray (green H icon)
- **Toggle on/off**: Win + Z
- **Quit**: Win + X

Works when:
1. You switch back to Chrome
2. You're on a new tab page (title must be "New Tab - Google Chrome")
3. The script should not need to be run as administrator or need any special treatment, tested on Windows 11 and Google Chrome Version 131.0.6778.265 (Official Build) (64-bit)
4. Using the Windows startup folder (run shell:startup) you can have the script launch when you login to the machine.

## Tweaks
### For non-English Chrome
Change the window title match in the script:
```ahk
; Change this line if your Chrome uses different text
if (WinActive("New Tab - Google Chrome ahk_exe chrome.exe"))
