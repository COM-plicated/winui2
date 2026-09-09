[CmdLetBinding()]
Param(
    [string]$SubVersion
)

$pstZone = [System.TimeZoneInfo]::FindSystemTimeZoneById("Pacific Standard Time")
$pstTime = [System.TimeZoneInfo]::ConvertTimeFromUtc((Get-Date).ToUniversalTime(), $pstZone)

$env:SubVersion = $SubVersion
$env:MUXVersionBuild = ($pstTime).ToString("yyMM")
$env:MUXVersionRevision = ($pstTime).ToString("dd") + $SubVersion
