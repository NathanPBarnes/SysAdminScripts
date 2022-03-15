# Note this script only works on Windows versions below
<#
Windows 10
Windows 8.1 Pro
Windows 8.1 Enterprise
Windows 7 SP1
Windows Server 2016 TP5
Windows Server 2012 R2
Windows Server 2008 R2 SP1
#>

# First determine if RSAT are installed, can use variable here for user input if needed
$service = Get-Service -Name 'RemoteServerAdministrationTools' -ErrorAction SilentlyContinue

# Second check to ensure the current PowerShell & .NET versions are sufficient
# https://docs.microsoft.com/en-us/powershell/module/azuread/?view=azureadps-2.0
function Get-PSVersion {
    if (test-path variable:psversiontable) {$psversiontable.psversion} else {[version]"3.0.0.0"}
}
($PSVersionTable.PSVersion)

# Next check to see if PowerShell Azure tools are installed, if not install

