$targetFolders = @("Primordial", "Other", "Neverlose", "Gamesense", "CS2")
foreach ($folder in $targetFolders) {
    if (Test-Path $folder) {
        Write-Host "Cleaning folder: $folder ..."
        $files = Get-ChildItem -Path $folder -Filter *.lua -Recurse
        foreach ($file in $files) {
            try {
                # Use -LiteralPath to handle characters like [ and ]
                $content = Get-Content -LiteralPath $file.FullName -ErrorAction Stop
                $newContent = $content | Where-Object { 
                    $_ -notmatch "github.com/s0daa" -and 
                    $_ -notmatch "dsc.gg/southwestcfgs" -and
                    $_ -notmatch "discord.gg/b37eKFbkPE"
                }
                $finalContent = @("-- [BADKET] LUA CS2-CSGO Scripts", "-- Optimized for performance and stability", "") + $newContent
                $finalContent | Set-Content -LiteralPath $file.FullName -ErrorAction Stop
            } catch {
                Write-Host "Failed to process: $($file.FullName)"
            }
        }
    }
}
Write-Host "DONE! All files cleaned and rebranded to BADKET."
