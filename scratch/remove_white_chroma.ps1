param (
    [string]$folderPath
)

Add-Type -AssemblyName System.Drawing

$files = Get-ChildItem -Path $folderPath -Filter "*.png"

foreach ($file in $files) {
    Write-Host "Processing $($file.Name) (White Chroma Removal)..."
    $fullPath = $file.FullName
    
    # Load image
    $original = [System.Drawing.Bitmap]::FromFile($fullPath)
    $width = $original.Width
    $height = $original.Height
    
    # Create a new bitmap with Alpha channel
    $bmp = New-Object System.Drawing.Bitmap($width, $height)
    $graphics = [System.Drawing.Graphics]::FromImage($bmp)
    $graphics.DrawImage($original, 0, 0, $width, $height)
    $graphics.Dispose()
    $original.Dispose()

    # Iterate over pixels to remove pure white ones
    for ($y = 0; $y -lt $height; $y++) {
        for ($x = 0; $x -lt $width; $x++) {
            $color = $bmp.GetPixel($x, $y)
            
            # Condition for "Pure White" (with a small tolerance for compression)
            if ($color.R -gt 245 -and $color.G -gt 245 -and $color.B -gt 245) {
                $bmp.SetPixel($x, $y, [System.Drawing.Color]::FromArgb(0, 0, 0, 0))
            }
        }
    }
    
    # Save back
    $tempPath = $fullPath + ".tmp"
    $bmp.Save($tempPath, [System.Drawing.Imaging.ImageFormat]::Png)
    $bmp.Dispose()
    
    Remove-Item $fullPath
    Rename-Item $tempPath $file.Name
}

Write-Host "Done!"
