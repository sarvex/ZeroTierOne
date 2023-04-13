#
# Initialize
#
AdvancedInstaller.com /newproject "windows/zerotier-one.aip" -type "professional" -lang "en" -overwrite

#
# Product Details
#
AdvancedInstaller.com /edit "windows/zerotier-one.aip" /SetProperty ProductName="zerotier-one"
AdvancedInstaller.com /edit "windows/zerotier-one.aip" /SetVersion 1.0.0
AdvancedInstaller.com /edit "windows/zerotier-one.aip" /SetProperty Manufacturer="Probably Software"
AdvancedInstaller.com /edit "windows/zerotier-one.aip" /SetProperty ARPURLINFOABOUT="drone.ci.lab"
AdvancedInstaller.com /edit "windows/zerotier-one.aip" /SetProperty ARPURLUPDATEINFO="drone.ci.lab"
AdvancedInstaller.com /edit "windows/zerotier-one.aip" /SetProperty ARPHELPLINK="www.stackoverflow.com"
AdvancedInstaller.com /edit "windows/zerotier-one.aip" /SetProperty ARPHELPTELEPHONE="+49 555 404 12345"
AdvancedInstaller.com /edit "windows/zerotier-one.aip" /SetProperty ARPCONTACT="sean@sean.io"
AdvancedInstaller.com /edit "windows/zerotier-one.aip" /SetProperty ARPCOMMENTS="zerotier-one goes nom"

#
# Installation parameters
#
AdvancedInstaller.com /edit "windows/zerotier-one.aip" /SetAppdir -buildname DefaultBuild -path [ProgramFilesFolder][Manufacturer]\[ProductName]
AdvancedInstaller.com /edit "windows/zerotier-one.aip" /SetShortcutdir -buildname DefaultBuild -path [ProgramMenuFolder][ProductName]
AdvancedInstaller.com /edit "windows/zerotier-one.aip" /SetPackageType x86


#
# Add files and folders
#

AdvancedInstaller.com /edit "windows/zerotier-one.aip" /AddFile APPDIR windows\Release\zerotier-one.exe
AdvancedInstaller.com /edit "windows/zerotier-one.aip" /NewFeature Zerotier-One
AdvancedInstaller.com /edit "windows/zerotier-one.aip" /SetCurrentFeature Zerotier-One
AdvancedInstaller.com /edit "windows/zerotier-one.aip" /NewShortcut -name ZEROTIER-ONE -dir 4SHORTCUTDIR -target APPDIR\zerotier-one.exe -wkdir APPDIR

#
# Registry Keys
#
# AdvancedInstaller.com /edit "windows/zerotier-one.aip" /NewReg -RegValue HKUD\Software\[Manufacturer]\[ProductName]\Settings\AppSettings -Data #x36

#
# Prerequisites
#

# AdvancedInstaller.com /edit "windows/zerotier-one.aip" /NewPrerequisite "My Application" -type FeatureBased -prereq_path "C:\My Application.exe" -target_os WinNT
#          -search_type RegValue -search_path "HKLM\Software\My Application\Version" -minversion 1.0

#
# Package Name
#
# AdvancedInstaller.com /edit "windows/zerotier-one.aip" /SetPackageName MyPackageName

#
# Environment Variables
#
# AdvancedInstaller.com /edit "windows/zerotier-one.aip" /NewEnvironment -name NOTEPAD_PATH -value "[APPDIR]"  -install_operation CreateUpdate -behavior Replace

#
# Build
#
AdvancedInstaller.com /build "windows/zerotier-one.aip"
