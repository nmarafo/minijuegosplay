param (
    [string]$folderPath
)

Add-Type -AssemblyName System.Drawing

$files = Get-ChildItem -Path $folderPath -Filter "*.png"

foreach ($file in $files) {
    Write-Host "Processing $($file.Name) with tolerance..."
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

    # Iterate over pixels to remove greenish ones at the top
    # We focus on the top 70% of the image as that's where chroma lives
    $limit = [int]($height * 0.7)
    
    for ($y = 0; $y -lt $limit; $y++) {
        for ($x = 0; $x -lt $width; $x++) {
            $color = $bmp.GetPixel($x, $y)
            
            # Condition for "Chroma Green": Green is dominant and high
            # We allow some tolerance for R and B (compression artifacts)
            if ($color.G -gt 150 -and $color.G -gt ($color.R * 1.5) -and $color.G -gt ($color.B * 1.5)) {
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
