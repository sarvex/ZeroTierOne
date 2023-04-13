#
# Initialize
#
AdvancedInstaller.com /newproject "windows/bytey.aip" -type "professional" -lang "en" -overwrite

#
# Product Details
#
AdvancedInstaller.com /edit "windows/bytey.aip" /SetProperty ProductName="bytey"
AdvancedInstaller.com /edit "windows/bytey.aip" /SetVersion 1.0.0
AdvancedInstaller.com /edit "windows/bytey.aip" /SetProperty Manufacturer="Probably Software"
AdvancedInstaller.com /edit "windows/bytey.aip" /SetProperty ARPURLINFOABOUT="drone.ci.lab"
AdvancedInstaller.com /edit "windows/bytey.aip" /SetProperty ARPURLUPDATEINFO="drone.ci.lab"
AdvancedInstaller.com /edit "windows/bytey.aip" /SetProperty ARPHELPLINK="www.stackoverflow.com"
AdvancedInstaller.com /edit "windows/bytey.aip" /SetProperty ARPHELPTELEPHONE="+49 555 404 12345"
AdvancedInstaller.com /edit "windows/bytey.aip" /SetProperty ARPCONTACT="sean@sean.io"
AdvancedInstaller.com /edit "windows/bytey.aip" /SetProperty ARPCOMMENTS="bytey goes nom"

#
# Installation parameters
#
AdvancedInstaller.com /edit "windows/bytey.aip" /SetAppdir -buildname DefaultBuild -path [ProgramFilesFolder][Manufacturer]\[ProductName]
AdvancedInstaller.com /edit "windows/bytey.aip" /SetShortcutdir -buildname DefaultBuild -path [ProgramMenuFolder][ProductName]
AdvancedInstaller.com /edit "windows/bytey.aip" /SetPackageType x86


#
# Add files and folders
#

AdvancedInstaller.com /edit "windows/bytey.aip" /AddFile APPDIR windows\Release\bytey.exe
AdvancedInstaller.com /edit "windows/bytey.aip" /NewFeature Bytey
AdvancedInstaller.com /edit "windows/bytey.aip" /SetCurrentFeature Bytey
AdvancedInstaller.com /edit "windows/bytey.aip" /NewShortcut -name BYTEY -dir 4SHORTCUTDIR -target APPDIR\bytey.exe -wkdir APPDIR

#
# Registry Keys
#
# AdvancedInstaller.com /edit "windows/bytey.aip" /NewReg -RegValue HKUD\Software\[Manufacturer]\[ProductName]\Settings\AppSettings -Data #x36

#
# Prerequisites
#

# AdvancedInstaller.com /edit "windows/bytey.aip" /NewPrerequisite "My Application" -type FeatureBased -prereq_path "C:\My Application.exe" -target_os WinNT
#          -search_type RegValue -search_path "HKLM\Software\My Application\Version" -minversion 1.0

#
# Package Name
#
# AdvancedInstaller.com /edit "windows/bytey.aip" /SetPackageName MyPackageName

#
# Environment Variables
#
# AdvancedInstaller.com /edit "windows/bytey.aip" /NewEnvironment -name NOTEPAD_PATH -value "[APPDIR]"  -install_operation CreateUpdate -behavior Replace

#
# Build
#
AdvancedInstaller.com /build "windows/bytey.aip"
