param (
    [string]$folderPath
)

Add-Type -AssemblyName System.Drawing

$files = Get-ChildItem -Path $folderPath -Filter "*.png"

foreach ($file in $files) {
    Write-Host "Processing $($file.Name) (Magenta Chroma Removal)..."
    $fullPath = $file.FullName
    
    # Load image
    $original = [System.Drawing.Bitmap]::FromFile($fullPath)
    $width = $original.Width
    $height = $original.Height
    
    # Create a new bitmap with explicit Alpha channel support
    $bmp = New-Object System.Drawing.Bitmap($width, $height, [System.Drawing.Imaging.PixelFormat]::Format32bppArgb)
    for ($y = 0; $y -lt $height; $y++) {
        for ($x = 0; $x -lt $width; $x++) {
            $color = $original.GetPixel($x, $y)
            $bmp.SetPixel($x, $y, $color)
        }
    }
    $original.Dispose()

    # Iterate over pixels to remove Magenta-like ones
    for ($y = 0; $y -lt $height; $y++) {
        for ($x = 0; $x -lt $width; $x++) {
            $color = $bmp.GetPixel($x, $y)
            
            # Condition for "Magenta/Pink": R and B are significantly higher than G
            if ($color.R -gt ($color.G + 40) -and $color.B -gt ($color.G + 40)) {
                $bmp.SetPixel($x, $y, [System.Drawing.Color]::FromArgb(0, 0, 0, 0))
            }
        }
    }
    
    # Save back
    $tempPath = $fullPath + ".tmp"
    $bmp.Save($tempPath, [System.Drawing.Imaging.ImageFormat]::Png)
    $bmp.Dispose()
    
    Remove-Item $fullPath
    Move-Item $tempPath $fullPath
}

Write-Host "Done!"
