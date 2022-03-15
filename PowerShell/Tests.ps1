filter Convert-VersionToComparableText { '{0:0000000000}{1:0000000000}{2:0000000000}' -f $_.Major, $_.Minor, $_.Build }
$SomeVersion = [Version]'9.4.2' | Convert-VersionToComparableText

$SomeVersion.GetType()