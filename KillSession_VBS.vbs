'If Not WScript.Arguments.Named.Exists("elevate") Then
'  CreateObject("Shell.Application").ShellExecute WScript.FullName , WScript.ScriptFullName & " /elevate", "", "runas", 1
'  WScript.Quit
'End If
Const strComputer = "." 
Set WshShell = CreateObject("WScript.Shell")

Dim objWMIService, colProcessList
Set objWMIService = GetObject("winmgmts:" & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
Set colProcessList = objWMIService.ExecQuery("SELECT * FROM Win32_Process WHERE Name = 'GlinttHS.Tools.ConfigDeployIIS.exe'")

'msgbox("Tem a certeza que pretende instalar o BTEC?" & vbCrlf & " <> DB_NAME = " & DB_NAME,vbyesno, "Cenas?") 

For Each objProcess in colProcessList 
	'WScript.Echo "Processo: " & objProcess.ProcessId
	WshShell.Exec "PSTools\PSkill " & objProcess.ProcessId 
	'WshShell.Exec "Taskkill /PID " & objProcess.ProcessId & objProcess.ProcessId & " /F " 
Next
