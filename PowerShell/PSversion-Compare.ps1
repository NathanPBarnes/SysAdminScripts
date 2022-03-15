<# This script will compare a system's current PowerShell version
to any version a sysadmin assigns to $SomeVersion #>

$SomeVersion = [Version]'9.4.2'

$SomeVersion.GetType()

$SomeVersion.GetType().Name

Write-Output $SomeVersion

$CurrentVersion = $PSVersionTable.PSVersion.ToString()

$CurrentVersion.GetType()

$CurrentVersion.GetType().Name

Write-Output $CurrentVersion

if ($SomeVersion -lt $CurrentVersion)
{
    Write-Output "True"
}
else
{
    Write-Output "Fasle"
}