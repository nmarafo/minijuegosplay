Add-Type -AssemblyName System.Drawing
$img = [System.Drawing.Bitmap]::FromFile("C:/Users/norbe/.gemini/antigravity/brain/852e0746-2128-4913-a8ab-a8c755c3d02c/explorador_fase2_fixed_ultra_magenta_1778132366997.png")
$p = $img.GetPixel(10,10)
Write-Host "Pixel 10,10 -> R:$($p.R) G:$($p.G) B:$($p.B)"
$img.Dispose()
