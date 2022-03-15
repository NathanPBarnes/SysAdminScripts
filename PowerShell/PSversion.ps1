<# The script below can be used to determine various software versions for quick comparisons


# https://docs.microsoft.com/en-us/dotnet/api/system.version.-ctor?view=netframework-4.0
#>


# need to utilize version & the objects methods for comparision of versions of software
filter Convert-VersionToComparableText { '{0:0000000000}{1:0000000000}{2:0000000000}' -f $_.Major, $_.Minor, $_.Build }
$SomeVersion = [Version]'9.4.2' | Convert-VersionToComparableText

$scriptversion = $SomeVersion
$currentVersion = $PSVersionTable.PSVersion 

if ([Version]::new($scriptversion.Major,$scriptversion.Minor,$scriptversion.Build) -gt [Version]::new($currentVersion.Major,$currentVersion.Minor,$currentVersion.Build)) 

{
    Write-Output "success"
}

elseif ([Version]::new($scriptversion.Major,$scriptversion.Minor,$scriptversion.Build) -lt [Version]::new($currentVersion.Major,$currentVersion.Minor,$currentVersion.Build))

{
    Write-Output "fail"

}