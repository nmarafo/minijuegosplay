Add-Type -AssemblyName System.Drawing
$img = [System.Drawing.Image]::FromFile("minigames/arcade/vegueta_dash/assets/spritesheets/explorador_fase1.png")
Write-Host "$($img.Width)x$($img.Height)"
$img.Dispose()
