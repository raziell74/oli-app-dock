# Uses windows forms to send keystrokes to customize vscode Terminals, sets icons from the bottom up
Add-Type -AssemblyName System.Windows.Forms$tabDelay = .6

# Terminal 
[System.Windows.Forms.SendKeys]::SendWait("^+%cRed~^+%iterminal-powershell~")

# Logstash
[System.Windows.Forms.SendKeys]::SendWait("^{PGUP}"); Start-Sleep -s $tabDelay
[System.Windows.Forms.SendKeys]::SendWait("^+%cYellow~^+%iArchive~")

# Theia Containers
[System.Windows.Forms.SendKeys]::SendWait("^{PGUP}"); Start-Sleep -s $tabDelay
[System.Windows.Forms.SendKeys]::SendWait("^+%cMagenta~^+%ivm-running~")

# Business-tier
[System.Windows.Forms.SendKeys]::SendWait("^{PGUP}"); Start-Sleep -s $tabDelay
[System.Windows.Forms.SendKeys]::SendWait("^+%cCyan~^+%irepo-delete~")

# Frontend
[System.Windows.Forms.SendKeys]::SendWait("%{LEFT}"); Start-Sleep -s $tabDelay
[System.Windows.Forms.SendKeys]::SendWait("^+%cGreen~^+%iorganization~")