start-process "powershell.exe" -verb "runas" -arg @("-command", "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))") -wait

start-process "choco" -verb "runas" -arg @("install", "-y", "git", "gitextensions","vscode", "vscode-powershell")
