param (
    [string]$folderPath,
    [int]$tolerance = 25
)

Add-Type -AssemblyName System.Drawing

$files = Get-ChildItem -Path $folderPath -Filter "*.png" | Where-Object { $_.Name -notlike "*_original.png" }

foreach ($file in $files) {
    $fullPath = $file.FullName
    $backupPath = $fullPath.Replace(".png", "_original.png")
    
    # 1. Create Backup if it doesn't exist
    if (-not (Test-Path $backupPath)) {
        Write-Host "Creating backup: $($backupPath)"
        Copy-Item $fullPath $backupPath
    }

    Write-Host "Processing $($file.Name) (Safe Mode, Tolerance: $tolerance)..."
    
    # 2. Load original (from backup to avoid cumulative loss)
    $original = [System.Drawing.Bitmap]::FromFile($backupPath)
    $width = $original.Width
    $height = $original.Height
    
    # Sample background color (top-left)
    $bgColor = $original.GetPixel(0, 0)

    # Create a new bitmap with Alpha channel
    $bmp = New-Object System.Drawing.Bitmap($width, $height)
    
    # Iterate over pixels
    for ($y = 0; $y -lt $height; $y++) {
        for ($x = 0; $x -lt $width; $x++) {
            $color = $original.GetPixel($x, $y)
            
            $diffR = [Math]::Abs($color.R - $bgColor.R)
            $diffG = [Math]::Abs($color.G - $bgColor.G)
            $diffB = [Math]::Abs($color.B - $bgColor.B)

            if ($diffR -lt $tolerance -and $diffG -lt $tolerance -and $diffB -lt $tolerance) {
                $bmp.SetPixel($x, $y, [System.Drawing.Color]::FromArgb(0, 0, 0, 0))
            } else {
                $bmp.SetPixel($x, $y, $color)
            }
        }
    }
    
    $original.Dispose()
    
    # 3. Save back to the main file name
    $tempPath = $fullPath + ".tmp"
    $bmp.Save($tempPath, [System.Drawing.Imaging.ImageFormat]::Png)
    $bmp.Dispose()
    
    Remove-Item $fullPath
    Rename-Item $tempPath $file.Name
}

Write-Host "Done!"
