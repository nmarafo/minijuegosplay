Add-Type -AssemblyName System.Drawing
$img = [System.Drawing.Bitmap]::FromFile("minigames/arcade/vegueta_dash/assets/spritesheets/explorador_fase2_original.png")
$points = @(
    "0,0", "10,10", "100,100", "500,500", "10,500", "500,10"
)
foreach($p in $points) {
    $coords = $p.Split(",")
    $pix = $img.GetPixel($coords[0], $coords[1])
    Write-Host "Point $p -> R:$($pix.R) G:$($pix.G) B:$($pix.B)"
}
$img.Dispose()
