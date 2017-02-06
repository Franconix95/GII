tasklist /fi "GlinttHS.Tools.ConfigDeployIIS.exe" |find ":" > nul
if errorlevel 1 taskkill /f /im "GlinttHS.Tools.ConfigDeployIIS.exe"
exit