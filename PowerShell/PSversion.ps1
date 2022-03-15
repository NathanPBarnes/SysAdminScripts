filter Convert-VersionToComparableText { '{0:0000000000}{1:0000000000}{2:0000000000}' -f $_.Major, $_.Minor, $_.Build }
$SomeVersion = [Version]'7.1.1' | Convert-VersionToComparableText

$scriptversion = $SomeVersion
$currentVersion = $PSVersionTable.PSVersion

if ([Version]::new($scriptversion.Major,$scriptversion.Minor,$scriptversion.Build) -lt [Version]::new($currentVersion.Major,$currentVersion.Minor,$currentVersion.Build)) {
    Write-Output "succes"
}