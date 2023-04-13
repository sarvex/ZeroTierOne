$version=$args[0]
write-host version: $version

$uri="http://zerotier-builds.ci.lab/windows/${version}/ZeroTierOne.msi"
$out="bytey.msi"
Invoke-WebRequest -uri $uri -OutFile $out

$file = "ZeroTierOne.msi"
$log = "install.log" 
$procMain = Start-Process "msiexec" "/i `"$file`" /qn /l*! `"$log`"" -NoNewWindow -PassThru
$procLog = Start-Process "powershell" "Get-Content -Path `"$log`" -Wait" -NoNewWindow -PassThru 
$procMain.WaitForExit()
$procLog.Kill()
