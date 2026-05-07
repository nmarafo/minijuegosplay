param (
    [string]$folderPath,
    [int]$tolerance = 25
)

Add-Type -AssemblyName System.Drawing

$files = Get-ChildItem -Path $folderPath -Filter "*.png" | Where-Object { $_.Name -notlike "*_original.png" }

foreach ($file in $files) {
    $fullPath = $file.FullName
    $backupPath = $fullPath.Replace(".png", "_original.png")
    
    if (-not (Test-Path $backupPath)) {
        Write-Host "Creating backup: $($backupPath)"
        Copy-Item $fullPath $backupPath
    }

    Write-Host "Processing $($file.Name) (Safe Mode, Tolerance: $tolerance)..."
    
    $original = [System.Drawing.Bitmap]::FromFile($backupPath)
    $width = $original.Width
    $height = $original.Height
    
    # NEW: Sample from (10,10) to avoid thin borders
    $bgColor = $original.GetPixel(10, 10)
    Write-Host "Detected BG Color: R:$($bgColor.R) G:$($bgColor.G) B:$($bgColor.B)"

    $bmp = New-Object System.Drawing.Bitmap($width, $height)
    
    for ($y = 0; $y -lt $height; $y++) {
        for ($x = 0; $x -lt $width; $x++) {
            $color = $original.GetPixel($x, $y)
            
            $diffR = [Math]::Abs($color.R - $bgColor.R)
            $diffG = [Math]::Abs($color.G - $bgColor.G)
            $diffB = [Math]::Abs($color.B - $bgColor.B)

            # Also check for pure black if the sampled color is magenta (to remove the border)
            $isBlack = ($color.R -lt 10 -and $color.G -lt 10 -and $color.B -lt 10)

            if (($diffR -lt $tolerance -and $diffG -lt $tolerance -and $diffB -lt $tolerance) -or $isBlack) {
                $bmp.SetPixel($x, $y, [System.Drawing.Color]::FromArgb(0, 0, 0, 0))
            } else {
                $bmp.SetPixel($x, $y, $color)
            }
        }
    }
    
    $original.Dispose()
    
    $tempPath = $fullPath + ".tmp"
    $bmp.Save($tempPath, [System.Drawing.Imaging.ImageFormat]::Png)
    $bmp.Dispose()
    
    Remove-Item $fullPath
    Rename-Item $tempPath $file.Name
}

Write-Host "Done!"
