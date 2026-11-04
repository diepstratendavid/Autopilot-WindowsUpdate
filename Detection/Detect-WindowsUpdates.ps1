$expectedVersion = '1.0.0'
$marker = Get-ItemProperty -Path 'HKLM:\SOFTWARE\RUBIX\AutopilotWindowsUpdate' -ErrorAction SilentlyContinue
if ($marker -and $marker.PackageVersion -eq $expectedVersion) {
    Write-Output "Detected: $($marker.Status) ($($marker.LastRun))"
    exit 0
}
exit 1