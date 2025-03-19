Ferramentas tops testes sistemas

In windows open PowerShell as a administrator and run below command:

winget install jqlang.jq

Once it was installed, now powershell added the .exe to the path environment variable and ask you to re-start the powershell. I would recommend you to restart you windows and then open your powershell / windows command line / git bash cli and run below command to check the jq is properly installed or not.

jq --version

if installed it provide the jq version.

$ jq --version

jq-1.7-dirty

Official installation documentation guide. https://jqlang.github.io/jq/download/#windows:~:text=winget%20install%20jqlang.jq
