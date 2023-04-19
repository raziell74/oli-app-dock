# Uses windows forms to send keystrokes to customize vscode Terminals, sets icons from the bottom up
Add-Type -AssemblyName System.Windows.Forms
$tabDelay = .6

# Terminal
[System.Windows.Forms.SendKeys]::SendWait("^+%cRed~^+%iterminal-powershell~")

# Oli Dock
[System.Windows.Forms.SendKeys]::SendWait("^{PGUP}"); Start-Sleep -s $tabDelay
[System.Windows.Forms.SendKeys]::SendWait("^+%cMagenta~^+%iPlay~")

# [BE] Inspections API
[System.Windows.Forms.SendKeys]::SendWait("^{PGUP}"); Start-Sleep -s $tabDelay
[System.Windows.Forms.SendKeys]::SendWait("^+%cCyan~^+%iVerified-filled~")

# [App] Inspector
[System.Windows.Forms.SendKeys]::SendWait("^{PGUP}"); Start-Sleep -s $tabDelay
[System.Windows.Forms.SendKeys]::SendWait("^+%cYellow~^+%iNotebook~")

# [App] HomeOwner
[System.Windows.Forms.SendKeys]::SendWait("^{PGUP}"); Start-Sleep -s $tabDelay
[System.Windows.Forms.SendKeys]::SendWait("^+%cBlue~^+%iHome~")

# [BE] AI Assist
[System.Windows.Forms.SendKeys]::SendWait("^{PGUP}"); Start-Sleep -s $tabDelay
[System.Windows.Forms.SendKeys]::SendWait("^+%cYellow~^+%ilightbulb-autofix~")

# [FE] Marketing
[System.Windows.Forms.SendKeys]::SendWait("^{PGUP}"); Start-Sleep -s $tabDelay
[System.Windows.Forms.SendKeys]::SendWait("^+%cGreen~^+%izap~")

# [BE] Core
[System.Windows.Forms.SendKeys]::SendWait("^{PGUP}"); Start-Sleep -s $tabDelay
[System.Windows.Forms.SendKeys]::SendWait("^+%cCyan~^+%irepo-delete~")

# [FE] Styleguide
[System.Windows.Forms.SendKeys]::SendWait("^{PGUP}"); Start-Sleep -s $tabDelay
[System.Windows.Forms.SendKeys]::SendWait("^+%cYellow~^+%ibeaker~")

# [FE] Platform
[System.Windows.Forms.SendKeys]::SendWait("^{PGUP}"); Start-Sleep -s $tabDelay
[System.Windows.Forms.SendKeys]::SendWait("^+%cGreen~^+%iorganization~")

# Split terminal switch action
# [System.Windows.Forms.SendKeys]::SendWait("%{LEFT}"); Start-Sleep -s $tabDelay
