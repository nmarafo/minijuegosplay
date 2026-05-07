Add-Type -AssemblyName System.Drawing
Get-ChildItem "minigames/arcade/vegueta_dash/assets/spritesheets/*.png" | ForEach-Object {
    $img = [System.Drawing.Image]::FromFile($_.FullName)
    Write-Host "$($_.Name): $($img.Width)x$($img.Height)"
    $img.Dispose()
}
