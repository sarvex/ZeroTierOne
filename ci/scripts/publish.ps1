$zt_name=$args[0]
$distro=$args[1]
$zt_isa=$args[2]
$version=$args[3]
$build_event=$args[4]

C:\scripts\fix-ec2-metadata.ps1
Get-ChildItem windows
aws s3 cp windows\zerotier-SetupFiles\zerotier.msi s3://zerotier-builds/windows/$version/zerotier.msi
