param (
    [string]$ImagePath,
    [string]$OutputPath,
    [int]$Tolerance = 50
)

Add-Type -AssemblyName System.Drawing

if (-not (Test-Path $ImagePath)) {
    Write-Error "Image not found at $ImagePath"
    exit
}

Write-Host "Processing $ImagePath -> $OutputPath"

# Target Color: Magenta (#FF00FF)
$targetR = 255
$targetG = 0
$targetB = 255

$original = [System.Drawing.Bitmap]::FromFile($ImagePath)
$width = $original.Width
$height = $original.Height

$bmp = New-Object System.Drawing.Bitmap($width, $height)

for ($y = 0; $y -lt $height; $y++) {
    for ($x = 0; $x -lt $width; $x++) {
        $color = $original.GetPixel($x, $y)
        
        $diffR = [Math]::Abs($color.R - $targetR)
        $diffG = [Math]::Abs($color.G - $targetG)
        $diffB = [Math]::Abs($color.B - $targetB)

        # If it's close to magenta, make it transparent
        if ($diffR -lt $Tolerance -and $diffG -lt $Tolerance -and $diffB -lt $Tolerance) {
            $bmp.SetPixel($x, $y, [System.Drawing.Color]::FromArgb(0, 0, 0, 0))
        } else {
            $bmp.SetPixel($x, $y, $color)
        }
    }
}

$original.Dispose()
$bmp.Save($OutputPath, [System.Drawing.Imaging.ImageFormat]::Png)
$bmp.Dispose()

Write-Host "Done! Saved to $OutputPath"
