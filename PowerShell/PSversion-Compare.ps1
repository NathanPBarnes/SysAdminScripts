<# This script will compare a system's current PowerShell version
to any version a sysadmin assigns to $SomeVersion #>

$SeekVersion = [Version]'7.0.0'.ToString()

$CurrentVersion = $PSVersionTable.PSVersion.ToString()

# Utilized the following commands to aid in script development

# $SeekVersion.GetType()

# $SeekVersion.GetType().Name

# Write-Output $SeekVersion

# $CurrentVersion.GetType()

# $CurrentVersion.GetType().Name

# Write-Output $CurrentVersion

if ($SeekVersion -lt $CurrentVersion)
{
    Write-Output "The given version, $($SeekVersion), is older than $($env:computername)'s current version, $($CurrentVersion)"
}
else
{
    Write-Output "The given version, $($SeekVersion), is newer than $($env:computername)'s current version, $($CurrentVersion)"
}