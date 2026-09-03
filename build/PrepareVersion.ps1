$pstZone = [System.TimeZoneInfo]::FindSystemTimeZoneById("Pacific Standard Time")
$pstTime = [System.TimeZoneInfo]::ConvertTimeFromUtc((Get-Date).ToUniversalTime(), $pstZone)

$env:MUXVersionBuild = ($pstTime).ToString("yyMM")
$env:MUXVersionRevision = ($pstTime).ToString("dd") + "001"
